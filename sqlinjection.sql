Sql �njection 

SQL Injection, SQL sorgusuna m�dahale ederek bilgileri elde etmeye denir.
Ama Bu Sorunlar Veritaban� Teknolojilerin Kendisini G�ncellemesi �le Sorun Giderilmi�tir


SQL �njetion Y�ntemleri


1=1 Y�ntem

Kullan�c� Adi ve �ifre B�l�m�nde Yanl�� Bir Bilgi Girilmedigi S�rece
2 �nput Degerinden True Bilgisi D�ner Yukar�daki 1=1 Y�ntemi ise
1 Her zaman 1'e E�it Oldu�u i�in Yine True De�eri D�ner

 -------------------------------------|
| Kullanici Ad� :   admin'or 1=1 --   |
|-------------------------------------|
| Sifre :           12345             |
|-------------------------------------|

Yukar�da ki Kodda Kullanici Adi Admin veya  1=1(True) �se Giri� Yapt�r
Sondaki Tire �se -- Program Kalan Sat�r� ��lemez ve Sifre B�l�m�z Girmez

Sql Kar��l�g� 

SELECT * FROM User WHERE UserId = admin OR 1=1 --;
 


" or ""="  Y�ntem

 -------------------------------------|
| Kullanici Ad� :   " or ""="         |
|-------------------------------------|
| Sifre :           " or ""="         |
|-------------------------------------|


SELECT * FROM Users WHERE Name ="" or ""="" AND Pass ="" or ""=""
Yukar�daki " or ""="  Kodu Sql de Users Tablosunda ki T�m Degeleri D�nd�r�r
OR "" = "" True Bilgisi D�nd�rd�g� ��in.
