CREATE FUNCTION [SalesLT].[GetAddressContinent]
(
	@AddressID INT
)
RETURNS NVARCHAR(200)
AS
BEGIN
	RETURN (SELECT TOP 1 [ContinentName] FROM [SalesLT].[Address] WHERE [AddressID] = @AddressID);
END
