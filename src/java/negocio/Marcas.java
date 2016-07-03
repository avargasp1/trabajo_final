/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package negocio;

import conexion.Conexion;

/**
 *
 * @author alejandrovargas
 */
public class Marcas {
    int marca_id;
    String nombre;
    String estado;
    String creado_por;
    
    Conexion con;

    public int getMarca_id() {
        return marca_id;
    }

    public void setMarca_id(int marca_id) {
        this.marca_id = marca_id;
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
    
    //Metodos de modificacion de tabla
    public void crear(){
        con = new Conexion();
        con.setInsertar("insert into marcas(nombre, estado, creado_por) values ('"+this.getNombre()+"','activo','"+this.getCreado_por()+"') ");
    }
    
    public void eliminar(){
        con = new Conexion();
        con.setInsertar("update marcas set estado='pasivo' where marca_id='"+this.getMarca_id()+"'");
    }
    
    public void actualizar(){
        con = new Conexion();
        con.setInsertar("update marcas set nombre='"+this.getNombre()+"' where marca_id='"+this.getMarca_id()+"'");
    }
    
    
}
