import re

#Se definen las rutas de los archivos que contienen las palabras reservadas y las expresiones regulares
file_reser = "/home/lauragomez/Descargas/prueba3/reservadas.txt"
file_expr = "/home/lauragomez/Descargas/prueba3/expresionsitas.csv"


#Se leen las palabras reservadas de Python y se almacenan en una lista llamada reservadas
def lectura_r(file_reser):
    #tupla que almacena las palabras reservadas
    reservadas = []
    with open(file_reser) as file:
        reservadas = [linea.strip() for linea in file]
    return reservadas
    
    
#Metodo de impresión de la tupla de tokens
def imprimir(tokens):
        for t in tokens:
            print('<', end='')
            for i, elem in enumerate(t):
                if i == len(t) - 1:
                    print(elem, end='>')
                else:
                    print(elem, end=',')
            print()
    
    
    
#Método tokenize, encargado de la comparación, almacenamiento y retorno de los tokens correspondientes a la cadena 
def tokenize(reservadas,file_expr,code):
    #tupla donde se almacenarán los tokens correspondientes a la cadena
    tokens = []
    #tupla que almacena las expresiones regulares
    token_exprs = []

    with open(file_expr) as file:
        codexp = file.read()
        filas = codexp.split('\n')                              
    
    for fila in filas:
        c = fila.split(',')                                     
        if len(c) == 2:                                         
            expresion = c[0].strip()                           
            token = c[1].strip()                               
            expresion_compilada = re.compile(expresion)
            token_exprs.append((expresion_compilada, token))    
   
    tok_regex = '|'.join('(?P<%s>%s)' % (token, exp.pattern) for exp, token in token_exprs)
    tokenizador = re.compile(tok_regex)
       
    # Busca todos los tokens en el código
    for match in tokenizador.finditer(code):
        kind = match.lastgroup  # indice
        value = match.group()  # valor
        column = match.start() - code.rfind('\n', 0, match.start())
        row = code.count('\n', 0, match.start()) + 1
        
        #Busca si es una palabras reservada
        if value in reservadas:
            tokens.append((value,row,column))
        #Busca si es un ID    
        elif kind == 'id':
            tokens.append((kind, value, row, column))
        #Busca si es una cadena
        elif kind == 'tk_cadena':
            tokens.append((kind, value, row, column))
        #Busca si es entero    
        elif kind == 'tk_entero':
            tokens.append(('tk_entero', int(value), row, column))
        #Busca si es un caracter ,   
        elif value == ',':
            tokens.append(('tk_comma',row,column))
        #Busca si es un comentario
        elif kind == 'tk_comentario':
            pass
        #Busca si es un espacio
        elif kind == 'tk_espacio':
            pass
        #Busca si es un caracter desconocido
        elif kind == 'tk_error':
            imprimir(tokens)
            raise ValueError(f'>>>Error Léxico(linea:{row}, posicion:{column}: token no reconocido {value} )')
        #Busca si coincide con otro caracter y lo imprime
        else:
                for exp, token in token_exprs:
                    if exp.match(value):
                        tokens.append((token, row, column))
                        break
                     
    return tokens


#-----------Ejecución-----------------
reservadas = lectura_r(file_reser)
#Se pide el nombre del archivo a evaluar
filename = input("Por favor ingrese el nombre del archivo: ")
# Lee el archivo y obtiene su contenido como una cadena de texto
with open(filename, 'r') as file:
    code = file.read()
    print("Leido con exito")

#Se imprime los tokens
imprimir(tokenize(reservadas,file_expr,code))
