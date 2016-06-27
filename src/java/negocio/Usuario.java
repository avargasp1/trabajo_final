package negocio;

import conexion.Conexion;

public class Usuario {
    
    //VARIABLES
    int usuario_id;
    String nombre;
    String clave;
    String estado;
    
   //CLASES 
    Conexion con;
    
  
    
    //Metodos Getter & Setter 
    public int getUsuario_id() {
        return usuario_id;
    }

    public void setUsuario_id(int usuario_id) {
        this.usuario_id = usuario_id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public Conexion getCon() {
        return con;
    }

    public void setCon(Conexion con) {
        this.con = con;
    }
    
    //Metodos de modificacion de tabla
    public void crear(){
        
    }
    
    public void eliminar(){
    
    }
    
    public void actualizar(){
    
    }
    
}
