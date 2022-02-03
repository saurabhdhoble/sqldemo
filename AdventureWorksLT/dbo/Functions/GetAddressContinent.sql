CREATE FUNCTION [SalesLT].[GetAddressContinent]
(
	@AddressID INT
)
RETURNS NVARCHAR(30)
AS
BEGIN
	RETURN (SELECT TOP 1 [ContinentName] FROM [SalesLT].[Address] WHERE [AddressID] = @AddressID);
END