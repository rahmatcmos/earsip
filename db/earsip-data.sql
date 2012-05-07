
INSERT INTO m_grup (nama, keterangan) VALUES ('Administrator', 'Admin aplikasi');
INSERT INTO m_grup (nama, keterangan) VALUES ('Pusat Berkas', 'Mengatur seluruh arsip aktif');
INSERT INTO m_grup (nama, keterangan) VALUES ('Pusat Arsip', 'Mengatur seluruh arsip inaktif');


--
-- TOC entry 2133 (class 0 OID 23261)
-- Dependencies: 171
-- Data for Name: m_menu; Type: TABLE DATA; Schema: public; Owner: earsip
--

INSERT INTO m_menu (pid, nama_ref, nama) VALUES (0, 'adm', 'Administrasi');
INSERT INTO m_menu (pid, nama_ref, nama) VALUES (1, 'adm_sistem', 'Sistem');
INSERT INTO m_menu (pid, nama_ref, nama) VALUES (1, 'adm_hak_akses', 'Hak Akses');
INSERT INTO m_menu (pid, nama_ref, nama) VALUES (1, 'adm_rubah_password', 'Rubah Password');
INSERT INTO m_menu (pid, nama_ref, nama) VALUES (0, 'ref', 'Referensi');
INSERT INTO m_menu (pid, nama_ref, nama) VALUES (5, 'ref_tipe_arsip', 'Tipe Arsip');
INSERT INTO m_menu (pid, nama_ref, nama) VALUES (5, 'ref_metoda_pemusnahan', 'Metoda Pemusnahan');
INSERT INTO m_menu (pid, nama_ref, nama) VALUES (5, 'ref_klasifikasi_arsip', 'Klasifikasi Arsip');
INSERT INTO m_menu (pid, nama_ref, nama) VALUES (5, 'ref_indeks_relatif', 'Indeks Relatif');
INSERT INTO m_menu (pid, nama_ref, nama) VALUES (5, 'ref_jabatan', 'Jabatan');
INSERT INTO m_menu (pid, nama_ref, nama) VALUES (0, 'mas', 'Master');
INSERT INTO m_menu (pid, nama_ref, nama) VALUES (11, 'mas_unit_kerja', 'Unit Kerja');
INSERT INTO m_menu (pid, nama_ref, nama) VALUES (11, 'mas_pegawai', 'Pegawai');
INSERT INTO m_menu (pid, nama_ref, nama) VALUES (11, 'mas_arsip', 'Arsip');
INSERT INTO m_menu (pid, nama_ref, nama) VALUES (0, 'trans', 'Transaksi');
INSERT INTO m_menu (pid, nama_ref, nama) VALUES (15, 'trans_penyerahan', 'Penyerahan');
INSERT INTO m_menu (pid, nama_ref, nama) VALUES (15, 'trans_peminjaman', 'Peminjaman');
INSERT INTO m_menu (pid, nama_ref, nama) VALUES (15, 'trans_pengembalian', 'Pengembalian');
INSERT INTO m_menu (pid, nama_ref, nama) VALUES (15, 'trans_pemusnahan', 'Pemusnahan');
INSERT INTO m_menu (pid, nama_ref, nama) VALUES (0, 'lap', 'Laporan');
INSERT INTO m_menu (pid, nama_ref, nama) VALUES (20, 'lap_arsip_jra', 'Arsip JRA');



--
-- TOC entry 2136 (class 0 OID 23290)
-- Dependencies: 176
-- Data for Name: m_unit_kerja; Type: TABLE DATA; Schema: public; Owner: earsip
--

INSERT INTO m_unit_kerja (kode, nama, nama_pimpinan, keterangan) VALUES ('DIRUT', 'DIREKTUR UTAMA', '', '');
INSERT INTO m_unit_kerja (kode, nama, nama_pimpinan, keterangan) VALUES ('DIRPEM', 'DIREKTUR PEMASARAN', '', '');
INSERT INTO m_unit_kerja (kode, nama, nama_pimpinan, keterangan) VALUES ('DIRUM', 'DIREKTUR UMUM', '', '');
INSERT INTO m_unit_kerja (kode, nama, nama_pimpinan, keterangan) VALUES ('DIROPS', 'DIREKTUR OPERASIONAL', '', '');
INSERT INTO m_unit_kerja (kode, nama, nama_pimpinan, keterangan) VALUES ('DIRKEP', 'DIREKTUR KEPATUHAN', '', '');
INSERT INTO m_unit_kerja (kode, nama, nama_pimpinan, keterangan) VALUES ('PERC', 'DIVISI PERENCANAAN DAN PENGEMBANGAN', '', '');
INSERT INTO m_unit_kerja (kode, nama, nama_pimpinan, keterangan) VALUES ('KRD', 'DIVISI KREDIT', '', '');
INSERT INTO m_unit_kerja (kode, nama, nama_pimpinan, keterangan) VALUES ('US', 'UNIT USAHA SYARIAH', '', '');
INSERT INTO m_unit_kerja (kode, nama, nama_pimpinan, keterangan) VALUES ('PEM', 'PEMASARAN', '', '');
INSERT INTO m_unit_kerja (kode, nama, nama_pimpinan, keterangan) VALUES ('UM', 'DIVISI UMUM', '', '');
INSERT INTO m_unit_kerja (kode, nama, nama_pimpinan, keterangan) VALUES ('SDM', 'DIVISI SDM', '', '');
INSERT INTO m_unit_kerja (kode, nama, nama_pimpinan, keterangan) VALUES ('MKHU', 'DIVISI MKHU', '', '');
INSERT INTO m_unit_kerja (kode, nama, nama_pimpinan, keterangan) VALUES ('SKAI', 'SATUAN KERJA AUDIT INTERN', '', '');
INSERT INTO m_unit_kerja (kode, nama, nama_pimpinan, keterangan) VALUES ('TSI', 'DIVISI TSI & AKUNTANSI - TSI', '', '');
INSERT INTO m_unit_kerja (kode, nama, nama_pimpinan, keterangan) VALUES ('AKT', 'DIVISI TSI & AKUNTANSI - AKUNTANSI', '', '');
INSERT INTO m_unit_kerja (kode, nama, nama_pimpinan, keterangan) VALUES ('AMU', 'TIM AMU', '', '');
INSERT INTO m_unit_kerja (kode, nama, nama_pimpinan, keterangan) VALUES ('DT', 'DIVISI DANA DAN TREASURY - TREASURY', '', '');
INSERT INTO m_unit_kerja (kode, nama, nama_pimpinan, keterangan) VALUES ('TEK', 'TEKNISI IT', '', '');


