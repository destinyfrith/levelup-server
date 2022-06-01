SELECT * FROM levelupapi_gametype;


SELECT * FROM auth_user;
SELECT * FROM authtoken_token;
SELECT * FROM levelupapi_gamer;

SELECT * FROM levelupapi_game;
SELECT * FROM levelupapi_event;

SELECT 
            g.title,
            u.first_name || " " || u.last_name AS full_name,
            gmr.id
            FROM levelupapi_game as g
            JOIN levelupapi_gamer as gmr
            ON g.gamer_id = gmr.id
            JOIN auth_user u
            ON u.id = gmr.id
