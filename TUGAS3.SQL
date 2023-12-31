create schema SIAKAD

use SIAKAD

create table FAKULTAS (
	ID_FAKULTAS smallint not null primary key,
	FAKULTAS VARCHAR(45)
)

create table JURUSAN (
	ID_JURUSAN smallint not null primary key,
	ID_FAKULTAS smallint,
	JURUSAN VARCHAR(45),
	foreign key (ID_FAKULTAS) references FAKULTAS (ID_FAKULTAS) 
)

create table STRATA (
	ID_STRATA smallint not null primary key,
	SINGKAT VARCHAR(10),
	STRATA VARCHAR(45)
)

create table PROGRAM_STUDI (
	ID_PROGRAM_STUDI smallint not null primary key,
	ID_STRATA smallint references STRATA(ID_STRATA),
	ID_JURUSAN smallint references JURUSAN(ID_JURUSAN),
	PROGRAM_STUDI VARCHAR(60)
)

create table SELEKSI_MASUK (
	ID_SELEKSI_MASUK smallint not null primary key,
	SINGKAT VARCHAR(12),
	SELEKSI_MASUK VARCHAR(60)	
)


create table MAHASISWA (
	NIM VARCHAR(15) not null primary key,
	ID_SELEKSI_MASUK smallint references SELEKSI_MASUK(ID_SELEKSI_MASUK),
	ID_PROGRAM_STUDI smallint references PROGRAM_STUDI(ID_PROGRAM_STUDI),
	NAMA VARCHAR(45),
	ANGKATAN smallint,
	TGL_LAHIR DATE,
	KOTA_LAHIR VARCHAR(60),
	JENIS_KELAMIN CHAR(1)
)

select * from FAKULTAS 
insert into FAKULTAS(ID_FAKULTAS , FAKULTAS) values('1', 'Ekonomi & Bisnis')
insert into FAKULTAS(ID_FAKULTAS, FAKULTAS) values('2', 'Ilmu Komputer')

select * from JURUSAN 
insert into JURUSAN(ID_JURUSAN ,ID_FAKULTAS, JURUSAN) values('21','2', 'Informatika')
insert into JURUSAN(ID_JURUSAN ,ID_FAKULTAS, JURUSAN) values('22','2', 'Sistem Informasi')
insert into JURUSAN(ID_JURUSAN ,ID_FAKULTAS, JURUSAN) values('23','2', 'Teknik Komputer')

select * from STRATA
insert into STRATA(ID_STRATA, SINGKAT, STRATA) values(1,'D1','Diploma')
insert into STRATA(ID_STRATA, SINGKAT, STRATA) values(2,'S1','Sarjana')
insert into STRATA(ID_STRATA, SINGKAT, STRATA) values(3,'S1','Diploma')

select * from PROGRAM_STUDI
insert into PROGRAM_STUDI(ID_PROGRAM_STUDI, ID_STRATA, ID_JURUSAN, PROGRAM_STUDI) values(211,2, 21,'Informatika')
insert into PROGRAM_STUDI(ID_PROGRAM_STUDI, ID_STRATA, ID_JURUSAN, PROGRAM_STUDI) values(212,2, 21,'Teknik Komputer')
insert into PROGRAM_STUDI(ID_PROGRAM_STUDI, ID_STRATA, ID_JURUSAN, PROGRAM_STUDI) values(219,3, 21,'Magister Ilmu Komputer')

select * from SELEKSI_MASUK 
insert into SELEKSI_MASUK(ID_SELEKSI_MASUK, SINGKAT, SELEKSI_MASUK) values(1, 'SNMPTN', 'SELEKSI NASIONAL MAHASISWA PERGURUAN TINGGI NEGERI')
insert into SELEKSI_MASUK(ID_SELEKSI_MASUK, SINGKAT, SELEKSI_MASUK) values(2, 'SBMPTN', 'SELEKSI BERSAMA MAHASISWA PERGURUAN TINGGI NEGERI')

select * from MAHASISWA 
insert into MAHASISWA(NIM, ID_SELEKSI_MASUK, ID_PROGRAM_STUDI, NAMA, ANGKATAN, TGL_LAHIR, KOTA_LAHIR, JENIS_KELAMIN) values(155150400, 1, 211, 'JONI', 2015, 1/1/1997,'Malang', 'W')
insert into MAHASISWA(NIM, ID_SELEKSI_MASUK, ID_PROGRAM_STUDI, NAMA, ANGKATAN, TGL_LAHIR, KOTA_LAHIR, JENIS_KELAMIN) values(155150401, 2, 212, 'JONO', 2015, 2/10/1997,'Situbondo', 'P')



