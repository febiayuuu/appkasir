
-- Database Backup --
-- Ver. : 1.0.1
-- Host : Server Host
-- Generating Time : Oct 25, 2023 at 09:54:35:AM


CREATE TABLE `bayar` (
  `id_bayar` int(10) NOT NULL AUTO_INCREMENT,
  `id_siswa` int(10) NOT NULL,
  `id_bayar_metode` int(10) NOT NULL,
  `keterangan` text NOT NULL,
  `bukti` varchar(200) NOT NULL,
  `status_verifikasi` varchar(100) NOT NULL,
  `nominal_bayar` int(17) NOT NULL,
  `tanggal_bayar` date NOT NULL,
  `dibuat_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `diubah_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `dihapus_pada` datetime DEFAULT NULL,
  PRIMARY KEY (`id_bayar`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

INSERT INTO bayar VALUES
("1","10","1","BCA","2023_10_12_06_22_03_m5.jpg","Sudah Verifikasi","446000","2023-10-12","2023-10-12 11:22:03","2023-10-12 11:22:03",""),
("2","10","1","BCA","2023_10_12_06_30_00_m22.jpg","Sudah Verifikasi","2000000","2023-10-12","2023-10-12 11:30:00","2023-10-12 11:30:00",""),
("3","10","1","BCA","2023_10_17_05_40_47_m6.jpg","Sudah Verifikasi","500000","2023-10-17","2023-10-17 10:40:47","2023-10-17 10:40:47",""),
("4","13","1","BCA","2023_10_19_06_22_47_m20.jpg","Sudah Verifikasi","446000","2023-10-05","2023-10-19 11:22:47","2023-10-19 11:22:47",""),
("5","13","1","BCA","2023_10_19_06_24_30_m19.jpg","Sudah Verifikasi","300000","2023-10-08","2023-10-19 11:24:30","2023-10-19 11:24:30",""),
("6","1","1","BRI","2023_10_19_06_25_12_m15.jpg","Sudah Verifikasi","350000","2023-09-15","2023-10-19 11:25:12","2023-10-19 11:25:12",""),
("7","16","1","BRI","2023_10_19_06_25_59_m16.jpg","Sudah Verifikasi","446000","2023-09-24","2023-10-19 11:25:59","2023-10-19 11:25:59",""),
("8","15","1","BCA","2023_10_19_06_26_34_Gambar WhatsApp 2023-08-25 pukul 09.39.25.jpg","Sudah Verifikasi","500000","2023-10-17","2023-10-19 11:26:34","2023-10-19 11:26:34",""),
("9","17","1","BCA","2023_10_19_06_27_22_m14.jpg","Sudah Verifikasi","400000","2023-09-01","2023-10-19 11:27:22","2023-10-19 11:27:22",""),
("10","18","1","BRI","2023_10_19_06_27_57_m22.jpg","Sudah Verifikasi","300000","2023-09-12","2023-10-19 11:27:57","2023-10-19 11:27:57",""),
("11","20","1","BRI","2023_10_19_06_28_42_m27.jpg","Sudah Verifikasi","250000","2023-09-15","2023-10-19 11:28:42","2023-10-19 11:28:42",""),
("12","9","1","BCA","2023_10_19_06_29_28_m9.jpg","Sudah Verifikasi","450000","2023-09-17","2023-10-19 11:29:28","2023-10-19 11:29:28",""),
("13","8","1","BCA","2023_10_19_06_34_27_m2.jpg","Sudah Verifikasi","500000","2023-09-22","2023-10-19 11:34:27","2023-10-19 11:34:27",""),
("14","6","1","BRI","2023_10_19_06_35_24_m13.jpg","Sudah Verifikasi","350000","2023-10-10","2023-10-19 11:35:24","2023-10-19 11:35:24",""),
("15","7","1","BRI","2023_10_19_06_36_16_m1.jpg","Sudah Verifikasi","446000","2023-10-28","2023-10-19 11:36:16","2023-10-19 11:36:16",""),
("16","11","1","BCA","2023_10_19_06_37_04_m28.jpg","Sudah Verifikasi","446000","2023-10-16","2023-10-19 11:37:04","2023-10-19 11:37:04",""),
("17","12","1","BCA","2023_10_19_06_37_34_dress5.jpg","Sudah Verifikasi","400000","2023-10-29","2023-10-19 11:37:34","2023-10-19 11:37:34",""),
("18","24","1","BCA","2023_10_19_06_38_29_m19.jpg","Sudah Verifikasi","500000","2023-09-07","2023-10-19 11:38:29","2023-10-19 11:38:29",""),
("19","14","1","BRI","2023_10_19_06_39_13_m22.jpg","Sudah Verifikasi","50000","2023-09-29","2023-10-19 11:39:13","2023-10-19 11:39:13",""),
("20","3","1","BCA","2023_10_19_06_39_53_m28.jpg","Sudah Verifikasi","446000","2023-09-13","2023-10-19 11:39:53","2023-10-19 11:39:53","");

CREATE TABLE `bayar_alokasi` (
  `id_bayar_alokasi` int(10) NOT NULL AUTO_INCREMENT,
  `id_bayar` int(10) NOT NULL,
  `id_tagihan` int(10) NOT NULL,
  `total_alokasi` int(17) NOT NULL,
  `dialokasikan_oleh` varchar(100) NOT NULL,
  `dibuat_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `diubah_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `dihapus_pada` datetime DEFAULT NULL,
  PRIMARY KEY (`id_bayar_alokasi`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;

INSERT INTO bayar_alokasi VALUES
("1","1","92","446000","Otomatis Oleh Sistem","2023-10-12 11:27:32","2023-10-12 11:27:32",""),
("2","2","93","446000","Otomatis Oleh Sistem","2023-10-12 11:31:48","2023-10-12 11:31:48",""),
("3","2","94","446000","Otomatis Oleh Sistem","2023-10-12 11:31:48","2023-10-12 11:31:48",""),
("4","2","95","1108000","Otomatis Oleh Sistem","2023-10-12 11:31:48","2023-10-12 11:31:48",""),
("5","3","95","500000","Otomatis Oleh Sistem","2023-10-17 10:40:47","2023-10-17 10:40:47",""),
("6","4","131","446000","Otomatis Oleh Sistem","2023-10-19 11:22:47","2023-10-19 11:22:47",""),
("7","5","131","54000","Otomatis Oleh Sistem","2023-10-19 11:24:30","2023-10-19 11:24:30",""),
("8","5","132","246000","Otomatis Oleh Sistem","2023-10-19 11:24:30","2023-10-19 11:24:30",""),
("9","6","1","350000","Otomatis Oleh Sistem","2023-10-19 11:25:12","2023-10-19 11:25:12",""),
("10","7","170","446000","Otomatis Oleh Sistem","2023-10-19 11:25:59","2023-10-19 11:25:59",""),
("11","8","157","500000","Otomatis Oleh Sistem","2023-10-19 11:26:34","2023-10-19 11:26:34",""),
("12","9","183","400000","Otomatis Oleh Sistem","2023-10-19 11:27:22","2023-10-19 11:27:22",""),
("13","10","196","300000","Otomatis Oleh Sistem","2023-10-19 11:27:57","2023-10-19 11:27:57",""),
("14","11","222","250000","Otomatis Oleh Sistem","2023-10-19 11:28:42","2023-10-19 11:28:42",""),
("15","12","79","450000","Otomatis Oleh Sistem","2023-10-19 11:29:28","2023-10-19 11:29:28",""),
("16","13","66","500000","Otomatis Oleh Sistem","2023-10-19 11:34:27","2023-10-19 11:34:27",""),
("17","14","40","350000","Otomatis Oleh Sistem","2023-10-19 11:35:24","2023-10-19 11:35:24",""),
("18","15","53","446000","Otomatis Oleh Sistem","2023-10-19 11:36:16","2023-10-19 11:36:16",""),
("19","16","105","446000","Otomatis Oleh Sistem","2023-10-19 11:37:04","2023-10-19 11:37:04",""),
("20","17","118","400000","Otomatis Oleh Sistem","2023-10-19 11:37:34","2023-10-19 11:37:34",""),
("21","19","144","50000","Otomatis Oleh Sistem","2023-10-19 11:39:13","2023-10-19 11:39:13",""),
("22","20","27","446000","Otomatis Oleh Sistem","2023-10-19 11:39:53","2023-10-19 11:39:53","");

CREATE TABLE `bayar_metode` (
  `id_bayar_metode` int(10) NOT NULL AUTO_INCREMENT,
  `metode` varchar(100) NOT NULL,
  `nomor_rekening` varchar(100) NOT NULL,
  `dibuat_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `diubah_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `dihapus_pada` datetime DEFAULT NULL,
  PRIMARY KEY (`id_bayar_metode`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

INSERT INTO bayar_metode VALUES
("1","Transfer Ke Bank BTN Rekening SMK Triatma Jaya Badung","00555-0130-0000028","2023-09-19 08:45:03","2023-09-19 08:45:03",""),
("2","Transfer Ke Bank BTN Rekening Osis SMK Triatma Jaya Badung","00555-0188-0000085","2023-09-19 08:45:03","2023-09-19 08:45:03","");

CREATE TABLE `biaya` (
  `id_biaya` int(10) NOT NULL AUTO_INCREMENT,
  `id_periode` int(10) NOT NULL,
  `deskripsi_biaya` varchar(200) NOT NULL,
  `jumlah_biaya` int(17) NOT NULL,
  `tanggal_jatuh_tempo` date NOT NULL,
  `tingkat` int(2) DEFAULT NULL,
  `id_jurusan` int(10) DEFAULT NULL,
  `dibuat_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `diubah_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `dihapus_pada` datetime DEFAULT NULL,
  PRIMARY KEY (`id_biaya`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

INSERT INTO biaya VALUES
("1","2","SPP Juli 2023","500000","2023-07-20","12","1","2023-08-29 11:56:00","2023-08-29 11:56:00",""),
("2","2","SPP Agustus 2023","446000","2023-08-20","12","1","2023-08-29 11:58:34","2023-08-29 11:58:34",""),
("3","2","SPP September 2023","446000","2023-09-20","12","1","2023-08-29 12:01:13","2023-08-29 12:01:13",""),
("5","2","Uang Studi Tur","2500000","2023-09-22","12","1","2023-08-30 09:58:36","2023-08-30 09:58:36",""),
("6","2","SPP Oktober 2023","446000","2023-10-20","12","1","2023-08-30 11:43:15","2023-08-30 11:43:15",""),
("7","2","SPP November 2023","446000","2023-11-20","12","1","2023-08-30 11:43:59","2023-08-30 11:43:59",""),
("8","2","SPP Desember 2023","446000","2023-12-20","12","1","2023-08-30 11:44:45","2023-08-30 11:44:45",""),
("9","2","SPP Januari 2024","446000","2024-01-20","12","1","2023-08-30 11:45:45","2023-08-30 11:45:45",""),
("10","2","SPP Februari 2024","446000","2024-02-20","12","1","2023-08-30 11:47:04","2023-08-30 11:47:04",""),
("11","2","SPP Maret 2024","446000","2024-03-20","12","1","2023-08-30 11:49:22","2023-08-30 11:49:22",""),
("12","2","SPP April 2024","446000","2024-04-20","12","1","2023-08-30 11:49:58","2023-08-30 11:49:58",""),
("13","2","SPP Mei 2024","446000","2024-05-20","12","1","2023-08-30 11:50:51","2023-08-30 11:50:51",""),
("14","2","SPP Juni 2024","446000","2024-06-20","12","1","2023-08-30 11:51:22","2023-08-30 11:51:22","");

CREATE TABLE `jurusan` (
  `id_jurusan` int(10) NOT NULL AUTO_INCREMENT,
  `jurusan` varchar(100) NOT NULL,
  `dibuat_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `diubah_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `dihapus_pada` datetime DEFAULT NULL,
  PRIMARY KEY (`id_jurusan`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

INSERT INTO jurusan VALUES
("1","Pengembangan Perangkat Lunak & Gim","2023-09-05 08:40:54","2023-09-05 08:40:54",""),
("2","Tata Kecantikan","2023-09-05 08:40:54","2023-09-05 08:40:54",""),
("3","Tata Boga","2023-09-05 08:40:54","2023-09-05 08:40:54",""),
("4","Perhotelan","2023-09-05 08:40:54","2023-09-05 08:40:54","");

CREATE TABLE `periode` (
  `id_periode` int(10) NOT NULL AUTO_INCREMENT,
  `periode` varchar(100) NOT NULL,
  `tanggal_awal` date NOT NULL,
  `tanggal_akhir` date NOT NULL,
  `dibuat_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `diubah_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `dihapus_pada` datetime DEFAULT NULL,
  PRIMARY KEY (`id_periode`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

INSERT INTO periode VALUES
("1","Tahun Ajar 2022/2023","2022-07-01","2023-06-30","2023-07-26 11:25:45","2023-07-26 11:25:45",""),
("2","Tahun Ajar 2023/2024","2023-07-01","2024-06-30","2023-07-26 12:39:26","2023-07-26 12:39:26",""),
("3","Tahun Ajar 2024/2025","2024-07-01","2025-06-30","2023-08-22 11:09:57","2023-08-22 11:09:57",""),
("6","Tahun Ajar 2021/2022","2021-07-01","2022-06-30","2023-08-23 09:15:35","2023-08-23 09:15:35","");

CREATE TABLE `siswa` (
  `id_siswa` int(10) NOT NULL AUTO_INCREMENT,
  `nis` varchar(20) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `kelas` varchar(50) NOT NULL,
  `tingkat` int(2) NOT NULL,
  `id_jurusan` int(10) NOT NULL,
  `alamat` text NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `dibuat_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `diubah_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `dihapus_pada` datetime DEFAULT NULL,
  PRIMARY KEY (`id_siswa`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

INSERT INTO siswa VALUES
("1","4950","ALINE SYAHFITRI","XII PPLG","12","1","Jl. Tunjung 1 Kerobokan Kelod No.7","+62 818-0559-4344","aline@gmail.com","2023-08-23 11:44:03","2023-08-23 11:44:03",""),
("2","4951","BEZALIEL CAHYA YEHUDA","XII PPLG","12","1","Jl.","+62 857-3805-5323","bebek@gmail.com","2023-08-23 11:44:09","2023-08-23 11:44:09",""),
("3","4952","FIBRI WILIANA PUTRI","XII PPLG","12","1","Denpasar","+62 813-3968-2031","aline@gmail.com","2023-08-23 11:44:25","2023-08-23 11:44:25",""),
("6","4953","GEDE ANDI PRAYOGA","XII PPLG","12","1","Denpasar","+62 878-6063-5630","andi@gmail.com","2023-09-05 09:42:19","2023-09-05 09:42:19",""),
("7","4954","GEDE ERIK FUGIANTO LILA","XII PPLG","12","1","Badung","+62 857-3810-7613","erik@gmail.com","2023-09-05 09:47:57","2023-09-05 09:47:57",""),
("8","4955","I PUTU ARYA ADY SUSENA","XII PPLG","12","1","Legian","+62 896-6171-8111","arya@gmail.com","2023-09-05 12:26:20","2023-09-05 12:26:20",""),
("9","4956","KOMANG RISMA TRI PRADNYANI","XII PPLG","12","1","Badung","+62 857-9295-8529","Risma@gmail.com","2023-09-12 09:14:50","2023-09-12 09:14:50",""),
("10","4957","MAGDALENA FEBIAYU KANTUR","XII PPLG","12","1","Abianbase","+62 812-4640-1384","Entin@gmail.com","2023-09-12 09:15:55","2023-09-12 09:15:55",""),
("11","4958","NASYWA RAMADHANI","XII PPLG","12","1","Denpasar","+62 858-5797-2058","nasywa@gmail.com","2023-09-12 09:16:47","2023-09-12 09:16:47",""),
("12","4969","NI KADEK DWI SWANDEWI","XII PPLG","12","1","Canggu","+62 878-6005-2445","dwikkk@gmail.com","2023-09-12 09:17:46","2023-09-12 09:17:46",""),
("13","4960","NI KADEK NINA ANTARI","XII PPLG","12","1","Kapal","+62 898-5337-373","ninaaa@gmail.com","2023-09-12 09:18:34","2023-09-12 09:18:34",""),
("14","4961","NI LUH PUTU CHELSEA WIDYADARI","XII PPLG","12","1","Canggu","+62 877-3463-2004","ecikk@gmail.com","2023-09-12 09:19:23","2023-09-12 09:19:23",""),
("15","4962","NI LUH PUTU DIAH MARTIANI","XII PPLG","12","1","Badung","+62 895-3945-36866","diahh@gmail.com","2023-09-12 09:20:23","2023-09-12 09:20:23",""),
("16","4963","NI PUTU NIA PRADNYA OKTAFIANI","XII PPLG","12","1","Tanah Lot","+62 895-0846-6041","niaa@gmail.com","2023-09-12 09:21:08","2023-09-12 09:21:08",""),
("17","4964","WILLIAMS JACOBUS FELANUEL","XII PPLG","12","1","Dalung","+62 819-1791-3625","William@gmail.com","2023-09-12 09:22:02","2023-09-12 09:22:02",""),
("18","4965","ZAID ASSYA YUDAH","XII PPLG","12","1","Denpasar","+62 857-3891-0245","zaidd@gmail.com","2023-09-12 09:22:47","2023-09-12 09:22:47",""),
("19","4966","DEWA MADE MARTHA ABIMAYU","XII RPL","12","1","Abianbase","+62 857-3801-4582","dewaaa@gmail.com","2023-09-12 09:23:31","2023-09-12 09:23:31",""),
("20","4967","FERRELL FEIVEL WAWORUNTU","XII PPLG","12","1","Denpasar","+62 812-3918-2412","fereell@gmail.com","2023-09-12 09:24:32","2023-09-12 09:24:32",""),
("21","4968","ARISTA","XII Perhotelan","12","4","denpasar","0817872765","arista@gmail.com","2023-09-12 09:27:36","2023-09-12 09:27:36",""),
("22","4969","OKTA","XII Perhotelan","12","4","DPS","0834683284","okta@gmail.com","2023-09-12 09:28:55","2023-09-12 09:28:55",""),
("23","4970","LOREN","XII Perhotelan","12","4","DPS","0889287363","loren@gmail.com","2023-09-12 09:29:38","2023-09-12 09:29:38",""),
("24","4971","DESINTA","XII Perhotelan","12","4","DPS","0861283582","desinta@gmail.com","2023-09-12 09:31:24","2023-09-12 09:31:24","");

CREATE TABLE `tagihan` (
  `id_tagihan` int(10) NOT NULL AUTO_INCREMENT,
  `id_biaya` int(10) NOT NULL,
  `id_siswa` int(10) NOT NULL,
  `kelas` varchar(50) NOT NULL,
  `keterangan` varchar(200) NOT NULL,
  `potongan` int(20) NOT NULL DEFAULT 0,
  `total_terbayar` int(20) NOT NULL DEFAULT 0,
  `dibuat_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `diubah_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `dihapus_pada` datetime DEFAULT NULL,
  PRIMARY KEY (`id_tagihan`)
) ENGINE=InnoDB AUTO_INCREMENT=235 DEFAULT CHARSET=latin1;

INSERT INTO tagihan VALUES
("1","1","1","XII PPLG","","0","350000","2023-10-12 11:20:42","2023-10-12 11:20:42",""),
("2","2","1","XII PPLG","","0","0","2023-10-12 11:20:42","2023-10-12 11:20:42",""),
("3","3","1","XII PPLG","","0","0","2023-10-12 11:20:42","2023-10-12 11:20:42",""),
("4","5","1","XII PPLG","","0","0","2023-10-12 11:20:42","2023-10-12 11:20:42",""),
("5","6","1","XII PPLG","","0","0","2023-10-12 11:20:42","2023-10-12 11:20:42",""),
("6","7","1","XII PPLG","","0","0","2023-10-12 11:20:42","2023-10-12 11:20:42",""),
("7","8","1","XII PPLG","","0","0","2023-10-12 11:20:42","2023-10-12 11:20:42",""),
("8","9","1","XII PPLG","","0","0","2023-10-12 11:20:42","2023-10-12 11:20:42",""),
("9","10","1","XII PPLG","","0","0","2023-10-12 11:20:42","2023-10-12 11:20:42",""),
("10","11","1","XII PPLG","","0","0","2023-10-12 11:20:42","2023-10-12 11:20:42",""),
("11","12","1","XII PPLG","","0","0","2023-10-12 11:20:42","2023-10-12 11:20:42",""),
("12","13","1","XII PPLG","","0","0","2023-10-12 11:20:42","2023-10-12 11:20:42",""),
("13","14","1","XII PPLG","","0","0","2023-10-12 11:20:42","2023-10-12 11:20:42",""),
("14","1","2","XII PPLG","","0","0","2023-10-12 11:20:42","2023-10-12 11:20:42",""),
("15","2","2","XII PPLG","","0","0","2023-10-12 11:20:42","2023-10-12 11:20:42",""),
("16","3","2","XII PPLG","","0","0","2023-10-12 11:20:42","2023-10-12 11:20:42",""),
("17","5","2","XII PPLG","","0","0","2023-10-12 11:20:42","2023-10-12 11:20:42",""),
("18","6","2","XII PPLG","","0","0","2023-10-12 11:20:42","2023-10-12 11:20:42",""),
("19","7","2","XII PPLG","","0","0","2023-10-12 11:20:42","2023-10-12 11:20:42",""),
("20","8","2","XII PPLG","","0","0","2023-10-12 11:20:42","2023-10-12 11:20:42",""),
("21","9","2","XII PPLG","","0","0","2023-10-12 11:20:42","2023-10-12 11:20:42",""),
("22","10","2","XII PPLG","","0","0","2023-10-12 11:20:42","2023-10-12 11:20:42",""),
("23","11","2","XII PPLG","","0","0","2023-10-12 11:20:42","2023-10-12 11:20:42",""),
("24","12","2","XII PPLG","","0","0","2023-10-12 11:20:42","2023-10-12 11:20:42",""),
("25","13","2","XII PPLG","","0","0","2023-10-12 11:20:42","2023-10-12 11:20:42",""),
("26","14","2","XII PPLG","","0","0","2023-10-12 11:20:42","2023-10-12 11:20:42",""),
("27","1","3","XII PPLG","","0","446000","2023-10-12 11:20:42","2023-10-12 11:20:42",""),
("28","2","3","XII PPLG","","0","0","2023-10-12 11:20:42","2023-10-12 11:20:42",""),
("29","3","3","XII PPLG","","0","0","2023-10-12 11:20:42","2023-10-12 11:20:42",""),
("30","5","3","XII PPLG","","0","0","2023-10-12 11:20:42","2023-10-12 11:20:42",""),
("31","6","3","XII PPLG","","0","0","2023-10-12 11:20:42","2023-10-12 11:20:42",""),
("32","7","3","XII PPLG","","0","0","2023-10-12 11:20:42","2023-10-12 11:20:42",""),
("33","8","3","XII PPLG","","0","0","2023-10-12 11:20:42","2023-10-12 11:20:42",""),
("34","9","3","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("35","10","3","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("36","11","3","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("37","12","3","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("38","13","3","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("39","14","3","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("40","1","6","XII PPLG","","0","350000","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("41","2","6","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("42","3","6","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("43","5","6","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("44","6","6","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("45","7","6","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("46","8","6","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("47","9","6","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("48","10","6","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("49","11","6","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("50","12","6","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("51","13","6","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("52","14","6","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("53","1","7","XII PPLG","","0","446000","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("54","2","7","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("55","3","7","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("56","5","7","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("57","6","7","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("58","7","7","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("59","8","7","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("60","9","7","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("61","10","7","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("62","11","7","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("63","12","7","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("64","13","7","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("65","14","7","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("66","1","8","XII PPLG","","0","500000","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("67","2","8","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("68","3","8","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("69","5","8","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("70","6","8","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("71","7","8","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("72","8","8","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("73","9","8","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("74","10","8","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("75","11","8","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("76","12","8","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("77","13","8","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("78","14","8","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("79","1","9","XII PPLG","","0","450000","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("80","2","9","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("81","3","9","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("82","5","9","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("83","6","9","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("84","7","9","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("85","8","9","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("86","9","9","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("87","10","9","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("88","11","9","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("89","12","9","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("90","13","9","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("91","14","9","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("92","1","10","XII PPLG","","0","446000","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("93","2","10","XII PPLG","","0","446000","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("94","3","10","XII PPLG","","0","446000","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("95","5","10","XII PPLG","","0","1608000","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("96","6","10","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("97","7","10","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("98","8","10","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("99","9","10","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("100","10","10","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43","");
INSERT INTO tagihan VALUES
("101","11","10","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("102","12","10","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("103","13","10","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("104","14","10","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("105","1","11","XII PPLG","","0","446000","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("106","2","11","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("107","3","11","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("108","5","11","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("109","6","11","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("110","7","11","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("111","8","11","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("112","9","11","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("113","10","11","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("114","11","11","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("115","12","11","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("116","13","11","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("117","14","11","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("118","1","12","XII PPLG","","0","400000","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("119","2","12","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("120","3","12","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("121","5","12","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("122","6","12","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("123","7","12","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("124","8","12","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("125","9","12","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("126","10","12","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("127","11","12","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("128","12","12","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("129","13","12","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("130","14","12","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("131","1","13","XII PPLG","","0","500000","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("132","2","13","XII PPLG","","0","246000","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("133","3","13","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("134","5","13","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("135","6","13","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("136","7","13","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("137","8","13","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("138","9","13","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("139","10","13","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("140","11","13","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("141","12","13","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("142","13","13","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("143","14","13","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("144","1","14","XII PPLG","","0","50000","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("145","2","14","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("146","3","14","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("147","5","14","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("148","6","14","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("149","7","14","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("150","8","14","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("151","9","14","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("152","10","14","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("153","11","14","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("154","12","14","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("155","13","14","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("156","14","14","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("157","1","15","XII PPLG","","0","500000","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("158","2","15","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("159","3","15","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("160","5","15","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("161","6","15","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("162","7","15","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("163","8","15","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("164","9","15","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("165","10","15","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("166","11","15","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("167","12","15","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("168","13","15","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("169","14","15","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("170","1","16","XII PPLG","","0","446000","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("171","2","16","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("172","3","16","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("173","5","16","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("174","6","16","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("175","7","16","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("176","8","16","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("177","9","16","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("178","10","16","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("179","11","16","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("180","12","16","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("181","13","16","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("182","14","16","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("183","1","17","XII PPLG","","0","400000","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("184","2","17","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("185","3","17","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("186","5","17","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("187","6","17","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("188","7","17","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("189","8","17","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("190","9","17","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("191","10","17","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("192","11","17","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("193","12","17","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("194","13","17","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("195","14","17","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("196","1","18","XII PPLG","","0","300000","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("197","2","18","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("198","3","18","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("199","5","18","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("200","6","18","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43","");
INSERT INTO tagihan VALUES
("201","7","18","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("202","8","18","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("203","9","18","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("204","10","18","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("205","11","18","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("206","12","18","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("207","13","18","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("208","14","18","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("209","1","19","XII RPL","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("210","2","19","XII RPL","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("211","3","19","XII RPL","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("212","5","19","XII RPL","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("213","6","19","XII RPL","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("214","7","19","XII RPL","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("215","8","19","XII RPL","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("216","9","19","XII RPL","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("217","10","19","XII RPL","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("218","11","19","XII RPL","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("219","12","19","XII RPL","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("220","13","19","XII RPL","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("221","14","19","XII RPL","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("222","1","20","XII PPLG","","0","250000","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("223","2","20","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("224","3","20","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("225","5","20","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("226","6","20","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("227","7","20","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("228","8","20","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("229","9","20","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("230","10","20","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("231","11","20","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("232","12","20","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("233","13","20","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43",""),
("234","14","20","XII PPLG","","0","0","2023-10-12 11:20:43","2023-10-12 11:20:43","");

CREATE TABLE `user` (
  `id_user` int(10) NOT NULL AUTO_INCREMENT,
  `nama` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `hak_akses` int(1) NOT NULL,
  `dibuat_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `diubah_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `dihapus_pada` datetime DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO user VALUES
("1","Magdalena Febiayu","adminn","adminn","2","2023-08-29 12:18:05","2023-08-29 12:18:05","");