# sevima

### Kelas kolaborasi guru dan orang tua
Fokus kepada orangtua, bagaimana orang tua dapat memantau,

### Fitur untuk guru
Upload nilai siswa
Bagi info kegiatan kelas
- kegiatan mengajar
Bagi info mengenai apapun
- info beasiswa
- info sekolah Lanjutan
-

### Fitur untuk, orang tua
Memantau nilai siswa
Melihat info kegiatan kelas
Bagi info mengenai apapun
- info beasiswa
- info sekolah Lanjutan
-

### Guru
#### Kelas
- crud mata pelajaran - nilai (tabel nilai)
- crud kegiatan kelas (psotinhan)
#### Postingan umum
- crud info mengenai apapun

### Orang tua
#### Kelas
- read mata pelajaran - nilai (tabel nilai)
- read kegiatan kelas (postingan)
#### Postingan umum
- crud info mengenai apapun

### Tabel
Teacher
Parent
Class
Pelajaran
Nilai
Post-umum
Commenr-umum
Post-class
Comment-class

Teacher
- Id
- Name

Parent
- Id
- Name


Student
- Id
- Class_id
- Name


Class
- Id
- Teacher_id
- Name

Pelajaran
- Id
- Class_id
- Name

Nilai
- Id
- Pelajaran_id
- Value

Post-umum
- Id
