<?php
session_start();
include "../koneksi.php";
include "../function.php";

if($_POST){
    if($_POST['aksi']=='tambah'){
        $NamaPelanggan=$_POST['NamaPelanggan'];
        $Alamat=$_POST['Alamat'];
        $NomorTelpon=$_POST['NomorTelpon'];                

        $sql="INSERT INTO pelanggan (pelangganID,NamaPelanggan,Alamat,NomorTelpon) VALUES(DEFAULT,'$NamaPelanggan','$Alamat','$NomorTelpon')";
        // echo $sql; // Cek Perintah
        mysqli_query($koneksi,$sql);
        notifikasi($koneksi);

        header('location:../index.php?p=pelanggan');
    }
    else if($_POST['aksi']=='ubah'){        
        $PelangganID=$_POST['PelangganID'];
        $NamaPelanggan=$_POST['NamaPelanggan'];
        $Alamat=$_POST['Alamat'];
        $NomorTelpon=$_POST['NomorTelpon'];

        $sql="UPDATE pelanggan SET NamaPelanggan='$NamaPelanggan',Alamat='$Alamat', NomorTelpon='$NomorTelpon' WHERE PelangganID=$PelangganID";
        // echo $sql; // Cek Perintah
        mysqli_query($koneksi,$sql);
        notifikasi($koneksi);
        header('location:../index.php?p=pelanggan');
    }
}

if($_GET){
     if ($_GET['aksi']=='hapus'){
        $PelangganID=$_GET['PelangganID'];
        $sql="DELETE FROM pelanggan WHERE PelangganID=$PelangganID";
        mysqli_query($koneksi,$sql);
        notifikasi($koneksi);
        header('location:../index.php?p=pelanggan');
    }
}