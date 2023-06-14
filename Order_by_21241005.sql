use dqlabpraktek2;
-- mengurutkan data menggunakan ORDER BY
-- ambil nama_produk, dan quantity dari tabel tr_penjualan_dqlab kemudian urutkan berdasarkan qty
select nama_produk, qty from tr_penjualan_dqlab order by qty; -- secara default diurutkan dari terkecil ke besar
select nama_produk, qty from tr_penjualan_dqlab order by nama_produk;

-- mengutrutkan lebih dari 1 kolom menggunakan order by
-- ambil nama_produk, dan quantity dari tabel tr_penjualan_dqlab kemudian urutkan berdasarkan qty dan nama produ
select nama_produk, qty from tr_penjualan_dqlab order by qty, nama_produk;

-- latihan mnadiri
select tgl_transaksi, qty from tr_penjualan_dqlab order by qty,tgl_transaksi;
select nama_pelanggan from ms_pelanggan_dqlab order by nama_pelanggan;
select alamat from ms_pelanggan_dqlab order by alamat;

-- ASC dan DESC mengurutkan dari besar ke kecil
-- ambil nama produk dan quantity dari tabel tr_penjualan_dqlab urutkan berdasarkan quantity secara descending
select nama_produk,qty from tr_penjualan_dqlab order by qty desc;

-- mengurutkan 2 kolom dengan ascending dan descending
select nama_produk,qty from tr_penjualan_dqlab order by qty desc, nama_produk asc;

-- Latihan mandiri
select*from tr_penjualan_dqlab order by tgl_transaksi desc, qty asc;
select*from ms_pelanggan_dqlab order by nama_pelanggan desc;
select*from ms_pelanggan_dqlab order by alamat desc;

-- ambil nama produk,qty,hrga, dan total beli dari tr_penjualan_dqlab berdasarkan total beli
select nama_produk,qty, harga, qty*harga as total_beli from tr_penjualan_dqlab order by total_beli desc;

-- soal cobalah pengurutan dengan ekspresi total harga menggunakan rumusan jumlah barang dikali harga barang dikurangi diskon
select nama_produk,qty, harga, diskon_persen, (qty*harga)-diskon_persen/100 as total_bayar from tr_penjualan_dqlab order by total_bayar desc;