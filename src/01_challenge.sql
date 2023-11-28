CREATE TABLE room_users (
  id INT PRIMARY KEY AUTO_INCREMENT,
  room_id INT NOT NULL,
  user_id INT NOT NULL,
  check_in DATE NOT NULL,
  check_out DATE,
  FOREIGN KEY (room_id) REFERENCES rooms(id),
  FOREIGN KEY (user_id) REFERENCES users(id)
);

INSERT INTO room_users (user_id, room_id, check_in, check_out)
VALUES
      (1, 1, '2023-01-01', NULL),
      (7, 3, '2023-10-03', NULL),
      (2, 5, '2023-05-10', NULL),
      (3, 5, '2023-05-10', NULL),
      (5, 6, '2023-09-25', '2023-09-30'),
      (7, 13, '2023-08-03', '2023-08-10');
