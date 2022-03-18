package Conversordemoedaetemperatura;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        String opcaoMenu;
        float real, dolar, celsius, fahrenheit, cotacao;
        
        Scanner leitor = new Scanner(System.in);
        
        System.out.println("Bem vindo � Pacetech, por favor, informe a cota��o atual do d�lar");
        cotacao = leitor.nextFloat();
        
        do {
            System.out.println("Qual convers�o voc� deseja realizar?");
            System.out.println("1 - Converter de d�lar para real");
            System.out.println("2 - Converter de real para d�lar");
            System.out.println("3 - Converter de Celsius para Fahrenheit");
            System.out.println("4 - Converter de Fahrenheit para Celsius");
            System.out.println("5 - Sair da aplica��o");
            opcaoMenu = leitor.next();
        
            switch (opcaoMenu) {
                case "1":
                    System.out.println("Quantos d�lares voc� deseja converter?");
                    dolar = leitor.nextFloat();
                    real = dolar * cotacao;
                    System.out.println("O valol em real � de R$" + real);
                    break;
                case "2":
                    System.out.println("Quantos reais voc� deseja converter para d�lar?");
                    real = leitor.nextFloat();
                    dolar = real / cotacao;
                    System.out.println("O valor em d�lar � de U$" + dolar);
                    break;
                case "3":
                    System.out.println("Qual a temperatura em Celsius?");
                    celsius = leitor.nextFloat();
                    fahrenheit = (celsius * 1.8f)+32;
                    System.out.println("A temteratura em Fahrenheit � " + fahrenheit + "�F");
                    break;
                case "4":
                    System.out.println("Qual a temperatura em Fahrenheit?");
                    fahrenheit = leitor.nextFloat();
                    celsius = (fahrenheit - 32) / 1.8f;
                    System.out.println("A temteratura em Celsius � " + celsius + "�C");
                    break;
                case "5":
                    System.out.println("Tenha um bom dia e at� a pr�xima!");
                    break;
                default:
                    System.out.println("Op��o inv�lida, por gentileza digite novaamente");
            }
        } while(!"5".equals(opcaoMenu));
    } 
}