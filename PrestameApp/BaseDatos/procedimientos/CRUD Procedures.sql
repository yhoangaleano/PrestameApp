IF OBJECT_ID('crud_tblDestrezaSelect') IS NOT NULL
BEGIN
	DROP PROCEDURE dbo.crud_tblDestrezaSelectSelecttblDestrezaYhoanGaleanoYhoanGaleanotblDestrezaSelect
END
GO
CREATE PROCEDURE dbo.crud_tblDestrezaSelectSelecttblDestrezaYhoanGaleanoYhoanGaleanotblDestrezaSelect
		@idDestreza [int]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	SELECT idDestreza, nombreDestreza, porcentajeDestreza, descripcion, estado
	FROM dbo.tblDestreza
	WHERE (idDestreza = @idDestreza OR @idDestreza IS NULL)

	COMMIT
GO
IF OBJECT_ID('crud_tblDestrezaInsert') IS NOT NULL
BEGIN
	DROP PROCEDURE dbo.crud_tblDestrezaInsert
END
GO
CREATE PROCEDURE dbo.crud_tblDestrezaInsert
	(
		@nombreDestreza [varchar](50),
		@porcentajeDestreza [tinyint],
		@descripcion [varchar](200),
		@estado [bit]
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	INSERT INTO dbo.tblDestreza
	(
		nombreDestreza, porcentajeDestreza, descripcion, estado
	)
	VALUES
	(
		@nombreDestreza,
		@porcentajeDestreza,
		@descripcion,
		@estado

	)
	SELECT idDestreza, nombreDestreza, porcentajeDestreza, descripcion, estado
	FROM dbo.tblDestreza
	WHERE (idDestreza = SCOPE_IDENTITY())

	COMMIT
GO
IF OBJECT_ID('crud_tblDestrezaUpdate') IS NOT NULL
BEGIN
	DROP PROCEDURE dbo.crud_tblDestrezaUpdate
END
GO
CREATE PROCEDURE dbo.crud_tblDestrezaUpdate
	(
		@idDestreza [int],
		@nombreDestreza [varchar](50),
		@porcentajeDestreza [tinyint],
		@descripcion [varchar](200),
		@estado [bit]
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		UPDATE dbo.tblDestreza
		SET  nombreDestreza = @nombreDestreza, porcentajeDestreza = @porcentajeDestreza, descripcion = @descripcion, estado = @estado
		WHERE (idDestreza = @idDestreza OR @idDestreza IS NULL)
	COMMIT
GO
IF OBJECT_ID('crud_tblDestrezaDelete') IS NOT NULL
BEGIN
	DROP PROCEDURE dbo.crud_tblDestrezaDelete
END
GO
CREATE PROCEDURE dbo.crud_tblDestrezaDelete
		@idDestreza [int]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		DELETE FROM dbo.tblDestreza
		WHERE (idDestreza = @idDestreza OR @idDestreza IS NULL)
	COMMIT
GO
IF OBJECT_ID('crud_tblDestrezaEmpleadoSelect') IS NOT NULL
BEGIN
	DROP PROCEDURE dbo.crud_tblDestrezaEmpleadoSelectSelecttblDestrezaEmpleadoYhoanGaleanoYhoanGaleanotblDestrezaEmpleadoSelect
END
GO
CREATE PROCEDURE dbo.crud_tblDestrezaEmpleadoSelectSelecttblDestrezaEmpleadoYhoanGaleanoYhoanGaleanotblDestrezaEmpleadoSelect
		@idDestrezaEmpleado [int]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	SELECT idDestrezaEmpleado, idEmpleado, idDestreza
	FROM dbo.tblDestrezaEmpleado
	WHERE (idDestrezaEmpleado = @idDestrezaEmpleado OR @idDestrezaEmpleado IS NULL)

	COMMIT
GO
IF OBJECT_ID('crud_tblDestrezaEmpleadoInsert') IS NOT NULL
BEGIN
	DROP PROCEDURE dbo.crud_tblDestrezaEmpleadoInsert
END
GO
CREATE PROCEDURE dbo.crud_tblDestrezaEmpleadoInsert
	(
		@idEmpleado [int],
		@idDestreza [int]
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	INSERT INTO dbo.tblDestrezaEmpleado
	(
		idEmpleado, idDestreza
	)
	VALUES
	(
		@idEmpleado,
		@idDestreza

	)
	SELECT idDestrezaEmpleado, idEmpleado, idDestreza
	FROM dbo.tblDestrezaEmpleado
	WHERE (idDestrezaEmpleado = SCOPE_IDENTITY())

	COMMIT
GO
IF OBJECT_ID('crud_tblDestrezaEmpleadoUpdate') IS NOT NULL
BEGIN
	DROP PROCEDURE dbo.crud_tblDestrezaEmpleadoUpdate
END
GO
CREATE PROCEDURE dbo.crud_tblDestrezaEmpleadoUpdate
	(
		@idDestrezaEmpleado [int],
		@idEmpleado [int],
		@idDestreza [int]
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		UPDATE dbo.tblDestrezaEmpleado
		SET  idEmpleado = @idEmpleado, idDestreza = @idDestreza
		WHERE (idDestrezaEmpleado = @idDestrezaEmpleado OR @idDestrezaEmpleado IS NULL)
	COMMIT
GO
IF OBJECT_ID('crud_tblDestrezaEmpleadoDelete') IS NOT NULL
BEGIN
	DROP PROCEDURE dbo.crud_tblDestrezaEmpleadoDelete
END
GO
CREATE PROCEDURE dbo.crud_tblDestrezaEmpleadoDelete
		@idDestrezaEmpleado [int]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		DELETE FROM dbo.tblDestrezaEmpleado
		WHERE (idDestrezaEmpleado = @idDestrezaEmpleado OR @idDestrezaEmpleado IS NULL)
	COMMIT
GO
IF OBJECT_ID('crud_tblEmpleadoSelect') IS NOT NULL
BEGIN
	DROP PROCEDURE dbo.crud_tblEmpleadoSelectSelecttblEmpleadoYhoanGaleanoYhoanGaleanotblEmpleadoSelect
END
GO
CREATE PROCEDURE dbo.crud_tblEmpleadoSelectSelecttblEmpleadoYhoanGaleanoYhoanGaleanotblEmpleadoSelect
		@idEmpleado [int]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	SELECT idEmpleado, nombreCompleto, documento, idTipoDocumento, fechaNacimiento, genero, idEmpresa, foto, idUsuario
	FROM dbo.tblEmpleado
	WHERE (idEmpleado = @idEmpleado OR @idEmpleado IS NULL)

	COMMIT
GO
IF OBJECT_ID('crud_tblEmpleadoInsert') IS NOT NULL
BEGIN
	DROP PROCEDURE dbo.crud_tblEmpleadoInsert
END
GO
CREATE PROCEDURE dbo.crud_tblEmpleadoInsert
	(
		@nombreCompleto [varchar](80),
		@documento [varchar](13),
		@idTipoDocumento [tinyint],
		@fechaNacimiento [date],
		@genero [tinyint],
		@idEmpresa [int],
		@foto [varchar](100),
		@idUsuario [int]
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	INSERT INTO dbo.tblEmpleado
	(
		nombreCompleto, documento, idTipoDocumento, fechaNacimiento, genero, idEmpresa, foto, idUsuario
	)
	VALUES
	(
		@nombreCompleto,
		@documento,
		@idTipoDocumento,
		@fechaNacimiento,
		@genero,
		@idEmpresa,
		@foto,
		@idUsuario

	)
	SELECT idEmpleado, nombreCompleto, documento, idTipoDocumento, fechaNacimiento, genero, idEmpresa, foto, idUsuario
	FROM dbo.tblEmpleado
	WHERE (idEmpleado = SCOPE_IDENTITY())

	COMMIT
GO
IF OBJECT_ID('crud_tblEmpleadoUpdate') IS NOT NULL
BEGIN
	DROP PROCEDURE dbo.crud_tblEmpleadoUpdate
END
GO
CREATE PROCEDURE dbo.crud_tblEmpleadoUpdate
	(
		@idEmpleado [int],
		@nombreCompleto [varchar](80),
		@documento [varchar](13),
		@idTipoDocumento [tinyint],
		@fechaNacimiento [date],
		@genero [tinyint],
		@idEmpresa [int],
		@foto [varchar](100),
		@idUsuario [int]
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		UPDATE dbo.tblEmpleado
		SET  nombreCompleto = @nombreCompleto, documento = @documento, idTipoDocumento = @idTipoDocumento, fechaNacimiento = @fechaNacimiento, genero = @genero, idEmpresa = @idEmpresa, foto = @foto, idUsuario = @idUsuario
		WHERE (idEmpleado = @idEmpleado OR @idEmpleado IS NULL)
	COMMIT
GO
IF OBJECT_ID('crud_tblEmpleadoDelete') IS NOT NULL
BEGIN
	DROP PROCEDURE dbo.crud_tblEmpleadoDelete
END
GO
CREATE PROCEDURE dbo.crud_tblEmpleadoDelete
		@idEmpleado [int]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		DELETE FROM dbo.tblEmpleado
		WHERE (idEmpleado = @idEmpleado OR @idEmpleado IS NULL)
	COMMIT
GO
IF OBJECT_ID('crud_tblEmpresaSelect') IS NOT NULL
BEGIN
	DROP PROCEDURE dbo.crud_tblEmpresaSelect
END
GO
CREATE PROCEDURE dbo.crud_tblEmpresaSelect
		@idEmpresa [int]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	SELECT idEmpresa, NIT, razonSocial, telefono, nombreResponsable, idUsuario
	FROM dbo.tblEmpresa
	WHERE (idEmpresa = @idEmpresa OR @idEmpresa IS NULL)

	COMMIT
GO
IF OBJECT_ID('crud_tblEmpresaInsert') IS NOT NULL
BEGIN
	DROP PROCEDURE dbo.crud_tblEmpresaInsert
END
GO
CREATE PROCEDURE dbo.crud_tblEmpresaInsert
	(
		@NIT [varchar](15),
		@razonSocial [varchar](60),
		@telefono [varchar](20),
		@nombreResponsable [varchar](30),
		@idUsuario [int]
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	INSERT INTO dbo.tblEmpresa
	(
		NIT, razonSocial, telefono, nombreResponsable, idUsuario
	)
	VALUES
	(
		@NIT,
		@razonSocial,
		@telefono,
		@nombreResponsable,
		@idUsuario

	)
	SELECT idEmpresa, NIT, razonSocial, telefono, nombreResponsable, idUsuario
	FROM dbo.tblEmpresa
	WHERE (idEmpresa = SCOPE_IDENTITY())

	COMMIT
GO
IF OBJECT_ID('crud_tblEmpresaUpdate') IS NOT NULL
BEGIN
	DROP PROCEDURE dbo.crud_tblEmpresaUpdate
END
GO
CREATE PROCEDURE dbo.crud_tblEmpresaUpdate
	(
		@idEmpresa [int],
		@NIT [varchar](15),
		@razonSocial [varchar](60),
		@telefono [varchar](20),
		@nombreResponsable [varchar](30),
		@idUsuario [int]
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		UPDATE dbo.tblEmpresa
		SET  NIT = @NIT, razonSocial = @razonSocial, telefono = @telefono, nombreResponsable = @nombreResponsable, idUsuario = @idUsuario
		WHERE (idEmpresa = @idEmpresa OR @idEmpresa IS NULL)
	COMMIT
GO
IF OBJECT_ID('crud_tblEmpresaDelete') IS NOT NULL
BEGIN
	DROP PROCEDURE dbo.crud_tblEmpresaDelete
END
GO
CREATE PROCEDURE dbo.crud_tblEmpresaDelete
		@idEmpresa [int]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		DELETE FROM dbo.tblEmpresa
		WHERE (idEmpresa = @idEmpresa OR @idEmpresa IS NULL)
	COMMIT
GO
IF OBJECT_ID('crud_tblEstudioSelect') IS NOT NULL
BEGIN
	DROP PROCEDURE dbo.crud_tblEstudioSelectSelecttblEstudioYhoanGaleanoYhoanGaleanotblEstudioSelect
END
GO
CREATE PROCEDURE dbo.crud_tblEstudioSelectSelecttblEstudioYhoanGaleanoYhoanGaleanotblEstudioSelect
		@idEstudio [int]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	SELECT idEstudio, nombreEstudio, descripcion, nivelEstudio, graduado, fechaTerminacion, nombreInstitucion, estado
	FROM dbo.tblEstudio
	WHERE (idEstudio = @idEstudio OR @idEstudio IS NULL)

	COMMIT
GO
IF OBJECT_ID('crud_tblEstudioInsert') IS NOT NULL
BEGIN
	DROP PROCEDURE dbo.crud_tblEstudioInsert
END
GO
CREATE PROCEDURE dbo.crud_tblEstudioInsert
	(
		@nombreEstudio [varchar](60),
		@descripcion [varchar](200),
		@nivelEstudio [varchar](50),
		@graduado [bit],
		@fechaTerminacion [date],
		@nombreInstitucion [varchar](100),
		@estado [bit]
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	INSERT INTO dbo.tblEstudio
	(
		nombreEstudio, descripcion, nivelEstudio, graduado, fechaTerminacion, nombreInstitucion, estado
	)
	VALUES
	(
		@nombreEstudio,
		@descripcion,
		@nivelEstudio,
		@graduado,
		@fechaTerminacion,
		@nombreInstitucion,
		@estado

	)
	SELECT idEstudio, nombreEstudio, descripcion, nivelEstudio, graduado, fechaTerminacion, nombreInstitucion, estado
	FROM dbo.tblEstudio
	WHERE (idEstudio = SCOPE_IDENTITY())

	COMMIT
GO
IF OBJECT_ID('crud_tblEstudioUpdate') IS NOT NULL
BEGIN
	DROP PROCEDURE dbo.crud_tblEstudioUpdate
END
GO
CREATE PROCEDURE dbo.crud_tblEstudioUpdate
	(
		@idEstudio [int],
		@nombreEstudio [varchar](60),
		@descripcion [varchar](200),
		@nivelEstudio [varchar](50),
		@graduado [bit],
		@fechaTerminacion [date],
		@nombreInstitucion [varchar](100),
		@estado [bit]
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		UPDATE dbo.tblEstudio
		SET  nombreEstudio = @nombreEstudio, descripcion = @descripcion, nivelEstudio = @nivelEstudio, graduado = @graduado, fechaTerminacion = @fechaTerminacion, nombreInstitucion = @nombreInstitucion, estado = @estado
		WHERE (idEstudio = @idEstudio OR @idEstudio IS NULL)
	COMMIT
GO
IF OBJECT_ID('crud_tblEstudioDelete') IS NOT NULL
BEGIN
	DROP PROCEDURE dbo.crud_tblEstudioDelete
END
GO
CREATE PROCEDURE dbo.crud_tblEstudioDelete
		@idEstudio [int]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		DELETE FROM dbo.tblEstudio
		WHERE (idEstudio = @idEstudio OR @idEstudio IS NULL)
	COMMIT
GO
IF OBJECT_ID('crud_tblEstudioEmpleadoSelect') IS NOT NULL
BEGIN
	DROP PROCEDURE dbo.crud_tblEstudioEmpleadoSelectSelecttblEstudioEmpleadoYhoanGaleanoYhoanGaleanotblEstudioEmpleadoSelect
END
GO
CREATE PROCEDURE dbo.crud_tblEstudioEmpleadoSelectSelecttblEstudioEmpleadoYhoanGaleanoYhoanGaleanotblEstudioEmpleadoSelect
		@idEstudioEmpleado [int]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	SELECT idEstudioEmpleado, idEmpleado, idEstudio
	FROM dbo.tblEstudioEmpleado
	WHERE (idEstudioEmpleado = @idEstudioEmpleado OR @idEstudioEmpleado IS NULL)

	COMMIT
GO
IF OBJECT_ID('crud_tblEstudioEmpleadoInsert') IS NOT NULL
BEGIN
	DROP PROCEDURE dbo.crud_tblEstudioEmpleadoInsert
END
GO
CREATE PROCEDURE dbo.crud_tblEstudioEmpleadoInsert
	(
		@idEmpleado [int],
		@idEstudio [int]
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	INSERT INTO dbo.tblEstudioEmpleado
	(
		idEmpleado, idEstudio
	)
	VALUES
	(
		@idEmpleado,
		@idEstudio

	)
	SELECT idEstudioEmpleado, idEmpleado, idEstudio
	FROM dbo.tblEstudioEmpleado
	WHERE (idEstudioEmpleado = SCOPE_IDENTITY())

	COMMIT
GO
IF OBJECT_ID('crud_tblEstudioEmpleadoUpdate') IS NOT NULL
BEGIN
	DROP PROCEDURE dbo.crud_tblEstudioEmpleadoUpdate
END
GO
CREATE PROCEDURE dbo.crud_tblEstudioEmpleadoUpdate
	(
		@idEstudioEmpleado [int],
		@idEmpleado [int],
		@idEstudio [int]
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		UPDATE dbo.tblEstudioEmpleado
		SET  idEmpleado = @idEmpleado, idEstudio = @idEstudio
		WHERE (idEstudioEmpleado = @idEstudioEmpleado OR @idEstudioEmpleado IS NULL)
	COMMIT
GO
IF OBJECT_ID('crud_tblEstudioEmpleadoDelete') IS NOT NULL
BEGIN
	DROP PROCEDURE dbo.crud_tblEstudioEmpleadoDelete
END
GO
CREATE PROCEDURE dbo.crud_tblEstudioEmpleadoDelete
		@idEstudioEmpleado [int]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		DELETE FROM dbo.tblEstudioEmpleado
		WHERE (idEstudioEmpleado = @idEstudioEmpleado OR @idEstudioEmpleado IS NULL)
	COMMIT
GO
IF OBJECT_ID('crud_tblModuloSelect') IS NOT NULL
BEGIN
	DROP PROCEDURE dbo.crud_tblModuloSelectSelecttblModuloYhoanGaleanoYhoanGaleanotblModuloSelect
END
GO
CREATE PROCEDURE dbo.crud_tblModuloSelectSelecttblModuloYhoanGaleanoYhoanGaleanotblModuloSelect
		@idModulo [tinyint]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	SELECT idModulo, nombre, url, padre, padreId, icono, estado, mostrar
	FROM dbo.tblModulo
	WHERE (idModulo = @idModulo OR @idModulo IS NULL)

	COMMIT
GO
IF OBJECT_ID('crud_tblModuloInsert') IS NOT NULL
BEGIN
	DROP PROCEDURE dbo.crud_tblModuloInsert
END
GO
CREATE PROCEDURE dbo.crud_tblModuloInsert
	(
		@nombre [varchar](50),
		@url [varchar](100),
		@padre [bit],
		@padreId [tinyint],
		@icono [varchar](20),
		@estado [bit],
		@mostrar [bit]
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	INSERT INTO dbo.tblModulo
	(
		nombre, url, padre, padreId, icono, estado, mostrar
	)
	VALUES
	(
		@nombre,
		@url,
		@padre,
		@padreId,
		@icono,
		@estado,
		@mostrar

	)
	SELECT idModulo, nombre, url, padre, padreId, icono, estado, mostrar
	FROM dbo.tblModulo
	WHERE (idModulo = SCOPE_IDENTITY())

	COMMIT
GO
IF OBJECT_ID('crud_tblModuloUpdate') IS NOT NULL
BEGIN
	DROP PROCEDURE dbo.crud_tblModuloUpdate
END
GO
CREATE PROCEDURE dbo.crud_tblModuloUpdate
	(
		@idModulo [tinyint],
		@nombre [varchar](50),
		@url [varchar](100),
		@padre [bit],
		@padreId [tinyint],
		@icono [varchar](20),
		@estado [bit],
		@mostrar [bit]
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		UPDATE dbo.tblModulo
		SET  nombre = @nombre, url = @url, padre = @padre, padreId = @padreId, icono = @icono, estado = @estado, mostrar = @mostrar
		WHERE (idModulo = @idModulo OR @idModulo IS NULL)
	COMMIT
GO
IF OBJECT_ID('crud_tblModuloDelete') IS NOT NULL
BEGIN
	DROP PROCEDURE dbo.crud_tblModuloDelete
END
GO
CREATE PROCEDURE dbo.crud_tblModuloDelete
		@idModulo [tinyint]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		DELETE FROM dbo.tblModulo
		WHERE (idModulo = @idModulo OR @idModulo IS NULL)
	COMMIT
GO
IF OBJECT_ID('crud_tblPrestamoSelect') IS NOT NULL
BEGIN
	DROP PROCEDURE dbo.crud_tblPrestamoSelectSelecttblPrestamoYhoanGaleanoYhoanGaleanotblPrestamoSelect
END
GO
CREATE PROCEDURE dbo.crud_tblPrestamoSelectSelecttblPrestamoYhoanGaleanoYhoanGaleanotblPrestamoSelect
		@idPrestamo [int]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	SELECT idPrestamo, idEmpresa, idEmpleado, fechaInicio, fechaFin, descripcion, direccion, estado
	FROM dbo.tblPrestamo
	WHERE (idPrestamo = @idPrestamo OR @idPrestamo IS NULL)

	COMMIT
GO
IF OBJECT_ID('crud_tblPrestamoInsert') IS NOT NULL
BEGIN
	DROP PROCEDURE dbo.crud_tblPrestamoInsert
END
GO
CREATE PROCEDURE dbo.crud_tblPrestamoInsert
	(
		@idEmpresa [int],
		@idEmpleado [int],
		@fechaInicio [date],
		@fechaFin [date],
		@descripcion [varchar](max),
		@direccion [varchar](100),
		@estado [bit]
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	INSERT INTO dbo.tblPrestamo
	(
		idEmpresa, idEmpleado, fechaInicio, fechaFin, descripcion, direccion, estado
	)
	VALUES
	(
		@idEmpresa,
		@idEmpleado,
		@fechaInicio,
		@fechaFin,
		@descripcion,
		@direccion,
		@estado

	)
	SELECT idPrestamo, idEmpresa, idEmpleado, fechaInicio, fechaFin, descripcion, direccion, estado
	FROM dbo.tblPrestamo
	WHERE (idPrestamo = SCOPE_IDENTITY())

	COMMIT
GO
IF OBJECT_ID('crud_tblPrestamoUpdate') IS NOT NULL
BEGIN
	DROP PROCEDURE dbo.crud_tblPrestamoUpdate
END
GO
CREATE PROCEDURE dbo.crud_tblPrestamoUpdate
	(
		@idPrestamo [int],
		@idEmpresa [int],
		@idEmpleado [int],
		@fechaInicio [date],
		@fechaFin [date],
		@descripcion [varchar](max),
		@direccion [varchar](100),
		@estado [bit]
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		UPDATE dbo.tblPrestamo
		SET  idEmpresa = @idEmpresa, idEmpleado = @idEmpleado, fechaInicio = @fechaInicio, fechaFin = @fechaFin, descripcion = @descripcion, direccion = @direccion, estado = @estado
		WHERE (idPrestamo = @idPrestamo OR @idPrestamo IS NULL)
	COMMIT
GO
IF OBJECT_ID('crud_tblPrestamoDelete') IS NOT NULL
BEGIN
	DROP PROCEDURE dbo.crud_tblPrestamoDelete
END
GO
CREATE PROCEDURE dbo.crud_tblPrestamoDelete
		@idPrestamo [int]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		DELETE FROM dbo.tblPrestamo
		WHERE (idPrestamo = @idPrestamo OR @idPrestamo IS NULL)
	COMMIT
GO
IF OBJECT_ID('crud_tblRolSelect') IS NOT NULL
BEGIN
	DROP PROCEDURE dbo.crud_tblRolSelectSelecttblRolYhoanGaleanoYhoanGaleanotblRolSelect
END
GO
CREATE PROCEDURE dbo.crud_tblRolSelectSelecttblRolYhoanGaleanoYhoanGaleanotblRolSelect
		@idRol [tinyint]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	SELECT idRol, nombreRol, estado
	FROM dbo.tblRol
	WHERE (idRol = @idRol OR @idRol IS NULL)

	COMMIT
GO
IF OBJECT_ID('crud_tblRolInsert') IS NOT NULL
BEGIN
	DROP PROCEDURE dbo.crud_tblRolInsert
END
GO
CREATE PROCEDURE dbo.crud_tblRolInsert
	(
		@nombreRol [varchar](30),
		@estado [bit]
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	INSERT INTO dbo.tblRol
	(
		nombreRol, estado
	)
	VALUES
	(
		@nombreRol,
		@estado

	)
	SELECT idRol, nombreRol, estado
	FROM dbo.tblRol
	WHERE (idRol = SCOPE_IDENTITY())

	COMMIT
GO
IF OBJECT_ID('crud_tblRolUpdate') IS NOT NULL
BEGIN
	DROP PROCEDURE dbo.crud_tblRolUpdate
END
GO
CREATE PROCEDURE dbo.crud_tblRolUpdate
	(
		@idRol [tinyint],
		@nombreRol [varchar](30),
		@estado [bit]
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		UPDATE dbo.tblRol
		SET  nombreRol = @nombreRol, estado = @estado
		WHERE (idRol = @idRol OR @idRol IS NULL)
	COMMIT
GO
IF OBJECT_ID('crud_tblRolDelete') IS NOT NULL
BEGIN
	DROP PROCEDURE dbo.crud_tblRolDelete
END
GO
CREATE PROCEDURE dbo.crud_tblRolDelete
		@idRol [tinyint]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		DELETE FROM dbo.tblRol
		WHERE (idRol = @idRol OR @idRol IS NULL)
	COMMIT
GO
IF OBJECT_ID('crud_tblRolModuloSelect') IS NOT NULL
BEGIN
	DROP PROCEDURE dbo.crud_tblRolModuloSelectSelecttblRolModuloYhoanGaleanoYhoanGaleanotblRolModuloSelect
END
GO
CREATE PROCEDURE dbo.crud_tblRolModuloSelectSelecttblRolModuloYhoanGaleanoYhoanGaleanotblRolModuloSelect
		@idRolModulo [int]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	SELECT idRolModulo, idRol, idModulo
	FROM dbo.tblRolModulo
	WHERE (idRolModulo = @idRolModulo OR @idRolModulo IS NULL)

	COMMIT
GO
IF OBJECT_ID('crud_tblRolModuloInsert') IS NOT NULL
BEGIN
	DROP PROCEDURE dbo.crud_tblRolModuloInsert
END
GO
CREATE PROCEDURE dbo.crud_tblRolModuloInsert
	(
		@idRol [tinyint],
		@idModulo [tinyint]
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	INSERT INTO dbo.tblRolModulo
	(
		idRol, idModulo
	)
	VALUES
	(
		@idRol,
		@idModulo

	)
	SELECT idRolModulo, idRol, idModulo
	FROM dbo.tblRolModulo
	WHERE (idRolModulo = SCOPE_IDENTITY())

	COMMIT
GO
IF OBJECT_ID('crud_tblRolModuloUpdate') IS NOT NULL
BEGIN
	DROP PROCEDURE dbo.crud_tblRolModuloUpdate
END
GO
CREATE PROCEDURE dbo.crud_tblRolModuloUpdate
	(
		@idRolModulo [int],
		@idRol [tinyint],
		@idModulo [tinyint]
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		UPDATE dbo.tblRolModulo
		SET  idRol = @idRol, idModulo = @idModulo
		WHERE (idRolModulo = @idRolModulo OR @idRolModulo IS NULL)
	COMMIT
GO
IF OBJECT_ID('crud_tblRolModuloDelete') IS NOT NULL
BEGIN
	DROP PROCEDURE dbo.crud_tblRolModuloDelete
END
GO
CREATE PROCEDURE dbo.crud_tblRolModuloDelete
		@idRolModulo [int]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		DELETE FROM dbo.tblRolModulo
		WHERE (idRolModulo = @idRolModulo OR @idRolModulo IS NULL)
	COMMIT
GO
IF OBJECT_ID('crud_tblTipoDocumentoSelect') IS NOT NULL
BEGIN
	DROP PROCEDURE dbo.crud_tblTipoDocumentoSelectSelecttblTipoDocumentoYhoanGaleanoYhoanGaleanotblTipoDocumentoSelect
END
GO
CREATE PROCEDURE dbo.crud_tblTipoDocumentoSelectSelecttblTipoDocumentoYhoanGaleanoYhoanGaleanotblTipoDocumentoSelect
		@idTipoDocumento [tinyint]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	SELECT idTipoDocumento, nombreTipoDocumento, estado
	FROM dbo.tblTipoDocumento
	WHERE (idTipoDocumento = @idTipoDocumento OR @idTipoDocumento IS NULL)

	COMMIT
GO
IF OBJECT_ID('crud_tblTipoDocumentoInsert') IS NOT NULL
BEGIN
	DROP PROCEDURE dbo.crud_tblTipoDocumentoInsert
END
GO
CREATE PROCEDURE dbo.crud_tblTipoDocumentoInsert
	(
		@nombreTipoDocumento [varchar](30),
		@estado [bit]
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	INSERT INTO dbo.tblTipoDocumento
	(
		nombreTipoDocumento, estado
	)
	VALUES
	(
		@nombreTipoDocumento,
		@estado

	)
	SELECT idTipoDocumento, nombreTipoDocumento, estado
	FROM dbo.tblTipoDocumento
	WHERE (idTipoDocumento = SCOPE_IDENTITY())

	COMMIT
GO
IF OBJECT_ID('crud_tblTipoDocumentoUpdate') IS NOT NULL
BEGIN
	DROP PROCEDURE dbo.crud_tblTipoDocumentoUpdate
END
GO
CREATE PROCEDURE dbo.crud_tblTipoDocumentoUpdate
	(
		@idTipoDocumento [tinyint],
		@nombreTipoDocumento [varchar](30),
		@estado [bit]
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		UPDATE dbo.tblTipoDocumento
		SET  nombreTipoDocumento = @nombreTipoDocumento, estado = @estado
		WHERE (idTipoDocumento = @idTipoDocumento OR @idTipoDocumento IS NULL)
	COMMIT
GO
IF OBJECT_ID('crud_tblTipoDocumentoDelete') IS NOT NULL
BEGIN
	DROP PROCEDURE dbo.crud_tblTipoDocumentoDelete
END
GO
CREATE PROCEDURE dbo.crud_tblTipoDocumentoDelete
		@idTipoDocumento [tinyint]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		DELETE FROM dbo.tblTipoDocumento
		WHERE (idTipoDocumento = @idTipoDocumento OR @idTipoDocumento IS NULL)
	COMMIT
GO
IF OBJECT_ID('crud_tblUsuarioSelect') IS NOT NULL
BEGIN
	DROP PROCEDURE dbo.crud_tblUsuarioSelectSelecttblUsuarioYhoanGaleanoYhoanGaleanotblUsuarioSelect
END
GO
CREATE PROCEDURE dbo.crud_tblUsuarioSelectSelecttblUsuarioYhoanGaleanoYhoanGaleanotblUsuarioSelect
		@idUsuario [int]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	SELECT idUsuario, correoElectronico, usuario, contrasena, estado, idRol
	FROM dbo.tblUsuario
	WHERE (idUsuario = @idUsuario OR @idUsuario IS NULL)

	COMMIT
GO
IF OBJECT_ID('crud_tblUsuarioInsert') IS NOT NULL
BEGIN
	DROP PROCEDURE dbo.crud_tblUsuarioInsert
END
GO
CREATE PROCEDURE dbo.crud_tblUsuarioInsert
	(
		@correoElectronico [varchar](50),
		@usuario [varchar](30),
		@contrasena [varchar](100),
		@estado [tinyint],
		@idRol [tinyint]
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	INSERT INTO dbo.tblUsuario
	(
		correoElectronico, usuario, contrasena, estado, idRol
	)
	VALUES
	(
		@correoElectronico,
		@usuario,
		@contrasena,
		@estado,
		@idRol

	)
	SELECT idUsuario, correoElectronico, usuario, contrasena, estado, idRol
	FROM dbo.tblUsuario
	WHERE (idUsuario = SCOPE_IDENTITY())

	COMMIT
GO
IF OBJECT_ID('crud_tblUsuarioUpdate') IS NOT NULL
BEGIN
	DROP PROCEDURE dbo.crud_tblUsuarioUpdate
END
GO
CREATE PROCEDURE dbo.crud_tblUsuarioUpdate
	(
		@idUsuario [int],
		@correoElectronico [varchar](50),
		@usuario [varchar](30),
		@contrasena [varchar](100),
		@estado [tinyint],
		@idRol [tinyint]
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		UPDATE dbo.tblUsuario
		SET  correoElectronico = @correoElectronico, usuario = @usuario, contrasena = @contrasena, estado = @estado, idRol = @idRol
		WHERE (idUsuario = @idUsuario OR @idUsuario IS NULL)
	COMMIT
GO
IF OBJECT_ID('crud_tblUsuarioDelete') IS NOT NULL
BEGIN
	DROP PROCEDURE dbo.crud_tblUsuarioDelete
END
GO
CREATE PROCEDURE dbo.crud_tblUsuarioDelete
		@idUsuario [int]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		DELETE FROM dbo.tblUsuario
		WHERE (idUsuario = @idUsuario OR @idUsuario IS NULL)
	COMMIT
GO