--
-- TOC entry 2144 (class 0 OID 23358)
-- Dependencies: 188
-- Data for Name: r_jabatan; Type: TABLE DATA; Schema: public; Owner: earsip
--

INSERT INTO r_jabatan (nama, keterangan) VALUES ('Direktur Utama', 'Jabatan utama Direktur');
INSERT INTO r_jabatan (nama, keterangan) VALUES ('Teknisi', 'Teknisi');


--
-- TOC entry 2134 (class 0 OID 23270)
-- Dependencies: 173 2132 2144 2136
-- Data for Name: m_pegawai; Type: TABLE DATA; Schema: public; Owner: earsip
--

INSERT INTO m_pegawai (unit_kerja_id, grup_id, jabatan_id, nip, nama, psw, status) VALUES (18, 1, 2, '1', 'Administrator', 'admin', 1);
INSERT INTO m_pegawai (unit_kerja_id, grup_id, jabatan_id, nip, nama, psw, status) VALUES (1, 2, 2, 'NIP.0001', 'User Pusat Berkas', 'berkas', 1);
INSERT INTO m_pegawai (unit_kerja_id, grup_id, jabatan_id, nip, nama, psw, status) VALUES (10, 3, 2, 'NIP.0002', 'User Pusat Arsip', 'arsip', 1);


--
-- TOC entry 2127 (class 0 OID 23190)
-- Dependencies: 161 2134 2133
-- Data for Name: log; Type: TABLE DATA; Schema: public; Owner: earsip
--



--
-- TOC entry 2141 (class 0 OID 23329)
-- Dependencies: 182 2136
-- Data for Name: r_berkas_klas; Type: TABLE DATA; Schema: public; Owner: earsip
--

