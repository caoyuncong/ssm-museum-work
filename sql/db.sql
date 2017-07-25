DROP DATABASE IF EXISTS db_mw;
CREATE DATABASE db_mw;

DROP TABLE IF EXISTS db_mw.museum;
CREATE TABLE db_mw.museum (
  id       INT AUTO_INCREMENT PRIMARY KEY
  COMMENT 'PK',
  name     VARCHAR(255) NOT NULL
  COMMENT '名称',
  logo     VARCHAR(255)
  COMMENT '标志',
  picture VARCHAR(255)
  COMMENT '照片',
  address  VARCHAR(255) NOT NULL
  COMMENT '地址'
)
  COMMENT '博物馆表';

DROP TABLE IF EXISTS db_mw.work;
CREATE TABLE db_mw.work (
  id       INT AUTO_INCREMENT PRIMARY KEY
  COMMENT 'PK',
  title    VARCHAR(255) NOT NULL
  COMMENT '标题',
  picture  VARCHAR(255)
  COMMENT '图片',
  artist   VARCHAR(255) NOT NULL
  COMMENT '作者',
  year     INT          NOT NULL
  COMMENT '年份',
  museumId INT
  COMMENT 'FK'
)
  COMMENT '作品表';

ALTER TABLE db_mw.work
  ADD CONSTRAINT
  work_fk_museumId
FOREIGN KEY (museumId)
REFERENCES db_mw.museum (id);

SELECT *
FROM db_mw.museum;

SELECT *
FROM db_mw.work;
