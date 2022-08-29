CREATE DATABASE [MARVEL];
GO
USE [MARVEL];

/**** Consuming api *****/

/* 

API USED IN THE PROCESS 
LICENSE: MARVEL - developer.marvel.com

*/


/* BEFORE YOU NEED CONFIGURE YOUR ADVANCED OPTIONS */

--exec sp_configure 'show advanced options', 1
--go
--reconfigure
--go
--exec sp_configure 'Ole Automation Procedures', 1 -- Enable
---- exec sp_configure 'Ole Automation Procedures', 0 -- Disable
--go
--reconfigure
--go
--exec sp_configure 'show advanced options', 0
--go
--reconfigure
--go


declare 
	@ts varchar(20) = replace(replace(replace(convert(varchar(20),getdate(),20), '-', ''), ':', ''), ' ', ''),
	@apikey_public varchar(200) = 'e7b13e008c1895e7e5c0d01e1839bbe4',
	@apikey_secret varchar(200) = 'de588c3a427ed8591c7baad4e2dcaf04e1aea2fe',
	@md5 varchar(200),
	@restapi varchar(1024)
	declare @temp table ([text] varchar(max))
	declare @Object Int;
	declare @ResponseText varchar(max);

	SET TEXTSIZE 2147483647



	select @md5 = lower(CONVERT(VARCHAR(32), hashbytes('MD5', @ts+@apikey_secret+@apikey_public), 2))

	set @restapi = 'http://gateway.marvel.com/v1/public/comics?ts='+@ts+'&apikey='+@apikey_public+'&hash='+@md5+'&limit=1'
	select @restapi
		Exec sp_OACreate 'MSXML2.ServerXMLHttp', @Object OUT;
		Exec sp_OAMethod @Object, 'open', NULL, 'get',
						 @restapi, --Your Web Service Url (invoked)
						 'false'
		Exec sp_OAMethod @Object, 'send'

		insert into @temp
		exec sp_OAGetProperty @Object, 'responseText'

		select * from @temp  a
		cross apply openjson(text) with(code varchar(8000)) b