INSERT INTO r_berkas_klas (unit_kerja_id, kode, nama, keterangan) VALUES (1, '0101', 'Rapat Intern', 'Naskah - naskah yang berkaitan dengan rapat Direktur Utama dengan para Direksi dalam membahas kasus - kasus tertentu atau rapat rutin dari tahap persiapan, pelaksanaan sampai notulen hasil rapat intern');
INSERT INTO r_berkas_klas (unit_kerja_id, kode, nama, keterangan) VALUES (1, '0102', 'Rapat Extern', 'Naskah - naskah yang berkaitan dengan rapat Direktur Utama dengan pihak extern dari tahap persiapan, pelaksanaan sampai notulen hasil rapat');
INSERT INTO r_berkas_klas (unit_kerja_id, kode, nama, keterangan) VALUES (1, '0201', 'Kerjasama Direktur Utama dengan Pihak Ketiga', 'Naskah - naskah yang berkaitan dengan kerjasama Direktur Utama perihal operasional Bank');
INSERT INTO r_berkas_klas (unit_kerja_id, kode, nama, keterangan) VALUES (1, '0301', 'Pembinaan Ke Unit Operasional', 'Naskah - naskah yang berkaitan dengan surat - surat pembinaan ke Unit-unit Operasional');
INSERT INTO r_berkas_klas (unit_kerja_id, kode, nama, keterangan) VALUES (1, '0401', 'Berita Acara Serah Terima Jabatan', 'Naskah - naskah yang berhubungan dengan Berita Acara Serah Terima Jabatan, dalam hal Direktur Utama melaksanakan perjalanan dinas lebih dari 3 (tiga) hari');
INSERT INTO r_berkas_klas (unit_kerja_id, kode, nama, keterangan) VALUES (1, '0501', 'Undangan Kepada Intern', 'Naskah - naskah yang berkaitan dengan undangan dari Direktur Utama untuk pihak intern Bank Jateng');
INSERT INTO r_berkas_klas (unit_kerja_id, kode, nama, keterangan) VALUES (1, '0502', 'Undangan Kepada Extern', 'Naskah - naskah yang berkaitan dengan undangan dari Direktur Utama untuk pihak extern Bank Jateng');
INSERT INTO r_berkas_klas (unit_kerja_id, kode, nama, keterangan) VALUES (1, '0601', 'IJIN', 'Naskah - naskah yang berkaitan dengan ijin Direktur Utama kepada Pemegang Saham atau Dewan Komisaris');
INSERT INTO r_berkas_klas (unit_kerja_id, kode, nama, keterangan) VALUES (1, '0701', 'Lain - lain', 'Naskah - naskah yang berkaitan dengan kegiatan / aktivitas Direktur Utama di lembaga extern');
INSERT INTO r_berkas_klas (unit_kerja_id, kode, nama, keterangan) VALUES (1, '1502', 'Laporan', 'Naskah - naskah yang berkaitan dengan laporan Direktur Utama mulai dari tahap persiapan, pelaksanaan sampai notulen hasil rapat intern');
INSERT INTO r_berkas_klas (unit_kerja_id, kode, nama, keterangan) VALUES (2, '0101', 'Rapat Intern', 'Naskah - naskah yang berkaitan dengan rapat Direktur Pemasaran dengan pihak intern dalam membahas kasus - kasus tertentu atau rapat rutin dari tahap persiapan, pelaksanaan sampai notulen hasil rapat');
INSERT INTO r_berkas_klas (unit_kerja_id, kode, nama, keterangan) VALUES (2, '0102', 'Rapat Extern', 'Naskah - naskah yang berkaitan dengan rapat Direktur Pemasaran dengan pihak extern mulai dari tahap persiapan, pelaksanaan sampai notulen hasil rapat');
INSERT INTO r_berkas_klas (unit_kerja_id, kode, nama, keterangan) VALUES (2, '0201', 'Kerjasama Direktur Pemasaran dengan Pihak Ketiga (Dana)', 'Naskah - naskah yang berkaitan dengan kerjasama Direktur Pemasaran dengan pihak ketiga dibidang penghimpunan dana');
INSERT INTO r_berkas_klas (unit_kerja_id, kode, nama, keterangan) VALUES (2, '0202', 'Kerjasama Direktur Pemasaran dengan Pihak Ketiga (Kredit)', 'Naskah - naskah yang berkaitan dengan kerjasama Direktur Pemasaran dengan pihak ketiga dibidang perkreditan');
INSERT INTO r_berkas_klas (unit_kerja_id, kode, nama, keterangan) VALUES (2, '0301', 'Pembinaan Ke Unit-unit Operasional', 'Naskah - naskah yang berkaitan dengan surat pembinaan Direktur Pemasaran ke Unit-unit Operasional, berkaitan dengan evaluasi kinerja, pencapaian target, dll');
INSERT INTO r_berkas_klas (unit_kerja_id, kode, nama, keterangan) VALUES (2, '0401', 'Berita Acara Serah Terima Jabatan', 'Naskah - naskah yang berkaitan dengan Berita Acara Serah Terima Jabatan dalam hal Direktur Pemasaran melaksanakan perjalanan dinas lebih dari 3 (tiga) hari');
INSERT INTO r_berkas_klas (unit_kerja_id, kode, nama, keterangan) VALUES (2, '0501', 'Undangan Direktur Pemasaran', 'Naskah - naskah yang berkaitan dengan undangan dari Direktur Pemasaran');
INSERT INTO r_berkas_klas (unit_kerja_id, kode, nama, keterangan) VALUES (2, '0601', 'IJIN', 'Naskah - naskah yang berkaitan dengan ijin Direktur Pemasaran kepada Direktur Utama, Pemegang Saham Pengendali, atau Dewan Komisaris');
INSERT INTO r_berkas_klas (unit_kerja_id, kode, nama, keterangan) VALUES (2, '0801', 'Kebinjakan Direktur Pemasaran pada Unit Syariah', 'Naskah - naskah yang berkaitan dengan semua kebijakan Direktu Pemasaran pada Unit Syariah');
INSERT INTO r_berkas_klas (unit_kerja_id, kode, nama, keterangan) VALUES (2, '1501', 'Laporan Berkala', 'Naskah - naskah yang berkaitan dengan laporan dari tahap persiapan, pelaksanaan, hingga pembuatan lapora secara berkala (harian, mingguan, dua mingguan, bulanan, triwulan, semesteran, tahunan)');
INSERT INTO r_berkas_klas (unit_kerja_id, kode, nama, keterangan) VALUES (2, '1502', 'Laporan Insidental', 'Naskah - naskah yang berkaitan dengan laporan dari tahap persiapan, pelaksanaan, hingga pembuatan laporan secara insidentil');
INSERT INTO r_berkas_klas (unit_kerja_id, kode, nama, keterangan) VALUES (3, '0101', 'Rapat Intern', 'Naskah - naskah yang berkaitan dengan rapat Direktur Umum dengan pihak intern dalam membahas kasus - kasus tertentu atau rapat rutin dari tahap persiapan, pelaksanaan sampai notulen hasil rapat');
INSERT INTO r_berkas_klas (unit_kerja_id, kode, nama, keterangan) VALUES (3, '0102', 'Rapat Extern', 'Naskah - naskah yang berkaitan dengan rapat Direktur Umum dengan pihak extern mulai dari tahap persiapan, pelaksanaan sampai notulen hasil rapat');
INSERT INTO r_berkas_klas (unit_kerja_id, kode, nama, keterangan) VALUES (3, '0201', 'Kerjasama Direktur Umum dengan Pihak Ketiga', 'Naskah - naskah yang berkaitan dengan kerjasama Direktur Umum dengan pihak ketiga');
INSERT INTO r_berkas_klas (unit_kerja_id, kode, nama, keterangan) VALUES (3, '0301', 'Pembinaan Ke Unit-unit Operasional', 'Naskah - naskah yang berkaitan dengan surat pembinaan Direktur Umum ke Unit-unit Operasional');
INSERT INTO r_berkas_klas (unit_kerja_id, kode, nama, keterangan) VALUES (3, '0401', 'Berita Acara Serah Terima Jabatan', 'Naskah - naskah yang berkaitan dengan Berita Acara Serah Terima Jabatan dalam hal Direktur Umum melaksanakan perjalanan dinas lebih dari 3 (tiga) hari');
INSERT INTO r_berkas_klas (unit_kerja_id, kode, nama, keterangan) VALUES (3, '0501', 'Undangan Direktur Umum', 'Naskah - naskah yang berkaitan dengan undangan dari Direktur Umum');
INSERT INTO r_berkas_klas (unit_kerja_id, kode, nama, keterangan) VALUES (3, '0601', 'IJIN', 'Naskah - naskah yang berkaitan dengan ijin Direktur Umum kepada Direktur Utama atau Dewan Komisaris');
INSERT INTO r_berkas_klas (unit_kerja_id, kode, nama, keterangan) VALUES (3, '1501', 'Laporan Berkala', 'Naskah - naskah yang berkaitan dengan laporan dari tahap persiapan, pelaksanaan, hingga pembuatan lapora secara berkala (harian, mingguan, dua mingguan, bulanan, triwulan, semesteran, tahunan)');
INSERT INTO r_berkas_klas (unit_kerja_id, kode, nama, keterangan) VALUES (3, '1502', 'Laporan Insidentil', 'Naskah - naskah yang berkaitan dengan laporan dari tahap persiapan, pelaksanaan, hingga pembuatan laporan secara insidentil');
INSERT INTO r_berkas_klas (unit_kerja_id, kode, nama, keterangan) VALUES (4, '0101', 'Rapat Intern', 'Naskah - naskah yang berkaitan dengan rapat Direktur Operasional dengan pihak intern dalam membahas kasus - kasus tertentu atau rapat rutin dari tahap persiapan, pelaksanaan sampai notulen hasil rapat');
INSERT INTO r_berkas_klas (unit_kerja_id, kode, nama, keterangan) VALUES (4, '0102', 'Rapat Extern', 'Naskah - naskah yang berkaitan dengan rapat Direktur Operasional dengan pihak extern mulai dari tahap persiapan, pelaksanaan sampai notulen hasil rapat');
INSERT INTO r_berkas_klas (unit_kerja_id, kode, nama, keterangan) VALUES (4, '0201', 'Kerjasama Direktur Operasional dengan Pihak Ketiga', 'Naskah - naskah yang berkaitan dengan kerjasama Direktur Operasional dengan pihak ketiga dalam bidang Akuntansi dan Teknologi Informasi');
INSERT INTO r_berkas_klas (unit_kerja_id, kode, nama, keterangan) VALUES (4, '0301', 'Pembinaan Ke Unit-unit Operasional', 'Naskah - naskah yang berkaitan dengan surat pembinaan Direktur Operasional ke Unit-unit Operasional perihal Akuntansi, Teknologi Informasi, dll');
INSERT INTO r_berkas_klas (unit_kerja_id, kode, nama, keterangan) VALUES (4, '0401', 'Berita Acara Serah Terima Jabatan', 'Naskah - naskah yang berkaitan dengan Berita Acara Serah Terima Jabatan dalam hal Direktur Operasional melaksanakan perjalanan dinas lebih dari 3 (tiga) hari');
INSERT INTO r_berkas_klas (unit_kerja_id, kode, nama, keterangan) VALUES (4, '0501', 'Undangan Direktur Operasional', 'Naskah - naskah yang berkaitan dengan undangan dari Direktur Operasional');
INSERT INTO r_berkas_klas (unit_kerja_id, kode, nama, keterangan) VALUES (4, '0601', 'IJIN', 'Naskah - naskah yang berkaitan dengan ijin Direktur Operasional kepada Direktur Utama atau Dewan Komisaris');
INSERT INTO r_berkas_klas (unit_kerja_id, kode, nama, keterangan) VALUES (4, '1501', 'Laporan Berkala', 'Naskah - naskah yang berkaitan dengan laporan dari tahap persiapan, pelaksanaan, hingga pembuatan lapora secara berkala (harian, mingguan, dua mingguan, bulanan, triwulan, semesteran, tahunan)');
INSERT INTO r_berkas_klas (unit_kerja_id, kode, nama, keterangan) VALUES (4, '1502', 'Laporan Insidentil', 'Naskah - naskah yang berkaitan dengan laporan dari tahap persiapan, pelaksanaan, hingga pembuatan laporan secara insidentil');
INSERT INTO r_berkas_klas (unit_kerja_id, kode, nama, keterangan) VALUES (5, '0101', 'Rapat Intern', 'Naskah - naskah yang berkaitan dengan rapat Direktur Kepatuhan dengan pihak intern dalam membahas kasus - kasus tertentu atau rapat rutin dari tahap persiapan, pelaksanaan sampai notulen hasil rapat');
INSERT INTO r_berkas_klas (unit_kerja_id, kode, nama, keterangan) VALUES (5, '0102', 'Rapat Extern', 'Naskah - naskah yang berkaitan dengan rapat Direktur Kepatuhan dengan pihak extern mulai dari tahap persiapan, pelaksanaan sampai notulen hasil rapat');
INSERT INTO r_berkas_klas (unit_kerja_id, kode, nama, keterangan) VALUES (5, '0301', 'Pembinaan Ke Unit-unit Operasional', 'Naskah - naskah yang berkaitan dengan penyampaian hasil ranking DPK dll, ke Unit-unit operasional');
INSERT INTO r_berkas_klas (unit_kerja_id, kode, nama, keterangan) VALUES (5, '0501', 'Undangan Direktur Kepatuhan', 'Naskah - naskah yang berkaitan dengan undangan dari Direktur Kepatuhan');
INSERT INTO r_berkas_klas (unit_kerja_id, kode, nama, keterangan) VALUES (5, '1501', 'Laporan Berkala', 'Naskah - naskah yang berkaitan dengan laporan dari tahap persiapan, pelaksanaan, hingga pembuatan lapora secara berkala (harian, mingguan, dua mingguan, bulanan, triwulan, semesteran, tahunan)');
INSERT INTO r_berkas_klas (unit_kerja_id, kode, nama, keterangan) VALUES (5, '1502', 'Laporan Insidentil', 'Naskah - naskah yang berkaitan dengan laporan dari tahap persiapan, pelaksanaan, hingga pembuatan laporan ke KPK, PPATK, dll. secara insidentil');
INSERT INTO r_berkas_klas (unit_kerja_id, kode, nama, keterangan) VALUES (6, '0101', 'Rencana Kerja dan Evaluasi', 'Naskah - naskah yang berkaitan dengan proses perencanaan kerja dan evaluasi dari tahap persiapan berupa pengumpulan data, pengeolahan hingga program kerja tercipta');
INSERT INTO r_berkas_klas (unit_kerja_id, kode, nama, keterangan) VALUES (6, '0102', 'Statistik', 'Naskah - naskah yang berkaitan dengan permintaan, penerimaan, pengiriman data-data untuk keperluan statistik');
INSERT INTO r_berkas_klas (unit_kerja_id, kode, nama, keterangan) VALUES (6, '0201', 'Penelitian dan Pengembangan', 'Naskah - naskah yang berkaitan dengan penelitian dan pengembangan perusahaan antara lain Pasar, Produk dan Kantor');
INSERT INTO r_berkas_klas (unit_kerja_id, kode, nama, keterangan) VALUES (6, '0202', 'Periklanan dan Advertorial', 'Naskah - naskah yang berkaitan dengan penawaran iklan dan advertorial');
INSERT INTO r_berkas_klas (unit_kerja_id, kode, nama, keterangan) VALUES (6, '0203', 'Perancangan atau Design', 'Naskah - naskah yang berkaitan dengan perancangan / design produk');
INSERT INTO r_berkas_klas (unit_kerja_id, kode, nama, keterangan) VALUES (6, '0301', 'Pembianaan Anak Perusahaan', 'Naskah - naskah yang berkaitan dengan pembinaan anak perusahaan dan penyertaan modal Bank Jateng misalnya pada BPR, BPD secuties, Asuransi dll');
INSERT INTO r_berkas_klas (unit_kerja_id, kode, nama, keterangan) VALUES (6, '1401', 'Undangan Intern', 'Naskah - naskah yang berkaitan dengan undangan dari Divisi Perencanaan kepada pihak Intern Bank Jateng');
INSERT INTO r_berkas_klas (unit_kerja_id, kode, nama, keterangan) VALUES (6, '1402', 'Undangan Extern', 'Naskah - naskah yang berkaitan dengan undangan dari Divisi Perencanaan kepada pihak Extern');
INSERT INTO r_berkas_klas (unit_kerja_id, kode, nama, keterangan) VALUES (6, '1501', 'Laporan Berkala', 'Naskah - naskah yang berkaitan dengan laporan dari tahap persiapan, pelaksanaan, hingga pembuatan lapora secara berkala (harian, mingguan, dua mingguan, bulanan, triwulan, semesteran, tahunan)');
INSERT INTO r_berkas_klas (unit_kerja_id, kode, nama, keterangan) VALUES (6, '1502', 'Laporan Insidentil', 'Naskah - naskah yang berkaitan dengan laporan dari tahap persiapan, pelaksanaan, hingga pembuatan laporan secara insidentil');
INSERT INTO r_berkas_klas (unit_kerja_id, kode, nama, keterangan) VALUES (7, '0101', 'Treasury dan Trading Intern', 'Naskah - naskah yang berkaitan dengan Cabang dan Capem (Intern Bank Jateng)');
INSERT INTO r_berkas_klas (unit_kerja_id, kode, nama, keterangan) VALUES (7, '0102', 'Treasury dan Trading Ekstern', 'Naskah - naskah yang berkaitan dengan pihak luar (Ekstern)');
INSERT INTO r_berkas_klas (unit_kerja_id, kode, nama, keterangan) VALUES (7, '0201', 'Settlement Intern', 'Naskah - naskah yang berkaitan dengan Cabang dan Capem (Intern Bank Jateng)');
INSERT INTO r_berkas_klas (unit_kerja_id, kode, nama, keterangan) VALUES (7, '0202', 'Settlement Ekstern', 'Naskah - naskah yang berkaitan dengan pihak luar (Ekstern)');
INSERT INTO r_berkas_klas (unit_kerja_id, kode, nama, keterangan) VALUES (7, '0301', 'Transaksi Luar Negeri Intern', 'Naskah - naskah yang berkaitan dengan Cabang dan Capem (Intern Bank Jateng)');
INSERT INTO r_berkas_klas (unit_kerja_id, kode, nama, keterangan) VALUES (7, '0302', 'Transaksi Luar Negeri Ekstern', 'Naskah - naskah yang berkaitan dengan pihak luar (Ekstern)');
INSERT INTO r_berkas_klas (unit_kerja_id, kode, nama, keterangan) VALUES (7, '0401', 'Kebijakan Dana dan Jasa Luar Negeri Intern', 'Naskah - naskah yang berkaitan dengan Cabang dan Capem (Intern Bank Jateng)');
INSERT INTO r_berkas_klas (unit_kerja_id, kode, nama, keterangan) VALUES (7, '0402', 'Kebijakan Dana dan Jasa Luar Negeri Ekstern', 'Naskah - naskah yang berkaitan dengan pihak luar (Ekstern)');



