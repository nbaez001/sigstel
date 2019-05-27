/*
Navicat PGSQL Data Transfer

Source Server         : PostgreSQL
Source Server Version : 90503
Source Host           : localhost:5432
Source Database       : sigstel
Source Schema         : public

Target Server Type    : PGSQL
Target Server Version : 90503
File Encoding         : 65001

Date: 2016-07-08 16:15:17
*/


-- ----------------------------
-- Sequence structure for dependencia_id_seq
-- ----------------------------
DROP SEQUENCE "public"."dependencia_id_seq";
CREATE SEQUENCE "public"."dependencia_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 2
 CACHE 1;
SELECT setval('"public"."dependencia_id_seq"', 2, true);

-- ----------------------------
-- Sequence structure for estadosolicitud_id_seq
-- ----------------------------
DROP SEQUENCE "public"."estadosolicitud_id_seq";
CREATE SEQUENCE "public"."estadosolicitud_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;
SELECT setval('"public"."estadosolicitud_id_seq"', 1, true);

-- ----------------------------
-- Sequence structure for persona_id_seq
-- ----------------------------
DROP SEQUENCE "public"."persona_id_seq";
CREATE SEQUENCE "public"."persona_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 3
 CACHE 1;
SELECT setval('"public"."persona_id_seq"', 3, true);

-- ----------------------------
-- Sequence structure for rol_id_seq
-- ----------------------------
DROP SEQUENCE "public"."rol_id_seq";
CREATE SEQUENCE "public"."rol_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 3
 CACHE 1;
SELECT setval('"public"."rol_id_seq"', 3, true);

-- ----------------------------
-- Sequence structure for solicitud_id_seq
-- ----------------------------
DROP SEQUENCE "public"."solicitud_id_seq";
CREATE SEQUENCE "public"."solicitud_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 3
 CACHE 1;
SELECT setval('"public"."solicitud_id_seq"', 3, true);

-- ----------------------------
-- Sequence structure for tiposolicitud_id_seq
-- ----------------------------
DROP SEQUENCE "public"."tiposolicitud_id_seq";
CREATE SEQUENCE "public"."tiposolicitud_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 2
 CACHE 1;
SELECT setval('"public"."tiposolicitud_id_seq"', 2, true);

-- ----------------------------
-- Sequence structure for usuario_id_seq
-- ----------------------------
DROP SEQUENCE "public"."usuario_id_seq";
CREATE SEQUENCE "public"."usuario_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 3
 CACHE 1;
SELECT setval('"public"."usuario_id_seq"', 3, true);

