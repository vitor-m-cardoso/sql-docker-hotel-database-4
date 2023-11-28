SELECT
  usr.first_name AS 'Nome',
  rms.hotel_id AS 'Id do Hotel',
  rmu.check_in AS 'Data de Entrada',
  rmu.check_out AS 'Data de Saída'
FROM room_users AS rmu
  INNER JOIN rooms AS rms
    ON rmu.room_id = rms.id
  INNER JOIN users AS usr
    ON rmu.user_id = usr.id
WHERE rmu.check_out = NULL OR rms.available = 0;
