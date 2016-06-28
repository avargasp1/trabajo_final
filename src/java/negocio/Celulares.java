package negocio;

import conexion.Conexion;

public class Celulares {
    
    //Variables
    int Celular_id;
    String chip;
    String fecha_creacion;
    int numero;
    int sistema_id;
    String estado;
    String creado_por;
    int modelo_id;
    
    //clases
    Conexion con;

    //Metodos Getter Y Setter
    public int getCelular_id() {
        return Celular_id;
    }

    public void setCelular_id(int Celular_id) {
        this.Celular_id = Celular_id;
    }

    public String getChip() {
        return chip;
    }

    public void setChip(String chip) {
        this.chip = chip;
    }

    public String getFecha_creacion() {
        return fecha_creacion;
    }

    public void setFecha_creacion(String fecha_creacion) {
        this.fecha_creacion = fecha_creacion;
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public int getSistema_id() {
        return sistema_id;
    }

    public void setSistema_id(int sistema_id) {
        this.sistema_id = sistema_id;
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

    public int getModelo_id() {
        return modelo_id;
    }

    public void setModelo_id(int modelo_id) {
        this.modelo_id = modelo_id;
    }
    
    //Metodos de modificacion de tabla
    public void crear(){
        con.setInsertar("inser into celulares(tipo_chip,fecha_creacion,numero,sistema_id,estado,creado_por,modelo_id) values('"+this.getChip()+"','"+this.getFecha_creacion()+"','"+this.getNumero()+"','"+this.getSistema_id()+"','activo','"+this.getCreado_por()+"','"+this.getModelo_id()+"')");
    }
    
    public void eliminar(){
        con.setInsertar("update celulares set estado='pasivo' where celular_id='"+this.getCelular_id()+"';");
    }
    
    public void actualizar(){
        con.setInsertar("update celulares set tipo_chip='"+this.getChip()+"', fecha_creacion='"+this.getFecha_creacion()+"', numero='"+this.getNumero()+"', sistema_id='"+this.getSistema_id()+"', modelo_id='"+this.getModelo_id()+"' where celular_id='"+this.getCelular_id()+"' ");
    }
}

//
