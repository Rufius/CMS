/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.Kooboo_CMS_Sites_Labels ADD
	UUID nvarchar(128) NULL,
	UtcCreationDate datetime NULL,
	UtcLastestModificationDate datetime NULL,
	LastestEditor nvarchar(128) NULL
GO
ALTER TABLE dbo.Kooboo_CMS_Sites_Labels SET (LOCK_ESCALATION = TABLE)
GO


UPDATE Kooboo_CMS_Sites_Labels SET  UUID = newid() WHERE UUID is null

INSERT INTO [__MigrationHistory]
           ([MigrationId]
           ,[ContextKey]
           ,[Model]
           ,[ProductVersion])
     VALUES
           (CONVERT(varchar(100), GETDATE(), 112) + '99999999_4.3_4.4'
           ,'Kooboo.CMS.Sites.Persistence.EntityFramework.SiteDBContext'
           ,CONVERT(varbinary(max),'1F8B0800000000000400ED5DCD72DB3610BE77A6EFA0E1A93DC4B49D1E928C9C8C2DD9AD2771EC31ED4C6F198884643624A01290C77AB61EFA487D8582147F4000244091922C9B37115C7CBBC07EC4EF02FAEF9F7F879F9EC260F00823E26374621D1D1C5A03885CECF96876622DE8F4CD3BEBD3C79F7F1A9E7BE1D3E05B26F7369663391139B11E289D7FB06DE23EC0109083D077234CF0941EB838B48187EDE3C3C3F7F6D1910D1984C5B00683E1ED02513F84C9037B1C61E4C2395D80E00A7B3020693A7BE324A883AF2084640E5C78628D98C4851F119AA75983D3C007CC120706536B0010C2145066E7877B021D1A613473E62C010477CB39647253101098DAFFA110372DCAE1715C14BBC8B856555879215931CF5975D0656C5E52D413EB06CCE02A919763929FE1B294C0926E223C87115DDEC2699ADBF1298C7F59035B2F7CB1080295F0D01675E5992535B1E5EC99468C36D6E00A3C7D8168461F18A18EDF59830BFF097A594A5AF9F7C8672C639968B4608F5F99116012C0FCBD5DABB9B079DB9A6F4004118DDDD381EE7A5597640CA76011D04CD319C60104A8B1CDD793BFA04BFF0C831A93D9CFC6260FED82B75A368F2330A53DA57B4ABF0C4AFF41C3E02CC0EE8F2D517ADFE8BC1BAD67D85BEE8A112340E10C47CB2D112253B76FC428DBBD59EDC6BEFB022630D8E1975CEBE17DF2AE4EEBE1F16F9B24D5F60BFC0D048BBA12AFD3E4C85AEEEF2FC71BEF9CEFA93B8A6032A319B3FACCF4C5BFEF7C45232367FF02088584B2499C3FF5DDB591529873CFA738EAB8D8C64D42FC0DB1F963B4A5562156B56F4D7961F3B635EF7CF81757FAFACC587F7EB2EB594247BA9FB977EFA3E0167A7EC4AC58DFC9AB36DBE0D3AF6A27F46CE8A85B68C884DD35385D12A39B81E36841280ECFA308B7E8287AA6BC02A69C9EDD2E02E8404A991DEB73E5D26BEEFC38CFAA162E117D7BAC2811B766EEB03117FC1D2218B1D19A77032885118A31E0CAE6ED8C547747B4FDE355BC72D79A577D1BF42ADAA0982B776C6E750BC922E807373D5DEAE912D746DFB4F45CA9E0CA08230A7C3654C846C3D9DE7CFE42E0CB2A1B6394B8CDED43620D0A55ABBDFC036E175CAC101552B1C5580DC76F43EA30CB7B3C6A4C711F488759DA2550430A1B093AC462ED5A0DC7AF6DEBB04A8B5E6A38615DCC0451836688244ECAD580F2D45DEB11610A57E11469A2A7C39507FC6A64D5C4408F2D0EFAAAB0E5C1A119B63048A88397C6137A0D62BF52052FF73FCAD6296F6EF277437B153994260CED8A10A3E11598CF193A177294A60C9C34DEE88DD33CBE275C61D82E5184F9E4D6E69AD8942B6FE9F2B75C733A06144C40DC368FBCB05A4CDBEA660A158DAFD83B17CEC832C5BF85663E7E4C42B00EAAE295F81ABD60850CD92C32292FCC8DAA0E764AB33B2E084054D9F78E70B008916EC9BD1AA95852E591AA9668EB90F8400A1E8B4F3747E3622578302ED91C8B1B2FF0585CB28C35B405BF8914B1258E08A3369177C6AC2C77E41D50B332F8280134E1672D424FD25746527964D892A4B5E14409A08EA45A84CD935446698AB08ADFE1115629CFC6F1D2F0BDA5DFEB82868CDCAE03D8BCD7CB013D3C5A5D88D20E7D589E30B5746065E49091F76A73EFC3075B04DEA81CDF04290DA4E161D224738CD532100FA15E7BAA411063604A60E2CB46B895C131828A4A39736D42000DAF4078F56C3E4A69E5A1E5775917BE93E0E93E4D1DC0E6BFCE22BCA6C4908A40A13AA43D1A5995D68B3AE0402BFF37F57DD7A374198B4F7F91FE57ADF2B5A481269AC7880D06189BEB94BA6B52F68808AA65D9B683EDFA601D23221860F444E89408EA75F49654D046E31891C108A572E9C413D64CA4C89E9E4C1B20936AE3A4359934213886643240E9E9B0013A28F6BA3A61447DA04D0352E8817A5E74CC0BD50E656B5268C2690C196180D2D3610D3A48BBC9A248AE3D4DC99FF3DDE47427B7C12D16D9D6EE4AC41AB04A7AF4BD785BD759120AC38358E0C0F93B18053E2B6F217005903F65EDC21DFE01D189757C78742C5C84B1C6A51436215EF0026FA6408F20721F4024C766B53CA5DF19B07C08DF047AAD33F7139FB60F38CBACFB25044FBFD69BF40AAE89E8F9B50FFCDACF3B1B3AA3C04640F91B1736E1B3BDBE55A1B35A565D9AB026787F27C2D63FABE4D28396371A74666EE9C282065FAC8CC407DD77D59954DC41E0B1DF34B939A0319CE64E827591957714AC570B2FFF4A82CEC82BDE38D019F056C61FCFE5D2808E07954DA1D73A67B9097FECE331FFCE7CB7B16FD4DC75AFEDE07DEFBB6C75F5191C85F7E3C534ED61F7A6FDD373F176B76DECEB3B9FDE7FAABCF7F6F0C478EFC0AA9DACDE7BCFDC7B95A7AAF3638065CBF22D2D7987A6FE48F56ACF89CD812798956265ED678C27187F1F5D39DFE3BA23DFE30C447BA4533A5AAD545C9230D69EE4D29B209DC4964C90248C4CC873E94D104F6E4B1688024606240B71694EDFC017A503DF9209A5B7E6FAF56AC583E1926651C0487996C94C7FADEEC67AF53A15A7CD25D50A19230BB87C06CC938FA7CBE493658C0CE1F2E90D519E66974C514A191953CA69628EE200BCC21C8594A1395C4E5373E403F31516C9820D8C2A329BD8A53869AF304A216568119793A83B438343FC7278C5D0E6FF4A643886C49F1510F11F8B20F6FDF81815A099CC259AE2AC536796F1166522429F7F0529F0581F7C1A517F0A5CCA5EBB9090E4E2956459FDC43A0F27D0BB44D70B3A5FD053426038094A9B1543BB5E7F725341D9E6E1F53C7E225D148199E9C74BDED7E86CE1075E6EF78562905201110F47D22933B3CAA1F1D479B6CC91BE6264089456DF18CE218A27DC77309C070C8C5C23073CC26ADBF47558AEB1E1D807B3088424C528F2B347463F2F7CFAF83F5B311F040C670000',2)
           ,'6.0.0-rc1-20726')
		   
		  /****** Object:  Table [dbo].[Kooboo_CMS_Sites_Labels]    Script Date: 2014/3/3 18:11:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Kooboo_CMS_Sites_Labels_TEMP](
	[SiteName] [nvarchar](128) NOT NULL,
	[UUID] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](1024) NOT NULL,
	[Category] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
	[UtcCreationDate] [datetime] NULL,
	[UtcLastestModificationDate] [datetime] NULL,
	[LastestEditor] [nvarchar](128) NULL,
 CONSTRAINT [PK_dbo.Kooboo_CMS_Sites_Labels_SiteName_UUID] PRIMARY KEY CLUSTERED 
(
	[UUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

INSERT INTO [dbo].[Kooboo_CMS_Sites_Labels_TEMP]
           ([SiteName]
           ,[UUID]
           ,[Name]
           ,[Category]
           ,[Value]
           ,[UtcCreationDate]
           ,[UtcLastestModificationDate]
           ,[LastestEditor])
SELECT [SiteName]
           ,NEWID()
           ,[Name]
           ,[Category]
           ,[Value]
           ,[UtcCreationDate]
           ,[UtcLastestModificationDate]
           ,[LastestEditor]
FROM [dbo].[Kooboo_CMS_Sites_Labels]

exec sp_rename 'Kooboo_CMS_Sites_Labels', 'Kooboo_CMS_Sites_Labels_old_4.3'

exec sp_rename 'Kooboo_CMS_Sites_Labels_TEMP', 'Kooboo_CMS_Sites_Labels' 
		   
		   INSERT INTO [__MigrationHistory]
           ([MigrationId]
           ,[ContextKey]
           ,[Model]
           ,[ProductVersion])
     VALUES
           (CONVERT(varchar(100), GETDATE(), 112) + '99999999_4.3_4.4_change_label_PK'
           ,'Kooboo.CMS.Sites.Persistence.EntityFramework.SiteDBContext'
           ,CONVERT(varbinary(max),'1F8B0800000000000400ED5DCB72DB3614DD77A6FFA0E1AA5D44B49D2E928C9C8C2DD9AD2771EC31ED4C77198884643624A11290C7FAB62EFA49FD8582141F200012E043B269732782C0B917B88778DE0BFDF7CFBF934F8FBE377A80217651706C1C8E0F8C110C6CE4B8C1F2D85893C59B77C6A78F3FFF343973FCC7D1B734DFDB281F2D19E063E39E90D507D3C4F63DF4011EFBAE1D228C16646C23DF040E328F0E0EDE9B878726A41006C51A8D2637EB80B83E8C1FE8E31405365C9135F02E91033D9CA4D337568C3AFA0A7C8857C086C7C694E63877434CB2346374E2B9806A62416F618C4010200208D5F3C31D86160951B0B456340178B79B15A4F916C0C330D1FF439E5DB72A07475155CCBC60A3A630B24AD26A9ED1E6209B48BDB8AAC7C63558C26D229B8FE6FC0C3785049A741DA2150CC9E6062E92D2964B60F4CB1899EACCE76BCF93659E98BCACACB02026D29C3E9390D2C6185D82C72F3058927B4AA8A377C6E8DC7D844E9A9234FE5DE05296D142245CD3C7AF540930F760F6DEAC949CEBBC6FC9D720840189CCD381EC6A511778061760ED9154D229421E04416D9DAFE67F419BFCE97B152AD39FB5559E98396F956C9E856041064A0F947E1994FE83F8DEA987EC1F7BA274DFE8FC34524F91B3792A464C01814B146EF64488545CDF8851D47BB7D2B56DF705CCA1D7DC70777717B3FA36D896DA77FB6B58BEC96752BF073838FAAD0329299D765E9D6FC05BEFBED1EE883D0D61BCAA98D19AA5F2A2DFB7AEE443178B7F0198404CE842CA5DB87663A404E6CC71090A3B9E17687F961157E91A2EDC53971A89EA5B779AEBBC6FC94F3E058B1ABD39339AAF119E7AA6DE91EC676EDDBBD0BB818E1B522DBA1D986BF5133D1EC57BF0D97733799BAE3141FE5918A21603C5C09457C09493D39BB5072D4808D5A339572E9CFAC68FCA6C5BE122206F8F243562F6AD2D3AE782BFC3008674B6E65C03426018441870ABB36A4ED077A2F58F57D1EE596B5E0D7DD0ABE88322AEDCD2B5D50DC46B6F98DC0C74A9A64BD41A43D73270A5842B531410E0D2A9423A1B4ECFC7B3171C5FB6C528A3F8A366176263948BDA9EA78F999368BE416448F9315F391C7B14A8C22C9EB3C831F9B318156661A75E0EC96DE6AB10F3FD63391CBBBFACC22A6C7AC9E1B87D311D44059A2612BF2897038A4B77A545B8255C895184859E0A579CF0CB91650B0335363FE92BC31627877AD8DC24A10A5E984FA825F0E34A19BC38FE487BA7ACBBC9DE4DCCADF74E9230314BDC7C269760B5A2E88CDB4F9232B2129F9F37567D1F1B7F8B61DA58E26A93699B49A24BAEACA7CBDE32DDE90C10300751DF3C75FCF26CCA5E371528E97CF9D13937465A28FACD75F3D163EC06352EF319625BF49C56D2A7ABC8B8BE3053AADCE128296ED9C00361E9D83B45DEDA0F545BEEE548F9962A8B54B6455B85C43A33B0586CBA3E1AE3AFC08231C9FA58CC7C81C5629245AC89C9D98DA7882970849BB5F1BCD366657120EF809AA50E4031A00E3F2B110692BE32928A33C39624AD74E9890155245522EC9EA4224A5D84AD0F0D8BB04D79368617A6EF2DED5EE5B8A3657615C0EEAD5E74AA61D1AADC849ED086C505534B03967AEF6859AFB27459836F373BD88696EFB0ECC3F8ED3FF9DC8946469D3A4889970C0B9324E963083E308566E65FD6C22D758EE14494E6D397C639D0B002B857CFE6A314761E5A7E9755EE3B319EEAD35401ECFEDBCADD6B0A0C297114AA42EAD1CCAAB05FD401075AD9BFAEEDBB9EA58B586CFA8BB4BF6C97AF250D14DE3C5A6CD0C0E8C370DD2322C8B665DB4EB6AB9D75B488A0813110A15322C8F7D15B5241E98DA345062D94D2AD1387DB33113C7B0632ED804CB28393D66452B8E06892490365A0C30EE82039EBEA8411D58E363548A1061A78D1312F642794AD49A170A7D1648406CA40870674104E93F92C99F424257BCE4E939393DC1A3749A447BBDB2CC68836D283EB44C7BAD60613E88FA30C63EB6F6FEAB9B4BE79864B10B80BDA2FDCA21F3038368E0E0E8FB8CB281A5C0C6162EC782FF07688E00184F63D0845DFAC9691F29D018B81F03AD08DE2DEE72E69EF70966AF78B0F1E7FAD56E9155CD530F0AB0FFCEAE7BD099D516027A0ECAD07BBB059AF6F36E8AC9565171734047FDEF71294B5A006A59A103EBE07A01E281FF4DF4A43D66FBD33B2146E0B68A79EFC460087FE26711C7F6D38C50D014D91A53706341BE05EFE05019D118D8FFFEF0C782FB381E712C2DFF114AF2E74A3A8C75DD8A38F41F79DD96E67DFA8BEE95E5B18FC60BB74AFF31904A6BBD1D69632F4BCEEF8F45CACDD6D1FFBFAA2C5874FB5E2B86A30609F0CD8C788EA576DBDD218E72C28AFA85976C0249E975407386F4F80E81A788E682DB6DA7E46688ED0F7E9A5F53D6A3BFC3D2A8095019642A0B354702187B6F4B8945A05212E5A5041C8A1A542564AAD021F472D68C067D05220DE164B4ABA1AB628845F0B2A14DEEACB578BE5C3B405C97C062DE169213DF995B26BCB55CB94C47E0BA22579B43460CA69304F0C1617C927E6D1528429A756441A5B2EA822CDA5A54CA1A48E3A927074893A925C9AEA302575D511C3D74B341233D6502A2FACA39724EE5DA2942497A6464C492C1F0C3542EA45678789C9FEB9C66406B1BBCC21A2BFDA08E8F7E3A220074DF35C040B940EEA543356A3340B37E65F42021C3A069F84C45D009BD0D736C438BE0625DE023F36CEFC39742E82AB3559ADC909C6D09F7B8590A289592D3FBE37A0A8F3E46A153DE12EAA40D574A32DEFABE074ED7A4EA6F7B964925202114D47922533D5CA22D1D279B9C990BEA240132869BE195CC1205A70DF427FE551307C1558E00196EBA66EC3628B4D662E5886C0C709465E9E3E52FA39FEE3C7FF014B23FEFB1E660000',2)
           ,'6.0.0-rc1-20726')
COMMIT


/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.Kooboo_CMS_Sites_Labels
  DROP CONSTRAINT [PK_dbo.Kooboo_CMS_Sites_Labels_SiteName_UUID]
GO
ALTER TABLE dbo.Kooboo_CMS_Sites_Labels ADD CONSTRAINT
  [PK_dbo.Kooboo_CMS_Sites_Labels_SiteName_UUID] PRIMARY KEY CLUSTERED 
  (
  SiteName,
  UUID
  ) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.Kooboo_CMS_Sites_Labels SET (LOCK_ESCALATION = TABLE)
GO

COMMIT

       INSERT INTO [__MigrationHistory]
           ([MigrationId]
           ,[ContextKey]
           ,[Model]
           ,[ProductVersion])
     VALUES
           (CONVERT(varchar(100), GETDATE(), 112) + '99999999_4.3_4.4_change_label_PK_SiteName_UUID'
           ,'Kooboo.CMS.Sites.Persistence.EntityFramework.SiteDBContext'
           ,CONVERT(varbinary(max),'1F8B0800000000000400ED5DCD72DB3610BE77A6EFA0E1A93DC4B49D1E928C9C8C2DD9AD2771EC31ED4C6F198884643624A01290C77AB61EFA487D8582147F400024409192259B371104BE5D623FFCEF42FFFDF3EFF0D353180C1E61447C8C4EACA383436B00918B3D1FCD4EAC059DBE79677DFAF8F34FC3732F7C1A7CCBF2BD8DF3B192889C580F94CE3FD836711F6008C841E8BB1126784A0F5C1CDAC0C3F6F1E1E17BFBE8C8860CC2625883C1F07681A81FC2E4813D8E3072E19C2E4070853D1890349DBD7112D4C157104232072E3CB1462CC7851F119AA75983D3C0074C130706536B0010C21450A6E7877B021D1A613473E62C010477CB3964F9A6202030D5FF4391DDF4530E8FE34FB18B826B5585957F24FBCC73561D7419AB977CEA897503667095C8E763393FC365298125DD44780E23BABC85D3B4B4E35318FFB206B63EF3C52208549987B6282B2F2C89893567CF3462B4B10657E0E90B4433FAC00875FCCE1A5CF84FD0CB52D2CABF473E63192B44A3057BFCCA94009300E6EFED5AC985CEDB967C032288686C9E0E64D78BBA246338058B806692CE300E20408D75BE9EFC055DFA6718D4A8CC7E3656796817BCD5B2791C8129ED29DD53FA6550FA0F1A066701767F6C89D2FB46E7E7917A86BDE573316204289CE168B9254264E2F68D1865BD372BDDD8765FC004065B32DCFDFDE5789F0CB6D277D7FA8FC3E3DF3A188F323276DC67C882BE816051F73DDD48B9A7EE2882C99A64CCBE2C9317FFBEF315DD845CFC0B201412CA9661FED477D7464A61CE3D9FE2A8E3598571A38E9B0C5B0146DB6AD74CD4BE75C685CEDB96FCEC13B8B8D2D767C6FA2B8CE79EE777247BC7AD7B1F05B7D0F323A6C5FA46568DD48DFA093D1B9E67707DBE0EA74B627433F51B2D08C5E17914E1160345CF9457C094D3B3DB45001D4829D3637DAE5C7ACD8D1F9759D5C225A26F8F155FC4ED7A3B6CCE057F8708466CB6E6DD004A6184620CB8D27927E7FB1D126DFF7815EFBDB5E655DF07BD8A3E28E6CA1D5B5BDD42B208FAC94D4F977ABAC4B5D1772D3D572AB832C288029F4D15B2D97076BA9EBF10F8B22AC618251E54FB90588342D4EA34FE803BC7162B4485541C1256C3F107893ACCF2298D1A533CC9D16196F6F9D590C251800EB1D87D56C3F1BBD33AACD2A6971A4ED8173341D4A01922898B7235A0BC74D75A4458C25518455AE8E970E509BF1A59B530D0638B93BE2A6C797268862D4C12EAE0A5F9845E8238AE54C1CBE38FB277CABB9BFCDDD05EF9FEA40943BBC249687805E67386CE390DA5290327F5187AE334F7D0095718B64B148E3AB9B6B924B6E4CA7BBAFC2DD79D8E01051310F7CD232FACCEA6ED7533818ACE571C9D0B636485E2DF42371F3F264E5407551E477C8D5EB08F0CD92A32F95E982B55EDAE9416775C1080A872EC1DE1601122DD967B3552B1A5CA23556DD1D621F1AE103C169F6E8EC6793BF0605CB23916375FE0B1B864196B680B761329624B1C11666D22EF8C59591EC83BA066A5FB500268C2CF5A849EA4AF8CA4F2CCB025496B1D8212401D49B5089B27A98CD21461E581C323AC5276C6F0D2F4BDA5DDEBDC7E8CCCAE03D8BCD5CB2E393C5A9D93D133DAB0BC606A69C04ADF1F23EBD596DEBCE956DB263C8A7AAFA61AA17D932F9C6854D46982947AC9F0306952831A117D604A9523BE6C845BE91C2388A8CC672E4D70A0E10508AF76A6514A3B0F2DDB659DFB4E82A76B9A3A802DB4CEDCBDA6C4900A47A13AA43D9A5995F68B3AE0402BFB37B57DD7B374198B4F7F91F657EDF2B5A481C69BC7880D06189B1B64BBEB52F68808AA6DD9B693ED7A671D23221860F444E89408EA7DF49654D07AE31891C108A572EBC413F64C24CF9E9E4C1B2093EAE0A43599342E3886643240E9E9B0013A28CEBA3A6144BDA34D0352E8817A5E74CC0BD509656B5268DC690C196180D2D3610D3A48A7C962965C7A9A923FE7A7C9E9496E837B28B2A3DD55166BC02AE9D1F7E2635D6749280C0FE20C07CEDFC128F0D9F71619AE00F2A7AC5FB8C33F203AB18E0F8F8E85AB2CD6B856C226C40B5EE0DD12E81144EE038864DFAC9671F69D01CB61F426D06B45CD4F7CDADEE12CD3EE97103CFD5AAFD22BB8E8A1E7D73EF06B3F6F5DE88C021B01E5EF4CD884CDF6FA5E84CE6A5975EDC19AE02FF85683CEAA9B7727DF62F34B6E2568D6F98A57103468823258E99A81564815570978EC374D2E00680CA7B95A605D64E55503EB8D8C2FFF6681EEDA9770714067C05B9946EC4AEC7FC773C3A6D06B854B6EC21EFB18ADDF99ED36D646CD4DF7DAE2E77BDB659BA43B10D1EEC77B62DA98F55D98FFAD63ED6EFBD8D71766DE3755DE7A7B18F8DD1BB0EA40AAB7DE8E5BAF32383A8FE62B6B969F4CC9072DF591D1ABA323B6069E60F6152B6D3F633CC1F8FBE8CAF91ED71DF91E1720DAC84C29425A29B894C3587A524AAF8214502DA920E53052212FA557410CC096341033182990ECA7A5257D035B94E2B625154A6FCDE5EBC58AF1DD9264318391F0AC9099FC5AD98DE5EA652A82C625D18A3C461A70E50C98274799CBE493F31829C295D32BA20C4A975451E63252A654D2441D451CBB421D452E4375B892A6EAC871EF151AC9191B28551436D14B1130AF504A91CB5023AE24510F8606B1F8B297C4D0E6FFD3633886C49F1510F13F7C20D67E7C8C0AD02CCF259AE26C50679AF11A65598431FF0A52E0B131F834A2FE14B894BD762121C9FD29C916F889751E4EA07789AE1774BEA0A784C070129462918676BDFCE4C281B2CEC3EB79FC44BAF804A6A61F6F795FA3B3851F78B9DE178A494A05443C1D4997CC4C2B87C64BE7D93247FA8A9121505A7D633887285E70DFC1701E3030728D1CF008AB75D3D761B9C686631FCC22109214A328CF1E19FDBCF0E9E3FFD53242E695660000',2)
           ,'6.0.0-rc1-20726')