--
-- TOC entry 2142 (class 0 OID 23339)
-- Dependencies: 184
-- Data for Name: r_berkas_tipe; Type: TABLE DATA; Schema: public; Owner: earsip
--

INSERT INTO r_berkas_tipe (nama, keterangan) VALUES ('Formulir', 'Berkas berupa formulir');
INSERT INTO r_berkas_tipe (nama, keterangan) VALUES ('Berita Acara', 'Berkas berupa berita acara');
INSERT INTO r_berkas_tipe (nama, keterangan) VALUES ('Gambar', 'Berkas berupa gambar diam');
INSERT INTO r_berkas_tipe (nama, keterangan) VALUES ('Video', 'Berkas berupa gambar bergerak');
INSERT INTO r_berkas_tipe (nama, keterangan) VALUES ('Suara', 'Berkas berupa suara');


--
-- TOC entry 2130 (class 0 OID 23220)
-- Dependencies: 165 2142 2141 2134 2136
-- Data for Name: m_berkas; Type: TABLE DATA; Schema: public; Owner: earsip
--

INSERT INTO m_berkas (pegawai_id, berkas_klas_id, unit_kerja_id, berkas_tipe_id, pid, tipe_file, sha, nama, tgl_unggah, tgl_dibuat, nomor, pembuat, judul, masalah, jra, status, status_hapus) VALUES (1, NULL, NULL, NULL, 0, 0, NULL, 'test', '2012-05-03', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1);
INSERT INTO m_berkas (pegawai_id, berkas_klas_id, unit_kerja_id, berkas_tipe_id, pid, tipe_file, sha, nama, tgl_unggah, tgl_dibuat, nomor, pembuat, judul, masalah, jra, status, status_hapus) VALUES (1, NULL, NULL, NULL, 1, 0, NULL, 'test2', '2012-05-03', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1);
INSERT INTO m_berkas (pegawai_id, berkas_klas_id, unit_kerja_id, berkas_tipe_id, pid, tipe_file, sha, nama, tgl_unggah, tgl_dibuat, nomor, pembuat, judul, masalah, jra, status, status_hapus) VALUES (1, NULL, NULL, NULL, 2, 0, NULL, 'coba', '2012-05-03', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1);


