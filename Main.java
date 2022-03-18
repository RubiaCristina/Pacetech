package Conversordemoedaetemperatura;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        String opcaoMenu;
        float real, dolar, celsius, fahrenheit, cotacao;
        
        Scanner leitor = new Scanner(System.in);
        
        System.out.println("Bem vindo à Pacetech, por favor, informe a cotação atual do dólar");
        cotacao = leitor.nextFloat();
        
        do {
            System.out.println("Qual conversão você deseja realizar?");
            System.out.println("1 - Converter de dólar para real");
            System.out.println("2 - Converter de real para dólar");
            System.out.println("3 - Converter de Celsius para Fahrenheit");
            System.out.println("4 - Converter de Fahrenheit para Celsius");
            System.out.println("5 - Sair da aplicação");
            opcaoMenu = leitor.next();
        
            switch (opcaoMenu) {
                case "1":
                    System.out.println("Quantos dólares você deseja converter?");
                    dolar = leitor.nextFloat();
                    real = dolar * cotacao;
                    System.out.println("O valol em real é de R$" + real);
                    break;
                case "2":
                    System.out.println("Quantos reais você deseja converter para dólar?");
                    real = leitor.nextFloat();
                    dolar = real / cotacao;
                    System.out.println("O valor em dólar é de U$" + dolar);
                    break;
                case "3":
                    System.out.println("Qual a temperatura em Celsius?");
                    celsius = leitor.nextFloat();
                    fahrenheit = (celsius * 1.8f)+32;
                    System.out.println("A temteratura em Fahrenheit é " + fahrenheit + "ºF");
                    break;
                case "4":
                    System.out.println("Qual a temperatura em Fahrenheit?");
                    fahrenheit = leitor.nextFloat();
                    celsius = (fahrenheit - 32) / 1.8f;
                    System.out.println("A temteratura em Celsius é " + celsius + "ºC");
                    break;
                case "5":
                    System.out.println("Tenha um bom dia e até a próxima!");
                    break;
                default:
                    System.out.println("Opção inválida, por gentileza digite novaamente");
            }
        } while(!"5".equals(opcaoMenu));
    } 
}