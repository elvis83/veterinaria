-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-06-2019 a las 20:10:37
-- Versión del servidor: 10.1.28-MariaDB
-- Versión de PHP: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `orejitas`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_DEL_pag_comprobante` (IN `com_id` INT)  BEGIN
  DELETE FROM `pag_comprobante`
  WHERE     
    (`com_id` = `com_id`);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_DEL_pag_detalle_comprobante` (IN `detc_cant` INT, IN `detc_preu` DECIMAL(3,2), IN `com_id` INT, IN `ser_id` INT)  BEGIN
  DELETE FROM `pag_detalle_comprobante`
  WHERE     
    (`detc_cant` = `detc_cant`) AND    
    (`detc_preu` = `detc_preu`) AND    
    (`com_id` = `com_id`) AND    
    (`ser_id` = `ser_id`);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_DEL_pag_tipo_pago` (IN `tipp_id` INT)  BEGIN
  DELETE FROM `pag_tipo_pago`
  WHERE     
    (`tipp_id` = `tipp_id`);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_DEL_res_cita` (IN `cit_id` INT)  BEGIN
  DELETE FROM `res_cita`
  WHERE     
    (`cit_id` = `cit_id`);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_DEL_res_cliente` (IN `clie_id` INT)  BEGIN
  DELETE FROM `res_cliente`
  WHERE     
    (`clie_id` = `clie_id`);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_DEL_res_especialidad` (IN `esp_id` INT)  BEGIN
  DELETE FROM `res_especialidad`
  WHERE     
    (`esp_id` = `esp_id`);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_DEL_res_medico` (IN `med_id` INT)  BEGIN
  DELETE FROM `res_medico`
  WHERE     
    (`med_id` = `med_id`);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_DEL_res_persona` (IN `per_id` INT)  BEGIN
  DELETE FROM `res_persona`
  WHERE     
    (`per_id` = `per_id`);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_DEL_res_reserva` (IN `res_id` INT)  BEGIN
  DELETE FROM `res_reserva`
  WHERE     
    (`res_id` = `res_id`);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_DEL_res_turno` (IN `tur_id` INT)  BEGIN
  DELETE FROM `res_turno`
  WHERE     
    (`tur_id` = `tur_id`);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_DEL_res_usuario` (IN `usu_id` INT)  BEGIN
  DELETE FROM `res_usuario`
  WHERE     
    (`usu_id` = `usu_id`);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_DEL_ser_control_vacuna` (IN `con_id` INT)  BEGIN
  DELETE FROM `ser_control_vacuna`
  WHERE     
    (`con_id` = `con_id`);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_DEL_ser_detalle_historia` (IN `deth_id` INT)  BEGIN
  DELETE FROM `ser_detalle_historia`
  WHERE     
    (`deth_id` = `deth_id`);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_DEL_ser_detalle_insumo` (IN `deti_id` INT)  BEGIN
  DELETE FROM `ser_detalle_insumo`
  WHERE     
    (`deti_id` = `deti_id`);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_DEL_ser_diagnostico` (IN `dia_id` INT)  BEGIN
  DELETE FROM `ser_diagnostico`
  WHERE     
    (`dia_id` = `dia_id`);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_DEL_ser_examen` (IN `exa_id` INT)  BEGIN
  DELETE FROM `ser_examen`
  WHERE     
    (`exa_id` = `exa_id`);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_DEL_ser_historia_clinica` (IN `his_id` INT)  BEGIN
  DELETE FROM `ser_historia_clinica`
  WHERE     
    (`his_id` = `his_id`);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_DEL_ser_insumo` (IN `ins_id` INT)  BEGIN
  DELETE FROM `ser_insumo`
  WHERE     
    (`ins_id` = `ins_id`);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_DEL_ser_mascota` (IN `mas_id` INT)  BEGIN
  DELETE FROM `ser_mascota`
  WHERE     
    (`mas_id` = `mas_id`);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_DEL_ser_medicamento` (IN `medi_id` INT)  BEGIN
  DELETE FROM `ser_medicamento`
  WHERE     
    (`medi_id` = `medi_id`);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_DEL_ser_receta_medica` (IN `rec_id` INT)  BEGIN
  DELETE FROM `ser_receta_medica`
  WHERE     
    (`rec_id` = `rec_id`);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_DEL_ser_resultado` (IN `res_id` INT)  BEGIN
  DELETE FROM `ser_resultado`
  WHERE     
    (`res_id` = `res_id`);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_DEL_ser_servicio` (IN `ser_id` INT)  BEGIN
  DELETE FROM `ser_servicio`
  WHERE     
    (`ser_id` = `ser_id`);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_DEL_ser_tipo_examen` (IN `tipe_id` INT)  BEGIN
  DELETE FROM `ser_tipo_examen`
  WHERE     
    (`tipe_id` = `tipe_id`);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_DEL_ser_tipo_servicio` (IN `tips_id` INT)  BEGIN
  DELETE FROM `ser_tipo_servicio`
  WHERE     
    (`tips_id` = `tips_id`);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_DEL_ser_tipo_vacuna` (IN `tipv_id` INT)  BEGIN
  DELETE FROM `ser_tipo_vacuna`
  WHERE     
    (`tipv_id` = `tipv_id`);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_INS_pag_comprobante` (IN `com_fecha` DATE, IN `com_tipo` ENUM('B','F'), IN `com_monto` DECIMAL(4,2), IN `clie_id` INT, IN `tipp_id` INT, IN `com_estado` ENUM('V','A'))  BEGIN
  INSERT INTO `pag_comprobante`
  (
    `com_fecha`,
    `com_tipo`,
    `com_monto`,
    `clie_id`,
    `tipp_id`,
    `com_estado`
  )
  VALUES 
  (
    `com_fecha`,
    `com_tipo`,
    `com_monto`,
    `clie_id`,
    `tipp_id`,
    `com_estado`
  );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_INS_pag_detalle_comprobante` (IN `detc_cant` INT, IN `detc_preu` DECIMAL(3,2), IN `com_id` INT, IN `ser_id` INT)  BEGIN
  INSERT INTO `pag_detalle_comprobante`
  (
    `detc_cant`,
    `detc_preu`,
    `com_id`,
    `ser_id`
  )
  VALUES 
  (
    `detc_cant`,
    `detc_preu`,
    `com_id`,
    `ser_id`
  );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_INS_pag_tipo_pago` (IN `tipp_desc` VARCHAR(60))  BEGIN
  INSERT INTO `pag_tipo_pago`
  (
    `tipp_desc`
  )
  VALUES 
  (
    `tipp_desc`
  );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_INS_res_cita` (IN `cit_fecha` DATE, IN `cit_estado` ENUM('P','C','R'), IN `res_id` INT, IN `ser_id` INT)  BEGIN
  INSERT INTO `res_cita`
  (
    `cit_fecha`,
    `cit_estado`,
    `res_id`,
    `ser_id`
  )
  VALUES 
  (
    `cit_fecha`,
    `cit_estado`,
    `res_id`,
    `ser_id`
  );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_INS_res_cliente` (IN `clie_estado` ENUM('A','B'), IN `per_id` INT)  BEGIN
  INSERT INTO `res_cliente`
  (
    `clie_estado`,
    `per_id`
  )
  VALUES 
  (
    `clie_estado`,
    `per_id`
  );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_INS_res_especialidad` (IN `esp_nombre` VARCHAR(50), IN `esp_descripcion` VARCHAR(250))  BEGIN
  INSERT INTO `res_especialidad`
  (
    `esp_nombre`,
    `esp_descripcion`
  )
  VALUES 
  (
    `esp_nombre`,
    `esp_descripcion`
  );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_INS_res_medico` (IN `med_estado` ENUM('A','B'), IN `per_id` INT, IN `usu_id` INT, IN `esp_id` INT)  BEGIN
  INSERT INTO `res_medico`
  (
    `med_estado`,
    `per_id`,
    `usu_id`,
    `esp_id`
  )
  VALUES 
  (
    `med_estado`,
    `per_id`,
    `usu_id`,
    `esp_id`
  );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_INS_res_persona` (IN `per_apepat` VARCHAR(60), IN `per_apemat` VARCHAR(60), IN `per_nombres` VARCHAR(90), IN `per_dir` VARCHAR(120), IN `per_tipodoc` VARCHAR(15), IN `per_nrodoc` VARCHAR(8), IN `per_fecnac` DATE, IN `per_sexo` ENUM('H','M','I'), IN `per_tel` VARCHAR(9), IN `per_cel` VARCHAR(9), IN `per_ecivil` ENUM('S','C','V','D'))  BEGIN
  INSERT INTO `res_persona`
  (
    `per_apepat`,
    `per_apemat`,
    `per_nombres`,
    `per_dir`,
    `per_tipodoc`,
    `per_nrodoc`,
    `per_fecnac`,
    `per_sexo`,
    `per_tel`,
    `per_cel`,
    `per_ecivil`
  )
  VALUES 
  (
    `per_apepat`,
    `per_apemat`,
    `per_nombres`,
    `per_dir`,
    `per_tipodoc`,
    `per_nrodoc`,
    `per_fecnac`,
    `per_sexo`,
    `per_tel`,
    `per_cel`,
    `per_ecivil`
  );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_INS_res_reserva` (IN `res_fecres` DATE, IN `res_motivo` VARCHAR(100), IN `res_estado` ENUM('P','C','R'), IN `mas_id` INT, IN `tur_id` INT)  BEGIN
  INSERT INTO `res_reserva`
  (
    `res_fecres`,
    `res_motivo`,
    `res_estado`,
    `mas_id`,
    `tur_id`
  )
  VALUES 
  (
    `res_fecres`,
    `res_motivo`,
    `res_estado`,
    `mas_id`,
    `tur_id`
  );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_INS_res_turno` (IN `tur_fectur` DATE, IN `tur_hini` TIME, IN `tur_hfin` TIME, IN `tur_estado` ENUM('D','N'), IN `med_id` INT)  BEGIN
  INSERT INTO `res_turno`
  (
    `tur_fectur`,
    `tur_hini`,
    `tur_hfin`,
    `tur_estado`,
    `med_id`
  )
  VALUES 
  (
    `tur_fectur`,
    `tur_hini`,
    `tur_hfin`,
    `tur_estado`,
    `med_id`
  );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_INS_res_usuario` (IN `usu_user` VARCHAR(30), IN `usu_clave` VARCHAR(10), IN `usu_fecreg` DATE, IN `usu_estado` ENUM('A','B'))  BEGIN
  INSERT INTO `res_usuario`
  (
    `usu_user`,
    `usu_clave`,
    `usu_fecreg`,
    `usu_estado`
  )
  VALUES 
  (
    `usu_user`,
    `usu_clave`,
    `usu_fecreg`,
    `usu_estado`
  );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_INS_ser_control_vacuna` (IN `con_fecap` DATE, IN `con_fecve` DATE, IN `con_obs` VARCHAR(250), IN `tips_id` INT)  BEGIN
  INSERT INTO `ser_control_vacuna`
  (
    `con_fecap`,
    `con_fecve`,
    `con_obs`,
    `tips_id`
  )
  VALUES 
  (
    `con_fecap`,
    `con_fecve`,
    `con_obs`,
    `tips_id`
  );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_INS_ser_detalle_historia` (IN `deth_fechis` DATE, IN `deth_obs` VARCHAR(250), IN `deth_estado` ENUM('V','A'), IN `his_id` INT, IN `con_id` INT, IN `ser_id` INT, IN `exa_id` INT)  BEGIN
  INSERT INTO `ser_detalle_historia`
  (
    `deth_fechis`,
    `deth_obs`,
    `deth_estado`,
    `his_id`,
    `con_id`,
    `ser_id`,
    `exa_id`
  )
  VALUES 
  (
    `deth_fechis`,
    `deth_obs`,
    `deth_estado`,
    `his_id`,
    `con_id`,
    `ser_id`,
    `exa_id`
  );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_INS_ser_detalle_insumo` (IN `deti_cant` INT, IN `ser_id` INT, IN `ins_id` INT, IN `medi_id` INT)  BEGIN
  INSERT INTO `ser_detalle_insumo`
  (
    `deti_cant`,
    `ser_id`,
    `ins_id`,
    `medi_id`
  )
  VALUES 
  (
    `deti_cant`,
    `ser_id`,
    `ins_id`,
    `medi_id`
  );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_INS_ser_diagnostico` (IN `dia_trat` VARCHAR(250), IN `dia_obs` VARCHAR(250), IN `res_id` INT)  BEGIN
  INSERT INTO `ser_diagnostico`
  (
    `dia_trat`,
    `dia_obs`,
    `res_id`
  )
  VALUES 
  (
    `dia_trat`,
    `dia_obs`,
    `res_id`
  );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_INS_ser_examen` (IN `exa_temp` DECIMAL(2,1), IN `exa_peso` DECIMAL(3,2), IN `exa_pulso` VARCHAR(3), IN `exa_resp` VARCHAR(3), IN `exa_anom` VARCHAR(80), IN `tips_id` INT)  BEGIN
  INSERT INTO `ser_examen`
  (
    `exa_temp`,
    `exa_peso`,
    `exa_pulso`,
    `exa_resp`,
    `exa_anom`,
    `tips_id`
  )
  VALUES 
  (
    `exa_temp`,
    `exa_peso`,
    `exa_pulso`,
    `exa_resp`,
    `exa_anom`,
    `tips_id`
  );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_INS_ser_historia_clinica` (IN `his_fecreg` DATE, IN `his_estado` ENUM('A','B'), IN `mas_id` INT)  BEGIN
  INSERT INTO `ser_historia_clinica`
  (
    `his_fecreg`,
    `his_estado`,
    `mas_id`
  )
  VALUES 
  (
    `his_fecreg`,
    `his_estado`,
    `mas_id`
  );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_INS_ser_insumo` (IN `ins_desc` VARCHAR(250), IN `ins_uni` VARCHAR(25), IN `ins_stock` INT, IN `ins_fecven` DATE, IN `ins_estado` ENUM('D','F'))  BEGIN
  INSERT INTO `ser_insumo`
  (
    `ins_desc`,
    `ins_uni`,
    `ins_stock`,
    `ins_fecven`,
    `ins_estado`
  )
  VALUES 
  (
    `ins_desc`,
    `ins_uni`,
    `ins_stock`,
    `ins_fecven`,
    `ins_estado`
  );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_INS_ser_mascota` (IN `mas_nombre` VARCHAR(35), IN `mas_tipo` VARCHAR(35), IN `mas_raza` VARCHAR(70), IN `mas_sexo` ENUM('M','H'), IN `mas_gs` VARCHAR(4), IN `mas_alergia` VARCHAR(100), IN `mas_fecnac` DATE, IN `mas_color` VARCHAR(25), IN `mas_foto` VARCHAR(100), IN `mas_estado` ENUM('A','I'), IN `clie_id` INT)  BEGIN
  INSERT INTO `ser_mascota`
  (
    `mas_nombre`,
    `mas_tipo`,
    `mas_raza`,
    `mas_sexo`,
    `mas_gs`,
    `mas_alergia`,
    `mas_fecnac`,
    `mas_color`,
    `mas_foto`,
    `mas_estado`,
    `clie_id`
  )
  VALUES 
  (
    `mas_nombre`,
    `mas_tipo`,
    `mas_raza`,
    `mas_sexo`,
    `mas_gs`,
    `mas_alergia`,
    `mas_fecnac`,
    `mas_color`,
    `mas_foto`,
    `mas_estado`,
    `clie_id`
  );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_INS_ser_medicamento` (IN `medi_nombre` VARCHAR(70), IN `medi_desc` VARCHAR(250), IN `medi_pres` VARCHAR(35), IN `medi_stock` INT, IN `medi_fecven` DATE, IN `medi_estado` ENUM('A','B'), IN `medi_precio` DECIMAL(5,2))  BEGIN
  INSERT INTO `ser_medicamento`
  (
    `medi_nombre`,
    `medi_desc`,
    `medi_pres`,
    `medi_stock`,
    `medi_fecven`,
    `medi_estado`,
    `medi_precio`
  )
  VALUES 
  (
    `medi_nombre`,
    `medi_desc`,
    `medi_pres`,
    `medi_stock`,
    `medi_fecven`,
    `medi_estado`,
    `medi_precio`
  );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_INS_ser_receta_medica` (IN `rec_ind` VARCHAR(250), IN `rec_fecexp` DATE, IN `rec_feccad` DATE, IN `dia_id` INT)  BEGIN
  INSERT INTO `ser_receta_medica`
  (
    `rec_ind`,
    `rec_fecexp`,
    `rec_feccad`,
    `dia_id`
  )
  VALUES 
  (
    `rec_ind`,
    `rec_fecexp`,
    `rec_feccad`,
    `dia_id`
  );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_INS_ser_receta_medica_detalle` (IN `detr_can` INT, IN `detr_obs` VARCHAR(250), IN `detr_dia` INT, IN `rec_id` INT, IN `medi_id` INT)  BEGIN
  INSERT INTO `ser_receta_medica_detalle`
  (
    `detr_can`,
    `detr_obs`,
    `detr_dia`,
    `rec_id`,
    `medi_id`
  )
  VALUES 
  (
    `detr_can`,
    `detr_obs`,
    `detr_dia`,
    `rec_id`,
    `medi_id`
  );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_INS_ser_resultado` (IN `res_anexo` VARCHAR(60), IN `res_obs1` VARCHAR(250), IN `res_obs2` VARCHAR(250), IN `exa_id` INT)  BEGIN
  INSERT INTO `ser_resultado`
  (
    `res_anexo`,
    `res_obs1`,
    `res_obs2`,
    `exa_id`
  )
  VALUES 
  (
    `res_anexo`,
    `res_obs1`,
    `res_obs2`,
    `exa_id`
  );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_INS_ser_servicio` (IN `ser_nombre` VARCHAR(60), IN `ser_desc` VARCHAR(250), IN `ser_monto` DECIMAL(5,2))  BEGIN
  INSERT INTO `ser_servicio`
  (
    `ser_nombre`,
    `ser_desc`,
    `ser_monto`
  )
  VALUES 
  (
    `ser_nombre`,
    `ser_desc`,
    `ser_monto`
  );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_INS_ser_tipo_examen` (IN `tipe_nombre` VARCHAR(35), IN `tipe_estado` ENUM('R','N'), IN `exa_id` INT)  BEGIN
  INSERT INTO `ser_tipo_examen`
  (
    `tipe_nombre`,
    `tipe_estado`,
    `exa_id`
  )
  VALUES 
  (
    `tipe_nombre`,
    `tipe_estado`,
    `exa_id`
  );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_INS_ser_tipo_servicio` (IN `tips_desc` VARCHAR(250), IN `tips_costo` DECIMAL(5,2), IN `ser_id` INT)  BEGIN
  INSERT INTO `ser_tipo_servicio`
  (
    `tips_desc`,
    `tips_costo`,
    `ser_id`
  )
  VALUES 
  (
    `tips_desc`,
    `tips_costo`,
    `ser_id`
  );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_INS_ser_tipo_vacuna` (IN `tipv_nombre` VARCHAR(40), IN `tipv_desc` VARCHAR(100), IN `con_id` INT)  BEGIN
  INSERT INTO `ser_tipo_vacuna`
  (
    `tipv_nombre`,
    `tipv_desc`,
    `con_id`
  )
  VALUES 
  (
    `tipv_nombre`,
    `tipv_desc`,
    `con_id`
  );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_LST_pag_comprobante` ()  BEGIN
  SELECT
    `com_id`,
    `com_fecha`,
    `com_tipo`,
    `com_monto`,
    `clie_id`,
    `tipp_id`,
    `com_estado`
  FROM `pag_comprobante`;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_LST_pag_detalle_comprobante` ()  BEGIN
  SELECT
    `detc_cant`,
    `detc_preu`,
    `com_id`,
    `ser_id`
  FROM `pag_detalle_comprobante`;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_LST_pag_tipo_pago` ()  BEGIN
  SELECT
    `tipp_id`,
    `tipp_desc`
  FROM `pag_tipo_pago`;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_LST_res_cita` ()  BEGIN
  SELECT
    `cit_id`,
    `cit_fecha`,
    `cit_estado`,
    `res_id`,
    `ser_id`
  FROM `res_cita`;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_LST_res_cliente` ()  BEGIN
  SELECT
    `clie_id`,
    `clie_estado`,
    `per_id`
  FROM `res_cliente`;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_LST_res_especialidad` ()  BEGIN
  SELECT
    `esp_id`,
    `esp_nombre`,
    `esp_descripcion`
  FROM `res_especialidad`;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_LST_res_medico` ()  BEGIN
  SELECT
    `med_id`,
    `med_estado`,
    `per_id`,
    `usu_id`,
    `esp_id`
  FROM `res_medico`;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_LST_res_persona` ()  BEGIN
  SELECT
    `per_id`,
    `per_apepat`,
    `per_apemat`,
    `per_nombres`,
    `per_dir`,
    `per_tipodoc`,
    `per_nrodoc`,
    `per_fecnac`,
    `per_sexo`,
    `per_tel`,
    `per_cel`,
    `per_ecivil`
  FROM `res_persona`;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_LST_res_reserva` ()  BEGIN
  SELECT
    `res_id`,
    `res_fecres`,
    `res_motivo`,
    `res_estado`,
    `mas_id`,
    `tur_id`
  FROM `res_reserva`;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_LST_res_turno` ()  BEGIN
  SELECT
    `tur_id`,
    `tur_fectur`,
    `tur_hini`,
    `tur_hfin`,
    `tur_estado`,
    `med_id`
  FROM `res_turno`;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_LST_res_usuario` ()  BEGIN
  SELECT
    `usu_id`,
    `usu_user`,
    `usu_clave`,
    `usu_fecreg`,
    `usu_estado`
  FROM `res_usuario`;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_LST_ser_control_vacuna` ()  BEGIN
  SELECT
    `con_id`,
    `con_fecap`,
    `con_fecve`,
    `con_obs`,
    `tips_id`
  FROM `ser_control_vacuna`;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_LST_ser_detalle_historia` ()  BEGIN
  SELECT
    `deth_id`,
    `deth_fechis`,
    `deth_obs`,
    `deth_estado`,
    `his_id`,
    `con_id`,
    `ser_id`,
    `exa_id`
  FROM `ser_detalle_historia`;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_LST_ser_detalle_insumo` ()  BEGIN
  SELECT
    `deti_cant`,
    `deti_id`,
    `ser_id`,
    `ins_id`,
    `medi_id`
  FROM `ser_detalle_insumo`;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_LST_ser_diagnostico` ()  BEGIN
  SELECT
    `dia_id`,
    `dia_trat`,
    `dia_obs`,
    `res_id`
  FROM `ser_diagnostico`;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_LST_ser_examen` ()  BEGIN
  SELECT
    `exa_id`,
    `exa_temp`,
    `exa_peso`,
    `exa_pulso`,
    `exa_resp`,
    `exa_anom`,
    `tips_id`
  FROM `ser_examen`;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_LST_ser_historia_clinica` ()  BEGIN
  SELECT
    `his_id`,
    `his_fecreg`,
    `his_estado`,
    `mas_id`
  FROM `ser_historia_clinica`;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_LST_ser_insumo` ()  BEGIN
  SELECT
    `ins_id`,
    `ins_desc`,
    `ins_uni`,
    `ins_stock`,
    `ins_fecven`,
    `ins_estado`
  FROM `ser_insumo`;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_LST_ser_mascota` ()  BEGIN
  SELECT
    `mas_id`,
    `mas_nombre`,
    `mas_tipo`,
    `mas_raza`,
    `mas_sexo`,
    `mas_gs`,
    `mas_alergia`,
    `mas_fecnac`,
    `mas_color`,
    `mas_foto`,
    `mas_estado`,
    `clie_id`
  FROM `ser_mascota`;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_LST_ser_medicamento` ()  BEGIN
  SELECT
    `medi_id`,
    `medi_nombre`,
    `medi_desc`,
    `medi_pres`,
    `medi_stock`,
    `medi_fecven`,
    `medi_estado`,
    `medi_precio`
  FROM `ser_medicamento`;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_LST_ser_receta_medica` ()  BEGIN
  SELECT
    `rec_id`,
    `rec_ind`,
    `rec_fecexp`,
    `rec_feccad`,
    `dia_id`
  FROM `ser_receta_medica`;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_LST_ser_receta_medica_detalle` ()  BEGIN
  SELECT
    `detr_can`,
    `detr_obs`,
    `detr_dia`,
    `rec_id`,
    `medi_id`
  FROM `ser_receta_medica_detalle`;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_LST_ser_resultado` ()  BEGIN
  SELECT
    `res_id`,
    `res_anexo`,
    `res_obs1`,
    `res_obs2`,
    `exa_id`
  FROM `ser_resultado`;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_LST_ser_servicio` ()  BEGIN
  SELECT
    `ser_id`,
    `ser_nombre`,
    `ser_desc`,
    `ser_monto`
  FROM `ser_servicio`;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_LST_ser_tipo_examen` ()  BEGIN
  SELECT
    `tipe_id`,
    `tipe_nombre`,
    `tipe_estado`,
    `exa_id`
  FROM `ser_tipo_examen`;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_LST_ser_tipo_servicio` ()  BEGIN
  SELECT
    `tips_id`,
    `tips_desc`,
    `tips_costo`,
    `ser_id`
  FROM `ser_tipo_servicio`;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_LST_ser_tipo_vacuna` ()  BEGIN
  SELECT
    `tipv_id`,
    `tipv_nombre`,
    `tipv_desc`,
    `con_id`
  FROM `ser_tipo_vacuna`;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_UPD_pag_comprobante` (IN `com_id` INT, IN `com_fecha` DATE, IN `com_tipo` ENUM('B','F'), IN `com_monto` DECIMAL(4,2), IN `clie_id` INT, IN `tipp_id` INT, IN `com_estado` ENUM('V','A'))  BEGIN
  UPDATE `pag_comprobante` SET
    `com_fecha` = `com_fecha`,
    `com_tipo` = `com_tipo`,
    `com_monto` = `com_monto`,
    `clie_id` = `clie_id`,
    `tipp_id` = `tipp_id`,
    `com_estado` = `com_estado`
  WHERE 
    (`com_id` = `com_id`);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_UPD_pag_tipo_pago` (IN `tipp_id` INT, IN `tipp_desc` VARCHAR(60))  BEGIN
  UPDATE `pag_tipo_pago` SET
    `tipp_desc` = `tipp_desc`
  WHERE 
    (`tipp_id` = `tipp_id`);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_UPD_res_cita` (IN `cit_id` INT, IN `cit_fecha` DATE, IN `cit_estado` ENUM('P','C','R'), IN `res_id` INT, IN `ser_id` INT)  BEGIN
  UPDATE `res_cita` SET
    `cit_fecha` = `cit_fecha`,
    `cit_estado` = `cit_estado`,
    `res_id` = `res_id`,
    `ser_id` = `ser_id`
  WHERE 
    (`cit_id` = `cit_id`);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_UPD_res_cliente` (IN `clie_id` INT, IN `clie_estado` ENUM('A','B'), IN `per_id` INT)  BEGIN
  UPDATE `res_cliente` SET
    `clie_estado` = `clie_estado`,
    `per_id` = `per_id`
  WHERE 
    (`clie_id` = `clie_id`);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_UPD_res_especialidad` (IN `esp_id` INT, IN `esp_nombre` VARCHAR(50), IN `esp_descripcion` VARCHAR(250))  BEGIN
  UPDATE `res_especialidad` SET
    `esp_nombre` = `esp_nombre`,
    `esp_descripcion` = `esp_descripcion`
  WHERE 
    (`esp_id` = `esp_id`);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_UPD_res_medico` (IN `med_id` INT, IN `med_estado` ENUM('A','B'), IN `per_id` INT, IN `usu_id` INT, IN `esp_id` INT)  BEGIN
  UPDATE `res_medico` SET
    `med_estado` = `med_estado`,
    `per_id` = `per_id`,
    `usu_id` = `usu_id`,
    `esp_id` = `esp_id`
  WHERE 
    (`med_id` = `med_id`);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_UPD_res_persona` (IN `per_id` INT, IN `per_apepat` VARCHAR(60), IN `per_apemat` VARCHAR(60), IN `per_nombres` VARCHAR(90), IN `per_dir` VARCHAR(120), IN `per_tipodoc` VARCHAR(15), IN `per_nrodoc` VARCHAR(8), IN `per_fecnac` DATE, IN `per_sexo` ENUM('H','M','I'), IN `per_tel` VARCHAR(9), IN `per_cel` VARCHAR(9), IN `per_ecivil` ENUM('S','C','V','D'))  BEGIN
  UPDATE `res_persona` SET
    `per_apepat` = `per_apepat`,
    `per_apemat` = `per_apemat`,
    `per_nombres` = `per_nombres`,
    `per_dir` = `per_dir`,
    `per_tipodoc` = `per_tipodoc`,
    `per_nrodoc` = `per_nrodoc`,
    `per_fecnac` = `per_fecnac`,
    `per_sexo` = `per_sexo`,
    `per_tel` = `per_tel`,
    `per_cel` = `per_cel`,
    `per_ecivil` = `per_ecivil`
  WHERE 
    (`per_id` = `per_id`);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_UPD_res_reserva` (IN `res_id` INT, IN `res_fecres` DATE, IN `res_motivo` VARCHAR(100), IN `res_estado` ENUM('P','C','R'), IN `mas_id` INT, IN `tur_id` INT)  BEGIN
  UPDATE `res_reserva` SET
    `res_fecres` = `res_fecres`,
    `res_motivo` = `res_motivo`,
    `res_estado` = `res_estado`,
    `mas_id` = `mas_id`,
    `tur_id` = `tur_id`
  WHERE 
    (`res_id` = `res_id`);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_UPD_res_turno` (IN `tur_id` INT, IN `tur_fectur` DATE, IN `tur_hini` TIME, IN `tur_hfin` TIME, IN `tur_estado` ENUM('D','N'), IN `med_id` INT)  BEGIN
  UPDATE `res_turno` SET
    `tur_fectur` = `tur_fectur`,
    `tur_hini` = `tur_hini`,
    `tur_hfin` = `tur_hfin`,
    `tur_estado` = `tur_estado`,
    `med_id` = `med_id`
  WHERE 
    (`tur_id` = `tur_id`);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_UPD_res_usuario` (IN `usu_id` INT, IN `usu_user` VARCHAR(30), IN `usu_clave` VARCHAR(10), IN `usu_fecreg` DATE, IN `usu_estado` ENUM('A','B'))  BEGIN
  UPDATE `res_usuario` SET
    `usu_user` = `usu_user`,
    `usu_clave` = `usu_clave`,
    `usu_fecreg` = `usu_fecreg`,
    `usu_estado` = `usu_estado`
  WHERE 
    (`usu_id` = `usu_id`);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_UPD_ser_control_vacuna` (IN `con_id` INT, IN `con_fecap` DATE, IN `con_fecve` DATE, IN `con_obs` VARCHAR(250), IN `tips_id` INT)  BEGIN
  UPDATE `ser_control_vacuna` SET
    `con_fecap` = `con_fecap`,
    `con_fecve` = `con_fecve`,
    `con_obs` = `con_obs`,
    `tips_id` = `tips_id`
  WHERE 
    (`con_id` = `con_id`);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_UPD_ser_detalle_historia` (IN `deth_id` INT, IN `deth_fechis` DATE, IN `deth_obs` VARCHAR(250), IN `deth_estado` ENUM('V','A'), IN `his_id` INT, IN `con_id` INT, IN `ser_id` INT, IN `exa_id` INT)  BEGIN
  UPDATE `ser_detalle_historia` SET
    `deth_fechis` = `deth_fechis`,
    `deth_obs` = `deth_obs`,
    `deth_estado` = `deth_estado`,
    `his_id` = `his_id`,
    `con_id` = `con_id`,
    `ser_id` = `ser_id`,
    `exa_id` = `exa_id`
  WHERE 
    (`deth_id` = `deth_id`);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_UPD_ser_detalle_insumo` (IN `deti_cant` INT, IN `deti_id` INT, IN `ser_id` INT, IN `ins_id` INT, IN `medi_id` INT)  BEGIN
  UPDATE `ser_detalle_insumo` SET
    `deti_cant` = `deti_cant`,
    `ser_id` = `ser_id`,
    `ins_id` = `ins_id`,
    `medi_id` = `medi_id`
  WHERE 
    (`deti_id` = `deti_id`);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_UPD_ser_diagnostico` (IN `dia_id` INT, IN `dia_trat` VARCHAR(250), IN `dia_obs` VARCHAR(250), IN `res_id` INT)  BEGIN
  UPDATE `ser_diagnostico` SET
    `dia_trat` = `dia_trat`,
    `dia_obs` = `dia_obs`,
    `res_id` = `res_id`
  WHERE 
    (`dia_id` = `dia_id`);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_UPD_ser_examen` (IN `exa_id` INT, IN `exa_temp` DECIMAL(2,1), IN `exa_peso` DECIMAL(3,2), IN `exa_pulso` VARCHAR(3), IN `exa_resp` VARCHAR(3), IN `exa_anom` VARCHAR(80), IN `tips_id` INT)  BEGIN
  UPDATE `ser_examen` SET
    `exa_temp` = `exa_temp`,
    `exa_peso` = `exa_peso`,
    `exa_pulso` = `exa_pulso`,
    `exa_resp` = `exa_resp`,
    `exa_anom` = `exa_anom`,
    `tips_id` = `tips_id`
  WHERE 
    (`exa_id` = `exa_id`);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_UPD_ser_historia_clinica` (IN `his_id` INT, IN `his_fecreg` DATE, IN `his_estado` ENUM('A','B'), IN `mas_id` INT)  BEGIN
  UPDATE `ser_historia_clinica` SET
    `his_fecreg` = `his_fecreg`,
    `his_estado` = `his_estado`,
    `mas_id` = `mas_id`
  WHERE 
    (`his_id` = `his_id`);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_UPD_ser_insumo` (IN `ins_id` INT, IN `ins_desc` VARCHAR(250), IN `ins_uni` VARCHAR(25), IN `ins_stock` INT, IN `ins_fecven` DATE, IN `ins_estado` ENUM('D','F'))  BEGIN
  UPDATE `ser_insumo` SET
    `ins_desc` = `ins_desc`,
    `ins_uni` = `ins_uni`,
    `ins_stock` = `ins_stock`,
    `ins_fecven` = `ins_fecven`,
    `ins_estado` = `ins_estado`
  WHERE 
    (`ins_id` = `ins_id`);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_UPD_ser_mascota` (IN `mas_id` INT, IN `mas_nombre` VARCHAR(35), IN `mas_tipo` VARCHAR(35), IN `mas_raza` VARCHAR(70), IN `mas_sexo` ENUM('M','H'), IN `mas_gs` VARCHAR(4), IN `mas_alergia` VARCHAR(100), IN `mas_fecnac` DATE, IN `mas_color` VARCHAR(25), IN `mas_foto` VARCHAR(100), IN `mas_estado` ENUM('A','I'), IN `clie_id` INT)  BEGIN
  UPDATE `ser_mascota` SET
    `mas_nombre` = `mas_nombre`,
    `mas_tipo` = `mas_tipo`,
    `mas_raza` = `mas_raza`,
    `mas_sexo` = `mas_sexo`,
    `mas_gs` = `mas_gs`,
    `mas_alergia` = `mas_alergia`,
    `mas_fecnac` = `mas_fecnac`,
    `mas_color` = `mas_color`,
    `mas_foto` = `mas_foto`,
    `mas_estado` = `mas_estado`,
    `clie_id` = `clie_id`
  WHERE 
    (`mas_id` = `mas_id`);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_UPD_ser_medicamento` (IN `medi_id` INT, IN `medi_nombre` VARCHAR(70), IN `medi_desc` VARCHAR(250), IN `medi_pres` VARCHAR(35), IN `medi_stock` INT, IN `medi_fecven` DATE, IN `medi_estado` ENUM('A','B'), IN `medi_precio` DECIMAL(5,2))  BEGIN
  UPDATE `ser_medicamento` SET
    `medi_nombre` = `medi_nombre`,
    `medi_desc` = `medi_desc`,
    `medi_pres` = `medi_pres`,
    `medi_stock` = `medi_stock`,
    `medi_fecven` = `medi_fecven`,
    `medi_estado` = `medi_estado`,
    `medi_precio` = `medi_precio`
  WHERE 
    (`medi_id` = `medi_id`);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_UPD_ser_receta_medica` (IN `rec_id` INT, IN `rec_ind` VARCHAR(250), IN `rec_fecexp` DATE, IN `rec_feccad` DATE, IN `dia_id` INT)  BEGIN
  UPDATE `ser_receta_medica` SET
    `rec_ind` = `rec_ind`,
    `rec_fecexp` = `rec_fecexp`,
    `rec_feccad` = `rec_feccad`,
    `dia_id` = `dia_id`
  WHERE 
    (`rec_id` = `rec_id`);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_UPD_ser_resultado` (IN `res_id` INT, IN `res_anexo` VARCHAR(60), IN `res_obs1` VARCHAR(250), IN `res_obs2` VARCHAR(250), IN `exa_id` INT)  BEGIN
  UPDATE `ser_resultado` SET
    `res_anexo` = `res_anexo`,
    `res_obs1` = `res_obs1`,
    `res_obs2` = `res_obs2`,
    `exa_id` = `exa_id`
  WHERE 
    (`res_id` = `res_id`);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_UPD_ser_servicio` (IN `ser_id` INT, IN `ser_nombre` VARCHAR(60), IN `ser_desc` VARCHAR(250), IN `ser_monto` DECIMAL(5,2))  BEGIN
  UPDATE `ser_servicio` SET
    `ser_nombre` = `ser_nombre`,
    `ser_desc` = `ser_desc`,
    `ser_monto` = `ser_monto`
  WHERE 
    (`ser_id` = `ser_id`);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_UPD_ser_tipo_examen` (IN `tipe_id` INT, IN `tipe_nombre` VARCHAR(35), IN `tipe_estado` ENUM('R','N'), IN `exa_id` INT)  BEGIN
  UPDATE `ser_tipo_examen` SET
    `tipe_nombre` = `tipe_nombre`,
    `tipe_estado` = `tipe_estado`,
    `exa_id` = `exa_id`
  WHERE 
    (`tipe_id` = `tipe_id`);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_UPD_ser_tipo_servicio` (IN `tips_id` INT, IN `tips_desc` VARCHAR(250), IN `tips_costo` DECIMAL(5,2), IN `ser_id` INT)  BEGIN
  UPDATE `ser_tipo_servicio` SET
    `tips_desc` = `tips_desc`,
    `tips_costo` = `tips_costo`,
    `ser_id` = `ser_id`
  WHERE 
    (`tips_id` = `tips_id`);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_PET_UPD_ser_tipo_vacuna` (IN `tipv_id` INT, IN `tipv_nombre` VARCHAR(40), IN `tipv_desc` VARCHAR(100), IN `con_id` INT)  BEGIN
  UPDATE `ser_tipo_vacuna` SET
    `tipv_nombre` = `tipv_nombre`,
    `tipv_desc` = `tipv_desc`,
    `con_id` = `con_id`
  WHERE 
    (`tipv_id` = `tipv_id`);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `REVISAR_CITA` (IN `cit_fecha` DATE)  BEGIN
    IF cit_fecha = DATE_FORMAT(NOW(),"%Y-%m-%d 00:00:00") THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on res_cita.cit_fecha failed';
    END IF;
            
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `REVISAR_COMPROBANTE` (IN `com_fecha` DATE, IN `com_monto` DECIMAL(4,2))  BEGIN
    IF com_monto < 0.00 THEN
	SIGNAL SQLSTATE '45000'
	   SET MESSAGE_TEXT = 'check constraint on pag_comprobante.com_monto failed';
    END IF;

    IF NOT(com_monto REGEXP ('^[0-9]+$')) THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on pag_comprobrante.com_monto failed';
    END IF;

    IF com_fecha < DATE_FORMAT(NOW(),"%Y-%m-%d") THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on pag_comprobante.com_fecha failed';
    END IF;
       
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `REVISAR_CONTROL_VAC` (IN `con_fecap` DATE, IN `con_fecve` DATE)  BEGIN
    IF con_fecap > DATE_FORMAT(NOW(),"%Y-%m-%d 00:00:00") THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on ser_control_vacuna.con_fecap failed';
    END IF;
    
    IF con_fecve < DATE_ADD(con_fecap, INTERVAL 30 DAY) THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on ser_control_vacuna.con_fecve failed';
    END IF;
    
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `REVISAR_DETALLE_COMPROBANTE` (IN `detc_cant` INTEGER, IN `detc_preu` DECIMAL(3,2))  BEGIN
    IF detc_cant < 1 THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on pag_detalle_comprobante.detc_cant failed';
    END IF;
    
    IF detc_preu < 1 THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on pag_detalle_comprobante.detc_preu failed';
    END IF;
       
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `REVISAR_DETALLE_HISTORIA` (IN `deth_fechis` DATE)  BEGIN
    IF deth_fechis = DATE_FORMAT(NOW(),"%Y-%m-%d") THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on ser_detalle_historia.deth_fechis failed';
    END IF;
    
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `REVISAR_DETALLE_INSUMO` (IN `deti_cant` INTEGER)  BEGIN
    IF deti_cant < 0 THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on ser_detalle_insumo.deti_cant failed';
    END IF;
        
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `REVISAR_DIAGNOSTICO` (IN `dia_trat` VARCHAR(250))  BEGIN
    IF LENGTH(dia_trat) < 3 THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on ser_diagnostico.dia_trat failed';
    END IF;
    
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `REVISAR_ESPECIALIDAD` (IN `esp_nombre` VARCHAR(50), IN `esp_descripcion` VARCHAR(250))  BEGIN
    IF LENGTH(esp_nombre) < 3 THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on res_especialidad.esp_nombre failed';
    END IF;
    
    IF LENGTH(esp_descripcion) < 3 THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on res_especialidad.esp_descripcion failed';
    END IF;
    
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `REVISAR_EXAMEN` (IN `exa_temp` DECIMAL(2,1), IN `exa_peso` DECIMAL(3,2), IN `exa_pulso` VARCHAR(3), IN `exa_resp` VARCHAR(3), IN `exa_anom` VARCHAR(80))  BEGIN
    IF exa_temp < 0.0 THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on ser_examen.exa_temp failed';
    END IF;
    
    IF exa_peso < 0.00 THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on ser_examen.exa_peso failed';
    END IF;
    
    IF LENGTH(exa_pulso) < 2 THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on ser_examen.exa_pulso failed';
    END IF;
    
    IF LENGTH(exa_resp) < 2 THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on ser_examen.exa_resp failed';
    END IF;
    
    IF LENGTH(exa_anom) < 3 THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on ser_examen.exa_anom failed';
    END IF;
        
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `REVISAR_HISTORIA_CLI` (IN `his_fecreg` DATE)  BEGIN
    IF his_fecreg > DATE_FORMAT(NOW(),"%Y-%m-%d 00:00:00") THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on ser_historia_clinica.his_fecreg failed';
    END IF;
    
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `REVISAR_INSUMO` (IN `ins_desc` VARCHAR(250), IN `ins_uni` VARCHAR(25), IN `ins_stock` INTEGER, IN `ins_feven` DATE)  BEGIN
    IF LENGTH(ins_desc) < 3 THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on ser_insumo.ins_desc failed';
    END IF;
    
    IF LENGTH(ins_uni) < 3 THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on ser_insumo.ins_uni failed';
    END IF;
    
    IF ins_stock < 0 THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on ser_insumo.ins_stock failed';
    END IF;
    
    IF ins_fecven < DATE_FORMAT(NOW(),"%Y-%m-%d 00:00:00") THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on ser_insumo.ins_fecven failed';
    END IF;
        
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `REVISAR_MASCOTA` (IN `mas_nombre` VARCHAR(35), IN `mas_tipo` VARCHAR(35), IN `mas_raza` VARCHAR(70), IN `mas_gs` VARCHAR(4), IN `mas_alergia` VARCHAR(100), IN `mas_fecnac` DATE, IN `mas_color` VARCHAR(25), IN `mas_foto` VARCHAR(100))  BEGIN
    IF LENGTH(mas_nombre) < 3 THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on ser_mascota.mas_nombre failed';
    END IF;
    
    IF NOT (mas_nombre REGEXP ('^[[:alpha:]_ ]+$')) THEN
           SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on ser_mascota.mas_nombre failed';
    END IF;
    
    IF LENGTH(mas_tipo) < 3 THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on ser_mascota.mas_tipo failed';
    END IF;
    
    IF NOT (mas_tipo REGEXP ('^[[:alpha:]_ ]+$')) THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on ser_mascota.mas_tipo failed';
    END IF;
    
    IF LENGTH(mas_raza) < 3 THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on ser_mascota.mas_raza failed';
    END IF;
    
    IF NOT (mas_raza REGEXP ('^[[:alpha:]_ ]+$')) THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on ser_mascota.mas_raza failed';
    END IF;
    
    IF LENGTH(mas_gs) < 3 THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on ser_mascota.mas_gs failed';
    END IF;
    
    IF LENGTH(mas_alergia) < 3 THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on ser_mascota.mas_alergia failed';
    END IF;
    
    IF NOT (mas_alergia REGEXP ('^[[:alpha:]_ ]+$')) THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on ser_mascota.mas_alergia failed';
    END IF;
    
    IF mas_fecnac > DATE_FORMAT(NOW(),"%Y-%m-%d 00:00:00") THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on ser_mascota.mas_fecnac failed';
    END IF;
    
    IF LENGTH(mas_color) < 3 THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on ser_mascota.mas_color failed';
    END IF;
    
    IF NOT (mas_raza REGEXP ('^[[:alpha:]_ ]+$')) THEN
       SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on ser_mascota.mas_color failed';
    END IF;
    
    IF LENGTH(mas_foto) < 3 THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on ser_mascota.mas_foto failed';
    END IF;
    
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `REVISAR_MEDICAMENTO` (IN `medi_nombre` VARCHAR(70), IN `medi_desc` VARCHAR(250), IN `medi_pres` VARCHAR(35), IN `medi_stock` INTEGER, IN `medi_fecven` DATE, IN `medi_precio` DECIMAL(5,2))  BEGIN
    IF LENGTH(medi_nombre) < 3 THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on ser_medicamento.medi_nombre failed';
    END IF;
    
    IF LENGTH(medi_desc) < 3 THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on ser_medicamento.medi_desc failed';
    END IF;
    
    IF LENGTH(medi_pres) < 3 THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on ser_medicamento.medi_pres failed';
    END IF;
    
    IF NOT (medi_pres REGEXP ('^[[:alpha:]_ ]+$')) THEN
       SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on ser_medicamento.medi_pres failed';
    END IF;
    
    IF medi_stock < 0 THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on ser_medicamento.medi_stock failed';
    END IF;
    
    IF medi_fecven < DATE_FORMAT(NOW(),"%Y-%m-%d 00:00:00") THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on ser_medicamento.medi_fecven failed';
    END IF;
    
    IF medi_precio < 0.00 THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on ser_medicamento.medi_precio failed';
    END IF;
    
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `REVISAR_PERSONA` (IN `per_apepat` VARCHAR(60), IN `per_apemat` VARCHAR(60), IN `per_nombres` VARCHAR(90), IN `per_dir` VARCHAR(120), IN `per_tipodoc` VARCHAR(15), IN `per_nrodoc` VARCHAR(8), IN `per_fecnac` DATE)  BEGIN
    IF (LENGTH(per_apepat) < 3) THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'Apellido Paterno: Tama?o m?nimo es de 3 letras';
    END IF;
    
    IF NOT (per_apepat REGEXP ('^[[:alpha:]_ ]+$')) THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'Apellido Paterno: No puede ser numeros';
    END IF;
        
    IF LENGTH(per_apemat) < 3 THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'Apellido Materno: Tama?o m?nimo es de 3 letras';
    END IF;
    
    IF NOT (per_apemat REGEXP ('^[[:alpha:]_ ]+$')) THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'Apellido Materno: No puede ser n?meros';
    END IF;
    
    IF LENGTH(per_nombres) < 3 THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'Nombres: Tama?o m?nimo es de 3 letras';
    END IF;
    
    IF NOT (per_nombres REGEXP ('^[[:alpha:]_ ]+$')) THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'Nombres: No pueden ser n?meros';
    END IF;
    
    IF LENGTH(per_dir) < 3 THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'Direcci?n: Tama?o m?nimo es de 3 caracteres';
    END IF;
    
    IF LENGTH(per_nrodoc) < 8 THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'Nro. Documento: Debe tener 8 d?gitos';
    END IF;
       
    IF NOT(per_nrodoc REGEXP ('^[0-9]+$')) THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'Nro. Documento: Deben ser n?meros';
    END IF;
    
    IF per_fecnac > DATE_FORMAT(NOW(),"%Y-%m-%d 00:00:00") THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'Fecha no permitida';
    END IF;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `REVISAR_RECETA` (IN `rec_fecexp` DATE, IN `rec_feccad` DATE)  BEGIN
    IF rec_fecexp < DATE_FORMAT(NOW(),"%Y-%m-%d 00:00:00") THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on ser_receta_medica.rec_fecexp failed';
    END IF;
    
    IF rec_feccad > DATE_ADD(rec_fecexp, INTERVAL 14 DAY) THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on ser_receta_medica.rec_feccad failed';
    END IF;
    
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `REVISAR_RECETA_DETALLE` (IN `detr_can` INTEGER, IN `detr_dia` INTEGER)  BEGIN
    IF detr_can < 1 THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on ser_receta_medica_detalle.detr_can failed';
    END IF;
    
    IF detr_dia < 1 THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on ser_receta_medica_detalle.detr_dia failed';
    END IF;
    
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `REVISAR_RESERVA` (IN `res_fecres` DATE, IN `res_motivo` VARCHAR(100))  BEGIN
    IF res_fecres < DATE_FORMAT(NOW(),"%Y-%m-%d 00:00:00") THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on res_reserva.res_fecres failed';
    END IF;
    
    IF LENGTH(res_motivo) < 3 THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on res_reserva.res_motivo failed';
    END IF;
        
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `REVISAR_RESULTADO` (IN `res_anexo` VARCHAR(60))  BEGIN
    IF LENGTH(res_anexo) < 3 THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on ser_resultado.res_anexo failed';
    END IF;
    
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `REVISAR_SERVICIO` (IN `ser_nombre` VARCHAR(60), IN `ser_monto` DECIMAL(5,2))  BEGIN
    IF LENGTH(ser_nombre) < 3 THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on ser_servicio.ser_nombre failed';
    END IF;
    
    IF NOT (ser_nombre REGEXP ('^[[:alpha:]_ ]+$')) THEN
       SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on ser_servicio.ser_nombre failed';
    END IF;
    
    IF ser_monto < 0.00 THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on ser_servicio.ser_monto failed';
    END IF;
        
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `REVISAR_TIPO_EXAMEN` (IN `tipe_nombre` VARCHAR(35))  BEGIN
    IF LENGTH(tipe_nombre) < 3 THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on ser_tipo_examen.tipe_nombre failed';
    END IF;
    
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `REVISAR_TIPO_PAGO` (IN `tipp_desc` VARCHAR(60))  BEGIN
    IF LENGTH(tipp_desc) < 3 THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on pag_tipo_pago.tipp_desc failed';
    END IF;
    
    IF NOT (tipp_desc REGEXP ('^[[:alpha:]_ ]+$')) THEN
       SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on pag_tipo_pago.tipp_desc failed';
    END IF;
       
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `REVISAR_TIPO_SERVICIO` (IN `tips_desc` VARCHAR(250), IN `tips_costo` DECIMAL(5,2))  BEGIN
    IF LENGTH(tips_desc) < 3 THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on ser_tipo_servicio.tips_desc failed';
    END IF;
    
    IF NOT (tips_desc REGEXP ('^[[:alpha:]_ ]+$')) THEN
       SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on ser_tipo_servicio.tips_desc failed';
    END IF;
    
    IF tips_costo < 0.00 THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on ser_tipo_servicio.tips_costo failed';
    END IF;
        
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `REVISAR_TIPO_VACUNA` (IN `tipv_nombre` VARCHAR(40), IN `tipv_desc` VARCHAR(100))  BEGIN
    IF LENGTH(tipv_nombre) < 3 THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on ser_tipo_vacuna.tipv_nombre failed';
    END IF;
    
    IF NOT (tips_desc REGEXP ('^[[:alpha:]_ ]+$')) THEN
       SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on ser_tipo_vacuna.tipv_nombre failed';
    END IF;
    
    IF LENGTH(tipv_desc) < 3 THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on ser_tipo_vacuna.tipv_desc failed';
    END IF;
    
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `REVISAR_TURNO` (IN `tur_fectur` DATE, IN `tur_hini` TIME, IN `tur_hfin` TIME)  BEGIN
    IF tur_fectur < DATE_FORMAT(NOW(),"%Y-%m-%d 00:00:00") THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on res_turno.tur_fectur failed';
    END IF;
    
    IF tur_hini < TIME_FORMAT(tur_fectur,"08:00:00") THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on res_turno.tur_hini failed';
    END IF;

    IF tur_hini > TIME_FORMAT(tur_fectur,"19:30:00") THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on res_turno.tur_hini failed';
    END IF;
    
    IF tur_hfin < TIME_FORMAT(tur_fectur,"08:30:00") THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on res_turno.tur_hfin failed';
    END IF;

    IF tur_hfin > TIME_FORMAT(tur_fectur,"20:00:00") THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on res_turno.tur_hfin failed';
    END IF;
        
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `REVISAR_USUARIO` (IN `usu_user` VARCHAR(30), IN `usu_clave` VARCHAR(100), IN `usu_fecreg` DATE)  BEGIN
    IF LENGTH(usu_user) < 3 THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on res_usuario.usu_user failed';
    END IF;
       
    IF usu_fecreg > DATE_FORMAT(NOW(),"%Y-%m-%d 00:00:00") THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on res_usuario.fecreg failed';
    END IF;
    
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pag_comprobante`
--

