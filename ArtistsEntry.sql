use MoMA_dataset;
select * from dbo.artists order by EndDate;
/*dropping column 0 since it serves no significant purpose to the dataset*/
Alter Table dbo.artists drop Column "Column 0";
/*Changing datatype of columns to maintain consistency */
Alter table dbo.artists alter column Constituentid int;
Alter table dbo.artists alter column BeginDate int;
Alter table dbo.artists alter column EndDate int;
/*Updating unassigned gender*/
Update dbo.artists Set Gender='Male' where ConstituentId=42909;
/*Selecting entries where Year of Death or year of Birth is missing*/
select * from dbo.artists where BeginDate=0 or enddate=0 order by begindate;
/*Adding entries for missing years of birth and years of death*/
Update dbo.ARTISTS sET bEGINDATE=1939 WHERE cONSTITUENTid=134233;
uPDATE dbo.artists set Enddate=case ConstituentID
/*0 means that the Artist is azlive as of August 5 2025*/
when 3049 then 2003
when 5481 then 2020
when 281 then 2025
when 3576 then 2013
when 2627 then 2005
when 797 then 2016
when 37083 then 2023
when 5094 then 2000
when 3858 then 2018
when 107 then 0
when 6618 then 2023
when 22630 then 2023
WHEN 1025 THEN 2017
WHEN 2923 THEN 0
WHEN 3669 THEN 0
WHEN 670 THEN 2022
WHEN 4929 THEN 0
WHEN 36471 THEN 0
WHEN 1172 THEN 0
WHEN 3030 THEN 0
WHEN 2631 THEN 0
WHEN 5178 THEN 0
WHEN 1547 THEN 0
WHEN 352 THEN 0
WHEN 2429 THEN 0
WHEN 5640 THEN 2024
WHEN 6502 THEN 0
WHEN 5086 THEN 0
WHEN 2931 THEN 0
WHEN 3859 THEN 0
WHEN 688 THEN 2024
WHEN 934 THEN 0
WHEN 2373 THEN 0
WHEN 2375 THEN 2022
WHEN 366 THEN 0
WHEN 3724 THEN 0
WHEN 3758 THEN 2023
WHEN 3354 THEN 2021
WHEN 4894 THEN 0
WHEN 6220 THEN 0
WHEN 134233 THEN 2007
WHEN 49368 THEN 0
WHEN 2933 THEN 0
WHEN 1533 THEN 0
WHEN 4243 THEN 0
WHEN 5983 THEN 0
WHEN 2486 THEN 0
WHEN 1600 THEN 0
WHEN 1175 THEN 0
WHEN 1133 THEN 0
WHEN 3591 THEN 0
WHEN 32825 THEN 0
when 5485 then 0
WHEN 49373 THEN 0
End
where ConstituentID in (3049,5481,3576,2627,797,37083,5094,3858,107,6618,22630,281,1025,2923,3669,670,4929,36471,1172,3030,2631,5178,1547,352,
2429,5640,6502,5086,2931,3859,688,934,2373,2375,366,3724,3758,3354,5485,4894,6220,134233,49368,2933,1533,4243,5983,2486,1600,1175,1133,3591,
32825,49373);
