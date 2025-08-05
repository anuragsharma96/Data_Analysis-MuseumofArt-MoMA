use MoMA_dataset;
select * from dbo.artistrelations;
/*taking liberty to change to maintain consistency of data. For example the Column 0 represents ConstituentID*/
EXEC sp_rename N'dbo.artistRelations.Column 0',N'ConstituentId',N'Column';
alter Table dbo.artistRelations Drop Column toArtistName;
EXEC sp_rename N'dbo.artistRelations.fromArtistid',N'toArtistId',N'Column';
/*Changing dataypes of columns*/
Alter TAble dbo.artistRelations Alter Column Constituentid Int;
Alter TAble dbo.artistRelations Alter Column toArtistid Int;