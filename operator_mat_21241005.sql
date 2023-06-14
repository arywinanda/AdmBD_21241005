-- menggunakan select statement untuk 1 nilai literal
select 77 as literalInteger; -- untuk bilangan bulat
select  'mataram' as kota; -- literal untuk char
select '2023/20/05' as date; -- literal untuk date
select 77 < 3 as booleanLiteral; -- literal boolean

-- menggunakan select statement untuk 2 atau lebih literal
select 77 as angka, true as nilai_logika, 'UNDIKMA' as teks;

-- menggunakan select untuk null
select Null as kosong;

-- menggunakan SELECT statement untuk operator matematika
select 5%2 as sisa_bagi, 5/2 as hasil_bagi,5 DIV 2 as hasil_bagi_int; 

-- Latihan mandiri
select 4*2 as jawab_1, (4*8)%7 as jawab_2, (4*8)mod 7 as jawaban_3;

-- operator matematika untuk menghasilkan total beli(qty*harga) pada tabel tr_penjualan
use dqlabpraktek2;
select qty*harga as total_beli from tr_penjualan_dqlab;
select nama_produk, qty*harga as total_beli from tr_penjualan_dqlab;
select nama_produk, qty, harga, qty*harga as total_beli from tr_penjualan_dqlab;

-- operator perbandingan
select 5=5, 5<>5, 5<>4,5!=5,5!=4,5>4;
select 1=true,1=false,5>=5,5.2=5.20000,NULL=1,NULL=NULL;
select Nama_produk, qty, qty >=3 from tr_penjualan_dqlab;
select POW(3,2), ROUND(3.14),ROUND(3,54),ROUND(3.155,1), ROUND(3.155,2),FLOOR(4.28),FLOOR(4.78),ceiling(4.39),ceiling(4.55);
SELECT now(), year('2022-05-20'),datediff('2022-05-20', '2022-05-01'),day(now()); 

-- mendapatkan lastest buy dari produk
select nama_produk,datediff(now(),tgl_transaksi) as latest_buy,year(tgl_transaksi) from tr_penjualan_dqlab;

-- klausal where untuk filtering atau penyaringan
-- ambil nama produk,dan qty dari tabel tr_penjualan_dqlab yg qty lebih dari 2
select nama_produk, qty from tr_penjualan_dqlab where qty > 2;
select tgl_transaksi,nama_produk,qty,harga,qty*harga as total_beli from tr_penjualan_dqlab where kode_pelanggan = 'dqlabcust07';
select tgl_transaksi,nama_produk,qty,harga,qty*harga as total_beli from tr_penjualan_dqlab where kode_pelanggan = 'dqlabcust07' and qty>1;

-- penggunaan LIKE pada statement select
-- cari semua nama produk yang namaya diawali huruf 'f'
select nama_produk from tr_penjualan_dqlab where nama_produk like 'f%';