/*
	Receba o ID de um usuário e atualize suas informações conforme os demais parâmetros.
	O campo "DataUltimaAtualizacao" deve ser preenchido com a data/hora atuais.
	Não é necessário verificar se o usuário existe antes de fazer o UPDATE.
*/

ALTER PROC [dbo].[SP_ALTERAR_USUARIO]
    @Id				BIGINT,
	@Nome			VARCHAR(100),
	@Email			VARCHAR(100),
	@DataNascimento	DATE
AS
BEGIN
	
	UPDATE Usuario SET
		Nome = @Nome,
		Email = @Email,
		DataNascimento = @DataNascimento,
		DataUltimaAtualizacao = GETDATE()
	WHERE @Id = @Id
END