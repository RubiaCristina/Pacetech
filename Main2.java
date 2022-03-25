/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package gradleproject2;

/**
 *
 * @author rubia
 */
public class Main2 {
    public static void main(String[] args){
        Empregado empregado1 = new Empregado( "Jean",  "Klann", 3000f );
        Empregado empregado2 = new Empregado( "Rúbia",  "Silva", -1000f );
        
        System.out.println(empregado1.mostrarInformacoes());
        System.out.println(empregado2.mostrarInformacoes());
        
        empregado1.aumento10porcento();
        empregado2.aumento10porcento();
        
        System.out.println(empregado1.mostrarInformacoes());
        System.out.println(empregado2.mostrarInformacoes());
        
    }
}
