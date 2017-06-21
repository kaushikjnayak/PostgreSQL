--Create a table with tsvector column
CREATE TABLE countries 
(
    id INTEGER,
    country_name VARCHAR(30),
    DESCRIPTION TEXT,
    search_keys tsvector 
);




INSERT INTO countries(id,country_name,description)
VALUES ( 
1, 'India', 
'India, officially the Republic of India (Bharat Ga?arajya),[e] 
is a country in South Asia. It is the seventh-largest country by area, the second-most
populous country (with over 1.2 billion people), and the most populous democracy in the world. 
It is bounded by the Indian Ocean on the south, the Arabian Sea on the southwest, and the 
Bay of Bengal on the southeast. It shares land borders with Pakistan to the west;[f] China, Nepal,
and Bhutan to the northeast; and Myanmar (Burma) and Bangladesh to the east. In the Indian Ocean,
India is in the vicinity of Sri Lanka and the Maldives. India''s Andaman and Nicobar Islands 
share a maritime border with Thailand and Indonesia.'
);



INSERT INTO countries(id,country_name,description)
VALUES ( 
2, 'Australia', 
'Australia officially the Commonwealth of Australia,[13] is a country comprising the mainland of the Australian continent,
the island of Tasmania and numerous smaller islands. It is the world''s sixth-largest country by total area. The neighbouring countries
are Papua New Guinea, Indonesia and East Timor to the north; the Solomon Islands and Vanuatu to the north-east; and New Zealand to the south-east. 
Australia''s capital is Canberra, and its largest urban area is Sydney. For about 50,000 years[14] before the first British settlement in the late 18th century'
);


--construct ts_vector using the description column.
update countries set search_keys = to_tsvector(DESCRIPTION);

--matches Australia
SELECT country_name,description as description
FROM countries
WHERE search_keys @@ to_tsquery('sydney & (island | continent)') ;


--matches India
SELECT country_name,description as description
FROM countries
WHERE search_keys @@ to_tsquery('billion & (Arabian | ocean)') ;


--Get the rank as a percentage
select country_name,ts_rank(search_keys,o) :: NUMERIC(5,3) * 100 as perc_rank
FROM countries c,
to_tsquery('island') as o 
where search_keys @@ o
order by perc_rank desc ;

