SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [SalesLT].[TestProc]
	@AddressID INT
AS
BEGIN
	DECLARE @Continent NVARCHAR(30);
	SET @Continent = [SalesLT].GetAddressContinent(@AddressID);

	SELECT @Continent AS [Continent]
END
GO
