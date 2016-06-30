package negocio;

import conexion.Conexion;
import java.util.ArrayList;
import java.util.List;

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

    //Metodos de modificacion de tabla
    public void crear(){
        con = new Conexion();
        con.setInsertar("insert into usuarios (nombre,clave,estado) values('"+this.getNombre()+"','"+this.getClave()+"','activo')");
    }
    
    public void eliminar(){
        con = new Conexion();
        con.setInsertar("update usuarios set estado='pasivo' where usuario_id='"+this.getUsuario_id()+"'");
    }
    
    public void actualizar(){
        con = new Conexion();
        con.setInsertar("update usuarios set nombre='"+this.getNombre()+"', clave='"+this.getClave()+"' where usuario_id='"+this.getUsuario_id()+"'");
    }
    
    public List lfuser() {
        con = new Conexion();
        List<String> lista = new ArrayList<>();
        con.setConsulta("select nombre ,clave, usuario_id from usuarios where nombre='" + this.getNombre() + "'");
        try {
            while (con.getResult().next()) {
                lista.add(con.getResult().getString("nombre"));
                lista.add(con.getResult().getString("clave"));
                lista.add(con.getResult().getString("usuario_id"));
            }
        } catch (Exception e) {
        }
        //try{con.getResult().close();}catch(Exception e){}
        return lista;
    }
}
