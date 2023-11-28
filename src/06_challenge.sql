SELECT
  usr.first_name AS 'Hospede',
  htl.name AS 'Hotel',
  rms.price AS 'Diária',
  htl.star AS 'Estrelas',
  rmu.check_in AS 'Data de Entrada do hospede',
  rmu.check_out AS 'Data de Saída do hospede'
FROM room_users AS rmu
  INNER JOIN users AS usr
    ON rmu.user_id = usr.id
  INNER JOIN rooms AS rms
    ON rmu.room_id = rms.id
  INNER JOIN hotels AS htl
    ON rms.hotel_id = htl.id
WHERE htl.star >= 3 AND price <= 500
