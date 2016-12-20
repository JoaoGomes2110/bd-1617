/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mongome;

import java.util.ArrayList;

/**
 *
 * @author João
 */
public class Train {
    private final String id_Comboio;
    private final int Lotacao;
    private final String Nome;
    private final ArrayList<Seat> lugares;

    public Train(String id_Comboio, int Lotacao, String Nome, ArrayList<Seat> lugares) {
        this.id_Comboio = id_Comboio;
        this.Lotacao = Lotacao;
        this.Nome = Nome;
        this.lugares = lugares;
    }

    @Override
    public String toString() {
        return "Train{" + "id_Comboio=" + id_Comboio + ", Lotacao=" + Lotacao + ", Nome=" + Nome + ", lugares=" + lugares + '}';
    }
    
    
    
}


