CREATE TABLE aggregate_table AS (
	SELECT
		tanggal,
		id_customer,
        id_distributor,
		brand_id,
        lini as brand,
		id_penjualan,
        nama_barang,
        kemasan,
		nama as customer,
        id_cabang,
        cabang_sales as kota_sales,
        harga,
		SUM(jumlah_barang) AS total_barang_terjual,
		AVG(harga) AS rata_rata_harga,
        SUM(jumlah_barang*harga) AS total_penjualan
	FROM base_table
    group by 
		tanggal,
		id_customer,
        id_distributor,
		brand_id,
        brand,
		id_penjualan,
        nama_barang,
        kemasan,
		customer,
        id_cabang,
        kota_sales,
        harga
);
