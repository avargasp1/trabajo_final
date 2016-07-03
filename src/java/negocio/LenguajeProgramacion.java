package negocio;

import conexion.Conexion;

public class LenguajeProgramacion {
    
    //variables
    int lenguaje_id;
    String nombre;
    String fecha_creacion;
    String estado;
    
    //clases
    Conexion con ;
    
    //Metodos getter & setter

    public int getLenguaje_id() {
        return lenguaje_id;
    }

    public void setLenguaje_id(int lenguaje_id) {
        this.lenguaje_id = lenguaje_id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getFecha_creacion() {
        return fecha_creacion;
    }

    public void setFecha_creacion(String fecha_creacion) {
        this.fecha_creacion = fecha_creacion;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    //Metodos de modificacion de tabla
    public void crear() {
        con = new Conexion();
        con.setInsertar("insert into lenguajes_programacion (nombre, fecha_creacion, estado) values ('"+this.getNombre()+"', '"+this.getFecha_creacion()+"', 'activo')");
    }

    public void eliminar() {
        con = new Conexion();
        con.setInsertar("update lenguajes_programacion set estado='pasivo' where lenguaje_id="+this.getLenguaje_id());
    }

    public void actualizar() {
        con = new Conexion();
        con.setInsertar("update lenguajes_programacion set nombre='"+this.getNombre()+"', fecha_creacion='"+this.getFecha_creacion()+"' where lenguaje_id='"+this.getLenguaje_id()+"'");
    }

}