-- ----------------------------
-- Table structure for dependencia
-- ----------------------------
DROP TABLE IF EXISTS "public"."dependencia";
CREATE TABLE "public"."dependencia" (
"id" int4 DEFAULT nextval('dependencia_id_seq'::regclass) NOT NULL,
"iddepende" int4 NOT NULL,
"denominacion" varchar(250) COLLATE "default" NOT NULL,
"sigla" varchar(10) COLLATE "default" NOT NULL,
"ubicacion" varchar(250) COLLATE "default",
"telefono" varchar(11) COLLATE "default",
"estado" varchar(10) COLLATE "default" NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of dependencia
-- ----------------------------
INSERT INTO "public"."dependencia" VALUES ('1', '0', 'Gerencia general', 'GG', 'Portal Municipal 11', '066435423', '1');
INSERT INTO "public"."dependencia" VALUES ('2', '1', 'Sub Gerencia de Sistemas y Tecnologias', 'SGST', 'Portal Municipal 11', '066435423', '1');

-- ----------------------------
-- Table structure for estadosolicitud
-- ----------------------------
DROP TABLE IF EXISTS "public"."estadosolicitud";
CREATE TABLE "public"."estadosolicitud" (
"id" int4 DEFAULT nextval('estadosolicitud_id_seq'::regclass) NOT NULL,
"denominacion" varchar(250) COLLATE "default" NOT NULL,
"estado" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of estadosolicitud
-- ----------------------------
INSERT INTO "public"."estadosolicitud" VALUES ('1', 'Pendiente', '1');

-- ----------------------------
-- Table structure for persona
-- ----------------------------
DROP TABLE IF EXISTS "public"."persona";
CREATE TABLE "public"."persona" (
"id" int4 DEFAULT nextval('persona_id_seq'::regclass) NOT NULL,
"nombre" varchar(250) COLLATE "default" NOT NULL,
"apellidopat" varchar(250) COLLATE "default" NOT NULL,
"apellidomat" varchar(250) COLLATE "default" NOT NULL,
"dni" varchar(8) COLLATE "default" NOT NULL,
"telefono" varchar(11) COLLATE "default" NOT NULL,
"email" varchar(100) COLLATE "default" NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of persona
-- ----------------------------
INSERT INTO "public"."persona" VALUES ('1', 'Nerio', 'Baez', 'Delgado', '47887880', '964962475', 'nbaez001@gmail.com');
INSERT INTO "public"."persona" VALUES ('2', 'Coco', 'Ramos', 'Perez', '45665443', '965976543', 'coco@gmail.com');
INSERT INTO "public"."persona" VALUES ('3', 'Amilcar', 'Chavez', 'Coronado', '45334332', '965654343', 'achavezc001@gmail.com');

-- ----------------------------
-- Table structure for rol
-- ----------------------------
DROP TABLE IF EXISTS "public"."rol";
CREATE TABLE "public"."rol" (
"id" int4 DEFAULT nextval('rol_id_seq'::regclass) NOT NULL,
"denominacion" varchar(50) COLLATE "default" NOT NULL,
"estado" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of rol
-- ----------------------------
INSERT INTO "public"."rol" VALUES ('1', 'Super administrador', '1');
INSERT INTO "public"."rol" VALUES ('2', 'Administrador', '1');
INSERT INTO "public"."rol" VALUES ('3', 'Usuario', '1');

-- ----------------------------
-- Table structure for solicitud
-- ----------------------------
DROP TABLE IF EXISTS "public"."solicitud";
CREATE TABLE "public"."solicitud" (
"id" int4 DEFAULT nextval('solicitud_id_seq'::regclass) NOT NULL,
"detalle" varchar(250) COLLATE "default" NOT NULL,
"opiniontecnica" varchar(250) COLLATE "default",
"opinionusuario" varchar(250) COLLATE "default",
"fecha" date NOT NULL,
"fechainicioatencion" date,
"fechafinatencion" date,
"idtiposolicitud" int4 NOT NULL,
"idestadosolicitud" int4 NOT NULL,
"idusuario" int4 NOT NULL,
"idtecnico" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of solicitud
-- ----------------------------
INSERT INTO "public"."solicitud" VALUES ('3', 'Errores en la impresora', null, null, '2016-07-08', null, null, '1', '1', '3', null);

-- ----------------------------
-- Table structure for tiposolicitud
-- ----------------------------
DROP TABLE IF EXISTS "public"."tiposolicitud";
CREATE TABLE "public"."tiposolicitud" (
"id" int4 DEFAULT nextval('tiposolicitud_id_seq'::regclass) NOT NULL,
"denominacion" varchar(250) COLLATE "default" NOT NULL,
"estado" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of tiposolicitud
-- ----------------------------
INSERT INTO "public"."tiposolicitud" VALUES ('1', 'Impresora', '1');
INSERT INTO "public"."tiposolicitud" VALUES ('2', 'Computadora', '1');

-- ----------------------------
-- Table structure for usuario
-- ----------------------------
DROP TABLE IF EXISTS "public"."usuario";
CREATE TABLE "public"."usuario" (
"id" int4 DEFAULT nextval('usuario_id_seq'::regclass) NOT NULL,
"usuario" varchar(50) COLLATE "default" NOT NULL,
"contrasena" varchar(50) COLLATE "default" NOT NULL,
"cargo" varchar(100) COLLATE "default" NOT NULL,
"estado" int4 NOT NULL,
"idrol" int4 NOT NULL,
"iddependencia" int4 NOT NULL,
"idpersona" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of usuario
-- ----------------------------
INSERT INTO "public"."usuario" VALUES ('2', 'admin', 'admin', 'Administrador', '1', '2', '2', '1');
INSERT INTO "public"."usuario" VALUES ('3', 'achavez', 'achavez', 'Gerente', '1', '3', '1', '3');

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------
ALTER SEQUENCE "public"."dependencia_id_seq" OWNED BY "dependencia"."id";
ALTER SEQUENCE "public"."estadosolicitud_id_seq" OWNED BY "estadosolicitud"."id";
ALTER SEQUENCE "public"."persona_id_seq" OWNED BY "persona"."id";
ALTER SEQUENCE "public"."rol_id_seq" OWNED BY "rol"."id";
ALTER SEQUENCE "public"."solicitud_id_seq" OWNED BY "solicitud"."id";
ALTER SEQUENCE "public"."tiposolicitud_id_seq" OWNED BY "tiposolicitud"."id";
ALTER SEQUENCE "public"."usuario_id_seq" OWNED BY "usuario"."id";

-- ----------------------------
-- Primary Key structure for table dependencia
-- ----------------------------
ALTER TABLE "public"."dependencia" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table estadosolicitud
-- ----------------------------
ALTER TABLE "public"."estadosolicitud" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table persona
-- ----------------------------
ALTER TABLE "public"."persona" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table rol
-- ----------------------------
ALTER TABLE "public"."rol" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table solicitud
-- ----------------------------
ALTER TABLE "public"."solicitud" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table tiposolicitud
-- ----------------------------
ALTER TABLE "public"."tiposolicitud" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table usuario
-- ----------------------------
ALTER TABLE "public"."usuario" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Foreign Key structure for table "public"."solicitud"
-- ----------------------------
ALTER TABLE "public"."solicitud" ADD FOREIGN KEY ("idestadosolicitud") REFERENCES "public"."estadosolicitud" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."solicitud" ADD FOREIGN KEY ("idusuario") REFERENCES "public"."usuario" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."solicitud" ADD FOREIGN KEY ("idtiposolicitud") REFERENCES "public"."tiposolicitud" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."solicitud" ADD FOREIGN KEY ("idusuario") REFERENCES "public"."usuario" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Key structure for table "public"."usuario"
-- ----------------------------
ALTER TABLE "public"."usuario" ADD FOREIGN KEY ("idpersona") REFERENCES "public"."persona" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."usuario" ADD FOREIGN KEY ("idrol") REFERENCES "public"."rol" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."usuario" ADD FOREIGN KEY ("iddependencia") REFERENCES "public"."dependencia" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