--
-- TOC entry 2140 (class 0 OID 23321)
-- Dependencies: 180
-- Data for Name: r_arsip_status; Type: TABLE DATA; Schema: public; Owner: earsip
--

INSERT INTO r_arsip_status (id, keterangan) VALUES (0, 'Ada');
INSERT INTO r_arsip_status (id, keterangan) VALUES (1, 'Dipinjam');
INSERT INTO r_arsip_status (id, keterangan) VALUES (2, 'Hilang');
INSERT INTO r_arsip_status (id, keterangan) VALUES (3, 'Musnah');


--
-- TOC entry 2129 (class 0 OID 23207)
-- Dependencies: 163 2130 2140
-- Data for Name: m_arsip; Type: TABLE DATA; Schema: public; Owner: earsip
--



--
-- TOC entry 2138 (class 0 OID 23309)
-- Dependencies: 178
-- Data for Name: r_akses_berbagi; Type: TABLE DATA; Schema: public; Owner: earsip
--

INSERT INTO r_akses_berbagi (id, keterangan) VALUES (1, 'Lihat (user tertentu)');
INSERT INTO r_akses_berbagi (id, keterangan) VALUES (2, 'Merubah (user tertentu)');
INSERT INTO r_akses_berbagi (id, keterangan) VALUES (3, 'Lihat (global)');
INSERT INTO r_akses_berbagi (id, keterangan) VALUES (4, 'Merubah (global)');


