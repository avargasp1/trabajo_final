package negocio;

import conexion.Conexion;

public class SistemaOperativo {

    //Variables
    private int sistema_id;
    private String nombre;
    private String fecha_creacion;
    private String estado;
    private int lenguaje_id;

    //clases
    Conexion con;

    //Metodos Getter & Setter
    public int getSistema_id() {
        return sistema_id;
    }

    public void setSistema_id(int sistema_id) {
        this.sistema_id = sistema_id;
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

    public int getLenguaje_id() {
        return lenguaje_id;
    }

    public void setLenguaje_id(int lenguaje_id) {
        this.lenguaje_id = lenguaje_id;
    }

 

    //Metodos de modificacion de tabla
    public void crear() {
        con.setInsertar("insert into sistemas_operativos (nombre, fecha_creacion, estado, lenguaje_id) values ('"+this.getNombre()+"','"+this.getFecha_creacion()+"','activo','"+this.getLenguaje_id()+"')");
    }

    public void eliminar() {
        con.setInsertar("update sistemas_operativos set estado= pasivo where sistema_id='"+this.getSistema_id()+"'");
    }

    public void actualizar() {
        con.setInsertar("update sistemas_operativos set nombre = '"+this.getNombre()+"', fecha_creacion= '"+this.getFecha_creacion()+"', lenguaje_id= '"+this.getLenguaje_id()+"' where sistema_id='"+this.getSistema_id()+"'");
    }

}
