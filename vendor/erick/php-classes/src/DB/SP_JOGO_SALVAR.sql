USE [erick]
GO
/****** Object:  StoredProcedure [dbo].[SP_JOGO_SALVAR]    Script Date: 07/17/2018 10:21:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[SP_JOGO_SALVAR] (
	-- Add the parameters for the stored procedure here
	@jogo_id int = 0,
	@jogo_nome VARCHAR(100),
	@pla_id int, 
	@jogo_publisher int, 
	@jogo_desenvolvedora int, 
	@pro_id int, 
	@jogo_capa VARCHAR(100) = '',
	@jogo_dt VARCHAR(11) = null
	)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	PRINT @jogo_dt
	IF @jogo_dt IS NOT NULL AND @jogo_dt <> ''
		SELECT @jogo_dt = CONVERT(DATETIME,@jogo_dt,103)
	ELSE 
		SELECT @jogo_dt = null

	PRINT @jogo_dt
    IF @jogo_id <> 0
		BEGIN
			UPDATE jogos
			SET jogo_nome = @jogo_nome,
				pla_id = @pla_id,
				jogo_publisher = @jogo_publisher,
				jogo_desenvolvedora = @jogo_desenvolvedora,
				pro_id = @pro_id,
				jogo_capa = @jogo_capa,
				jogo_dt = @jogo_dt
			WHERE jogo_id = @jogo_id
		END
	
	ELSE
		BEGIN
			INSERT INTO jogos(jogo_nome,pla_id,jogo_publisher,jogo_desenvolvedora,pro_id,jogo_capa,jogo_dt)
			VALUES(@jogo_nome,@pla_id,@jogo_publisher,@jogo_desenvolvedora,@pro_id,@jogo_capa,@jogo_dt)	
			
			SELECT @jogo_id = SCOPE_IDENTITY()		
		END
		
	SELECT * FROM jogos WHERE jogo_id = @jogo_id
END