--
-- TOC entry 2131 (class 0 OID 23240)
-- Dependencies: 167 2134 2138 2130
-- Data for Name: m_berkas_berbagi; Type: TABLE DATA; Schema: public; Owner: earsip
--



--
-- TOC entry 2135 (class 0 OID 23282)
-- Dependencies: 174
-- Data for Name: m_sysconfig; Type: TABLE DATA; Schema: public; Owner: earsip
--



--
-- TOC entry 2139 (class 0 OID 23315)
-- Dependencies: 179
-- Data for Name: r_akses_menu; Type: TABLE DATA; Schema: public; Owner: earsip
--

INSERT INTO r_akses_menu (id, keterangan) VALUES (0, 'Tanpa Akses');
INSERT INTO r_akses_menu (id, keterangan) VALUES (1, 'View');
INSERT INTO r_akses_menu (id, keterangan) VALUES (2, 'Insert');
INSERT INTO r_akses_menu (id, keterangan) VALUES (3, 'Update');
INSERT INTO r_akses_menu (id, keterangan) VALUES (4, 'Delete');


--
-- TOC entry 2128 (class 0 OID 23198)
-- Dependencies: 162 2133 2139 2132
-- Data for Name: menu_akses; Type: TABLE DATA; Schema: public; Owner: earsip
--