CREATE TABLE `pag_comprobante` (
  `com_id` int(11) NOT NULL,
  `com_fecha` date NOT NULL,
  `com_tipo` enum('B','F') NOT NULL DEFAULT 'B' COMMENT 'Valores permitidos: (B) Boleta y (F) Factura.',
  `com_monto` decimal(4,2) NOT NULL DEFAULT '0.00',
  `com_estado` enum('V','A') NOT NULL DEFAULT 'V' COMMENT 'Valores permitidos: (A) Anulado y (V) Vigente.',
  `clie_id` int(11) NOT NULL,
  `tipp_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='El comprobante ser? el documento que acredite la prestaci?n del servicio.';

--
-- Disparadores `pag_comprobante`
--
DELIMITER $$
CREATE TRIGGER `comprobante_before_insert` BEFORE INSERT ON `pag_comprobante` FOR EACH ROW BEGIN
    CALL REVISAR_COMPROBANTE(new.com_fecha,new.com_monto);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `comprobante_before_update` BEFORE UPDATE ON `pag_comprobante` FOR EACH ROW BEGIN
    CALL REVISAR_COMPROBANTE(new.com_fecha,new.com_monto);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pag_detalle_comprobante`
--

CREATE TABLE `pag_detalle_comprobante` (
  `detc_cant` int(11) NOT NULL DEFAULT '0',
  `detc_preu` decimal(3,2) NOT NULL DEFAULT '0.00',
  `com_id` int(11) NOT NULL,
  `ser_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='El detalle del comprobantenos describe los servicios adquiridos por el cliente y detalla los costos generados.';

--
-- Disparadores `pag_detalle_comprobante`
--
DELIMITER $$
CREATE TRIGGER `detalle_comprobante_before_insert` BEFORE INSERT ON `pag_detalle_comprobante` FOR EACH ROW BEGIN
    CALL REVISAR_DETALLE_COMPROBANTE(new.detc_cant,new.detc_preu);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `detalle_comprobante_before_update` BEFORE UPDATE ON `pag_detalle_comprobante` FOR EACH ROW BEGIN
    CALL REVISAR_DETALLE_COMPROBANTE(new.detc_cant,new.detc_preu);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pag_tipo_pago`
--

CREATE TABLE `pag_tipo_pago` (
  `tipp_id` int(11) NOT NULL,
  `tipp_desc` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='El tipo de pago se dar? por el tipo de modalidad que elija el cliente para poder cancelar la deuda por la obtenci?n del servicio.';

--
-- Disparadores `pag_tipo_pago`
--
DELIMITER $$
CREATE TRIGGER `tipo_pago_before_insert` BEFORE INSERT ON `pag_tipo_pago` FOR EACH ROW BEGIN
    CALL REVISAR_TIPO_PAGO(new.tipp_desc);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tipo_pago_before_update` BEFORE UPDATE ON `pag_tipo_pago` FOR EACH ROW BEGIN
    CALL REVISAR_TIPO_PAGO(new.tipp_desc);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `res_cita`
--

CREATE TABLE `res_cita` (
  `cit_id` int(11) NOT NULL,
  `cit_fecha` date NOT NULL,
  `cit_estado` enum('P','C','R') NOT NULL DEFAULT 'P' COMMENT 'Valores permitidos: (P) Pendiente, (C) Cancelado y (R) Realizado.',
  `res_id` int(11) NOT NULL,
  `ser_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='La cita ser? cuando ya se haya dado el d?a y la hora fijad, y se apersonen a la veterinaria a pasar consulta.';

--
-- Disparadores `res_cita`
--
DELIMITER $$
CREATE TRIGGER `cita_before_insert` BEFORE INSERT ON `res_cita` FOR EACH ROW BEGIN
    CALL REVISAR_CITA(new.cit_fecha);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `cita_before_update` BEFORE UPDATE ON `res_cita` FOR EACH ROW BEGIN
    CALL REVISAR_CITA(new.cit_fecha);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `res_cliente`
--

CREATE TABLE `res_cliente` (
  `clie_id` int(11) NOT NULL,
  `clie_estado` enum('A','B') NOT NULL DEFAULT 'A' COMMENT 'Valores permitidos: (A) Activo y (B) Baja',
  `per_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='En la tabla Cliente se registrar?n los datos de quien ser? intermediario y due?o, quien se encargar? de llevar a su mascota para recibir un servicio de la veterinaria.';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `res_especialidad`
--

CREATE TABLE `res_especialidad` (
  `esp_id` int(11) NOT NULL,
  `esp_nombre` varchar(50) NOT NULL,
  `esp_descripcion` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='La especialidad clinica supone el cargo que el Medico ocupa dentro de la veterinaria para poder ofrecer un servicio determinado.';

--
-- Volcado de datos para la tabla `res_especialidad`
--

INSERT INTO `res_especialidad` (`esp_id`, `esp_nombre`, `esp_descripcion`) VALUES
(1, 'ADMINISTRADOR', 'TIENE PERMISOS COMPLETOS'),
(7, 'ASISTENTE', 'TIENE PERMISOS PARA VISUALIZAR Y REGISTRAR'),
(2, 'VISITANTE', 'TIENES PERMISO DE VISUALIZAR');

--
-- Disparadores `res_especialidad`
--
DELIMITER $$
CREATE TRIGGER `especialidad_before_insert` BEFORE INSERT ON `res_especialidad` FOR EACH ROW BEGIN
    CALL REVISAR_ESPECIALIDAD(new.esp_nombre,new.esp_descripcion);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `especialidad_before_update` BEFORE UPDATE ON `res_especialidad` FOR EACH ROW BEGIN
    CALL REVISAR_ESPECIALIDAD(new.esp_nombre,new.esp_descripcion);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `res_medico`
--

CREATE TABLE `res_medico` (
  `med_id` int(11) NOT NULL,
  `med_estado` enum('A','B') NOT NULL DEFAULT 'A' COMMENT 'Valores permitidos (A) Activo y (B) Baja.',
  `per_id` int(11) NOT NULL,
  `esp_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='La tabla M?dico describe los datos del especialista que trabaja en la Veterinaria y atender? los servicios solicitados por los clientes.';

--
-- Volcado de datos para la tabla `res_medico`
--

INSERT INTO `res_medico` (`med_id`, `med_estado`, `per_id`, `esp_id`) VALUES
(1, 'A', 1, 1),
(2, 'A', 2, 2),
(3, 'A', 3, 7),
(13, 'A', 23, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `res_permisos`
--

CREATE TABLE `res_permisos` (
  `perm_id` int(2) NOT NULL DEFAULT '1' COMMENT 'Identificador para los roles, estará definido en bitwise, es decir valores de la potencia de 2',
  `perm_nombre` varchar(11) NOT NULL DEFAULT 'VISTA' COMMENT 'Nombre de los roles'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla que almacenara los permisos para los distintos usuarios del sistema';

--
-- Volcado de datos para la tabla `res_permisos`
--

INSERT INTO `res_permisos` (`perm_id`, `perm_nombre`) VALUES
(1, 'REGISTRAR'),
(2, 'LEER'),
(4, 'EDITAR'),
(8, 'ELIMINAR');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `res_persona`
--

CREATE TABLE `res_persona` (
  `per_id` int(11) NOT NULL,
  `per_apepat` varchar(60) NOT NULL,
  `per_apemat` varchar(60) NOT NULL,
  `per_nombres` varchar(90) NOT NULL,
  `per_dir` varchar(120) NOT NULL,
  `per_tipodoc` varchar(3) NOT NULL DEFAULT 'DNI' COMMENT 'Valores Permitidos: Documento Nacional de Identidad, C?dula de Identidad, Carteira de Identidade o Registro Geral, C?dula de Ciudadan?a, Documento Unico de Identidad, Documento Personal de Identificaci?n, Tarjeta de Identidad, Clave Unica de Registro de Poblaci?n, C?dula de Identidad Personal, C?dula de Identidad Civil, C?dula de Identidad y Electoral.',
  `per_nrodoc` varchar(8) NOT NULL,
  `per_fecnac` date NOT NULL,
  `per_sexo` varchar(1) NOT NULL COMMENT 'Valores permitidos: (H) Hombre - (M) Mujer - (I) Indefinido',
  `per_tel` varchar(9) DEFAULT NULL,
  `per_cel` varchar(9) DEFAULT NULL,
  `per_ecivil` varchar(1) NOT NULL COMMENT 'Valores permitidos: (S) Soltero, (C) Casado, (V) Viudo y (D) Divorciado'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='En la tabla Persona se generaliza los datos, ya sea de un Cliente o un M?dico';

--
-- Volcado de datos para la tabla `res_persona`
--

INSERT INTO `res_persona` (`per_id`, `per_apepat`, `per_apemat`, `per_nombres`, `per_dir`, `per_tipodoc`, `per_nrodoc`, `per_fecnac`, `per_sexo`, `per_tel`, `per_cel`, `per_ecivil`) VALUES
(1, 'BERNARDO', 'HERRERA', 'ELVIS', 'CHIMBOTE', 'DNI', '41903735', '1983-07-01', 'H', NULL, NULL, 'S'),
(2, 'JESUS', 'CHAVARRIA', 'ALICIA', 'CHIMBOTE', 'DNI', '44158082', '1987-02-27', 'M', NULL, NULL, 'S'),
(3, 'PULIDO', 'TORRES', 'JUAN CARLOS', 'NVO. CHIMBOTE', 'DNI', '42159865', '1984-06-05', 'H', NULL, NULL, 'C'),
(9, 'URRUTIA', 'CALDERON', 'JUAN', 'TRAPECIO', 'DNI', '41524875', '1989-06-01', 'H', '999999999', '999999999', 'C'),
(15, 'REYES', 'SOLIS', 'ELIZABETH', 'CHIMBOTE', 'DNI', '44444445', '1989-05-03', 'M', '', '', 'S'),
(23, 'CASTRO', 'JAVIER', 'ALBERTO', 'AV. PARDO 133', 'DNI', '41903735', '2019-06-04', 'H', '', '', 'S');

--
-- Disparadores `res_persona`
--
DELIMITER $$
CREATE TRIGGER `persona_before_insert` BEFORE INSERT ON `res_persona` FOR EACH ROW BEGIN
    CALL REVISAR_PERSONA(new.per_apepat,new.per_apemat,new.per_nombres,new.per_dir,new.per_tipodoc,new.per_nrodoc,new.per_fecnac);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `persona_before_update` BEFORE UPDATE ON `res_persona` FOR EACH ROW BEGIN
    CALL REVISAR_PERSONA(new.per_apepat,new.per_apemat,new.per_nombres,new.per_dir,new.per_tipodoc,new.per_nrodoc,new.per_fecnac);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `res_reserva`
--

CREATE TABLE `res_reserva` (
  `res_id` int(11) NOT NULL,
  `res_fecres` date NOT NULL,
  `res_motivo` varchar(100) NOT NULL,
  `res_estado` enum('P','C','R') NOT NULL DEFAULT 'P' COMMENT 'Valores permitidos: (P) Pendiente, (C) Cancelado y (R) Relaizado.',
  `mas_id` int(11) NOT NULL,
  `tur_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='La reserva se genera cuando el cliente contacta con la veterinaria para separar una cita.';

--
-- Disparadores `res_reserva`
--
DELIMITER $$
CREATE TRIGGER `reserva_before_insert` BEFORE INSERT ON `res_reserva` FOR EACH ROW BEGIN
    CALL REVISAR_RESERVA(new.res_fecres,new.res_motivo);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `reserva_before_update` BEFORE UPDATE ON `res_reserva` FOR EACH ROW BEGIN
    CALL REVISAR_RESERVA(new.res_fecres,new.res_motivo);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `res_turno`
--

CREATE TABLE `res_turno` (
  `tur_id` int(11) NOT NULL,
  `tur_fectur` date NOT NULL,
  `tur_hini` time NOT NULL,
  `tur_hfin` time NOT NULL,
  `tur_estado` enum('D','N') NOT NULL DEFAULT 'D' COMMENT 'Valores permitidos: (D) Disponible y (N) No Disponible',
  `med_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='El turno programado es la programaci?n de las fechas y horarios de atenci?n de los m?dicos.';

--
-- Disparadores `res_turno`
--
DELIMITER $$
CREATE TRIGGER `turno_before_insert` BEFORE INSERT ON `res_turno` FOR EACH ROW BEGIN
    CALL REVISAR_TURNO(new.tur_fectur,new.tur_hini,new.tur_hfin);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `turno_before_update` BEFORE UPDATE ON `res_turno` FOR EACH ROW BEGIN
    CALL REVISAR_TURNO(new.tur_fectur,new.tur_hini,new.tur_hfin);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `res_usuario`
--

CREATE TABLE `res_usuario` (
  `usu_id` int(11) NOT NULL,
  `med_id` int(11) NOT NULL,
  `usu_user` varchar(30) NOT NULL,
  `usu_clave` varchar(100) NOT NULL,
  `usu_fecreg` date NOT NULL,
  `usu_estado` enum('A','B') NOT NULL DEFAULT 'A' COMMENT 'Valores permitidos: (A) Activo - (B) Baja.',
  `usu_email` varchar(40) DEFAULT NULL,
  `rol` int(2) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='La tabla Usuario establece una cuenta ?nica a un M?dico para el uso del Sistema Web, para poder acceder al sistema y sus caracter?sticas.';

--
-- Volcado de datos para la tabla `res_usuario`
--

INSERT INTO `res_usuario` (`usu_id`, `med_id`, `usu_user`, `usu_clave`, `usu_fecreg`, `usu_estado`, `usu_email`, `rol`) VALUES
(1, 1, 'elvis.bernardo', '10470c3b4b1fed12c3baac014be15fac67c6e815', '2019-05-28', 'A', 'sivle1983@hotmail.com', 15),
(2, 2, 'alicia.jesus', 'c33367701511b4f6020ec61ded352059', '2019-05-28', 'A', 'sivle1983@hotmail.com', 2),
(4, 3, 'juan.pulido', '10470c3b4b1fed12c3baac014be15fac67c6e815\r\n', '2019-05-28', 'B', 'sivle1983@hotmail.com', 3);

--
-- Disparadores `res_usuario`
--
DELIMITER $$
CREATE TRIGGER `usuario_before_insert` BEFORE INSERT ON `res_usuario` FOR EACH ROW BEGIN
    CALL REVISAR_USUARIO(new.usu_user,new.usu_clave,new.usu_fecreg);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `usuario_before_update` BEFORE UPDATE ON `res_usuario` FOR EACH ROW BEGIN
    CALL REVISAR_USUARIO(new.usu_user,new.usu_clave,new.usu_fecreg);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seg_opcion_sistema`
--

CREATE TABLE `seg_opcion_sistema` (
  `id_opcion_sistema` int(11) NOT NULL,
  `nombre_modulo` varchar(50) DEFAULT NULL,
  `descripcion_opcion` varchar(100) DEFAULT NULL,
  `estado` varchar(1) DEFAULT NULL,
  `clave_opcion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `seg_opcion_sistema`
--

INSERT INTO `seg_opcion_sistema` (`id_opcion_sistema`, `nombre_modulo`, `descripcion_opcion`, `estado`, `clave_opcion`) VALUES
(1, 'Clientes', 'Clientes', 'A', NULL),
(2, 'Pacientes', 'Mascotas', 'A', NULL),
(3, 'Medico', 'Medico', 'A', NULL),
(4, 'Usuarios', 'Usuarios del sistema', 'A', NULL),
(5, 'Principal', 'Menú principal', 'A', NULL),
(6, 'Usuarios', 'Resetear contraseña admin', 'A', 'usuario.admin.password.reset'),
(7, 'Usuarios', 'Resetear contraseña usuarios', 'A', 'usuario.usuario.password.reset');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seg_usuario_permiso`
--

CREATE TABLE `seg_usuario_permiso` (
  `id_usuario_permiso` int(11) NOT NULL,
  `usu_id` int(11) DEFAULT NULL,
  `id_opcion_sistema` int(11) DEFAULT NULL,
  `estado` varchar(1) DEFAULT NULL,
  `id_permiso` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `seg_usuario_permiso`
--

INSERT INTO `seg_usuario_permiso` (`id_usuario_permiso`, `usu_id`, `id_opcion_sistema`, `estado`, `id_permiso`) VALUES
(1, 1, 2, 'A', 2),
(3, 1, 1, 'A', 1),
(5, 2, 1, 'A', 1),
(6, 2, 2, 'A', 1),
(7, 1, 6, 'A', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ser_control_vacuna`
--

CREATE TABLE `ser_control_vacuna` (
  `con_id` int(11) NOT NULL,
  `con_fecap` date NOT NULL,
  `con_fecve` date NOT NULL,
  `con_obs` varchar(250) DEFAULT NULL,
  `tips_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='El control de vacuna ser? el cronograma que se debe seguir para estar al d?a con las vacunas de la mascota.';

--
-- Disparadores `ser_control_vacuna`
--
DELIMITER $$
CREATE TRIGGER `control_vac_before_insert` BEFORE INSERT ON `ser_control_vacuna` FOR EACH ROW BEGIN
    CALL REVISAR_CONTROL_VAC(new.con_fecap,new.con_fecve);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `control_vac_before_update` BEFORE UPDATE ON `ser_control_vacuna` FOR EACH ROW BEGIN
    CALL REVISAR_CONTROL_VAC(new.con_fecap,new.con_fecve);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ser_detalle_historia`
--

CREATE TABLE `ser_detalle_historia` (
  `deth_id` int(11) NOT NULL,
  `deth_fechis` date NOT NULL,
  `deth_obs` varchar(250) DEFAULT NULL,
  `deth_estado` enum('V','A') NOT NULL DEFAULT 'V' COMMENT 'Valores permitidos: (V) Vigente y (A) Anulado.',
  `his_id` int(11) NOT NULL,
  `con_id` int(11) NOT NULL,
  `ser_id` int(11) NOT NULL,
  `exa_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='El detalle de la historia muestra la descripci?n de la historia, la cual mostrar? los datos por fechas y atenci?n de las mascotas y los detalles m?s relevantes.';

--
-- Disparadores `ser_detalle_historia`
--
DELIMITER $$
CREATE TRIGGER `detalle_historia_before_insert` BEFORE INSERT ON `ser_detalle_historia` FOR EACH ROW BEGIN
    CALL REVISAR_DETALLE_HISTORIA(new.deth_fechis);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `detalle_historia_before_update` BEFORE UPDATE ON `ser_detalle_historia` FOR EACH ROW BEGIN
    CALL REVISAR_DETALLE_HISTORIA(new.deth_fechis);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ser_detalle_insumo`
--

CREATE TABLE `ser_detalle_insumo` (
  `deti_cant` int(11) NOT NULL,
  `deti_id` int(11) NOT NULL,
  `deti_estado` enum('D','N') NOT NULL DEFAULT 'D' COMMENT 'Valores permitidos: (D) Disponible y (N) No Disponible.',
  `ser_id` int(11) NOT NULL,
  `ins_id` int(11) NOT NULL,
  `medi_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='En la tabla detalle insumos se detallar?n los insumos usados por cada servicio que se brinda.';

--
-- Disparadores `ser_detalle_insumo`
--
DELIMITER $$
CREATE TRIGGER `detalle_insumo_before_insert` BEFORE INSERT ON `ser_detalle_insumo` FOR EACH ROW BEGIN
    CALL REVISAR_DETALLE_INSUMO(new.deti_cant);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `detalle_insumo_before_update` BEFORE UPDATE ON `ser_detalle_insumo` FOR EACH ROW BEGIN
    CALL REVISAR_DETALLE_INSUMO(new.deti_cant);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ser_diagnostico`
--

CREATE TABLE `ser_diagnostico` (
  `dia_id` int(11) NOT NULL,
  `dia_trat` varchar(250) NOT NULL,
  `dia_obs` varchar(250) DEFAULT NULL,
  `res_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='El diagn?stico ser? el procedimiento por el cual se identifica alguna enfermedad o cualquier estado de salud.';

--
-- Disparadores `ser_diagnostico`
--
DELIMITER $$
CREATE TRIGGER `diagnostico_before_insert` BEFORE INSERT ON `ser_diagnostico` FOR EACH ROW BEGIN
    CALL REVISAR_DIAGNOSTICO(new.dia_trat);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `diagnostico_before_update` BEFORE UPDATE ON `ser_diagnostico` FOR EACH ROW BEGIN
    CALL REVISAR_DIAGNOSTICO(new.dia_trat);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ser_examen`
--

CREATE TABLE `ser_examen` (
  `exa_id` int(11) NOT NULL,
  `exa_temp` decimal(2,1) NOT NULL DEFAULT '0.0',
  `exa_peso` decimal(3,2) NOT NULL DEFAULT '0.00',
  `exa_pulso` varchar(3) NOT NULL,
  `exa_resp` varchar(3) NOT NULL,
  `exa_anom` varchar(80) NOT NULL,
  `tips_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='El examen es la evaluaci?n cl?nica que el m?dico recolecta recoge para obtener informaci?n objetiva y luego analizarla.';

--
-- Disparadores `ser_examen`
--
DELIMITER $$
CREATE TRIGGER `examen_before_insert` BEFORE INSERT ON `ser_examen` FOR EACH ROW BEGIN
    CALL REVISAR_EXAMEN(new.exa_temp,new.exa_peso,new.exa_pulso,new.exa_resp,new_anom);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `examen_before_update` BEFORE UPDATE ON `ser_examen` FOR EACH ROW BEGIN
    CALL REVISAR_EXAMEN(new.exa_temp,new.exa_peso,new.exa_pulso,new.exa_resp,new_anom);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ser_historia_clinica`
--

CREATE TABLE `ser_historia_clinica` (
  `his_id` int(11) NOT NULL,
  `his_fecreg` date NOT NULL,
  `his_estado` enum('A','B') NOT NULL DEFAULT 'A' COMMENT 'Valores permitidos: (A) Activo y (B) Baja.',
  `mas_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='La historia cl?nica se origina por el primer episodio de alguna enfermedad o control de salud de la mascota.';

--
-- Disparadores `ser_historia_clinica`
--
DELIMITER $$
CREATE TRIGGER `historia_before_insert` BEFORE INSERT ON `ser_historia_clinica` FOR EACH ROW BEGIN
    CALL REVISAR_HISTORIA_CLI(new.his_fecreg);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `historia_before_update` BEFORE UPDATE ON `ser_historia_clinica` FOR EACH ROW BEGIN
    CALL REVISAR_HISTORIA_CLI(new.his_fecreg);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ser_insumo`
--

CREATE TABLE `ser_insumo` (
  `ins_id` int(11) NOT NULL,
  `ins_desc` varchar(250) NOT NULL,
  `ins_uni` varchar(25) NOT NULL,
  `ins_stock` int(11) NOT NULL,
  `ins_fecven` date NOT NULL,
  `ins_estado` enum('D','F') NOT NULL DEFAULT 'D' COMMENT 'Valores permitidos: (D) Disponible y (F) Faltante.'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Los insumos ser?n los materiales utilizados para la atenci?n de los pacientes.';

--
-- Disparadores `ser_insumo`
--
DELIMITER $$
CREATE TRIGGER `insumo_before_insert` BEFORE INSERT ON `ser_insumo` FOR EACH ROW BEGIN
    CALL REVISAR_INSUMO(new.ins_desc,new.ins_uni,new.ins_stock,new.ins_fecven);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `insumo_before_update` BEFORE UPDATE ON `ser_insumo` FOR EACH ROW BEGIN
    CALL REVISAR_INSUMO(new.ins_desc,new.ins_uni,new.ins_stock,new.ins_fecven);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ser_mascota`
--

CREATE TABLE `ser_mascota` (
  `mas_id` int(11) NOT NULL,
  `mas_nombre` varchar(35) NOT NULL,
  `mas_tipo` varchar(35) NOT NULL,
  `mas_raza` varchar(70) NOT NULL,
  `mas_sexo` enum('M','H') NOT NULL COMMENT 'Valores permitidos: (M) Macho y (H) Hembra',
  `mas_gs` varchar(4) NOT NULL,
  `mas_alergia` varchar(100) DEFAULT NULL,
  `mas_fecnac` date NOT NULL,
  `mas_color` varchar(25) NOT NULL,
  `mas_foto` varchar(100) DEFAULT NULL,
  `mas_estado` enum('A','I') NOT NULL COMMENT 'Valores permitidos: (A) Activo y (I) Inactivo',
  `clie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='En la tabla mascota se registran los datos de la mascota quien ser? el paciente, el cual obtendr? el servicio de la veterinaria.';

--
-- Disparadores `ser_mascota`
--
DELIMITER $$
CREATE TRIGGER `mascota_before_insert` BEFORE INSERT ON `ser_mascota` FOR EACH ROW BEGIN
    CALL REVISAR_MASCOTA(new.mas_nombre,new.mas_tipo,new.mas_raza,new.mas_gs,new.mas_alergia,new.mas_fecnac,new.mas_color,new.mas_foto);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `mascota_before_update` BEFORE UPDATE ON `ser_mascota` FOR EACH ROW BEGIN
    CALL REVISAR_MASCOTA(new.mas_nombre,new.mas_tipo,new.mas_raza,new.mas_gs,new.mas_alergia,new.mas_fecnac,new.mas_color,new.mas_foto);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ser_medicamento`
--

CREATE TABLE `ser_medicamento` (
  `medi_id` int(11) NOT NULL,
  `medi_nombre` varchar(70) NOT NULL,
  `medi_desc` varchar(250) NOT NULL,
  `medi_pres` varchar(35) NOT NULL,
  `medi_stock` int(11) NOT NULL,
  `medi_fecven` date NOT NULL,
  `medi_estado` enum('A','B') NOT NULL DEFAULT 'A' COMMENT 'Valores permitidos: (A) Activo y (B) Baja.',
  `medi_precio` decimal(5,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='El medicamento ser? la sustancia que sirve para curar o prevenir una enfermedad.';

--
-- Disparadores `ser_medicamento`
--
DELIMITER $$
CREATE TRIGGER `medicamento_before_insert` BEFORE INSERT ON `ser_medicamento` FOR EACH ROW BEGIN
    CALL REVISAR_MEDICAMENTO(new.medi_nombre,new.medi_desc,new.medi_pres,new.medi_stock,new.medi_fecven,new.medi_precio);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `medicamento_before_update` BEFORE UPDATE ON `ser_medicamento` FOR EACH ROW BEGIN
    CALL REVISAR_MEDICAMENTO(new.medi_nombre,new.medi_desc,new.medi_pres,new.medi_stock,new.medi_fecven,new.medi_precio);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ser_receta_medica`
--

CREATE TABLE `ser_receta_medica` (
  `rec_id` int(11) NOT NULL,
  `rec_fecexp` date NOT NULL,
  `rec_feccad` date NOT NULL,
  `dia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='La receta m?dica ser? el documento legal por la cual el m?dico prescribe la medicaci?n a la mascota para su dispensaci?n.';

--
-- Disparadores `ser_receta_medica`
--
DELIMITER $$
CREATE TRIGGER `receta_before_insert` BEFORE INSERT ON `ser_receta_medica` FOR EACH ROW BEGIN
    CALL REVISAR_RECETA(new.rec_fecexp,new.rec_feccad);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `receta_before_update` BEFORE UPDATE ON `ser_receta_medica` FOR EACH ROW BEGIN
    CALL REVISAR_RECETA(new.rec_fecexp,new.rec_feccad);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ser_receta_medica_detalle`
--

CREATE TABLE `ser_receta_medica_detalle` (
  `detr_can` int(11) NOT NULL,
  `detr_obs` varchar(250) DEFAULT NULL,
  `detr_dia` int(11) NOT NULL,
  `detr_ind` varchar(250) NOT NULL,
  `rec_id` int(11) NOT NULL,
  `medi_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='El detalle de la receta m?dica describir? la medicaci?n individualmente si a a mascota se le recetar? m?s de un medicamento.';

--
-- Disparadores `ser_receta_medica_detalle`
--
DELIMITER $$
CREATE TRIGGER `detalle_receta_before_insert` BEFORE INSERT ON `ser_receta_medica_detalle` FOR EACH ROW BEGIN
    CALL REVISAR_RECETA_DETALLE(new.detr_can,new.detr_dia);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `detalle_receta_before_update` BEFORE UPDATE ON `ser_receta_medica_detalle` FOR EACH ROW BEGIN
    CALL REVISAR_RECETA_DETALLE(new.detr_can,new.detr_dia);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ser_resultado`
--

CREATE TABLE `ser_resultado` (
  `res_id` int(11) NOT NULL,
  `res_anexo` varchar(60) NOT NULL,
  `res_obs1` varchar(250) DEFAULT NULL,
  `res_obs2` varchar(250) DEFAULT NULL,
  `exa_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Los resultados ser?n dados por la evaluaci?n de los ex?menes previamente realizados.';

--
-- Disparadores `ser_resultado`
--
DELIMITER $$
CREATE TRIGGER `resultado_before_insert` BEFORE INSERT ON `ser_resultado` FOR EACH ROW BEGIN
    CALL REVISAR_RESULTADO(new.res_anexo);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `resultado_before_update` BEFORE UPDATE ON `ser_resultado` FOR EACH ROW BEGIN
    CALL REVISAR_RESULTADO(new.res_anexo);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ser_servicio`
--

CREATE TABLE `ser_servicio` (
  `ser_id` int(11) NOT NULL,
  `ser_nombre` varchar(60) NOT NULL,
  `ser_monto` decimal(4,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='El servicio describe la actividad por la cual el cliente separ? una cita para su mascota.';

--
-- Disparadores `ser_servicio`
--
DELIMITER $$
CREATE TRIGGER `servicio_before_insert` BEFORE INSERT ON `ser_servicio` FOR EACH ROW BEGIN
    CALL REVISAR_SERVICIO(new.ser_nombre,new.ser_monto);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `servicio_before_update` BEFORE UPDATE ON `ser_servicio` FOR EACH ROW BEGIN
    CALL REVISAR_SERVICIO(new.ser_nombre,new.ser_monto);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ser_tipo_examen`
--

CREATE TABLE `ser_tipo_examen` (
  `tipe_id` int(11) NOT NULL,
  `tipe_nombre` varchar(35) NOT NULL,
  `tipe_estado` enum('R','N') NOT NULL DEFAULT 'N' COMMENT 'Valores permitidos: (R) Revisado y (N) No Revisado.',
  `exa_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='El tipo de examen varia por el tipo de requerimiento de la mascota a evaluar para poder dar un resultado.';

--
-- Disparadores `ser_tipo_examen`
--
DELIMITER $$
CREATE TRIGGER `tipo_examen_before_insert` BEFORE INSERT ON `ser_tipo_examen` FOR EACH ROW BEGIN
    CALL REVISAR_TIPO_EXAMEN(new.tipe_nombre);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tipo_examen_before_update` BEFORE UPDATE ON `ser_tipo_examen` FOR EACH ROW BEGIN
    CALL REVISAR_TIPO_EXAMEN(new.tipe_nombre);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ser_tipo_servicio`
--

CREATE TABLE `ser_tipo_servicio` (
  `tips_id` int(11) NOT NULL,
  `tips_desc` varchar(250) NOT NULL,
  `tips_costo` decimal(4,2) NOT NULL DEFAULT '0.00',
  `ser_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='El tipo de servicio ser? dado por las diversas actividades que se realiza en la veterinaria.';

--
-- Disparadores `ser_tipo_servicio`
--
DELIMITER $$
CREATE TRIGGER `tipo_servicio_before_insert` BEFORE INSERT ON `ser_tipo_servicio` FOR EACH ROW BEGIN
    CALL REVISAR_TIPO_SERVICIO(new.tips_desc,new.tips_costo);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tipo_servicio_before_update` BEFORE UPDATE ON `ser_tipo_servicio` FOR EACH ROW BEGIN
    CALL REVISAR_TIPO_SERVICIO(new.tips_desc,new.tips_costo);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ser_tipo_vacuna`
--

CREATE TABLE `ser_tipo_vacuna` (
  `tipv_id` int(11) NOT NULL,
  `tipv_nombre` varchar(40) NOT NULL,
  `tipv_desc` varchar(100) NOT NULL,
  `con_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='El tipo de vacuna podr? variar de acuerdo a lo que requiera la mascota, seg?n la edad y enfermedades que presenta.';

--
-- Disparadores `ser_tipo_vacuna`
--
DELIMITER $$
CREATE TRIGGER `tipo_vacuna_before_insert` BEFORE INSERT ON `ser_tipo_vacuna` FOR EACH ROW BEGIN
    CALL REVISAR_TIPO_VACUNA(new.tipv_nombre,new.tipv_desc);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tipo_vacuna_before_update` BEFORE UPDATE ON `ser_tipo_vacuna` FOR EACH ROW BEGIN
    CALL REVISAR_TIPO_VACUNA(new.tipv_nombre,new.tipv_desc);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_lst_clientes`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `v_lst_clientes` (
`per_id` int(11)
,`per_nrodoc` varchar(8)
,`per_apepat` varchar(60)
,`per_apemat` varchar(60)
,`per_nombres` varchar(90)
,`per_fecnac` date
,`per_dir` varchar(120)
,`per_tel` varchar(9)
,`per_cel` varchar(9)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_lst_mediconouser`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `v_lst_mediconouser` (
`med_id` int(11)
,`per_apepat` varchar(60)
,`per_apemat` varchar(60)
,`per_nombres` varchar(90)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_lst_medicos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `v_lst_medicos` (
`per_id` int(11)
,`per_nrodoc` varchar(8)
,`per_apepat` varchar(60)
,`per_apemat` varchar(60)
,`per_nombres` varchar(90)
,`per_fecnac` date
,`per_dir` varchar(120)
,`per_tel` varchar(9)
,`per_cel` varchar(9)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_lst_usuarios`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `v_lst_usuarios` (
`per_id` int(11)
,`med_id` int(11)
,`usu_id` int(11)
,`per_apepat` varchar(60)
,`per_apemat` varchar(60)
,`per_nombres` varchar(90)
,`usu_user` varchar(30)
,`usu_fecreg` date
,`usu_email` varchar(40)
,`usu_estado` enum('A','B')
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_pag_lst_comprobantetipo`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `v_pag_lst_comprobantetipo` (
`per_apepat` varchar(60)
,`per_apemat` varchar(60)
,`per_nombres` varchar(90)
,`per_nrodoc` varchar(8)
,`com_id` int(11)
,`com_fecha` date
,`com_tipo` enum('B','F')
,`tipp_desc` varchar(60)
,`com_monto` decimal(4,2)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_res_lst_mascotaxcliente`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `v_res_lst_mascotaxcliente` (
`mas_nombre` varchar(35)
,`mas_tipo` varchar(35)
,`mas_raza` varchar(70)
,`mas_sexo` enum('M','H')
,`mas_foto` varchar(100)
,`per_apepat` varchar(60)
,`per_apemat` varchar(60)
,`per_nombres` varchar(90)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_res_lst_medicoxesp`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `v_res_lst_medicoxesp` (
`per_apepat` varchar(60)
,`per_apemat` varchar(60)
,`per_nombres` varchar(90)
,`esp_nombre` varchar(50)
,`per_cel` varchar(9)
,`med_estado` enum('A','B')
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_ser_lst_citamedico`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `v_ser_lst_citamedico` (
`tur_fectur` date
,`tur_hini` time
,`tur_hfin` time
,`res_motivo` varchar(100)
,`per_apepat` varchar(60)
,`per_apemat` varchar(60)
,`per_nombres` varchar(90)
,`cit_estado` enum('P','C','R')
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_ser_lst_insumocita`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `v_ser_lst_insumocita` (
`mas_nombre` varchar(35)
,`mas_raza` varchar(70)
,`mas_sexo` enum('M','H')
,`mas_foto` varchar(100)
,`cit_fecha` date
,`ser_nombre` varchar(60)
,`ins_desc` varchar(250)
,`ins_uni` varchar(25)
,`medi_nombre` varchar(70)
,`medi_pres` varchar(35)
,`deti_cant` int(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_ser_lst_mascotadiagreceta`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `v_ser_lst_mascotadiagreceta` (
`mas_nombre` varchar(35)
,`mas_raza` varchar(70)
,`mas_sexo` enum('M','H')
,`mas_foto` varchar(100)
,`dia_trat` varchar(250)
,`dia_obs` varchar(250)
,`rec_fecexp` date
,`rec_feccad` date
,`detr_can` int(11)
,`detr_obs` varchar(250)
,`detr_dia` int(11)
,`detr_ind` varchar(250)
,`medi_nombre` varchar(70)
,`medi_pres` varchar(35)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_ser_lst_mascotaexaresul`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `v_ser_lst_mascotaexaresul` (
`mas_nombre` varchar(35)
,`mas_raza` varchar(70)
,`mas_sexo` enum('M','H')
,`mas_foto` varchar(100)
,`tipe_nombre` varchar(35)
,`exa_temp` decimal(2,1)
,`exa_peso` decimal(3,2)
,`exa_pulso` varchar(3)
,`exa_anom` varchar(80)
,`res_anexo` varchar(60)
,`res_obs1` varchar(250)
,`res_obs2` varchar(250)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_ser_lst_mascotaxserv`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `v_ser_lst_mascotaxserv` (
`mas_nombre` varchar(35)
,`mas_raza` varchar(70)
,`mas_sexo` enum('M','H')
,`mas_foto` varchar(100)
,`ser_nombre` varchar(60)
,`tips_desc` varchar(250)
,`tips_costo` decimal(4,2)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_ser_servicioturno`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `v_ser_servicioturno` (
`mas_nombre` varchar(35)
,`mas_raza` varchar(70)
,`cit_fecha` date
,`ser_nombre` varchar(60)
,`tips_desc` varchar(250)
,`tipe_nombre` varchar(35)
,`tipv_nombre` varchar(40)
,`con_fecap` date
);

-- --------------------------------------------------------

--
-- Estructura para la vista `v_lst_clientes`
--
DROP TABLE IF EXISTS `v_lst_clientes`;

CREATE ALGORITHM=TEMPTABLE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_lst_clientes`  AS  select `res_persona`.`per_id` AS `per_id`,`res_persona`.`per_nrodoc` AS `per_nrodoc`,`res_persona`.`per_apepat` AS `per_apepat`,`res_persona`.`per_apemat` AS `per_apemat`,`res_persona`.`per_nombres` AS `per_nombres`,`res_persona`.`per_fecnac` AS `per_fecnac`,`res_persona`.`per_dir` AS `per_dir`,`res_persona`.`per_tel` AS `per_tel`,`res_persona`.`per_cel` AS `per_cel` from (`res_persona` join `res_cliente` on((`res_persona`.`per_id` = `res_cliente`.`per_id`))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_lst_mediconouser`
--
DROP TABLE IF EXISTS `v_lst_mediconouser`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_lst_mediconouser`  AS  select `res_medico`.`med_id` AS `med_id`,`res_persona`.`per_apepat` AS `per_apepat`,`res_persona`.`per_apemat` AS `per_apemat`,`res_persona`.`per_nombres` AS `per_nombres` from (`res_medico` join `res_persona` on((`res_medico`.`per_id` = `res_persona`.`per_id`))) where (not(`res_medico`.`med_id` in (select `res_usuario`.`med_id` from `res_usuario`))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_lst_medicos`
--
DROP TABLE IF EXISTS `v_lst_medicos`;

CREATE ALGORITHM=TEMPTABLE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_lst_medicos`  AS  select `res_persona`.`per_id` AS `per_id`,`res_persona`.`per_nrodoc` AS `per_nrodoc`,`res_persona`.`per_apepat` AS `per_apepat`,`res_persona`.`per_apemat` AS `per_apemat`,`res_persona`.`per_nombres` AS `per_nombres`,`res_persona`.`per_fecnac` AS `per_fecnac`,`res_persona`.`per_dir` AS `per_dir`,`res_persona`.`per_tel` AS `per_tel`,`res_persona`.`per_cel` AS `per_cel` from (`res_persona` join `res_medico` on((`res_persona`.`per_id` = `res_medico`.`per_id`))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_lst_usuarios`
--
DROP TABLE IF EXISTS `v_lst_usuarios`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_lst_usuarios`  AS  select `res_persona`.`per_id` AS `per_id`,`res_medico`.`med_id` AS `med_id`,`res_usuario`.`usu_id` AS `usu_id`,`res_persona`.`per_apepat` AS `per_apepat`,`res_persona`.`per_apemat` AS `per_apemat`,`res_persona`.`per_nombres` AS `per_nombres`,`res_usuario`.`usu_user` AS `usu_user`,`res_usuario`.`usu_fecreg` AS `usu_fecreg`,`res_usuario`.`usu_email` AS `usu_email`,`res_usuario`.`usu_estado` AS `usu_estado` from ((`res_persona` join `res_medico` on((`res_persona`.`per_id` = `res_medico`.`per_id`))) join `res_usuario` on((`res_medico`.`med_id` = `res_usuario`.`med_id`))) where (`res_usuario`.`usu_estado` = 'A') ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_pag_lst_comprobantetipo`
--
DROP TABLE IF EXISTS `v_pag_lst_comprobantetipo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_pag_lst_comprobantetipo`  AS  select `res_persona`.`per_apepat` AS `per_apepat`,`res_persona`.`per_apemat` AS `per_apemat`,`res_persona`.`per_nombres` AS `per_nombres`,`res_persona`.`per_nrodoc` AS `per_nrodoc`,`pag_comprobante`.`com_id` AS `com_id`,`pag_comprobante`.`com_fecha` AS `com_fecha`,`pag_comprobante`.`com_tipo` AS `com_tipo`,`pag_tipo_pago`.`tipp_desc` AS `tipp_desc`,`pag_comprobante`.`com_monto` AS `com_monto` from (((`res_persona` join `res_cliente` on((`res_cliente`.`per_id` = `res_persona`.`per_id`))) join `pag_comprobante` on((`pag_comprobante`.`clie_id` = `res_cliente`.`clie_id`))) join `pag_tipo_pago` on((`pag_tipo_pago`.`tipp_id` = `pag_comprobante`.`tipp_id`))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_res_lst_mascotaxcliente`
--
DROP TABLE IF EXISTS `v_res_lst_mascotaxcliente`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_res_lst_mascotaxcliente`  AS  select `ser_mascota`.`mas_nombre` AS `mas_nombre`,`ser_mascota`.`mas_tipo` AS `mas_tipo`,`ser_mascota`.`mas_raza` AS `mas_raza`,`ser_mascota`.`mas_sexo` AS `mas_sexo`,`ser_mascota`.`mas_foto` AS `mas_foto`,`res_persona`.`per_apepat` AS `per_apepat`,`res_persona`.`per_apemat` AS `per_apemat`,`res_persona`.`per_nombres` AS `per_nombres` from ((`ser_mascota` join `res_cliente` on((`ser_mascota`.`clie_id` = `res_cliente`.`clie_id`))) join `res_persona` on((`res_cliente`.`per_id` = `res_persona`.`per_id`))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_res_lst_medicoxesp`
--
DROP TABLE IF EXISTS `v_res_lst_medicoxesp`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_res_lst_medicoxesp`  AS  select `res_persona`.`per_apepat` AS `per_apepat`,`res_persona`.`per_apemat` AS `per_apemat`,`res_persona`.`per_nombres` AS `per_nombres`,`res_especialidad`.`esp_nombre` AS `esp_nombre`,`res_persona`.`per_cel` AS `per_cel`,`res_medico`.`med_estado` AS `med_estado` from ((`res_persona` join `res_medico` on((`res_persona`.`per_id` = `res_medico`.`per_id`))) join `res_especialidad` on((`res_medico`.`esp_id` = `res_especialidad`.`esp_id`))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_ser_lst_citamedico`
--
DROP TABLE IF EXISTS `v_ser_lst_citamedico`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_ser_lst_citamedico`  AS  select `res_turno`.`tur_fectur` AS `tur_fectur`,`res_turno`.`tur_hini` AS `tur_hini`,`res_turno`.`tur_hfin` AS `tur_hfin`,`res_reserva`.`res_motivo` AS `res_motivo`,`res_persona`.`per_apepat` AS `per_apepat`,`res_persona`.`per_apemat` AS `per_apemat`,`res_persona`.`per_nombres` AS `per_nombres`,`res_cita`.`cit_estado` AS `cit_estado` from ((((`res_persona` join `res_medico` on((`res_medico`.`per_id` = `res_persona`.`per_id`))) join `res_turno` on((`res_turno`.`med_id` = `res_medico`.`med_id`))) join `res_reserva` on((`res_reserva`.`tur_id` = `res_turno`.`tur_id`))) join `res_cita` on((`res_cita`.`res_id` = `res_reserva`.`res_id`))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_ser_lst_insumocita`
--
DROP TABLE IF EXISTS `v_ser_lst_insumocita`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_ser_lst_insumocita`  AS  select `ser_mascota`.`mas_nombre` AS `mas_nombre`,`ser_mascota`.`mas_raza` AS `mas_raza`,`ser_mascota`.`mas_sexo` AS `mas_sexo`,`ser_mascota`.`mas_foto` AS `mas_foto`,`res_cita`.`cit_fecha` AS `cit_fecha`,`ser_servicio`.`ser_nombre` AS `ser_nombre`,`ser_insumo`.`ins_desc` AS `ins_desc`,`ser_insumo`.`ins_uni` AS `ins_uni`,`ser_medicamento`.`medi_nombre` AS `medi_nombre`,`ser_medicamento`.`medi_pres` AS `medi_pres`,`ser_detalle_insumo`.`deti_cant` AS `deti_cant` from (((((((`ser_mascota` join `res_reserva` on((`res_reserva`.`mas_id` = `ser_mascota`.`mas_id`))) join `res_cita` on((`res_cita`.`res_id` = `res_reserva`.`res_id`))) join `ser_servicio` on((`ser_servicio`.`ser_id` = `res_cita`.`ser_id`))) join `ser_detalle_insumo` on((`ser_detalle_insumo`.`ser_id` = `ser_servicio`.`ser_id`))) join `ser_insumo` on((`ser_insumo`.`ins_id` = `ser_detalle_insumo`.`ins_id`))) join `ser_medicamento` on((`ser_medicamento`.`medi_id` = `ser_detalle_insumo`.`medi_id`))) join `ser_receta_medica_detalle`) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_ser_lst_mascotadiagreceta`
--
DROP TABLE IF EXISTS `v_ser_lst_mascotadiagreceta`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_ser_lst_mascotadiagreceta`  AS  select `ser_mascota`.`mas_nombre` AS `mas_nombre`,`ser_mascota`.`mas_raza` AS `mas_raza`,`ser_mascota`.`mas_sexo` AS `mas_sexo`,`ser_mascota`.`mas_foto` AS `mas_foto`,`ser_diagnostico`.`dia_trat` AS `dia_trat`,`ser_diagnostico`.`dia_obs` AS `dia_obs`,`ser_receta_medica`.`rec_fecexp` AS `rec_fecexp`,`ser_receta_medica`.`rec_feccad` AS `rec_feccad`,`ser_receta_medica_detalle`.`detr_can` AS `detr_can`,`ser_receta_medica_detalle`.`detr_obs` AS `detr_obs`,`ser_receta_medica_detalle`.`detr_dia` AS `detr_dia`,`ser_receta_medica_detalle`.`detr_ind` AS `detr_ind`,`ser_medicamento`.`medi_nombre` AS `medi_nombre`,`ser_medicamento`.`medi_pres` AS `medi_pres` from ((((((((`ser_mascota` join `ser_historia_clinica` on((`ser_mascota`.`mas_id` = `ser_historia_clinica`.`mas_id`))) join `ser_detalle_historia` on((`ser_historia_clinica`.`his_id` = `ser_detalle_historia`.`his_id`))) join `ser_examen` on((`ser_examen`.`exa_id` = `ser_detalle_historia`.`exa_id`))) join `ser_resultado` on((`ser_resultado`.`exa_id` = `ser_examen`.`exa_id`))) join `ser_diagnostico` on((`ser_diagnostico`.`res_id` = `ser_resultado`.`res_id`))) join `ser_receta_medica` on((`ser_receta_medica`.`dia_id` = `ser_diagnostico`.`dia_id`))) join `ser_receta_medica_detalle` on((`ser_receta_medica_detalle`.`rec_id` = `ser_receta_medica`.`rec_id`))) join `ser_medicamento` on((`ser_medicamento`.`medi_id` = `ser_receta_medica_detalle`.`medi_id`))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_ser_lst_mascotaexaresul`
--
DROP TABLE IF EXISTS `v_ser_lst_mascotaexaresul`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_ser_lst_mascotaexaresul`  AS  select `ser_mascota`.`mas_nombre` AS `mas_nombre`,`ser_mascota`.`mas_raza` AS `mas_raza`,`ser_mascota`.`mas_sexo` AS `mas_sexo`,`ser_mascota`.`mas_foto` AS `mas_foto`,`ser_tipo_examen`.`tipe_nombre` AS `tipe_nombre`,`ser_examen`.`exa_temp` AS `exa_temp`,`ser_examen`.`exa_peso` AS `exa_peso`,`ser_examen`.`exa_pulso` AS `exa_pulso`,`ser_examen`.`exa_anom` AS `exa_anom`,`ser_resultado`.`res_anexo` AS `res_anexo`,`ser_resultado`.`res_obs1` AS `res_obs1`,`ser_resultado`.`res_obs2` AS `res_obs2` from (((((`ser_mascota` join `ser_historia_clinica` on((`ser_mascota`.`mas_id` = `ser_historia_clinica`.`mas_id`))) join `ser_detalle_historia` on((`ser_historia_clinica`.`his_id` = `ser_detalle_historia`.`his_id`))) join `ser_examen` on((`ser_examen`.`exa_id` = `ser_detalle_historia`.`exa_id`))) join `ser_tipo_examen` on((`ser_tipo_examen`.`exa_id` = `ser_examen`.`exa_id`))) join `ser_resultado` on((`ser_resultado`.`exa_id` = `ser_examen`.`exa_id`))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_ser_lst_mascotaxserv`
--
DROP TABLE IF EXISTS `v_ser_lst_mascotaxserv`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_ser_lst_mascotaxserv`  AS  select `ser_mascota`.`mas_nombre` AS `mas_nombre`,`ser_mascota`.`mas_raza` AS `mas_raza`,`ser_mascota`.`mas_sexo` AS `mas_sexo`,`ser_mascota`.`mas_foto` AS `mas_foto`,`ser_servicio`.`ser_nombre` AS `ser_nombre`,`ser_tipo_servicio`.`tips_desc` AS `tips_desc`,`ser_tipo_servicio`.`tips_costo` AS `tips_costo` from ((((`ser_mascota` join `res_reserva` on((`ser_mascota`.`mas_id` = `res_reserva`.`mas_id`))) join `res_cita` on((`res_reserva`.`res_id` = `res_cita`.`res_id`))) join `ser_servicio` on((`res_cita`.`ser_id` = `ser_servicio`.`ser_id`))) join `ser_tipo_servicio` on((`ser_servicio`.`ser_id` = `ser_tipo_servicio`.`ser_id`))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_ser_servicioturno`
--
DROP TABLE IF EXISTS `v_ser_servicioturno`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_ser_servicioturno`  AS  select `ser_mascota`.`mas_nombre` AS `mas_nombre`,`ser_mascota`.`mas_raza` AS `mas_raza`,`res_cita`.`cit_fecha` AS `cit_fecha`,`ser_servicio`.`ser_nombre` AS `ser_nombre`,`ser_tipo_servicio`.`tips_desc` AS `tips_desc`,`ser_tipo_examen`.`tipe_nombre` AS `tipe_nombre`,`ser_tipo_vacuna`.`tipv_nombre` AS `tipv_nombre`,`ser_control_vacuna`.`con_fecap` AS `con_fecap` from ((((((((`ser_mascota` join `res_reserva` on((`res_reserva`.`mas_id` = `ser_mascota`.`mas_id`))) join `res_cita` on((`res_cita`.`res_id` = `res_reserva`.`res_id`))) join `ser_servicio` on((`ser_servicio`.`ser_id` = `res_cita`.`ser_id`))) join `ser_tipo_servicio` on((`ser_tipo_servicio`.`ser_id` = `ser_servicio`.`ser_id`))) join `ser_examen` on((`ser_examen`.`tips_id` = `ser_tipo_servicio`.`tips_id`))) join `ser_tipo_examen` on((`ser_tipo_examen`.`exa_id` = `ser_examen`.`exa_id`))) join `ser_control_vacuna` on((`ser_control_vacuna`.`tips_id` = `ser_tipo_servicio`.`tips_id`))) join `ser_tipo_vacuna` on((`ser_tipo_vacuna`.`con_id` = `ser_control_vacuna`.`con_id`))) ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pag_comprobante`
--
ALTER TABLE `pag_comprobante`
  ADD PRIMARY KEY (`com_id`),
  ADD UNIQUE KEY `IU_COMPROBANTE` (`com_id`,`com_fecha`,`com_tipo`,`clie_id`,`tipp_id`,`com_estado`),
  ADD KEY `CLIE_COMP` (`clie_id`),
  ADD KEY `TIPPAGO_COMP` (`tipp_id`);

--
-- Indices de la tabla `pag_detalle_comprobante`
--
ALTER TABLE `pag_detalle_comprobante`
  ADD UNIQUE KEY `IU_COMPROBANTEDET` (`com_id`,`ser_id`,`detc_cant`,`detc_preu`),
  ADD KEY `SER_DETCOMP` (`ser_id`);

--
-- Indices de la tabla `pag_tipo_pago`
--
ALTER TABLE `pag_tipo_pago`
  ADD PRIMARY KEY (`tipp_id`),
  ADD UNIQUE KEY `IU_TIPO_PAGO` (`tipp_id`,`tipp_desc`);

--
-- Indices de la tabla `res_cita`
--
ALTER TABLE `res_cita`
  ADD PRIMARY KEY (`cit_id`),
  ADD UNIQUE KEY `IU_CITA` (`cit_fecha`,`res_id`),
  ADD KEY `RES_CITA` (`res_id`),
  ADD KEY `SER_CITA` (`ser_id`);

--
-- Indices de la tabla `res_cliente`
--
ALTER TABLE `res_cliente`
  ADD PRIMARY KEY (`clie_id`),
  ADD KEY `PERS_CLIE` (`per_id`);

--
-- Indices de la tabla `res_especialidad`
--
ALTER TABLE `res_especialidad`
  ADD PRIMARY KEY (`esp_id`),
  ADD UNIQUE KEY `IU_ESPECIALIDAD` (`esp_nombre`,`esp_descripcion`);

--
-- Indices de la tabla `res_medico`
--
ALTER TABLE `res_medico`
  ADD PRIMARY KEY (`med_id`),
  ADD UNIQUE KEY `IU_MEDICO` (`med_id`,`esp_id`),
  ADD KEY `PERS_MED` (`per_id`),
  ADD KEY `ESPE_MED` (`esp_id`);

--
-- Indices de la tabla `res_permisos`
--
ALTER TABLE `res_permisos`
  ADD PRIMARY KEY (`perm_id`),
  ADD UNIQUE KEY `iu_permiso` (`perm_id`,`perm_nombre`);

--
-- Indices de la tabla `res_persona`
--
ALTER TABLE `res_persona`
  ADD PRIMARY KEY (`per_id`),
  ADD UNIQUE KEY `IU_NOMPERSONA` (`per_apepat`,`per_apemat`,`per_nombres`,`per_nrodoc`);

--
-- Indices de la tabla `res_reserva`
--
ALTER TABLE `res_reserva`
  ADD PRIMARY KEY (`res_id`),
  ADD UNIQUE KEY `IU_FECRESERVA` (`res_fecres`,`tur_id`,`mas_id`,`res_motivo`,`res_estado`),
  ADD KEY `MASC_RES` (`mas_id`),
  ADD KEY `TUR_RES` (`tur_id`);

--
-- Indices de la tabla `res_turno`
--
ALTER TABLE `res_turno`
  ADD PRIMARY KEY (`tur_id`),
  ADD UNIQUE KEY `IU_TURNOPROG` (`med_id`,`tur_fectur`,`tur_hini`);

--
-- Indices de la tabla `res_usuario`
--
ALTER TABLE `res_usuario`
  ADD PRIMARY KEY (`usu_id`),
  ADD UNIQUE KEY `IU_USUARIO` (`usu_fecreg`,`usu_estado`,`usu_email`,`rol`),
  ADD KEY `USU_MED` (`med_id`);

--
-- Indices de la tabla `seg_opcion_sistema`
--
ALTER TABLE `seg_opcion_sistema`
  ADD PRIMARY KEY (`id_opcion_sistema`);

--
-- Indices de la tabla `seg_usuario_permiso`
--
ALTER TABLE `seg_usuario_permiso`
  ADD PRIMARY KEY (`id_usuario_permiso`);

--
-- Indices de la tabla `ser_control_vacuna`
--
ALTER TABLE `ser_control_vacuna`
  ADD PRIMARY KEY (`con_id`),
  ADD UNIQUE KEY `IU_CONTROLVAC` (`con_fecap`,`con_fecve`,`con_obs`),
  ADD KEY `SER_CONTVAC` (`tips_id`);

--
-- Indices de la tabla `ser_detalle_historia`
--
ALTER TABLE `ser_detalle_historia`
  ADD PRIMARY KEY (`deth_id`),
  ADD UNIQUE KEY `IU_HISTORIADET` (`his_id`,`deth_fechis`,`deth_obs`,`exa_id`,`con_id`),
  ADD KEY `CONTVAC_DETHIST` (`con_id`),
  ADD KEY `SER_DETHIST` (`ser_id`),
  ADD KEY `EXA_DETHIST` (`exa_id`);

--
-- Indices de la tabla `ser_detalle_insumo`
--
ALTER TABLE `ser_detalle_insumo`
  ADD PRIMARY KEY (`deti_id`),
  ADD KEY `SER_DETINS` (`ser_id`),
  ADD KEY `INS_DETINS` (`ins_id`),
  ADD KEY `MEDI_DETINS` (`medi_id`);

--
-- Indices de la tabla `ser_diagnostico`
--
ALTER TABLE `ser_diagnostico`
  ADD PRIMARY KEY (`dia_id`),
  ADD UNIQUE KEY `IU_DIAGNOSTICO` (`dia_trat`,`dia_obs`),
  ADD KEY `RESU_DIAG` (`res_id`);

--
-- Indices de la tabla `ser_examen`
--
ALTER TABLE `ser_examen`
  ADD PRIMARY KEY (`exa_id`),
  ADD UNIQUE KEY `IU_EXAMEN` (`tips_id`,`exa_temp`,`exa_peso`,`exa_pulso`,`exa_resp`,`exa_anom`);

--
-- Indices de la tabla `ser_historia_clinica`
--
ALTER TABLE `ser_historia_clinica`
  ADD PRIMARY KEY (`his_id`),
  ADD UNIQUE KEY `IU_HISTORIACLI` (`mas_id`,`his_fecreg`,`his_estado`);

--
-- Indices de la tabla `ser_insumo`
--
ALTER TABLE `ser_insumo`
  ADD PRIMARY KEY (`ins_id`),
  ADD UNIQUE KEY `IU_INSUMO` (`ins_desc`,`ins_uni`,`ins_stock`,`ins_estado`,`ins_fecven`);

--
-- Indices de la tabla `ser_mascota`
--
ALTER TABLE `ser_mascota`
  ADD PRIMARY KEY (`mas_id`),
  ADD UNIQUE KEY `IU_MASCOTA` (`mas_nombre`,`mas_tipo`,`mas_raza`,`mas_sexo`,`mas_alergia`,`mas_fecnac`),
  ADD KEY `CLIE_MASC` (`clie_id`);

--
-- Indices de la tabla `ser_medicamento`
--
ALTER TABLE `ser_medicamento`
  ADD PRIMARY KEY (`medi_id`),
  ADD UNIQUE KEY `IU_MEDICAMENTO` (`medi_nombre`,`medi_precio`,`medi_desc`,`medi_stock`,`medi_pres`,`medi_fecven`);

--
-- Indices de la tabla `ser_receta_medica`
--
ALTER TABLE `ser_receta_medica`
  ADD PRIMARY KEY (`rec_id`),
  ADD UNIQUE KEY `IU_RECETA` (`rec_fecexp`,`rec_feccad`),
  ADD KEY `DIAG_REC` (`dia_id`);

--
-- Indices de la tabla `ser_receta_medica_detalle`
--
ALTER TABLE `ser_receta_medica_detalle`
  ADD UNIQUE KEY `IU_RECETADETALLE` (`rec_id`,`medi_id`,`detr_can`,`detr_obs`,`detr_dia`,`detr_ind`),
  ADD KEY `MEDI_DETMED` (`medi_id`);

--
-- Indices de la tabla `ser_resultado`
--
ALTER TABLE `ser_resultado`
  ADD PRIMARY KEY (`res_id`),
  ADD UNIQUE KEY `IU_RESULTADO` (`exa_id`,`res_anexo`,`res_obs1`,`res_obs2`);

--
-- Indices de la tabla `ser_servicio`
--
ALTER TABLE `ser_servicio`
  ADD PRIMARY KEY (`ser_id`),
  ADD UNIQUE KEY `IU_SERVICIO` (`ser_monto`,`ser_nombre`);

--
-- Indices de la tabla `ser_tipo_examen`
--
ALTER TABLE `ser_tipo_examen`
  ADD PRIMARY KEY (`tipe_id`),
  ADD UNIQUE KEY `IU_TIPOEXAMEN` (`tipe_nombre`,`tipe_estado`),
  ADD KEY `EXA_TIPEXA` (`exa_id`);

--
-- Indices de la tabla `ser_tipo_servicio`
--
ALTER TABLE `ser_tipo_servicio`
  ADD PRIMARY KEY (`tips_id`),
  ADD UNIQUE KEY `IU_TIPOSERVICIO` (`ser_id`,`tips_desc`,`tips_costo`);

--
-- Indices de la tabla `ser_tipo_vacuna`
--
ALTER TABLE `ser_tipo_vacuna`
  ADD PRIMARY KEY (`tipv_id`),
  ADD UNIQUE KEY `IU_TIPOVAC` (`con_id`,`tipv_nombre`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pag_comprobante`
--
ALTER TABLE `pag_comprobante`
  MODIFY `com_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pag_tipo_pago`
--
ALTER TABLE `pag_tipo_pago`
  MODIFY `tipp_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `res_cita`
--
ALTER TABLE `res_cita`
  MODIFY `cit_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `res_cliente`
--
ALTER TABLE `res_cliente`
  MODIFY `clie_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `res_especialidad`
--
ALTER TABLE `res_especialidad`
  MODIFY `esp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `res_medico`
--
ALTER TABLE `res_medico`
  MODIFY `med_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `res_persona`
--
ALTER TABLE `res_persona`
  MODIFY `per_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `res_reserva`
--
ALTER TABLE `res_reserva`
  MODIFY `res_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `res_turno`
--
ALTER TABLE `res_turno`
  MODIFY `tur_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `res_usuario`
--
ALTER TABLE `res_usuario`
  MODIFY `usu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `seg_opcion_sistema`
--
ALTER TABLE `seg_opcion_sistema`
  MODIFY `id_opcion_sistema` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `seg_usuario_permiso`
--
ALTER TABLE `seg_usuario_permiso`
  MODIFY `id_usuario_permiso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `ser_control_vacuna`
--
ALTER TABLE `ser_control_vacuna`
  MODIFY `con_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ser_detalle_historia`
--
ALTER TABLE `ser_detalle_historia`
  MODIFY `deth_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ser_detalle_insumo`
--
ALTER TABLE `ser_detalle_insumo`
  MODIFY `deti_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ser_diagnostico`
--
ALTER TABLE `ser_diagnostico`
  MODIFY `dia_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ser_examen`
--
ALTER TABLE `ser_examen`
  MODIFY `exa_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ser_historia_clinica`
--
ALTER TABLE `ser_historia_clinica`
  MODIFY `his_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ser_insumo`
--
ALTER TABLE `ser_insumo`
  MODIFY `ins_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ser_mascota`
--
ALTER TABLE `ser_mascota`
  MODIFY `mas_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ser_medicamento`
--
ALTER TABLE `ser_medicamento`
  MODIFY `medi_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ser_receta_medica`
--
ALTER TABLE `ser_receta_medica`
  MODIFY `rec_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ser_resultado`
--
ALTER TABLE `ser_resultado`
  MODIFY `res_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ser_servicio`
--
ALTER TABLE `ser_servicio`
  MODIFY `ser_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ser_tipo_examen`
--
ALTER TABLE `ser_tipo_examen`
  MODIFY `tipe_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ser_tipo_servicio`
--
ALTER TABLE `ser_tipo_servicio`
  MODIFY `tips_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ser_tipo_vacuna`
--
ALTER TABLE `ser_tipo_vacuna`
  MODIFY `tipv_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pag_comprobante`
--
ALTER TABLE `pag_comprobante`
  ADD CONSTRAINT `CLIE_COMP` FOREIGN KEY (`clie_id`) REFERENCES `res_cliente` (`clie_id`),
  ADD CONSTRAINT `TIPPAGO_COMP` FOREIGN KEY (`tipp_id`) REFERENCES `pag_tipo_pago` (`tipp_id`);

--
-- Filtros para la tabla `pag_detalle_comprobante`
--
ALTER TABLE `pag_detalle_comprobante`
  ADD CONSTRAINT `COMP_DETCOMP` FOREIGN KEY (`com_id`) REFERENCES `pag_comprobante` (`com_id`),
  ADD CONSTRAINT `SER_DETCOMP` FOREIGN KEY (`ser_id`) REFERENCES `ser_servicio` (`ser_id`);

--
-- Filtros para la tabla `res_cita`
--
ALTER TABLE `res_cita`
  ADD CONSTRAINT `RES_CITA` FOREIGN KEY (`res_id`) REFERENCES `res_reserva` (`res_id`),
  ADD CONSTRAINT `SER_CITA` FOREIGN KEY (`ser_id`) REFERENCES `ser_servicio` (`ser_id`);

--
-- Filtros para la tabla `res_cliente`
--
ALTER TABLE `res_cliente`
  ADD CONSTRAINT `PERS_CLIE` FOREIGN KEY (`per_id`) REFERENCES `res_persona` (`per_id`);

--
-- Filtros para la tabla `res_medico`
--
ALTER TABLE `res_medico`
  ADD CONSTRAINT `ESPE_MED` FOREIGN KEY (`esp_id`) REFERENCES `res_especialidad` (`esp_id`),
  ADD CONSTRAINT `PERS_MED` FOREIGN KEY (`per_id`) REFERENCES `res_persona` (`per_id`);

--
-- Filtros para la tabla `res_reserva`
--
ALTER TABLE `res_reserva`
  ADD CONSTRAINT `MASC_RES` FOREIGN KEY (`mas_id`) REFERENCES `ser_mascota` (`mas_id`),
  ADD CONSTRAINT `TUR_RES` FOREIGN KEY (`tur_id`) REFERENCES `res_turno` (`tur_id`);

--
-- Filtros para la tabla `res_turno`
--
ALTER TABLE `res_turno`
  ADD CONSTRAINT `MED_TURNO` FOREIGN KEY (`med_id`) REFERENCES `res_medico` (`med_id`);

--
-- Filtros para la tabla `res_usuario`
--
ALTER TABLE `res_usuario`
  ADD CONSTRAINT `USU_MED` FOREIGN KEY (`med_id`) REFERENCES `res_medico` (`med_id`);

--
-- Filtros para la tabla `ser_control_vacuna`
--
ALTER TABLE `ser_control_vacuna`
  ADD CONSTRAINT `SER_CONTVAC` FOREIGN KEY (`tips_id`) REFERENCES `ser_tipo_servicio` (`tips_id`);

--
-- Filtros para la tabla `ser_detalle_historia`
--
ALTER TABLE `ser_detalle_historia`
  ADD CONSTRAINT `CONTVAC_DETHIST` FOREIGN KEY (`con_id`) REFERENCES `ser_control_vacuna` (`con_id`),
  ADD CONSTRAINT `EXA_DETHIST` FOREIGN KEY (`exa_id`) REFERENCES `ser_examen` (`exa_id`),
  ADD CONSTRAINT `HISTCLI_DETHIST` FOREIGN KEY (`his_id`) REFERENCES `ser_historia_clinica` (`his_id`),
  ADD CONSTRAINT `SER_DETHIST` FOREIGN KEY (`ser_id`) REFERENCES `ser_servicio` (`ser_id`);

--
-- Filtros para la tabla `ser_detalle_insumo`
--
ALTER TABLE `ser_detalle_insumo`
  ADD CONSTRAINT `INS_DETINS` FOREIGN KEY (`ins_id`) REFERENCES `ser_insumo` (`ins_id`),
  ADD CONSTRAINT `MEDI_DETINS` FOREIGN KEY (`medi_id`) REFERENCES `ser_medicamento` (`medi_id`),
  ADD CONSTRAINT `SER_DETINS` FOREIGN KEY (`ser_id`) REFERENCES `ser_servicio` (`ser_id`);

--
-- Filtros para la tabla `ser_diagnostico`
--
ALTER TABLE `ser_diagnostico`
  ADD CONSTRAINT `RESU_DIAG` FOREIGN KEY (`res_id`) REFERENCES `ser_resultado` (`res_id`);

--
-- Filtros para la tabla `ser_examen`
--
ALTER TABLE `ser_examen`
  ADD CONSTRAINT `TIPSER_EXA` FOREIGN KEY (`tips_id`) REFERENCES `ser_tipo_servicio` (`tips_id`);

--
-- Filtros para la tabla `ser_historia_clinica`
--
ALTER TABLE `ser_historia_clinica`
  ADD CONSTRAINT `MASC_HISTCLI` FOREIGN KEY (`mas_id`) REFERENCES `ser_mascota` (`mas_id`);

--
-- Filtros para la tabla `ser_mascota`
--
ALTER TABLE `ser_mascota`
  ADD CONSTRAINT `CLIE_MASC` FOREIGN KEY (`clie_id`) REFERENCES `res_cliente` (`clie_id`);

--
-- Filtros para la tabla `ser_receta_medica`
--
ALTER TABLE `ser_receta_medica`
  ADD CONSTRAINT `DIAG_REC` FOREIGN KEY (`dia_id`) REFERENCES `ser_diagnostico` (`dia_id`);

--
-- Filtros para la tabla `ser_receta_medica_detalle`
--
ALTER TABLE `ser_receta_medica_detalle`
  ADD CONSTRAINT `MEDI_DETMED` FOREIGN KEY (`medi_id`) REFERENCES `ser_medicamento` (`medi_id`),
  ADD CONSTRAINT `REC_DETMEDI` FOREIGN KEY (`rec_id`) REFERENCES `ser_receta_medica` (`rec_id`);

--
-- Filtros para la tabla `ser_resultado`
--
ALTER TABLE `ser_resultado`
  ADD CONSTRAINT `EXA_RESU` FOREIGN KEY (`exa_id`) REFERENCES `ser_examen` (`exa_id`);

--
-- Filtros para la tabla `ser_tipo_examen`
--
ALTER TABLE `ser_tipo_examen`
  ADD CONSTRAINT `EXA_TIPEXA` FOREIGN KEY (`exa_id`) REFERENCES `ser_examen` (`exa_id`);

--
-- Filtros para la tabla `ser_tipo_servicio`
--
ALTER TABLE `ser_tipo_servicio`
  ADD CONSTRAINT `SER_TIPSER` FOREIGN KEY (`ser_id`) REFERENCES `ser_servicio` (`ser_id`);

--
-- Filtros para la tabla `ser_tipo_vacuna`
--
ALTER TABLE `ser_tipo_vacuna`
  ADD CONSTRAINT `CONTVAC_TIPVAC` FOREIGN KEY (`con_id`) REFERENCES `ser_control_vacuna` (`con_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
