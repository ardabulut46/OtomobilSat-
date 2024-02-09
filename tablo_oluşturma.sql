
CREATE TABLE OTOMOBILSATISGENELMUDURLUK (
    ID INT PRIMARY KEY,
    MUDURLUK_ADI VARCHAR(255),
    ADRES VARCHAR(255),
    TELEFON VARCHAR(15),
    EMAIL VARCHAR(100)
);
CREATE TABLE BAYRAMPASA_BAYISI (
    ID INT PRIMARY KEY ,
    ARABA_ID INT  ,
    MARKA VARCHAR(50) ,
    MODEL VARCHAR(50) ,
    YIL INT,
    RENK VARCHAR(20),
    FIYAT DECIMAL(10, 
);

INSERT INTO OTOMOBILSATISGENELMUDURLUK (MUDURLUK_ADI, ADRES, TELEFON, EMAIL,ID)
VALUES ('BayrampaþaBayii', 'BayrampaþaAdresi', 'BayrampaþaTel', 'bayrampasa@example.com',1);

CREATE TABLE MALTEPE_BAYISI (
    ID INT PRIMARY KEY ,
	ARABA_ID INT  ,
    MARKA VARCHAR(50) ,
    MODEL VARCHAR(50) ,
    YIL INT,
    RENK VARCHAR(20),
    FIYAT DECIMAL(10, 
);

INSERT INTO OTOMOBILSATISGENELMUDURLUK (MUDURLUK_ADI, ADRES, TELEFON, EMAIL,ID)
VALUES ('MaltepeBayii', 'MaltepeAdresi', 'MaltepeTel', 'maltepe@example.com',2);

CREATE TABLE BOSTANCI_BAYISI (
    ID INT PRIMARY KEY ,
	ARABA_ID INT  ,
    MARKA VARCHAR(50) ,
    MODEL VARCHAR(50) ,
    YIL INT,
    RENK VARCHAR(20),
    FIYAT DECIMAL(10, 

);

INSERT INTO OTOMOBILSATISGENELMUDURLUK (MUDURLUK_ADI, ADRES, TELEFON, EMAIL,ID)
VALUES ('BostancýBayii', 'BostancýAdresi', 'BostancýTel', 'bostanci@example.com',3);


CREATE TABLE MUSTERILER (
    MUSTERI_ID INT PRIMARY KEY ,
    ADI VARCHAR(50) NOT NULL,
    SOYADI VARCHAR(50) NOT NULL,
    TELEFON VARCHAR(15) NOT NULL,
    EMAIL VARCHAR(100),
    ADRES VARCHAR(255)
);
CREATE TABLE CALISANLAR (
    CALISAN_ID INT PRIMARY KEY,
    ADI VARCHAR(50) NOT NULL,
    SOYADI VARCHAR(50) NOT NULL,
    MUDURLUK_ADI VARCHAR (255)
);
CREATE TABLE ARABALAR (
    ARABA_ID INT PRIMARY KEY ,
    MARKA VARCHAR(50) NOT NULL,
    MODEL VARCHAR(50) NOT NULL,
    YIL INT,
    RENK VARCHAR(20),
    FIYAT DECIMAL(10, 2)
);

CREATE TABLE MOTORLAR (
    MOTOR_ID INT PRIMARY KEY,
    MARKA VARCHAR(50) NOT NULL,
    GUC INT,
    HACIM DECIMAL(4, 2),
    YAKIT VARCHAR(20),
	
	
);
CREATE TABLE SATIS (
    SATIS_ID INT PRIMARY KEY,
    MUSTERI_ADI VARCHAR(50) NOT NULL,
    SATIS_TARIHI DATE NOT NULL,
    ARABA_ID INT,
    MOTOR_ID INT,
    FIYAT DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (ARABA_ID) REFERENCES ARABALAR(ARABA_ID),
    FOREIGN KEY (MOTOR_ID) REFERENCES MOTORLAR(MOTOR_ID)
);


ALTER TABLE CALISANLAR
ADD  MAAS DECIMAL(10, 2);

UPDATE CALISANLAR
SET MAAS = 5000.00;





INSERT INTO MUSTERILER(MUSTERI_ID, ADI, SOYADI, TELEFON, EMAIL, ADRES)
VALUES 
(1, 'Ahmet', 'Yýlmaz', '555-1234567', 'ahmet.yilmaz@example.com', 'Ýstanbul, Türkiye'),
(2, 'Ayþe', 'Kaya', '555-2345678', 'ayse.kaya@example.com', 'Ankara, Türkiye'),
(3, 'Mehmet', 'Demir', '555-3456789', 'mehmet.demir@example.com', 'Ýzmir, Türkiye'),
(4, 'Fatma', 'Arslan', '555-4567890', 'fatma.arslan@example.com', 'Bursa, Türkiye'),
(5, 'Mustafa', 'Çelik', '555-5678901', 'mustafa.celik@example.com', 'Adana, Türkiye'),
(6, 'Aysun', 'Þahin', '555-6789012', 'aysun.sahin@example.com', 'Trabzon, Türkiye'),
(7, 'Kaan', 'Öztürk', '555-7890123', 'kaan.ozturk@example.com', 'Antalya, Türkiye'),
(8, 'Zeynep', 'Koç', '555-8901234', 'zeynep.koc@example.com', 'Eskiþehir, Türkiye'),
(9, 'Okan', 'Altýn', '555-9012345', 'okan.altin@example.com', 'Samsun, Türkiye'),
(10, 'Melis', 'Kurt', '555-0123456', 'melis.kurt@example.com', 'Diyarbakýr, Türkiye'),
(11, 'Veli', 'Toprak', '555-1122334', 'veli.toprak@example.com', 'Konya, Türkiye'),
(12, 'Emine', 'Erdoðan', '555-2233445', 'emine.erdogan@example.com', 'Gaziantep, Türkiye'),
(13, 'Burak', 'Can', '555-3344556', 'burak.can@example.com', 'Malatya, Türkiye'),
(14, 'Ceren', 'Ünlü', '555-4455667', 'ceren.unlu@example.com', 'Van, Türkiye'),
(15, 'Ege', 'Çaðlar', '555-5566778', 'ege.caglar@example.com', 'Bolu, Türkiye'),
(16, 'Gamze', 'Kýlýç', '555-6677889', 'gamze.kilic@example.com', 'Tekirdað, Türkiye'),
(17, 'Halit', 'Þeker', '555-7788990', 'halit.seker@example.com', 'Giresun, Türkiye'),
(18, 'Ýrem', 'Türk', '555-8899001', 'irem.turk@example.com', 'Kýrþehir, Türkiye'),
(19, 'Jale', 'Ünal', '555-9900112', 'jale.unal@example.com', 'Aksaray, Türkiye'),
(20, 'Kerem', 'Güneþ', '555-0011223', 'kerem.gunes@example.com', 'Kýrklareli, Türkiye'),
(21, 'Leyla', 'Kaplan', '555-1122334', 'leyla.kaplan@example.com', 'Erzurum, Türkiye'),
(22, 'Murat', 'Yýldýz', '555-2233445', 'murat.yildiz@example.com', 'Artvin, Türkiye'),
(23, 'Nihal', 'Aydýn', '555-3344556', 'nihal.aydin@example.com', 'Kastamonu, Türkiye'),
(24, 'Oktay', 'Çalýþkan', '555-4455667', 'oktay.caliskan@example.com', 'Nevþehir, Türkiye'),
(25, 'Pelin', 'Demirci', '555-5566778', 'pelin.demirci@example.com', 'Þýrnak, Türkiye'),
(26, 'Rüzgar', 'Erdem', '555-6677889', 'ruzgar.erdem@example.com', 'Aðrý, Türkiye'),
(27, 'Selin', 'Taþ', '555-7788990', 'selin.tas@example.com', 'Sivas, Türkiye'),
(28, 'Talha', 'Yavuz', '555-8899001', 'talha.yavuz@example.com', 'Uþak, Türkiye'),
(29, 'Ülkü', 'Güler', '555-9900112', 'ulku.guler@example.com', 'Bilecik, Türkiye'),
(30, 'Vildan', 'Çetin', '555-0011223', 'vildan.cetin@example.com', 'Yalova, Türkiye'),
(31, 'Yiðit', 'Gürbüz', '555-1122334', 'yigit.gurbuz@example.com', 'Muþ, Türkiye'),
(32, 'Zara', 'Koç', '555-2233445', 'zara.koc@example.com', 'Sivas, Türkiye'),
(33, 'Ahmet', 'Topal', '555-3344556', 'ahmet.topal@example.com', 'Ordu, Türkiye'),
(34, 'Ayþe', 'Kýlýç', '555-4455667', 'ayse.kilic@example.com', 'Tekirdað, Türkiye'),
(35, 'Mehmet', 'Þensoy', '555-5566778', 'mehmet.sensoy@example.com', 'Rize, Türkiye'),
(36, 'Fatma', 'Güngör', '555-6677889', 'fatma.gungor@example.com', 'Sinop, Türkiye'),
(37, 'Mustafa', 'Yavuz', '555-7788990', 'mustafa.yavuz@example.com', 'Çorum, Türkiye'),
(38, 'Aysu', 'Çetin', '555-8899001', 'aysu.cetin@example.com', 'Balýkesir, Türkiye'),
(39, 'Kerim', 'Akgül', '555-9900112', 'kerim.akgul@example.com', 'Afyonkarahisar, Türkiye'),
(40, 'Melike', 'Karadeniz', '555-0011223', 'melike.karadeniz@example.com', 'Kahramanmaraþ, Türkiye'),
(41, 'Ozan', 'Baðcý', '555-1122334', 'ozan.bagci@example.com', 'Denizli, Türkiye'),
(42, 'Pelin', 'Bulut', '555-2233445', 'pelin.bulut@example.com', 'Zonguldak, Türkiye'),
(43, 'Rüzgar', 'Kara', '555-3344556', 'ruzgar.kara@example.com', 'Muðla, Türkiye'),
(44, 'Selin', 'Aydýn', '555-4455667', 'selin.aydin@example.com', 'Çanakkale, Türkiye'),
(45, 'Talha', 'Güler', '555-5566778', 'talha.guler@example.com', 'Batman, Türkiye'),
(46, 'Ülkü', 'Erdem', '555-6677889', 'ulku.erdem@example.com', 'Mardin, Türkiye'),
(47, 'Vildan', 'Yýlmaz', '555-7788990', 'vildan.yilmaz@example.com', 'Þanlýurfa, Türkiye'),
(48, 'Yiðit', 'Kurt', '555-8899001', 'yigit.kurt@example.com', 'Aydýn, Türkiye'),
(49, 'Zehra', 'Çelik', '555-9900112', 'zehra.celik@example.com', 'Karabük, Türkiye'),
(50, 'Ahmet', 'Gürbüz', '555-0011223', 'ahmet.gurbuz@example.com', 'Karaman, Türkiye'),
(51, 'Ayþe', 'Yýldýz', '555-1122334', 'ayse.yildiz@example.com', 'Bitlis, Türkiye'),
(52, 'Mehmet', 'Koç', '555-2233445', 'mehmet.koc@example.com', 'Siirt, Türkiye'),
(53, 'Fatma', 'Taþ', '555-3344556', 'fatma.tas@example.com', 'Amasya, Türkiye'),
(54, 'Mustafa', 'Erdem', '555-4455667', 'mustafa.erdem@example.com', 'Ardahan, Türkiye'),
(55, 'Aysun', 'Kurt', '555-5566778', 'aysun.kurt@example.com', 'Bingöl, Türkiye'),
(56, 'Kaan', 'Yavuz', '555-6677889', 'kaan.yavuz@example.com', 'Bolu, Türkiye'),
(57, 'Zeynep', 'Demirci', '555-7788990', 'zeynep.demirci@example.com', 'Çankýrý, Türkiye'),
(58, 'Okan', 'Arslan', '555-8899001', 'okan.arslan@example.com', 'Yozgat, Türkiye'),
(59, 'Melis', 'Kaplan', '555-9900112', 'melis.kaplan@example.com', 'Kýrýkkale, Türkiye'),
(60, 'Veli', 'Taþ', '555-0011223', 'veli.tas@example.com', 'Bartýn, Türkiye');


INSERT INTO ARABALAR (ARABA_ID, MARKA, MODEL, YIL, RENK, FIYAT)
VALUES 
(1, 'Toyota', 'Corolla', 2022, 'Beyaz', 75000.00),
(2, 'Honda', 'Civic', 2021, 'Mavi', 80000.00),
(3, 'Volkswagen', 'Golf', 2022, 'Gri', 85000.00),
(4, 'Ford', 'Focus', 2023, 'Siyah', 72000.00),
(5, 'Mercedes-Benz', 'A-Class', 2022, 'Beyaz', 95000.00),
(6, 'Renault', 'Megane', 2022, 'Kýrmýzý', 78000.00),
(7, 'BMW', '3 Series', 2021, 'Beyaz', 90000.00),
(8, 'Hyundai', 'Elantra', 2023, 'Gümüþ', 77000.00),
(9, 'Audi', 'A4', 2022, 'Siyah', 92000.00),
(10, 'Chevrolet', 'Cruze', 2021, 'Gri', 78000.00),
(11, 'Nissan', 'Altima', 2022, 'Bordo', 82000.00),
(12, 'Kia', 'Optima', 2023, 'Beyaz', 76000.00),
(13, 'Mazda', '3', 2022, 'Siyah', 80000.00),
(14, 'Subaru', 'Impreza', 2021, 'Mavi', 79000.00),
(15, 'Volvo', 'S60', 2023, 'Gri', 97000.00),
(16, 'Buick', 'Enclave', 2022, 'Siyah', 85000.00),
(17, 'Chevrolet', 'Traverse', 2021, 'Beyaz', 78000.00),
(18, 'Dodge', 'Durango', 2023, 'Gri', 90000.00),
(19, 'Ford', 'Explorer', 2022, 'Mavi', 82000.00),
(20, 'GMC', 'Acadia', 2021, 'Kýrmýzý', 80000.00),
(21, 'Honda', 'Pilot', 2023, 'Yeþil', 86000.00),
(22, 'Hyundai', 'Palisade', 2022, 'Turuncu', 79000.00),
(23, 'Kia', 'Telluride', 2021, 'Sarý', 92000.00),
(24, 'Mazda', 'CX-9', 2023, 'Bordo', 85000.00),
(25, 'Nissan', 'Armada', 2022, 'Gümüþ', 95000.00),
(26, 'Subaru', 'Ascent', 2021, 'Beyaz', 82000.00),
(27, 'Toyota', 'Highlander', 2023, 'Siyah', 89000.00),
(28, 'Volkswagen', 'Atlas', 2022, 'Gri', 87000.00),
(29, 'Volvo', 'XC90', 2021, 'Mavi', 92000.00),
(30, 'Tesla', 'Model X', 2023, 'Kýrmýzý', 110000.00),(31, 'Audi', 'Q5', 2022, 'Beyaz', 95000.00),
(32, 'BMW', 'X5', 2021, 'Siyah', 110000.00),
(33, 'Mercedes-Benz', 'GLE', 2023, 'Gri', 105000.00),
(34, 'Lexus', 'RX', 2022, 'Kýrmýzý', 98000.00),
(35, 'Infiniti', 'QX60', 2021, 'Turuncu', 89000.00),
(36, 'Land Rover', 'Range Rover Sport', 2023, 'Yeþil', 120000.00),
(37, 'Porsche', 'Cayenne', 2022, 'Mavi', 115000.00),
(38, 'Jaguar', 'F-PACE', 2021, 'Bordo', 108000.00),
(39, 'Tesla', 'Model Y', 2023, 'Sarý', 100000.00),
(40, 'Volvo', 'XC60', 2022, 'Gümüþ', 96000.00),
(41, 'Maserati', 'Levante', 2021, 'Beyaz', 125000.00),
(42, 'Alfa Romeo', 'Stelvio', 2023, 'Siyah', 97000.00),
(43, 'Kia', 'Seltos', 2022, 'Gri', 78000.00),
(44, 'Nissan', 'Kicks', 2021, 'Mavi', 75000.00),
(45, 'Hyundai', 'Kona', 2023, 'Bordo', 82000.00),
(46, 'Toyota', 'Land Cruiser', 2022, 'Turuncu', 140000.00),
(47, 'Ford', 'F-150', 2021, 'Gri', 90000.00),
(48, 'Chevrolet', 'Silverado', 2023, 'Beyaz', 95000.00),
(49, 'Ram', '2500', 2022, 'Siyah', 110000.00),
(50, 'GMC', 'Sierra', 2021, 'Kýrmýzý', 100000.00),
(51, 'Toyota', 'Tacoma', 2023, 'Yeþil', 78000.00),
(52, 'Nissan', 'Titan', 2022, 'Mavi', 85000.00),
(53, 'Honda', 'Ridgeline', 2021, 'Sarý', 88000.00),
(54, 'Ford', 'Bronco', 2023, 'Gri', 95000.00),
(55, 'Jeep', 'Wrangler', 2022, 'Beyaz', 87000.00),
(56, 'Land Rover', 'Defender', 2021, 'Siyah', 92000.00),
(57, 'Porsche', '911', 2023, 'Kýrmýzý', 220000.00),
(58, 'Rolls-Royce', 'Phantom', 2022, 'Beyaz', 450000.00),
(59, 'Bugatti', 'Chiron', 2021, 'Mavi', 3000000.00),
(60, 'Lamborghini', 'Aventador', 2022, 'Siyah', 500000.00),
(61, 'Ferrari', '488', 2023, 'Kýrmýzý', 350000.00),
(62, 'McLaren', '720S', 2021, 'Gri', 300000.00),
(63, 'Aston Martin', 'DB11', 2022, 'Beyaz', 250000.00),
(64, 'Alfa Romeo', 'Giulia', 2023, 'Turuncu', 88000.00),
(65, 'Buick', 'Encore', 2022, 'Beyaz', 75000.00),
(66, 'Chrysler', '300', 2021, 'Gri', 82000.00),
(67, 'Dodge', 'Charger', 2022, 'Siyah', 90000.00),
(68, 'GMC', 'Yukon', 2023, 'Mavi', 95000.00),
(69, 'Jeep', 'Wrangler', 2021, 'Yeþil', 78000.00),
(70, 'Lincoln', 'Navigator', 2022, 'Siyah', 120000.00),
(71, 'Ram', '1500', 2023, 'Gümüþ', 85000.00),
(72, 'Cadillac', 'Escalade', 2021, 'Beyaz', 110000.00),
(73, 'Acura', 'MDX', 2022, 'Siyah', 78000.00),
(74, 'Infiniti', 'Q50', 2023, 'Mavi', 90000.00),
(75, 'Koenigsegg', 'Jesko', 2022, 'Turuncu', 3000000.00),
(76, 'Lotus', 'Evora', 2021, 'Sarý', 120000.00),
(77, 'Maybach', 'S-Class', 2023, 'Gri', 400000.00),
(78, 'Nissan', 'GT-R', 2022, 'Kýrmýzý', 150000.00),
(79, 'Tesla', 'Model 3', 2022, 'Siyah', 120000.00),
(80, 'Fiat', 'Egea', 2023, 'Beyaz', 69000.00),
(81, 'Opel', 'Astra', 2022, 'Gri', 82000.00),
(82, 'Peugeot', '308', 2021, 'Bordo', 78000.00),
(83, 'Lexus', 'ES', 2022, 'Mavi', 110000.00),
(84, 'Jaguar', 'XE', 2023, 'Siyah', 105000.00),
(85, 'Land Rover', 'Discovery', 2022, 'Yeþil', 140000.00),
(86, 'Maserati', 'Ghibli', 2021, 'Sarý', 180000.00),
(87, 'Porsche', '911', 2023, 'Kýrmýzý', 220000.00),
(88, 'Rolls-Royce', 'Phantom', 2022, 'Beyaz', 450000.00),
(89, 'Bugatti', 'Chiron', 2021, 'Mavi', 3000000.00),
(90, 'Lamborghini', 'Aventador', 2022, 'Siyah', 500000.00);

INSERT INTO MOTORLAR (MOTOR_ID, MARKA, GUC, HACIM, YAKIT)
VALUES 
(1, 'Honda', 150, 2.0, 'Benzin'),
(2, 'Ford', 180, 2.5, 'Dizel'),
(3, 'Toyota', 200, 2.2, 'Benzin'),
(4, 'Mercedes-Benz', 250, 3.0, 'Benzin'),
(5, 'Volkswagen', 120, 1.6, 'Dizel'),
(6, 'BMW', 220, 2.8, 'Benzin'),
(7, 'Audi', 190, 2.0, 'Benzin'),
(8, 'Chevrolet', 160, 2.3, 'Benzin'),
(9, 'Hyundai', 130, 1.8, 'Benzin'),
(10, 'Nissan', 170, 2.2, 'Dizel'),
(11, 'Kia', 140, 2.0, 'Benzin'),
(12, 'Mazda', 175, 2.5, 'Benzin'),
(13, 'Subaru', 200, 2.4, 'Benzin'),
(14, 'Volvo', 160, 2.0, 'Dizel'),
(15, 'Fiat', 100, 1.4, 'Benzin'),
(16, 'Opel', 150, 1.9, 'Dizel'),
(17, 'Peugeot', 120, 1.6, 'Benzin'),
(18, 'Renault', 110, 1.5, 'Dizel'),
(19, 'Jaguar', 300, 3.0, 'Benzin'),
(20, 'Land Rover', 250, 3.5, 'Benzin'),
(21, 'Porsche', 350, 3.8, 'Benzin'),
(22, 'Lexus', 280, 3.5, 'Hibrit'),
(23, 'Maserati', 450, 4.0, 'Benzin'),
(24, 'Tesla', 600, 5.0, 'Elektrik'),
(25, 'Ferrari', 700, 6.0, 'Benzin'),
(26, 'Bugatti', 1500, 8.0, 'Benzin'),
(27, 'Lamborghini', 650, 5.2, 'Benzin'),
(28, 'Rolls-Royce', 450, 6.6, 'Benzin'),
(29, 'McLaren', 570, 3.8, 'Benzin'),
(30, 'Aston Martin', 350, 4.0, 'Benzin'),
(31, 'Alfa Romeo', 200, 2.0, 'Benzin'),
(32, 'Chrysler', 250, 3.5, 'Benzin'),
(33, 'Dodge', 300, 3.6, 'Benzin'),
(34, 'GMC', 180, 2.0, 'Dizel'),
(35, 'Jeep', 270, 3.2, 'Benzin'),
(36, 'Lincoln', 220, 2.5, 'Hibrit'),
(37, 'Cadillac', 400, 6.2, 'Benzin'),
(38, 'Acura', 190, 2.4, 'Benzin'),
(39, 'Infiniti', 330, 3.7, 'Benzin'),
(40, 'Koenigsegg', 1600, 5.0, 'Benzin'),
(41, 'Lotus', 300, 2.0, 'Benzin'),
(42, 'Maybach', 550, 4.0, 'Benzin'),
(43, 'Fiat', 80, 1.2, 'Benzin'),
(44, 'Opel', 120, 1.6, 'Dizel'),
(45, 'Peugeot', 110, 1.2, 'Benzin'),
(46, 'Renault', 95, 1.0, 'Benzin'),
(47, 'Jaguar', 380, 3.0, 'Benzin'),
(48, 'Land Rover', 240, 2.0, 'Dizel'),
(49, 'Porsche', 450, 4.0, 'Benzin'),
(50, 'Lexus', 350, 3.5, 'Hibrit'),
(51, 'Maserati', 550, 3.8, 'Benzin'),
(52, 'Tesla', 750, 6.0, 'Elektrik'),
(53, 'Ferrari', 800, 6.5, 'Benzin'),
(54, 'Bugatti', 1600, 8.0, 'Benzin'),
(55, 'Lamborghini', 700, 6.5, 'Benzin'),
(56, 'Rolls-Royce', 500, 6.0, 'Benzin'),
(57, 'McLaren', 620, 3.8, 'Benzin'),
(58, 'Smart', 70, 1.0, 'Benzin'),
(59, 'Mini', 120, 1.5, 'Benzin'),
(60, 'Dacia', 80, 1.2, 'Benzin'),
(61, 'Fiat', 95, 1.3, 'Dizel'),
(62, 'Opel', 150, 1.9, 'Dizel'),
(63, 'Peugeot', 110, 1.6, 'Benzin'),
(64, 'Renault', 120, 1.5, 'Dizel'),
(65, 'Jaguar', 300, 2.0, 'Benzin'),
(66, 'Land Rover', 250, 2.5, 'Dizel'),
(67, 'Porsche', 350, 3.8, 'Benzin'),
(68, 'Lexus', 280, 3.5, 'Hibrit'),
(69, 'Maserati', 450, 4.0, 'Benzin'),
(70, 'Tesla', 600, 5.0, 'Elektrik'),
(71, 'Ferrari', 700, 6.0, 'Benzin'),
(72, 'Bugatti', 1500, 8.0, 'Benzin'),
(73, 'Lamborghini', 650, 5.2, 'Benzin'),
(74, 'Rolls-Royce', 450, 6.6, 'Benzin'),
(75, 'McLaren', 570, 3.8, 'Benzin'),
(76, 'Smart', 70, 1.0, 'Benzin'),
(77, 'Mini', 120, 1.5, 'Benzin'),
(78, 'Dacia', 80, 1.2, 'Benzin'),
(79, 'Aston Martin', 350, 4.0, 'Benzin'),
(80, 'Alfa Romeo', 200, 2.0, 'Benzin'),
(81, 'Chrysler', 250, 3.5, 'Benzin'),
(82, 'Dodge', 300, 3.6, 'Benzin'),
(83, 'GMC', 180, 2.0, 'Dizel'),
(84, 'Jeep', 270, 3.2, 'Benzin'),
(85, 'Lincoln', 220, 2.5, 'Hibrit'),
(86, 'Cadillac', 400, 6.2, 'Benzin'),
(87, 'Acura', 190, 2.4, 'Benzin'),
(88, 'Infiniti', 330, 3.7, 'Benzin'),
(89, 'Koenigsegg', 1600, 5.0, 'Benzin'),
(90, 'Lotus', 300, 2.0, 'Benzin');


DECLARE @i INT = 1;

WHILE @i <= 50
BEGIN
    -- Rastgele müþteri, araba ve motor seçimi
    DECLARE @MusteriID INT = (SELECT TOP 1 MUSTERI_ID FROM MUSTERILER ORDER BY NEWID());
    DECLARE @ArabaID INT = (SELECT TOP 1 ARABA_ID FROM ARABALAR ORDER BY NEWID());
    
    -- Rastgele fiyat belirleme (örneðin, 50,000 ile 200,000 arasýnda)
    DECLARE @Fiyat DECIMAL(10, 2) = CAST(RAND() * (150000) + 50000 AS DECIMAL(10, 2));


    -- Rastgele satýþ tarihi belirleme (örneðin, son 1 yýl içinde)
    DECLARE @SatisTarihi DATE = DATEADD(day, -1 * CAST(RAND() * 365 AS INT), GETDATE());

    -- Satýþ kaydýný ekleme
    INSERT INTO SATIS (SATIS_ID, MUSTERI_ADI, SATIS_TARIHI, ARABA_ID, FIYAT)
    VALUES (@i, (SELECT CONCAT(ADI, SOYADI) FROM MUSTERILER WHERE MUSTERI_ID = @MusteriID), @SatisTarihi, @ArabaID, @Fiyat);
    
    SET @i = @i + 1;
END;


--Bayrampaþa Bayisi'ne 10 çalýþan ekleyelim 
INSERT INTO CALISANLAR (CALISAN_ID, ADI, SOYADI, MUDURLUK_ADI)
VALUES
(1, 'Ahmet', 'Yýlmaz', 'BAYRAMPASA_BAYISI'),
(2, 'Merve', 'Kaya', 'BAYRAMPASA_BAYISI'),
(3, 'Emre', 'Demir', 'BAYRAMPASA_BAYISI'),
(4, 'Zeynep', 'Arslan', 'BAYRAMPASA_BAYISI'),
(5, 'Onur', 'Çelik', 'BAYRAMPASA_BAYISI'),
(6, 'Sevda', 'Büyükgöz', 'BAYRAMPASA_BAYISI'),
(7, 'Kaan', 'Çakýr', 'BAYRAMPASA_BAYISI'),
(8, 'Nisan', 'Aydýn', 'BAYRAMPASA_BAYISI'),
(9, 'Ali', 'Turan', 'BAYRAMPASA_BAYISI'),
(10, 'Gizem', 'Yýldýz', 'BAYRAMPASA_BAYISI');
--Bostancý Bayisi 'ne 10 çalýþan ekeleyelim
INSERT INTO CALISANLAR (CALISAN_ID, ADI, SOYADI, MUDURLUK_ADI)
VALUES
(11, 'ALÝ', 'Yýldýrým', 'BOSTANCI_BAYISI'),
(12, 'Melih', 'Kahya', 'BOSTANCI_BAYISI'),
(13, 'EREN', 'Dem', 'BOSTANCI_BAYISI'),
(14, 'Zeynel', 'Arif', 'BOSTANCI_BAYISI'),
(15, 'Onur', 'El', 'BOSTANCI_BAYISI'),
(16, 'Salih', 'Göz', 'BOSTANCI_BAYISI'),
(17, 'Kamil', 'Çaký', 'BOSTANCI_BAYISI'),
(18, 'Nisa', 'Ay', 'BOSTANCI_BAYISI'),
(19, 'Alii', 'Tur', 'BOSTANCI_BAYISI'),
(20, 'Gamze', 'AYDOÐDU', 'BOSTANCI_BAYISI');
--MALTEPE Bayisi 'ne 10 çalýþan ekeleyelim
INSERT INTO CALISANLAR (CALISAN_ID, ADI, SOYADI, MUDURLUK_ADI)
VALUES
(21, 'Ramazan', 'Bakan', 'MALTEPE_BAYISI'),
(22, 'Arda', 'Bulut', 'MALTEPE_BAYISI'),
(23, 'Eren', 'Numan', 'MALTEPE_BAYISI'),
(24, 'Mert', 'Abidin', 'MALTEPE_BAYISI'),
(25, 'Emre', 'Sergeç', 'MALTEPE_BAYISI'),
(26, 'Serhat', 'Uçan', 'MALTEPE_BAYISI'),
(27, 'Kemal', 'symaznzki', 'MALTEPE_BAYISI'),
(28, 'Nazým', 'NUR', 'MALTEPE_BAYISI'),
(29, 'Elif', 'Ekber', 'MALTEPE_BAYISI'),
(30, 'Rümeysa', 'Doðu', 'MALTEPE_BAYISI');


CREATE TABLE SEPET (
    SEPET_ID INT PRIMARY KEY,
    MUSTERI_ID INT,
    ARABA_ID INT,
    MARKA VARCHAR(50), 
	MOTOR_ID INT,
    MIKTAR INT,
    FOREIGN KEY (MUSTERI_ID) REFERENCES MUSTERILER(MUSTERI_ID),
    FOREIGN KEY (ARABA_ID) REFERENCES ARABALAR(ARABA_ID), 
	FOREIGN KEY (MOTOR_ID) REFERENCES MOTORLAR(MOTOR_ID), 
    CHECK (MIKTAR > 0)
);





INSERT INTO SEPET (SEPET_ID,MUSTERI_ID, ARABA_ID,MARKA , MIKTAR)
VALUES (1,1, 1, 'Toyota', 1); 
INSERT INTO SEPET (SEPET_ID,MUSTERI_ID, ARABA_ID,MARKA , MIKTAR)
VALUES (2,24, 22, 'Hyundai', 2); 
INSERT INTO SEPET (SEPET_ID,MUSTERI_ID,MOTOR_ID, MIKTAR)
VALUES (3, 44 ,2,  2); 