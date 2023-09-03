# Lexical_analyzer

Python grammar lexical analyzer in Python using regular expressions. This file links to a .txt file that stores the reserved words, contains 6 test files and contains a .l file in Lex language that is also a lexical analyzer for the Python grammar.

## **Execution** 

The program is a python script with .ipynb extension, which means that it can be easily visualized in development environments such as visual studio code, colab, deepnote and others.

The file can be executed by command control, in case of linux it is:

* sudo apt install python3
* python3 --version
* python3 project.py

to run the .l file:
* sudo apt-get install flex
* flex -o lexer.c lexer.l
* gcc -o lexer lexer.c -lfl
* ./lexer

## **Evidence**
![image](https://github.com/LauEsGoAm372/Lexical_analyzer/assets/110053206/8ceef795-3e38-4a63-ab30-d60924c5f2e9)