INSERT INTO menu_akses (menu_id, grup_id, hak_akses_id) VALUES (1, 1, 4);
INSERT INTO menu_akses (menu_id, grup_id, hak_akses_id) VALUES (2, 1, 4);
INSERT INTO menu_akses (menu_id, grup_id, hak_akses_id) VALUES (3, 1, 4);
INSERT INTO menu_akses (menu_id, grup_id, hak_akses_id) VALUES (4, 1, 4);
INSERT INTO menu_akses (menu_id, grup_id, hak_akses_id) VALUES (5, 1, 4);
INSERT INTO menu_akses (menu_id, grup_id, hak_akses_id) VALUES (6, 1, 4);
INSERT INTO menu_akses (menu_id, grup_id, hak_akses_id) VALUES (7, 1, 4);
INSERT INTO menu_akses (menu_id, grup_id, hak_akses_id) VALUES (8, 1, 4);
INSERT INTO menu_akses (menu_id, grup_id, hak_akses_id) VALUES (9, 1, 4);
INSERT INTO menu_akses (menu_id, grup_id, hak_akses_id) VALUES (10, 1, 4);
INSERT INTO menu_akses (menu_id, grup_id, hak_akses_id) VALUES (11, 1, 4);
INSERT INTO menu_akses (menu_id, grup_id, hak_akses_id) VALUES (12, 1, 4);
INSERT INTO menu_akses (menu_id, grup_id, hak_akses_id) VALUES (13, 1, 4);
INSERT INTO menu_akses (menu_id, grup_id, hak_akses_id) VALUES (14, 1, 4);
INSERT INTO menu_akses (menu_id, grup_id, hak_akses_id) VALUES (15, 1, 4);
INSERT INTO menu_akses (menu_id, grup_id, hak_akses_id) VALUES (16, 1, 4);
INSERT INTO menu_akses (menu_id, grup_id, hak_akses_id) VALUES (17, 1, 4);
INSERT INTO menu_akses (menu_id, grup_id, hak_akses_id) VALUES (18, 1, 4);
INSERT INTO menu_akses (menu_id, grup_id, hak_akses_id) VALUES (19, 1, 4);
INSERT INTO menu_akses (menu_id, grup_id, hak_akses_id) VALUES (20, 1, 4);
INSERT INTO menu_akses (menu_id, grup_id, hak_akses_id) VALUES (21, 1, 4);

INSERT INTO menu_akses (menu_id, grup_id, hak_akses_id) VALUES (1, 2, 0);
INSERT INTO menu_akses (menu_id, grup_id, hak_akses_id) VALUES (2, 2, 0);
INSERT INTO menu_akses (menu_id, grup_id, hak_akses_id) VALUES (3, 2, 0);
INSERT INTO menu_akses (menu_id, grup_id, hak_akses_id) VALUES (4, 2, 0);
INSERT INTO menu_akses (menu_id, grup_id, hak_akses_id) VALUES (5, 2, 0);
INSERT INTO menu_akses (menu_id, grup_id, hak_akses_id) VALUES (6, 2, 0);
INSERT INTO menu_akses (menu_id, grup_id, hak_akses_id) VALUES (7, 2, 0);
INSERT INTO menu_akses (menu_id, grup_id, hak_akses_id) VALUES (8, 2, 0);
INSERT INTO menu_akses (menu_id, grup_id, hak_akses_id) VALUES (9, 2, 0);
INSERT INTO menu_akses (menu_id, grup_id, hak_akses_id) VALUES (10, 2, 0);
INSERT INTO menu_akses (menu_id, grup_id, hak_akses_id) VALUES (11, 2, 0);
INSERT INTO menu_akses (menu_id, grup_id, hak_akses_id) VALUES (12, 2, 0);
INSERT INTO menu_akses (menu_id, grup_id, hak_akses_id) VALUES (13, 2, 0);
INSERT INTO menu_akses (menu_id, grup_id, hak_akses_id) VALUES (14, 2, 0);
INSERT INTO menu_akses (menu_id, grup_id, hak_akses_id) VALUES (15, 2, 0);
INSERT INTO menu_akses (menu_id, grup_id, hak_akses_id) VALUES (16, 2, 0);
INSERT INTO menu_akses (menu_id, grup_id, hak_akses_id) VALUES (17, 2, 0);
INSERT INTO menu_akses (menu_id, grup_id, hak_akses_id) VALUES (18, 2, 0);
INSERT INTO menu_akses (menu_id, grup_id, hak_akses_id) VALUES (19, 2, 0);
INSERT INTO menu_akses (menu_id, grup_id, hak_akses_id) VALUES (20, 2, 0);
INSERT INTO menu_akses (menu_id, grup_id, hak_akses_id) VALUES (21, 2, 0);

