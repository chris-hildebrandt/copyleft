CREATE TABLE IF NOT EXISTS accounts(
  id VARCHAR(255) NOT NULL primary key COMMENT 'primary key',
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
  updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update',
  name varchar(255) COMMENT 'User Name',
  email varchar(255) COMMENT 'User Email',
  picture varchar(255) COMMENT 'User Picture'
) default charset utf8 COMMENT '';

-- images
CREATE TABLE IF NOT EXISTS images(
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(100) NOT NULL,
  image VARCHAR(500) NOT NULL,
  creatorId VARCHAR(255) NOT NULL,
  FOREIGN KEY (creatorId) REFERENCES accounts(id)
) default charset utf8 COMMENT '';

-- drawers

CREATE TABLE IF NOT EXISTS drawers(
  drawerId INT AUTO_INCREMENT PRIMARY KEY,
  description VARCHAR(500),
  coverImg VARCHAR(500),
  name VARCHAR(100) NOT NULL,
  creatorId VARCHAR(255) NOT NULL,
  FOREIGN KEY (creatorId) REFERENCES accounts(id)
) default charset utf8 COMMENT '';

-- many to many relationship
CREATE TABLE IF NOT EXISTS drawerImages(
  drawerImageId INT AUTO_INCREMENT PRIMARY KEY,
  drawerId INT NOT NULL,
  imageId INT NOT NULL,
  creatorId VARCHAR(255) NOT NULL,
  FOREIGN KEY (creatorId) REFERENCES accounts(id)
) default charset utf8 COMMENT '';

insert into drawerImages
(drawerId, imageId, creatorId)
VALUES
(2, 7,"62fead19fda8e818d13a81db")