USE [erick]
GO
/****** Object:  StoredProcedure [dbo].[SP_PLATAFORMA_SALVAR]    Script Date: 06/27/2018 07:07:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[SP_PLATAFORMA_SALVAR] (
	-- Add the parameters for the stored procedure here
	@pla_id int = 0,
	@pla_nome VARCHAR(100),	 
	@pla_logo VARCHAR(100) = ''	
	)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    IF @pla_id <> 0
		BEGIN
			UPDATE PLATAFORMA
			SET pla_nome = @pla_nome,
				pla_logo = @pla_logo
			WHERE pla_id = @pla_id
		END
	
	ELSE
		BEGIN
			INSERT INTO PLATAFORMA(PLA_NOME,PLA_logo)
			VALUES(@pla_nome,@pla_logo)	
			
			SELECT @pla_id = SCOPE_IDENTITY()		
		END
		
	SELECT * FROM PLATAFORMA WHERE pla_id = @pla_id
END
