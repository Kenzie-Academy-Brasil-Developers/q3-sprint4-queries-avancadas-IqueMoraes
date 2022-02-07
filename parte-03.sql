


----PRIMEIRO SELECT
SELECT * FROM enderecos;


----SEGUNDO SELECT
SELECT e.* , u.*
FROM enderecos e
FULL OUTER JOIN usuarios u
	ON 	e.endereco_id = u.endereco_id
ORDER BY e.endereco_id ;


----TERCEIRO SELECT
SELECT r.*, u.*
FROM redes_sociais r
FULL OUTER JOIN usuario_rede_sociais urs
 ON r.rede_social_id = urs.rede_social_id
FULL OUTER JOIN usuarios u 
 ON u.usuario_id = urs.usuario_id;


----QUARTO SELECT
SELECT rs.*, u.*, e.*
FROM redes_sociais rs 
FULL OUTER JOIN usuario_rede_sociais urs 
	ON rs.rede_social_id  = urs.rede_social_id
FULL OUTER JOIN usuarios u
	ON u.usuario_id = urs.usuario_id 
FULL OUTER JOIN enderecos e
	ON u.endereco_id = e.endereco_id ;



----QUINTO SELECT
SELECT rs.nome AS rede_social, u.nome AS usuario, u.email, e.cidade 
FROM redes_sociais rs 
FULL OUTER JOIN usuario_rede_sociais urs 
	ON rs.rede_social_id  = urs.rede_social_id
FULL OUTER JOIN usuarios u
	ON u.usuario_id = urs.usuario_id 
FULL OUTER JOIN enderecos e
	ON u.endereco_id = e.endereco_id ;



----SEXTO SELECT
SELECT rs.nome AS rede_social, u.nome AS usuario, u.email, e.cidade 
FROM redes_sociais rs 
FULL OUTER JOIN usuario_rede_sociais urs 
	ON rs.rede_social_id  = urs.rede_social_id
FULL OUTER JOIN usuarios u
	ON u.usuario_id = urs.usuario_id 
FULL OUTER JOIN enderecos e
	ON u.endereco_id = e.endereco_id
WHERE rs.nome LIKE 'Youtube';





----SÉTIMO SELECT
SELECT rs.nome AS rede_social, u.nome AS usuario, u.email, e.cidade 
FROM redes_sociais rs 
FULL OUTER JOIN usuario_rede_sociais urs 
	ON rs.rede_social_id  = urs.rede_social_id
FULL OUTER JOIN usuarios u
	ON u.usuario_id = urs.usuario_id 
FULL OUTER JOIN enderecos e
	ON u.endereco_id = e.endereco_id 
WHERE rs.nome LIKE 'Instagram';



----OITAVO SELECT
SELECT rs.nome AS rede_social, u.nome AS usuario, u.email, e.cidade 
FROM redes_sociais rs 
FULL OUTER JOIN usuario_rede_sociais urs 
	ON rs.rede_social_id  = urs.rede_social_id
FULL OUTER JOIN usuarios u
	ON u.usuario_id = urs.usuario_id 
FULL OUTER JOIN enderecos e
	ON u.endereco_id = e.endereco_id 
WHERE rs.nome LIKE 'Facebook';

----NONO SELECT
SELECT rs.nome AS rede_social, u.nome AS usuario, u.email, e.cidade 
FROM redes_sociais rs 
FULL OUTER JOIN usuario_rede_sociais urs 
	ON rs.rede_social_id  = urs.rede_social_id
FULL OUTER JOIN usuarios u
	ON u.usuario_id = urs.usuario_id 
FULL OUTER JOIN enderecos e
	ON u.endereco_id = e.endereco_id 
WHERE rs.nome LIKE 'TikTok';



----DÉCIMO SELECT
SELECT rs.nome AS rede_social, u.nome AS usuario, u.email, e.cidade 
FROM redes_sociais rs 
FULL OUTER JOIN usuario_rede_sociais urs 
	ON rs.rede_social_id  = urs.rede_social_id
FULL OUTER JOIN usuarios u
	ON u.usuario_id = urs.usuario_id 
FULL OUTER JOIN enderecos e
	ON u.endereco_id = e.endereco_id 
WHERE rs.nome LIKE 'Twitter';

