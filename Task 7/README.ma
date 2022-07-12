1- film tablosunda bulunan filmleri rating değerlerine göre gruplayınız.

SELECT COUNT(*), rating FROM film
GROUP BY rating;

2- film tablosunda bulunan filmleri replacement_cost sütununa göre grupladığımızda 
film sayısı 50 den fazla olan replacement_cost değerini ve karşılık gelen film sayısını sıralayınız.

SELECT COUNT(*), replacement_cost 
FROM film
WHERE length > 50
GROUP BY replacement_cost
ORDER BY replacement_cost;

3- customer tablosunda bulunan store_id değerlerine karşılık gelen müşteri sayılarını nelerdir? 

SELECT COUNT(*), store_id 
FROM customer
GROUP BY store_id;

4- city tablosunda bulunan şehir verilerini country_id sütununa göre gruplandırdıktan sonra
en fazla şehir sayısı barındıran country_id bilgisini ve şehir sayısını paylaşınız.

SELECT COUNT(*) AS şehir_sayısı, country_id 
FROM city
GROUP BY country_id
ORDER BY COUNT(*) DESC
LIMIT 1;
