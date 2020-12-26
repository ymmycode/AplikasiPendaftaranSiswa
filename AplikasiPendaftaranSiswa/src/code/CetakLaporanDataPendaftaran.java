/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package code;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
import java.awt.BorderLayout;
import java.awt.Container;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.design.JRDesignQuery;
import net.sf.jasperreports.engine.design.JasperDesign;
import net.sf.jasperreports.engine.xml.JRXmlLoader;

/**
 *
 * @author achma
 */
public class CetakLaporanDataPendaftaran extends javax.swing.JInternalFrame {

    /**
     * Creates new form CetakLaporanDataPendaftaran
     */
    Connection connection;
    java.sql.Statement stat,stat1,stat2;
    ResultSet rs;
    String total, sql, sql1, sql2, nowTime;
    
    public CetakLaporanDataPendaftaran(String month, String year) {
         try {
            initComponents();
            koneksi condb = new koneksi();
            condb.Config();
            connection = (Connection) condb.connect;
            stat = (com.mysql.jdbc.Statement) condb.stmt;
            nowTime = month+" "+year;
            Process();
        } catch (FileNotFoundException ex) {
            Logger.getLogger(CetakLaporanDataPendaftaran.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    
    private void Process() throws FileNotFoundException
    {
        try{
            koneksi condb = new koneksi();
            condb.Config();
            connection = (Connection) condb.connect;
            stat = (Statement) condb.stmt;
            
            Map prs = new HashMap();            
            InputStream filePath = getClass().getResourceAsStream("/report/LaporanDataPendaftaran.jrxml");
            JasperDesign jd1 = JRXmlLoader.load (filePath);
            
            
            sql = "SELECT\n" +
                    "pendaftaran.nodaftar,\n" +
                    "pendaftaran.nama,\n" +
                    "pendaftaran.kelamin,\n" +
                    "pendaftaran.namawali,\n" +
                    "pendaftaran.ttl,\n" +
                    "pendaftaran.agama,\n" +
                    "pendaftaran.notelp,\n" +
                    "pendaftaran.alamat,\n" +
                    "pendaftaran.tgldaftar\n" +
                    "FROM\n" +
                    "pendaftaran\n" +
                    "WHERE\n" +
                    "pendaftaran.tgldaftar LIKE '%"+nowTime+"%'";
            JRDesignQuery newQuery = new JRDesignQuery();
            newQuery.setText(sql);
            jd1.setQuery(newQuery);
            JasperReport Jrpt1 = JasperCompileManager.compileReport(jd1);
            JasperPrint jp1 = JasperFillManager.fillReport(Jrpt1, prs,condb.connect);
            net.sf.jasperreports.view.JRViewer viewer1 = new net.sf.jasperreports.view.JRViewer(jp1);
            Container c1 = getContentPane();
            c1.setLayout(new BorderLayout());
            c1.add(viewer1);
        
        }catch(JRException e){
            JOptionPane.showMessageDialog(null, e);
        }
    }
    
    
    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        setClosable(true);
        setIconifiable(true);
        setMaximizable(true);
        setResizable(true);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 394, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 274, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents


    // Variables declaration - do not modify//GEN-BEGIN:variables
    // End of variables declaration//GEN-END:variables
}
