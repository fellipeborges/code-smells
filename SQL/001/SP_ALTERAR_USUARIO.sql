/*
	Receba o ID de um usuário e atualize suas informações conforme os demais parâmetros.
	O campo "DataUltimaAtualizacao" deve ser preenchido com a data/hora atuais.
*/

ALTER PROC [dbo].[SP_ALTERAR_USUARIO]
    @Id				BIGINT,
	@Nome			VARCHAR(100),
	@Email			VARCHAR(100),
	@DataNascimento	DATE
AS
BEGIN
	IF (EXISTS(SELECT * FROM Usuario WHERE Id = @Id))
	BEGIN
		UPDATE Usuario SET
			Nome = @Nome,
			Email = @Email,
			DataNascimento = @DataNascimento,
			DataUltimaAtualizacao = GETDATE()
		WHERE @Id = @Id
	END
END