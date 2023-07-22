/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package xmass;

import com.sun.jdi.connect.spi.Connection;
import javax.swing.JOptionPane;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author VentureDraws
 */
public class consultas {
    public void accesoUsuario(String user, String pass){
        Base_Datos db = new Base_Datos();
        // Se inicializa a null
        String usuarioCorrecto = null;
        String passCorrecto = null;
    try {

        java.sql.Connection cn = db.getConectarDB();
        PreparedStatement pst = cn.prepareStatement("SELECT Codigo, Contraseña FROM login");
        ResultSet rs = pst.executeQuery();

        if (rs.next()) {
            usuarioCorrecto = rs.getString(1);
            passCorrecto = rs.getString(2);
        }

        if (user.equals(usuarioCorrecto) && pass.equals(passCorrecto)) {
            JOptionPane.showMessageDialog(null, "Login correcto Bienvenido " + user);
            administrador admin=new administrador();
                    admin.setVisible(true);
        } else if (!user.equals(usuarioCorrecto) || pass.equals(passCorrecto)) {

            JOptionPane.showMessageDialog(null, "Usuario o contraseña incorrectos");
    }

    } catch (Exception e) {
        JOptionPane.showMessageDialog(null, "Error " + e);
    }
    }
   
}
