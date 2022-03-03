algoritmo "Conversão de moeda e temperatura"
var
      opcaoMenu: literal
      realbr, dolar, celsius, fahrenheit, cotacao: real
inicio
      escreval("Bem vindo à Pacetech, por favor, informe a cotação atual do dólar")
      leia(cotacao)
      repita
            escreval("Qual conversão você deseja realizar?")
            escreval("1 - Converter de dólar para real")
            escreval("2 - Converter de real para dólar")
            escreval("3 - Converter de Celsius para Fahrenheit")
            escreval("4 - Converter de Fahrenheit para Celsius")
            escreval("5 - Sair da aplicação")
            leia (opcaoMenu)
            escolha opcaoMenu
            caso "1"
                    escreval("Quantos dólares você deseja converter?")
                    leia(dolar)
                    realbr <- dolar * cotacao
                    escreval ("O valol em real é de R$", realbr:2:2)
            caso "2"
                    escreval("Quantos reais você deseja converter para dólar?")
                    leia(realbr)
                    dolar <- realbr / cotacao
                    escreval ("O valor em dólar é de U$", dolar:2:2)
            caso "3"
                    escreval("Qual a temperatura em Celsius?")
                    leia(celsius)
                    fahrenheit < - (celsius * 1.8)+32
                    escreval("A temteratura em Fahrenheit é ", fahrenheit:2:2, "ºF")
            caso "4"
                    escreval("Qual a temperatura em Fahrenheit?")
                    leia(fahrenheit)
                    celsius <- (fahrenheit - 32) / 1.8
                    escreval("A temteratura em Celsius é ", celsius:2:2, "ºC")
            caso "5"
                 escreval("Tenha um bom dia e até a próxima!")
            outrocaso
                     escreval("Opção inválida, por gentileza digite novaamente")
            fimescolha
      ate(opcaoMenu = "5")
fimalgoritmo
