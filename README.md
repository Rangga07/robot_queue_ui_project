# Template: Robot Framework - Minimal

This is the simplest template to start from.

- Get started from a simple task template in `tasks.robot`.
  - Uses [Robot Framework](https://robocorp.com/docs/languages-and-frameworks/robot-framework/basics) syntax.
- You can configure your robot `robot.yaml`.
- You can configure dependencies in `conda.yaml`.

## Checklist Scenario

- [x] ST_CU_001 - Login
  - [x] Login dengan email dan password yang sesuai
- [x] ST_CU_002 - Setup Counter & Line
  - [x] Setup tambah desk baru
  - [x] Setup tambah line
- [x] ST_CU_003 - Cetak tiket baru (Manual) (Walk-in)
  - [x] Print tiket baru
  - [x] Daftarkan pasien
  - [x] On hold tiket
  - [x] Skip tiket
  - [x] Kembali ke antrian
  - [x] Reprint tiket
  - [x] Hapus tiket
- [x] ST_CU_004 - Staff manual mendaftarkan pasien cetak tiket (walk-in)
  - [x] Print tiket baru
  - [x] Daftar pasien secara manual
  - [x] Daftar pasien dari BOMSU
- [x] ST_CU_005 - Staff melakukan order dokter dengan beberapa action (walkin)
  - [x] Menambahkan patient badge
  - [x] Menambahkan visit badge
  - [x] Menambahkan internal notes
- [x] ST_CU_006 - Staff melakukan order service dengan beberapa action (walkin)
  - [x] Order satu service
  - [x] Order dua service
  - [x] Hapus order service
- [x] ST_CU_007 - Staff menambahkan detail identitas pasien
  - [x] Menambahkan patient badge
  - [x] Menambahkan visit badge
  - [x] Menambahkan internal notes
- [x] ST_CU_008 - Staff menambahkan detail identitas pasien
  - [x] Tambah internal notes important
  - [x] Tambah internal notes tanpa important
- [x] ST_CU_009 - Staff melakukan action pada tiket yang telah terdaftar dengan kondisi 
  - [x] Calling pasien
  - [x] Calling pasien berulang kali
  - [x] Serve pasien
  - [x] Finish pasien
- [x] ST_CU_010 - Staff melakukan perpindahan line tiket
  - [x] Line sendiri ke line lain