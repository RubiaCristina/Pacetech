package gradleproject2;

/**
 *
 * @author rubia
 */
public class Empregado {
    private String nome;
    private String sobrenome;
    private float salario;

    public String getNome() {
        return nome;
    }
    public void setNome(String nome) {
        this.nome = nome;
    }
    public String getSobrenome() {
        return sobrenome;
    }
    public void setSobrenome(String sobrenome) {
        this.sobrenome = sobrenome;
    }
    public float getSalario() {
        return salario;
    }
    public void setSalario(float salario) {
        if(salario < 0)
            salario = 0;
        this.salario = salario;
    }
    public float getSalarioAnual() {
        return getSalario()*12;
    }
    public void aumento10porcento(){
        salario *= 1.1f;
    }
    
    public String mostrarInformacoes(){
        return getNome() +  " " + getSobrenome() +  ". Salário anual: " + getSalarioAnual();
    }
    
    
    public Empregado(String nome, String sobrenome, float salario){
        setNome(nome);
        setSobrenome(sobrenome);
        setSalario(salario);
    }
    
    
}
