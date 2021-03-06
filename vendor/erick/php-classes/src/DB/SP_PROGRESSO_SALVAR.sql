USE [erick]
GO
/****** Object:  StoredProcedure [dbo].[SP_PROGRESSO_SALVAR]    Script Date: 06/27/2018 07:07:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[SP_PROGRESSO_SALVAR] (
	-- Add the parameters for the stored procedure here
	@pro_id int = 0,
	@pro_nome VARCHAR(100),	 
	@pro_logo VARCHAR(100) = ''	
	)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    IF @pro_id <> 0
		BEGIN
			UPDATE PROGRESSO
			SET pro_nome = @pro_nome,
				pro_logo = @pro_logo
			WHERE pro_id = @pro_id
		END
	
	ELSE
		BEGIN
			INSERT INTO PROGRESSO(PRO_NOME,PRO_logo)
			VALUES(@pro_nome,@pro_logo)	
			
			SELECT @pro_id = SCOPE_IDENTITY()		
		END
		
	SELECT * FROM PROGRESSO WHERE pro_id = @pro_id
END
