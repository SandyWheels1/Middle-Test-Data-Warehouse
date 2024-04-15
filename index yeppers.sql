CREATE INDEX idx_gaji_departemen 
ON pegawai(gaji,departemen)

SELECT * FROM pegawai
WHERE gaji = 7000

SELECT * FROM pegawai
WHERE departemen = 'IT'

SELECT indexname, indexdef
FROM pg_indexes
WHERE tablename = 'pegawai';


