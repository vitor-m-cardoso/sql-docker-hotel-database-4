SELECT 
  usr.first_name AS 'Nome',
  usr.last_name AS 'Sobrenome',
  usr.email AS 'E-mail de Contato',
  usr.created_at AS 'Data de Registro',
  rmu.check_in AS 'Data de Entrada',
  rmu.check_out AS 'Data de Saída'
FROM room_users AS rmu
  INNER JOIN users AS usr
    ON rmu.user_id = usr.id
WHERE (MONTH(check_in) BETWEEN 8 AND 10)
AND rmu.check_out IS NULL;
