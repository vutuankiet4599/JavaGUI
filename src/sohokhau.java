/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Admin
 */
package QuanLyDanCu;

public class sohokhau {

    private String tenchuho;
    private String hokhau;
    private String diachi;
    private int nhankhau;
    private String ghichu;
    private String ngaycap;

    public sohokhau() {
    }

    public sohokhau(String tenchuho, String hokhau, String diachi, int nhankhau, String ghichu, String ngaycap) {
        this.tenchuho = tenchuho;
        this.hokhau = hokhau;
        this.diachi = diachi;
        this.nhankhau = nhankhau;
        this.ghichu = ghichu;
        this.ngaycap = ngaycap;
    }

    public String getTenchuho() {
        return tenchuho;
    }

    public void setTenchuho(String tenchuho) {
        this.tenchuho = tenchuho;
    }

    public String getHokhau() {
        return hokhau;
    }

    public void setHokhau(String hokhau) {
        this.hokhau = hokhau;
    }

    public String getDiachi() {
        return diachi;
    }

    public void setDiachi(String diachi) {
        this.diachi = diachi;
    }

    public int getNhankhau() {
        return nhankhau;
    }

    public void setNhankhau(int nhankhau) {
        this.nhankhau = nhankhau;
    }

    public String getGhichu() {
        return ghichu;
    }

    public void setGhichu(String ghichu) {
        this.ghichu = ghichu;
    }

    public String getNgaycap() {
        return ngaycap;
    }

    public void setNgaycap(String ngaycap) {
        this.ngaycap = ngaycap;
    }

    

}
