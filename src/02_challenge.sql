SELECT
  usr.first_name AS 'Nome',
  usr.last_name AS 'Sobrenome',
  rms.price AS 'Diária',
  rms.hotel_id AS 'Id do Hotel'
FROM room_users AS rmu
  INNER JOIN users AS usr
    ON rmu.user_id = usr.id
  INNER JOIN rooms AS rms
    ON rmu.room_id = rms.id;
