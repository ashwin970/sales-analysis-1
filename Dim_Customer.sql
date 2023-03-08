/****** Cleaning Dim Customer  ******/
SELECT 
  c.CustomerKey as CustomerKey, 
  --[GeographyKey]
  --[CustomerAlternateKey]
  --[Title]
  c.FirstName as [First Name], 
  --[MiddleName]
  c.LastName as [Last Name], 
  c.FirstName + '' + c.LastName as [Full Name], 
  --[NameStyle]
  --[BirthDate]
  --[MaritalStatus]
  --[Suffix]
  CASE c.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'FEMALE' END AS Gender --[EmailAddress]
  --[YearlyIncome]
  --,[TotalChildren]
  --,[NumberChildrenAtHome]
  --,[EnglishEducation]
  --,[SpanishEducation]
  --,[FrenchEducation]
  --,[EnglishOccupation]
  --,[SpanishOccupation]
  --,[FrenchOccupation]
  --,[HouseOwnerFlag]
  --,[NumberCarsOwned]
  --,[AddressLine1]
  --,[AddressLine2]
  --,[Phone]
  , 
  c.DateFirstPurchase as DateFirstPurchase, 
  g.City as [Customer City] --,[CommuteDistance]
FROM 
  dbo.DimCustomer AS c 
  LEFT JOIN dbo.DimGeography as g ON g.GeographyKey = c.GeographyKey 
ORDER BY 
  CustomerKey ASC
