-- Enter solutions here --
SELECT * 
	FROM routes 
	JOIN airports AS origin
	ON routes.origin_id = origin.id  
	JOIN airports AS dest
	ON routes.dest_id = dest.id
	WHERE origin.city = 'New York' 
	AND dest.city = 'Paris';


SELECT count(*) 
	FROM routes 
	JOIN airports AS origin
	ON routes.origin_id = origin.id  
	JOIN airports AS dest
	ON routes.dest_id = dest.id
	WHERE origin.city = 'New York' 
	AND dest.city = 'Paris';


SELECT DISTINCT ON (airline_code) *
	FROM routes 
	JOIN airports AS origin
	ON routes.origin_id = origin.id  
	JOIN airports AS dest
	ON routes.dest_id = dest.id
	JOIN airlines AS plane
	ON routes.airline_id = plane.id
	WHERE origin.city = 'New York' 
	AND dest.city = 'Paris';


SELECT dest.city, COUNT(dest.city)
	FROM routes 
	JOIN airports AS origin
	ON routes.origin_id = origin.id  
	JOIN airports AS dest
	ON routes.dest_id = dest.id
	JOIN airlines AS plane
	ON routes.airline_id = plane.id
	WHERE origin.city = 'New York' 
	GROUP BY dest.city;