algoritmo "Convers�o de moeda e temperatura"
var
      opcaoMenu: literal
      realbr, dolar, celsius, fahrenheit, cotacao: real
inicio
      escreval("Bem vindo � Pacetech, por favor, informe a cota��o atual do d�lar")
      leia(cotacao)
      repita
            escreval("Qual convers�o voc� deseja realizar?")
            escreval("1 - Converter de d�lar para real")
            escreval("2 - Converter de real para d�lar")
            escreval("3 - Converter de Celsius para Fahrenheit")
            escreval("4 - Converter de Fahrenheit para Celsius")
            escreval("5 - Sair da aplica��o")
            leia (opcaoMenu)
            escolha opcaoMenu
            caso "1"
                    escreval("Quantos d�lares voc� deseja converter?")
                    leia(dolar)
                    realbr <- dolar * cotacao
                    escreval ("O valol em real � de R$", realbr:2:2)
            caso "2"
                    escreval("Quantos reais voc� deseja converter para d�lar?")
                    leia(realbr)
                    dolar <- realbr / cotacao
                    escreval ("O valor em d�lar � de U$", dolar:2:2)
            caso "3"
                    escreval("Qual a temperatura em Celsius?")
                    leia(celsius)
                    fahrenheit < - (celsius * 1.8)+32
                    escreval("A temteratura em Fahrenheit � ", fahrenheit:2:2, "�F")
            caso "4"
                    escreval("Qual a temperatura em Fahrenheit?")
                    leia(fahrenheit)
                    celsius <- (fahrenheit - 32) / 1.8
                    escreval("A temteratura em Celsius � ", celsius:2:2, "�C")
            caso "5"
                 escreval("Tenha um bom dia e at� a pr�xima!")
            outrocaso
                     escreval("Op��o inv�lida, por gentileza digite novaamente")
            fimescolha
      ate(opcaoMenu = "5")
fimalgoritmo
