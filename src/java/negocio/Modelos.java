package negocio;

import conexion.Conexion;

public class Modelos {

    //Variables
    int modelo_id;
    String nombre;
    String estado;
    String creado_por;
    int marca_id;

    //clases
    Conexion con;

    // metodos getter and setter
    public int getModelo_id() {
        return modelo_id;
    }

    public void setModelo_id(int modelo_id) {
        this.modelo_id = modelo_id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getCreado_por() {
        return creado_por;
    }

    public void setCreado_por(String creado_por) {
        this.creado_por = creado_por;
    }

    public int getMarca_id() {
        return marca_id;
    }

    public void setMarca_id(int marca_id) {
        this.marca_id = marca_id;
    }


    //Metodos de modificacion de tabla
    public void crear() {
        con = new Conexion();
        con.setInsertar("insert into modelos (nombre, marca_id,creado_por ,estado) values ('"+this.getNombre()+"','"+this.getMarca_id() +"','"+this.getCreado_por()+"' ,'activo')");
    }

    public void eliminar() {
        con = new Conexion();
        con.setInsertar("update modelos set estado='pasivo' where modelo_id=" + this.getModelo_id());
    }

    public void actualizar() {
        con = new Conexion();
        con.setInsertar("update modelos set nombre='"+this.getNombre()+"', marca_id='"+this.getMarca_id()+"' marca_id where modelo_id='" + this.getModelo_id()+ "'");
    }
}
