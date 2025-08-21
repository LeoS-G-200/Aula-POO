public class Carro {
    private String marca;
    private Integer ano;
    private String modelo;
    private Boolean ligado;

//metodo construtor de da classe
public Carro(String marca, Integer ano, String modelo,Boolean ligado){
  this.marca = marca;
  this.modelo = modelo;
  this.ano = ano;
  this.ligado = false;
  }
  public void ligar(){
    ligado = true;
    System.out.print("Motor ligado");
  
  }
  public void desligado(){
    ligado = false;
    System.out.print("Motor desligado");
  }
  // mostrar informações
  public void mostrarInfo(){
System.out.println("Marca: "+marca);
System.out.println("Ano: "+ano);
System.out.println("Modelo: "+modelo);
System.out.println("status: "+ligado);

  }
  public static void main(String[] args){
// criação de objeto
  Carro  c1 = new Carro("fiat","147",1970,"147");
  Carro  c2 = new Carro("porsche",1963,"911");
  c1.mostrarInfo();
  c2.mostrarInfo();
  c1.ligar();
  c1.mostrarInfo();
  }


}