INSERT INTO menu_akses (menu_id, grup_id, hak_akses_id) VALUES (1, 3, 0);
INSERT INTO menu_akses (menu_id, grup_id, hak_akses_id) VALUES (2, 3, 0);
INSERT INTO menu_akses (menu_id, grup_id, hak_akses_id) VALUES (3, 3, 0);
INSERT INTO menu_akses (menu_id, grup_id, hak_akses_id) VALUES (4, 3, 0);
INSERT INTO menu_akses (menu_id, grup_id, hak_akses_id) VALUES (5, 3, 0);
INSERT INTO menu_akses (menu_id, grup_id, hak_akses_id) VALUES (6, 3, 0);
INSERT INTO menu_akses (menu_id, grup_id, hak_akses_id) VALUES (7, 3, 0);
INSERT INTO menu_akses (menu_id, grup_id, hak_akses_id) VALUES (8, 3, 0);
INSERT INTO menu_akses (menu_id, grup_id, hak_akses_id) VALUES (9, 3, 0);
INSERT INTO menu_akses (menu_id, grup_id, hak_akses_id) VALUES (10, 3, 0);
INSERT INTO menu_akses (menu_id, grup_id, hak_akses_id) VALUES (11, 3, 0);
INSERT INTO menu_akses (menu_id, grup_id, hak_akses_id) VALUES (12, 3, 0);
INSERT INTO menu_akses (menu_id, grup_id, hak_akses_id) VALUES (13, 3, 0);
INSERT INTO menu_akses (menu_id, grup_id, hak_akses_id) VALUES (14, 3, 0);
INSERT INTO menu_akses (menu_id, grup_id, hak_akses_id) VALUES (15, 3, 0);
INSERT INTO menu_akses (menu_id, grup_id, hak_akses_id) VALUES (16, 3, 0);
INSERT INTO menu_akses (menu_id, grup_id, hak_akses_id) VALUES (17, 3, 0);
INSERT INTO menu_akses (menu_id, grup_id, hak_akses_id) VALUES (18, 3, 0);
INSERT INTO menu_akses (menu_id, grup_id, hak_akses_id) VALUES (19, 3, 0);
INSERT INTO menu_akses (menu_id, grup_id, hak_akses_id) VALUES (20, 3, 0);
INSERT INTO menu_akses (menu_id, grup_id, hak_akses_id) VALUES (21, 3, 0);



--
-- TOC entry 2148 (class 0 OID 23397)
-- Dependencies: 195 2136
-- Data for Name: t_peminjaman; Type: TABLE DATA; Schema: public; Owner: earsip
--



--
-- TOC entry 2137 (class 0 OID 23302)
-- Dependencies: 177 2148 2130
-- Data for Name: peminjaman_rinci; Type: TABLE DATA; Schema: public; Owner: earsip
--



--
-- TOC entry 2143 (class 0 OID 23348)
-- Dependencies: 186 2141
-- Data for Name: r_ir; Type: TABLE DATA; Schema: public; Owner: earsip
--



--
-- TOC entry 2145 (class 0 OID 23367)
-- Dependencies: 190
-- Data for Name: r_pemusnahan_metoda; Type: TABLE DATA; Schema: public; Owner: earsip
--

INSERT INTO r_pemusnahan_metoda (nama, keterangan) VALUES ('Pembakaran', 'Pemusanahan arsip dengan cara dibakar');
INSERT INTO r_pemusnahan_metoda (nama, keterangan) VALUES ('Pencacahan', 'Pemusnahan arsip dengan cara dicacah');


--
-- TOC entry 2146 (class 0 OID 23376)
-- Dependencies: 192 2136
-- Data for Name: t_pemindahan; Type: TABLE DATA; Schema: public; Owner: earsip
--



--
-- TOC entry 2147 (class 0 OID 23387)
-- Dependencies: 193 2130 2146
-- Data for Name: t_pemindahan_rinci; Type: TABLE DATA; Schema: public; Owner: earsip
--



--
-- TOC entry 2149 (class 0 OID 23410)
-- Dependencies: 197 2145
-- Data for Name: t_pemusnahan; Type: TABLE DATA; Schema: public; Owner: earsip
--



--
-- TOC entry 2150 (class 0 OID 23418)
-- Dependencies: 198 2149 2130
-- Data for Name: t_pemusnahan_rinci; Type: TABLE DATA; Schema: public; Owner: earsip
--



--
-- TOC entry 2151 (class 0 OID 23426)
-- Dependencies: 199 2149
-- Data for Name: t_tim_pemusnahan; Type: TABLE DATA; Schema: public; Owner: earsip
--



-- Completed on 2012-05-07 03:59:11

--
-- PostgreSQL database dump complete
--

