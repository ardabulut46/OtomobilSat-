USE Proje
-- Arabalar� artan ve azalan fiyattan listeleme
SELECT * FROM Proje.dbo.ARABALAR ORDER BY FIYAT DESC
SELECT * FROM Proje.dbo.ARABALAR ORDER BY FIYAT asc

select * from Proje.dbo.BAYRAMPASA_BAYISI ORDER BY FIYAT DESC
select * from Proje.dbo.BAYRAMPASA_BAYISI ORDER BY FIYAT ASC

select * from Proje.dbo.MALTEPE_BAYISI ORDER BY FIYAT DESC
select * from Proje.dbo.MALTEPE_BAYISI ORDER BY FIYAT ASC

select * from Proje.dbo.BOSTANCI_BAYISI ORDER BY FIYAT DESC
select * from Proje.dbo.BOSTANCI_BAYISI ORDER BY FIYAT ASC
-- Pahal� sat��lar� listeleme

select * from SATIS ORDER BY FIYAT ASC
select * from SATIS ORDER BY FIYAT DESC
-- BMW marka arabalar� listeleme 
select * from ARABALAR WHERE MARKA LIKE '%W'
-- Mercedes marka arabalar� listeleme 
select * from ARABALAR WHERE MARKA LIKE '%Z'
-- SATIS ve ARABALAR tablosundan ARABA_ID'leri JOIN metodunu kullanarak sat�lan araba ve m��teriyi tek tabloda g�sterme.

select * from ARABALAR 
JOIN SATIS
	ON ARABALAR.ARABA_ID= SATIS.SATIS_ID

--- Biraz d�zenleyelim.


SELECT MARKA,MODEL,YIL,RENK,MUSTERI_ADI,SATIS_TARIHI,FIYAT,SATIS_FIYATI FROM ARABALAR araba
 JOIN SATIS  satis
	ON araba.ARABA_ID = satis.ARABA_ID
group by MARKA,MODEL,YIL,RENK,MUSTERI_ADI,SATIS_TARIHI,FIYAT,SATIS_FIYATI



--EXEC sp_rename 'SATIS.FIYAT', 'SATIS_FIYATI', 'COLUMN';  Column ad�n� de�i�tirdik.

-- Bayilerdeki arabalar union ile teker teker g�rme 
select * from BAYRAMPASA_BAYISI
UNION 
SELECT * FROM MALTEPE_BAYISI

--------- Siyah arabalara %10, Tesla model arabalara ise %50 zam yapma.

select ARABA_ID,MARKA,MODEL,YIL,RENK,FIYAT,
case 
	when RENK = 'Siyah' THEN FIYAT + (FIYAT * 0.1)
	when MARKA = 'Tesla' THEN FIYAT + (FIYAT * 0.5)

end as Zaml�Fiyat

from MALTEPE_BAYISI

------------------------------------------------------
SELECT MARKA,MODEL FROM MALTEPE_BAYISI
INTERSECT
SELECT MARKA,MODEL FROM BAYRAMPASA_BAYISI

SELECT MARKA,MODEL FROM MALTEPE_BAYISI
UNION 
SELECT MARKA,MODEL FROM BAYRAMPASA_BAYISI


SELECT MARKA,MODEL FROM MALTEPE_BAYISI
EXCEPT 
SELECT MARKA,MODEL FROM BAYRAMPASA_BAYISI
-------------------------------------------------------------------------

SELECT * FROM CALISANLAR

UPDATE CALISANLAR
SET MAAS = FLOOR(RAND(CHECKSUM(NEWID())) * 10000) + 3000; -- CALISANLAR tablomuzda MAAS s�tununu eksik b�rakm��z. Burda minimum maa� 3000 maksimum 13000 olacak �ekilde rastgele de�erler verdik.

-- �al��anlar�n ortalama maa��.
select  AVG(MAAS) AS ORTALAMA_MAA�
FROM CALISANLAR;


select  AVG(MAAS) AS ORTALAMA_MAA�
FROM CALISANLAR
where MUDURLUK_ADI = 'BAYRAMPASA_BAYISI'

select  AVG(MAAS) AS ORTALAMA_MAA�
FROM CALISANLAR
where MUDURLUK_ADI = 'MALTEPE_BAYISI'

select  AVG(MAAS) AS ORTALAMA_MAA�
FROM CALISANLAR
where MUDURLUK_ADI = 'BOSTANCI_BAYISI'

-----------------------------------------------------

SELECT * FROM CALISANLAR WHERE MAAS > (select AVG(MAAS) FROM CALISANLAR) order by MAAS DESC   -- Ortalamadan y�ksek maa� alanlar.


select SUM(MAAS) AS Toplam�denenMaa� FROM CALISANLAR

SELECT ADI,SOYADI,MAAS,SUM(MAAS*1.10) AS Zaml�Maa� FROM CALISANLAR GROUP BY ADI,SOYADI,MAAS -- Maa�lar�n %10 zam yap�lm�� hali

SELECT * FROM CALISANLAR WHERE MAAS > 8000 order by MAAS ASC



SELECT MARKA,MODEL,YIL,RENK,FIYAT FROM Proje.dbo.MALTEPE_BAYISI 
WHERE RENK = 'K�rm�z�'											-- K�rm�z� renkli arabalar.
GROUP BY MARKA,MODEL,YIL,RENK,FIYAT


--- Maltepe Bayisi'nde �al��anlara %10 zam yapt�k.
SELECT ADI,SOYADI,MUDURLUK_ADI,MAAS, 
case
	WHEN MUDURLUK_ADI = 'MALTEPE_BAYISI' THEN MAAS + (MAAS * 0.10)
	else MAAS

end as Zaml�Maa�
FROM Proje.dbo.CALISANLAR
WHERE MUDURLUK_ADI = 'MALTEPE_BAYISI';




