algoritmo "Conversão de temperatura"
var
      opcaoMenu: caracter
      celsius: vetor[1..4] de real
      fahrenheit: vetor [1..4] de real
      hora: vetor[1..4] de real
      i, j: inteiro
      aux : real
      
funcao verificarconversao (): caracter
var opcaoMenu : caracter
inicio

      escreval("Qual conversão você deseja realizar?")
      escreval("1 - Converter de Celsius para Fahrenheit")
      escreval("2 - Converter de Fahrenheit para Celsius")
      escreval("3 - Sair da aplicação")
      leia (opcaoMenu)
      retorne opcaoMenu
fimfuncao

procedimento registrarHora (indice: inteiro)
inicio
      escreval("Qual a hora medida?")
      leia(hora[indice])
fimprocedimento

procedimento converterParaFahrenheit (indice: inteiro)
inicio
      escreval("Qual a temperatura em Celsius?")
      leia(celsius[indice])
      fahrenheit[indice] <- (celsius[indice] * 1.8)+32
      registrarHora(indice)
fimprocedimento

procedimento converterParaCelsius (indice: inteiro)
inicio
      escreval("Qual a temperatura em Fahrenheit?")
      leia(fahrenheit[indice])
      celsius[indice] <- (fahrenheit[indice] - 32) / 1.8
      registrarHora(indice)
fimprocedimento

procedimento alterarOrdem ()
inicio
     para i de 1 ate 4 faca
            para j de 1 ate 4 faca
                    se celsius[j] > celsius[i] então
                          aux <- celsius[i]
                          celsius[i] <- celsius[j]
                          celsius[j] <- aux
                          
                          aux <- fahrenheit[i]
                          fahrenheit[i] <- fahrenheit[j]
                          fahrenheit[j] <- aux

                          aux <- hora[i]
                          hora[i] <- hora[j]
                          hora[j] <- aux

                    fimse
            fimpara
      fimpara
fimprocedimento

inicio
      opcaoMenu <- verificarconversao()
      escolha opcaoMenu
      caso "1"
            converterParaFahrenheit(1)
            converterParaFahrenheit(2)
            converterParaFahrenheit(3)
            converterParaFahrenheit(4)
            
            alterarOrdem()
            
            para i de 1 ate 4 faca
                 Escreva("Temperatura ", celsius[i]:2:2)
                 Escreva(" graus Celsius, registrada as ", hora[i])
                 Escreva("h corresponde a ",  fahrenheit[i]:2:2)
                 Escreval(" graus Fahrenheit.")
            fimpara

      caso "2"
            converterParaCelsius(1)
            converterParaCelsius(2)
            converterParaCelsius(3)
            converterParaCelsius(4)
            
            alterarOrdem()

            para i de 1 ate 4 faca
                 Escreva("Temperatura ", fahrenheit[i]:2:2)
                 Escreva(" graus Fahrenheit, registrada as ", hora[i])
                 Escreva("h corresponde a ",  celsius[i]:2:2)
                 Escreval(" graus Celsius.")
            fimpara
      
      caso "3"
            escreval("Tenha um bom dia e até a próxima!")
      outrocaso
            escreval("Opção inválida, por gentileza digite novamente")
      fimescolha

fimalgoritmo