-- Big Data Analytics Kimia Farma
CREATE TABLE base_table AS (
	SELECT
		pn.id_distributor,
		pn.id_cabang,
		CONCAT(pn.id_invoice, '_', pn.id_barang) AS id_penjualan,
        pn.id_invoice,
		pn.id_customer,
        pn.tanggal,
        pn.id_barang,
		pn.jumlah_barang,
		pn.unit,
		pn.harga,
		pn.mata_uang,
		pn.brand_id,
		pn.lini,
		pl.level,
		pl.nama,
        pl.cabang_sales,
		pl.id_group,
		pl.group,
		br.kode_barang,
		br.sektor,
		br.nama_barang,
		br.tipe,
		br.nama_tipe,
		br.kode_lini,
		br.kemasan
	FROM penjualan AS pn
	LEFT JOIN pelanggan AS pl ON pn.id_customer = pl.id_customer
	LEFT JOIN barang AS br ON pn.id_barang = br.kode_barang
);
ALTER TABLE base_table ADD PRIMARY KEY (id_penjualan(20));
