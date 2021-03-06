USE [erick]
GO
/****** Object:  StoredProcedure [dbo].[SP_EMPRESA_SALVAR]    Script Date: 06/27/2018 07:04:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[SP_EMPRESA_SALVAR] (
	-- Add the parameters for the stored procedure here
	@emp_id int = 0,
	@emp_nome VARCHAR(100),	 
	@emp_logo VARCHAR(100) = ''	
	)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    IF @emp_id <> 0
		BEGIN
			UPDATE EMPRESA
			SET emp_nome = @emp_nome,
				emp_logo = @emp_logo
			WHERE emp_id = @emp_id
		END
	
	ELSE
		BEGIN
			INSERT INTO EMPRESA(emp_nome,emp_logo)
			VALUES(@emp_nome,@emp_logo)	
			
			SELECT @emp_id = SCOPE_IDENTITY()		
		END
		
	SELECT * FROM EMPRESA WHERE emp_id = @emp_id
END
