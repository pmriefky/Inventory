<?php
include 'koneksi.php';
$id = $_GET['id'];
$result = $conn->query("SELECT * FROM tb_inventory WHERE id_barang = $id");
$row = $result->fetch_assoc();
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $jumlah_pakai = $_POST['jumlah_pakai'];
    if ($jumlah_pakai > $row['jumlah_barang']) {
        echo "<script>alert('Jumlah pemakaian melebihi stok!');</script>";
    } else {
        $new_jumlah = $row['jumlah_barang'] - $jumlah_pakai;
        $status_barang = $new_jumlah > 0 ? 1 : 0;
        $sql = "UPDATE tb_inventory SET jumlah_barang='$new_jumlah', status_barang='$status_barang' WHERE id_barang=$id";
        
        if ($conn->query($sql) === TRUE) {
            header("Location: index.php");
        } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
        }
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Dashboard - Inventory</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    </head>
<body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="index.html">Inventory Barang</a>
            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
                <div class="input-group">
                    <input class="form-control" type="text" placeholder="Search for..." aria-label="Search for..." aria-describedby="btnNavbarSearch" />
                    <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i class="fas fa-search"></i></button>
                </div>
            </form>
            <!-- Navbar-->
            <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                
            </ul>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">Core</div>
                            <a class="nav-link" href="index.php">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Dashboard
                            </a>
                        </div>
                    </div>
                </nav>
            </div>
                    <div class="container">
                        <h1 class="mt-5">Gunakan Barang</h1>
                         <form method="POST">
                            <div class="form-group">
                            <label>Jumlah yang Digunakan</label>
                            <input type="number" name="jumlah_pakai" class="form-control" required>
                    </div>
            <button type="submit" class="btn btn-primary">Gunakan</button>
            <a href="index.php" class="btn btn-secondary">Kembali</a>
        </form>
    </div>
    </div>
</body>
</html>
