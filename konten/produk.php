<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">Produk</h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Data Utama</a></li>
                        <li class="breadcrumb-item active">Produk</li>
                    </ol>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">

            <div class="card">
                <div class="card-header">
                    <h5>Data Produk</h5>
                </div>
                <div class="card-body">
                    
                    <table id="example1" class="table table-hover">
                        <thead class="bg-purple">
                            <th>Produk ID</th>
                            <th>Barcode</th>
                            <th>Nama Produk</th>
                            <th>Harga</th>
                            <th>Stok</th>
                            <th>Aksi</th>
                        </thead>
                        <?php
                        $sql = "SELECT * FROM produk";
                        $query = mysqli_query($koneksi, $sql);
                        while ($kolom = mysqli_fetch_array($query)) {
                        ?>
                            <tr>
                                <td><?= $kolom['ProdukID']; ?></td>
                                <td><?= $kolom['Barcode']; ?></td>
                                <td><?= $kolom['NamaProduk']; ?></td>
                                <td><?=number_format( $kolom['Harga']); ?></td>
                                <td><?= $kolom['Stok']; ?></td>
                                <td> 
                                    <!-- Tombol Edit     -->
                                    <a href="#" data-toggle="modal" data-target="#modalUbah<?= $kolom['ProdukID']; ?>"><i class="fas fa-edit"></i></a>
                                    &nbsp;
                                    <!-- Tombol Hapus  -->
                                    <a onclick="return confirm('Yakin akan menghapus data ini?')" href="aksi/produk.php?aksi=hapus&ProdukID=<?= $kolom['ProdukID']; ?>"><i class="fas fa-trash"></i></a>
                                </td>
                            </tr>
<!-- Modal Ubah User -->
<div class="modal fade" id="modalUbah<?= $kolom['ProdukID']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Ubah Produk</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="aksi/produk.php" method="post">
                    <input type="hidden" name="aksi" value="ubah">
                    <input type="hidden" name="ProdukID" value="<?= $kolom['ProdukID']; ?>">

                    <label for="Barcode">Barcode</label>
                    <input type="text" name="Barcode" class="form-control" value="<?= $kolom['Barcode']; ?>" required>
                    
                    <label for="nama">Nama Produk</label>
                    <input type="text" name="NamaProduk" class="form-control" value="<?= $kolom['NamaProduk']; ?>" required>

                    <label for="harga">Harga</label>
                    <input type="text" name="Harga" class="form-control" value="<?= $kolom['Harga']; ?>" required>

                    <label for="stok">Stok</label>
                    <input type="text" name="Stok" class="form-control" value="<?= $kolom['Stok']; ?>" required>
                        <br>
                    <button type="submit" class="btn btn-block bg-purple mt-3"> <i class="fas fa-save"></i> Simpan</button>

                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>

            </div>
        </div>
    </div>
</div>                            
                        <?php
                        } // Akhir While
                        ?>
                    </table>

                    <button type="button" class="btn bg-purple btn-block mt-3" data-toggle="modal" data-target="#modalTambah"> <i class="fas fa-plus"></i> Tambah Produk Baru </button>
                </div>
            </div>

        </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->

<!-- Modal Tambah User -->
<div class="modal fade" id="modalTambah" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Tambah produk</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="aksi/produk.php" method="post">
                    <input type="hidden" name="aksi" value="tambah">

                    <label for="Barcode">Barcode</label>
                    <input type="text" name="Barcode" class="form-control" required>
                    
                    <label for="nama">NamaProduk</label>
                    <input type="text" name="NamaProduk" class="form-control" required>

                    <label for="harga">Harga</label>
                    <input type="text" name="Harga" class="form-control" required>

                    <label for="stok">Stok</label>
                    <input type="Stok" name="Stok" class="form-control" required>

                    <button type="submit" class="btn btn-block bg-purple mt-3"> <i class="fas fa-save"></i> Simpan</button>

                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>

            </div>
        </div>
    </div>
</div>