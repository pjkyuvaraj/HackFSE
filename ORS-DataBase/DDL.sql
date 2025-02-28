USE [ReportingSystem]
GO
ALTER TABLE [dbo].[POC_Info] DROP CONSTRAINT [FK__POC_Info__Employ__6A30C649]
GO
ALTER TABLE [dbo].[POC_Credential] DROP CONSTRAINT [FK__POC_Crede__Emplo__693CA210]
GO
/****** Object:  Table [dbo].[Volunteer_Details]    Script Date: 4/29/2019 11:57:24 PM ******/
DROP TABLE [dbo].[Volunteer_Details]
GO
/****** Object:  Table [dbo].[User_details]    Script Date: 4/29/2019 11:57:24 PM ******/
DROP TABLE [dbo].[User_details]
GO
/****** Object:  Table [dbo].[POC_Info]    Script Date: 4/29/2019 11:57:24 PM ******/
DROP TABLE [dbo].[POC_Info]
GO
/****** Object:  Table [dbo].[POC_Credential]    Script Date: 4/29/2019 11:57:24 PM ******/
DROP TABLE [dbo].[POC_Credential]
GO
/****** Object:  Table [dbo].[OutReachEventInformation]    Script Date: 4/29/2019 11:57:24 PM ******/
DROP TABLE [dbo].[OutReachEventInformation]
GO
/****** Object:  Table [dbo].[MasterEvent]    Script Date: 4/29/2019 11:57:24 PM ******/
DROP TABLE [dbo].[MasterEvent]
GO
/****** Object:  Table [dbo].[MasterCountry]    Script Date: 4/29/2019 11:57:24 PM ******/
DROP TABLE [dbo].[MasterCountry]
GO
/****** Object:  Table [dbo].[MasterBeneficiary]    Script Date: 4/29/2019 11:57:24 PM ******/
DROP TABLE [dbo].[MasterBeneficiary]
GO
/****** Object:  Table [dbo].[MasterBaseLocation]    Script Date: 4/29/2019 11:57:24 PM ******/
DROP TABLE [dbo].[MasterBaseLocation]
GO
/****** Object:  Table [dbo].[Master_Questions]    Script Date: 4/29/2019 11:57:24 PM ******/
DROP TABLE [dbo].[Master_Questions]
GO
/****** Object:  Table [dbo].[Master_EmailContent]    Script Date: 4/29/2019 11:57:24 PM ******/
DROP TABLE [dbo].[Master_EmailContent]
GO
/****** Object:  Table [dbo].[Logindetails_Test]    Script Date: 4/29/2019 11:57:24 PM ******/
DROP TABLE [dbo].[Logindetails_Test]
GO
/****** Object:  Table [dbo].[LoginDetails]    Script Date: 4/29/2019 11:57:24 PM ******/
DROP TABLE [dbo].[LoginDetails]
GO
/****** Object:  Table [dbo].[EventVolunteerDetails]    Script Date: 4/29/2019 11:57:24 PM ******/
DROP TABLE [dbo].[EventVolunteerDetails]
GO
/****** Object:  Table [dbo].[EventTimeSpentDetails]    Script Date: 4/29/2019 11:57:24 PM ******/
DROP TABLE [dbo].[EventTimeSpentDetails]
GO
/****** Object:  Table [dbo].[EventSummaryDetails]    Script Date: 4/29/2019 11:57:24 PM ******/
DROP TABLE [dbo].[EventSummaryDetails]
GO
/****** Object:  Table [dbo].[EventSummary]    Script Date: 4/29/2019 11:57:24 PM ******/
DROP TABLE [dbo].[EventSummary]
GO
/****** Object:  Table [dbo].[EventPOCDetails]    Script Date: 4/29/2019 11:57:24 PM ******/
DROP TABLE [dbo].[EventPOCDetails]
GO
/****** Object:  Table [dbo].[EventDetails]    Script Date: 4/29/2019 11:57:24 PM ******/
DROP TABLE [dbo].[EventDetails]
GO
/****** Object:  Table [dbo].[EventDateDetails]    Script Date: 4/29/2019 11:57:24 PM ******/
DROP TABLE [dbo].[EventDateDetails]
GO
/****** Object:  Table [dbo].[EventBenificaryDetails]    Script Date: 4/29/2019 11:57:24 PM ******/
DROP TABLE [dbo].[EventBenificaryDetails]
GO
/****** Object:  Table [dbo].[EventBeneficiaryDetails]    Script Date: 4/29/2019 11:57:24 PM ******/
DROP TABLE [dbo].[EventBeneficiaryDetails]
GO
/****** Object:  Table [dbo].[Event_Details]    Script Date: 4/29/2019 11:57:24 PM ******/
DROP TABLE [dbo].[Event_Details]
GO
/****** Object:  Table [dbo].[Employee_Details]    Script Date: 4/29/2019 11:57:24 PM ******/
DROP TABLE [dbo].[Employee_Details]
GO
/****** Object:  Table [dbo].[Email]    Script Date: 4/29/2019 11:57:24 PM ******/
DROP TABLE [dbo].[Email]
GO
/****** Object:  Table [dbo].[BusinessUnits]    Script Date: 4/29/2019 11:57:24 PM ******/
DROP TABLE [dbo].[BusinessUnits]
GO
/****** Object:  Table [dbo].[BaseLocations]    Script Date: 4/29/2019 11:57:24 PM ******/
DROP TABLE [dbo].[BaseLocations]
GO
/****** Object:  Table [dbo].[AssociateDetails]    Script Date: 4/29/2019 11:57:24 PM ******/
DROP TABLE [dbo].[AssociateDetails]
GO
/****** Object:  StoredProcedure [dbo].[spInsertEventDetails]    Script Date: 4/29/2019 11:57:24 PM ******/
DROP PROCEDURE [dbo].[spInsertEventDetails]
GO
/****** Object:  StoredProcedure [dbo].[spGetParticipantMetrics]    Script Date: 4/29/2019 11:57:24 PM ******/
DROP PROCEDURE [dbo].[spGetParticipantMetrics]
GO
/****** Object:  StoredProcedure [dbo].[spGetGenericMetrics]    Script Date: 4/29/2019 11:57:24 PM ******/
DROP PROCEDURE [dbo].[spGetGenericMetrics]
GO
/****** Object:  StoredProcedure [dbo].[spGetEventDetails]    Script Date: 4/29/2019 11:57:24 PM ******/
DROP PROCEDURE [dbo].[spGetEventDetails]
GO
/****** Object:  StoredProcedure [dbo].[spEngagementMetrics]    Script Date: 4/29/2019 11:57:24 PM ******/
DROP PROCEDURE [dbo].[spEngagementMetrics]
GO
/****** Object:  StoredProcedure [dbo].[spDeleteEventDetails]    Script Date: 4/29/2019 11:57:24 PM ******/
DROP PROCEDURE [dbo].[spDeleteEventDetails]
GO
USE [master]
GO
/****** Object:  Database [ReportingSystem]    Script Date: 4/29/2019 11:57:24 PM ******/
DROP DATABASE [ReportingSystem]
GO
/****** Object:  Database [ReportingSystem]    Script Date: 4/29/2019 11:57:24 PM ******/
CREATE DATABASE [ReportingSystem]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ReportingSystem', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\ReportingSystem.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ReportingSystem_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\ReportingSystem_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ReportingSystem] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ReportingSystem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ReportingSystem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ReportingSystem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ReportingSystem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ReportingSystem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ReportingSystem] SET ARITHABORT OFF 
GO
ALTER DATABASE [ReportingSystem] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ReportingSystem] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [ReportingSystem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ReportingSystem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ReportingSystem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ReportingSystem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ReportingSystem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ReportingSystem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ReportingSystem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ReportingSystem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ReportingSystem] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ReportingSystem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ReportingSystem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ReportingSystem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ReportingSystem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ReportingSystem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ReportingSystem] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ReportingSystem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ReportingSystem] SET RECOVERY FULL 
GO
ALTER DATABASE [ReportingSystem] SET  MULTI_USER 
GO
ALTER DATABASE [ReportingSystem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ReportingSystem] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ReportingSystem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ReportingSystem] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ReportingSystem', N'ON'
GO
USE [ReportingSystem]
GO
/****** Object:  StoredProcedure [dbo].[spDeleteEventDetails]    Script Date: 4/29/2019 11:57:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
EXEC [spDeleteEventDetails]
@EventId='EVNT00046103'

*/
CREATE PROCEDURE [dbo].[spDeleteEventDetails]
(
@EventId VARCHAR(100) =''
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION
	
		
		DELETE FROM [dbo].[EventDetails] WHERE  EventID =@EventId
		DELETE FROM [dbo].[EventDateDetails] WHERE  EventID =@EventId
		DELETE FROM [dbo].[EventBeneficiaryDetails] WHERE  EventID =@EventId
		DELETE FROM [dbo].[EventSummaryDetails] WHERE  EventID =@EventId
		DELETE FROM [dbo].[EventTimeSpentDetails] WHERE  EventID =@EventId
			
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		IF (@@TRANCOUNT > 0)
		BEGIN
			ROLLBACK TRANSACTION
		END

		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;
		SELECT
			@ErrorMessage = ERROR_MESSAGE(),
			@ErrorSeverity = ERROR_SEVERITY(),
			@ErrorState = ERROR_STATE();
			RAISERROR(@ErrorMessage,
			@ErrorSeverity,
			@ErrorState
		);
	END CATCH
END

GO
/****** Object:  StoredProcedure [dbo].[spEngagementMetrics]    Script Date: 4/29/2019 11:57:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*
EXEC [spEngagementMetrics]
 @Interval =1

*/
CREATE PROCEDURE [dbo].[spEngagementMetrics]
(
@Interval INT = 0 -- 1 Time - 0, 2 - 5 Time - 1, More than 5 Times - 2
)
AS
BEGIN

	DECLARE @StartRange INT
	DECLARE @EndRange INT	
	
	SET @StartRange = (CASE WHEN ISNULL(@Interval,0) = 0 THEN 0
							WHEN ISNULL(@Interval,1) = 1 THEN 2
							WHEN ISNULL(@Interval,2) = 2 THEN 5
							ELSE 0 END)
						   

	SET @EndRange = (CASE WHEN ISNULL(@Interval,0) = 0 THEN 1
						  WHEN ISNULL(@Interval,1) = 1 THEN 5
						  WHEN ISNULL(@Interval,2) = 2 THEN 10000
						  ELSE 10000 END)
 
	
	;WITH X AS(
			SELECT CAST([EmployeeID] AS VARCHAR(100)) AS [EmployeeID]
				 , [EmployeeName] AS [EmployeeName]
				 , COUNT(1) AS [Count]
			FROM [EventVolunteerDetails] A
		   GROUP BY	CAST([EmployeeID] AS VARCHAR(100))
				 , [EmployeeName]

	)
	
	SELECT * FROM  X  WHERE [Count] BETWEEN @StartRange AND @EndRange	
				
END





GO
/****** Object:  StoredProcedure [dbo].[spGetEventDetails]    Script Date: 4/29/2019 11:57:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
EXEC [spGetEventDetails]
@EventId='EVNT00046103'

*/
CREATE PROCEDURE [dbo].[spGetEventDetails]
(
@EventId VARCHAR(100) =''
)
AS
BEGIN
	
		SELECT ED.EventID
			 , ED.EventName
			 , EDD.EventDate
			 , EDD.[Month]
			 , ED.EventDescription		 
			 , ED.[Status]
			 , EBD.BaseLocation		
			 , EBD.BeneficiaryName
			 , ESD.Project
			 , ESD.Category
			 , ESD.VenueAddress
			 , ETSD.TotalVolunteers
			 , ETSD.TotalVolunteerHours
			 , ETSD.TotalTravelHours
			 , ETSD.OverallVolunteerHours
			 , ETSD.LivesImpacted
		  FROM [dbo].[EventDetails] ED
	INNER JOIN [EventDateDetails] EDD
			ON ED.EventID = EDD.EventID
	INNER JOIN [dbo].[EventBeneficiaryDetails] EBD
			ON ED.EventID = EBD.EventID
	INNER JOIN [dbo].[EventSummaryDetails] ESD
			ON ED.EventID = ESD.EventID
	INNER JOIN [dbo].[EventTimeSpentDetails] ETSD
			ON ED.EventID = ETSD.EventID
		 WHERE ( ISNULL(@EventId,'') ='' OR (ISNULL(@EventId,'') = ED.EventID))		
END

GO
/****** Object:  StoredProcedure [dbo].[spGetGenericMetrics]    Script Date: 4/29/2019 11:57:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
EXEC [spGetGenericMetrics]
 @Interval =3
, @StartDate = '2017-01-08 00:00:00.000'
, @EndDate = '2017-02-15 00:00:00.000'

*/
CREATE PROCEDURE [dbo].[spGetGenericMetrics]
(
@Interval INT = 0, -- Date - 0, Day - 1, WeekDay - 2, WeekEnd-3, Month - 4.
@StartDate DATETIME = NULL,
@EndDate DATETIME = NULL
)
AS
BEGIN

	SET @StartDate = (CASE WHEN ISNULL(@StartDate,'') = '' THEN (SELECT TOP 1 CAST([EventDate] AS DATE) FROM EventSummary  WHERE ISNULL([EventDate],'') <> ''  ORDER BY 1 ASC)
						   ELSE @StartDate END)

	SET @EndDate = CASE WHEN @EndDate > CAST(GETDATE() AS DATE) OR ISNULL(@EndDate,'') = '' THEN GETDATE() ELSE  CAST(@EndDate AS DATE) END

	;WITH X AS(
			SELECT ETSD.*,
			CAST(A.[EventDate] AS VARCHAR(25)) Date,
			DATENAME(dw, A.[EventDate]) Day,
			CHOOSE(DATEPART(dw, A.[EventDate]), '','Weekday','Weekday','Weekday','Weekday','Weekday','') Weekday,
			CHOOSE(DATEPART(dw, A.[EventDate]), 'Weekend','','','','','','Weekend') Weekend,
			CAST(DATENAME(MONTH,[EventDate]) AS VARCHAR(25)) MonthName
			FROM EventDateDetails A
			INNER JOIN [dbo].[EventTimeSpentDetails] ETSD
			ON A.EventID = ETSD.EventID
			WHERE ISNULL(A.[EventDate],'')<>''
			AND  ISNULL(A.[EventDate],'') BETWEEN @StartDate AND @EndDate

	)
	
	SELECT * FROM (	
				SELECT CAST(SUM([TotalVolunteers]) AS VARCHAR(100)) AS [TotalNoOfVolunteers]
					 , CAST(SUM([TotalVolunteerHours] ) AS VARCHAR(100)) AS [TotalVolunteerHours]
					 , CAST(SUM([TotalTravelHours] ) AS VARCHAR(100)) AS [TotalTravelHours]
					 , CAST(SUM([OverallVolunteerHours]) AS VARCHAR(100)) AS [OverallVolunteeringHours]
					 , CASE WHEN @Interval = 0 THEN Date
							WHEN @Interval = 1 THEN Day
							WHEN @Interval = 2 THEN Weekday
							WHEN @Interval = 3 THEN Weekend
							WHEN @Interval = 4 THEN MonthName
							END AS IntervalRange		
				 FROM X 	
				GROUP BY CASE WHEN @Interval = 0 THEN Date
							WHEN @Interval = 1 THEN Day
							WHEN @Interval = 2 THEN Weekday
							WHEN @Interval = 3 THEN Weekend
							WHEN @Interval = 4 THEN MonthName
							END	
	)Temp WHERE ISNULL(IntervalRange,'') <> ''
	ORDER BY 5 ASC
END




GO
/****** Object:  StoredProcedure [dbo].[spGetParticipantMetrics]    Script Date: 4/29/2019 11:57:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
EXEC [spGetParticipantMetrics]
@BUnit='CDB-AIA-AIA' 
@StartDate = '2017-01-08 00:00:00.000'
, @EndDate = '2017-02-15 00:00:00.000'

*/
CREATE PROCEDURE [dbo].[spGetParticipantMetrics]
(
@BUnit VARCHAR(500)= '',
@StartDate DATETIME = NULL,
@EndDate DATETIME = NULL
)
AS
BEGIN

	SET @StartDate = (CASE WHEN ISNULL(@StartDate,'') = '' THEN (SELECT TOP 1 CAST([EventDate] AS DATE) FROM EventSummary  WHERE ISNULL([EventDate],'') <> ''  ORDER BY 1 ASC)
						   ELSE @StartDate END)

	SET @EndDate = CASE WHEN @EndDate > CAST(GETDATE() AS DATE) OR ISNULL(@EndDate,'') = '' THEN GETDATE() ELSE  CAST(@EndDate AS DATE) END
	

	;WITH X AS(
			SELECT ETSD.*					
			FROM EventDateDetails A
			INNER JOIN [dbo].[EventVolunteerDetails] ETSD
			ON A.EventID = ETSD.EventID
			WHERE 
			--ISNULL(A.[EventDate],'')<>''
			--AND (ISNULL(A.[EventDate],'') BETWEEN @StartDate AND @EndDate)
			 (ISNULL(@BUnit,'') ='' OR (ISNULL(@BUnit,'') = ETSD.BU))

	)
	

	   SELECT EventID AS [EventID]
			, BU AS [BusinessUint]
			, COUNT(EmployeeID) AS [TotalNoOfVolunteers]								
		FROM X 	
	GROUP BY EventID,BU 

END




GO
/****** Object:  StoredProcedure [dbo].[spInsertEventDetails]    Script Date: 4/29/2019 11:57:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/* exec spInsertEventDetails @EventDetailsInfoXml ='<?xml version="1.0" encoding="UTF-8"?>
<EventDetailsSummary xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
<EventID>EVNT0027089</EventID>
<EventName>Organic Farming</EventName>
<EventDate>2019-12-31T00:00:00</EventDate>
<EventDescription>Organic Farming in CBE</EventDescription>
<Status>Approved</Status>
<BaseLocation>CBE</BaseLocation>
<BeneficiaryName>SPB School</BeneficiaryName>
<Category>School</Category>
<VenueAddress>CBE</VenueAddress>
<TotalVolunteers xsi:nil="true"/>
<TotalVolunteerHours xsi:nil="true"/>
<TotalTravelHours xsi:nil="true"/>
<OverallVolunteerHours xsi:nil="true"/>
<LivesImpacted xsi:nil="true"/>
</EventDetailsSummary>
'
*/
CREATE PROCEDURE [dbo].[spInsertEventDetails]
(
@EventDetailsInfoXml XML
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION
			DECLARE @docHandle INT
			EXEC sp_xml_preparedocument @docHandle OUTPUT, @EventDetailsInfoXml

			CREATE TABLE #EventDetailsInfo
			( ID INT IDENTITY(1,1) NOT NULL
			, EventID VARCHAR(250) NULL
			, EventName VARCHAR(250) NULL
			, EventDate VARCHAR(250) NULL
			, Month VARCHAR(250) NULL
			, EventDescription VARCHAR(250) NULL
			, [Status] VARCHAR(250) NULL
			, CouncilName VARCHAR(250) NULL
			, BaseLocation VARCHAR(250) NULL
			, BeneficiaryName VARCHAR(250) NULL
			, Project VARCHAR(250) NULL
			, Category VARCHAR(250) NULL
			, VenueAddress VARCHAR(250) NULL
			, TotalVolunteers VARCHAR(250) NULL
			, TotalVolunteerHours VARCHAR(250) NULL
			, TotalTravelHours VARCHAR(250) NULL
			, OverallVolunteerHours VARCHAR(250) NULL
			, LivesImpacted VARCHAR(250) NULL )

			INSERT INTO #EventDetailsInfo
				(  EventID
				,	EventName
				,	EventDate
				,	Month
				,	EventDescription
				,	[Status]
				,	CouncilName
				,	BaseLocation
				,	BeneficiaryName
				,	Project
				,	Category
				,	VenueAddress
				,	TotalVolunteers
				,	TotalVolunteerHours
				,	TotalTravelHours
				,	OverallVolunteerHours
				,	LivesImpacted
				)
			SELECT LTRIM(RTRIM(EventID))
				,	EventName
				,	EventDate
				,	Month
				,	EventDescription
				,	[Status]
				,	CouncilName
				,	BaseLocation
				,	BeneficiaryName
				,	Project
				,	Category
				,	VenueAddress
				,	TotalVolunteers
				,	TotalVolunteerHours
				,	TotalTravelHours
				,	OverallVolunteerHours
				,	LivesImpacted
			FROM OPENXML (@docHandle, '/EventDetailsSummary',2)
			WITH (EventID VARCHAR(250)
			, EventName VARCHAR(250) 
			, EventDate VARCHAR(250) 
			, Month VARCHAR(250) 
			, EventDescription VARCHAR(250)
			, [Status] VARCHAR(250) 
			, CouncilName VARCHAR(250) 
			, BaseLocation VARCHAR(250) 
			, BeneficiaryName VARCHAR(250) 
			, Project VARCHAR(250) 
			, Category VARCHAR(250) 
			, VenueAddress VARCHAR(250) 
			, TotalVolunteers VARCHAR(250) 
			, TotalVolunteerHours VARCHAR(250) 
			, TotalTravelHours VARCHAR(250)
			, OverallVolunteerHours VARCHAR(250)
			, LivesImpacted VARCHAR(250))
			EXEC sp_xml_removedocument @docHandle

			MERGE [EventDetails] AS TARGET
			USING #EventDetailsInfo AS SOURCE 
			   ON (TARGET.EventID = SOURCE.EventID) 
			 WHEN MATCHED THEN 
				  UPDATE SET 
				  TARGET.EventName = SOURCE.EventName, 
				  TARGET.EventDescription = SOURCE.EventDescription,
				  TARGET.[Status] = SOURCE.[Status] 
			 WHEN NOT MATCHED BY TARGET THEN 
				  INSERT (EventID, EventName, EventDescription, [Status])
				  VALUES (LTRIM(RTRIM(SOURCE.EventID)), SOURCE.EventName, SOURCE.EventDescription, SOURCE.[Status]);

			MERGE [EventDateDetails] AS TARGET
			USING #EventDetailsInfo AS SOURCE 
			   ON (TARGET.EventID = SOURCE.EventID) 
			 WHEN MATCHED THEN 
				  UPDATE SET 
				  TARGET.EventDate = SOURCE.EventDate, 
				  TARGET.Month = SOURCE.Month
			 WHEN NOT MATCHED BY TARGET THEN 
				  INSERT (EventID, EventDate, Month)
				  VALUES (LTRIM(RTRIM(SOURCE.EventID)), SOURCE.EventDate, SOURCE.Month);

			MERGE [EventBeneficiaryDetails] AS TARGET
			USING #EventDetailsInfo AS SOURCE 
			   ON (TARGET.EventID = SOURCE.EventID) 
			 WHEN MATCHED THEN 
				  UPDATE SET 
				  TARGET.BaseLocation = SOURCE.BaseLocation, 
				  TARGET.CouncilName = SOURCE.CouncilName,
				  TARGET.BeneficiaryName = SOURCE.BeneficiaryName
			 WHEN NOT MATCHED BY TARGET THEN 
				  INSERT (EventID, BaseLocation, CouncilName, BeneficiaryName)
				  VALUES (LTRIM(RTRIM(SOURCE.EventID)), SOURCE.BaseLocation, SOURCE.CouncilName, SOURCE.BeneficiaryName);

			MERGE [EventSummaryDetails] AS TARGET
			USING #EventDetailsInfo AS SOURCE 
			   ON (TARGET.EventID = SOURCE.EventID) 
			 WHEN MATCHED THEN 
				  UPDATE SET 
				  TARGET.Project = SOURCE.Project, 
				  TARGET.Category = SOURCE.Category,
				  TARGET.VenueAddress = SOURCE.VenueAddress,
				  TARGET.CouncilName = SOURCE.CouncilName
			 WHEN NOT MATCHED BY TARGET THEN 
				  INSERT (EventID, Project, Category, VenueAddress, CouncilName)
				  VALUES (LTRIM(RTRIM(SOURCE.EventID)), SOURCE.Project, SOURCE.Category, SOURCE.VenueAddress, SOURCE.CouncilName);

			MERGE [EventTimeSpentDetails] AS TARGET
			USING #EventDetailsInfo AS SOURCE 
			   ON (TARGET.EventID = SOURCE.EventID) 
			 WHEN MATCHED THEN 
				  UPDATE SET 
				  TARGET.TotalVolunteers = SOURCE.TotalVolunteers, 
				  TARGET.TotalVolunteerHours = SOURCE.TotalVolunteerHours,
				  TARGET.TotalTravelHours = SOURCE.TotalTravelHours,
				  TARGET.OverallVolunteerHours = SOURCE.OverallVolunteerHours,
				  TARGET.LivesImpacted = SOURCE.LivesImpacted
			 WHEN NOT MATCHED BY TARGET THEN 
				  INSERT (EventID, TotalVolunteers, TotalVolunteerHours, TotalTravelHours, OverallVolunteerHours, LivesImpacted)
				  VALUES (LTRIM(RTRIM(SOURCE.EventID)), SOURCE.TotalVolunteers, SOURCE.TotalVolunteerHours, SOURCE.TotalTravelHours, SOURCE.OverallVolunteerHours, SOURCE.LivesImpacted);

			
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		IF (@@TRANCOUNT > 0)
		BEGIN
			ROLLBACK TRANSACTION
		END

		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;
		SELECT
			@ErrorMessage = ERROR_MESSAGE(),
			@ErrorSeverity = ERROR_SEVERITY(),
			@ErrorState = ERROR_STATE();
			RAISERROR(@ErrorMessage,
			@ErrorSeverity,
			@ErrorState
		);
	END CATCH
END

GO
/****** Object:  Table [dbo].[AssociateDetails]    Script Date: 4/29/2019 11:57:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AssociateDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AssociateID] [int] NULL,
	[AssociateName] [varchar](100) NULL,
	[Designation] [varchar](500) NULL,
	[Location] [varchar](100) NULL,
	[BU] [varchar](100) NULL,
 CONSTRAINT [pk_AssociateDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BaseLocations]    Script Date: 4/29/2019 11:57:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BaseLocations](
	[BaseLocationID] [int] IDENTITY(1,1) NOT NULL,
	[BaseLocation] [varchar](100) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BusinessUnits]    Script Date: 4/29/2019 11:57:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BusinessUnits](
	[BusinessUnitID] [int] IDENTITY(1,1) NOT NULL,
	[BusinessUnit] [varchar](100) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Email]    Script Date: 4/29/2019 11:57:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Email](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeID] [int] NOT NULL,
	[Emailaddress] [varchar](100) NOT NULL,
	[EventID] [varchar](50) NOT NULL,
	[EmailStatus] [bit] NULL,
	[EmailType] [varchar](100) NULL,
	[GeneratedDate] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Employee_Details]    Script Date: 4/29/2019 11:57:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Employee_Details](
	[EmployeeID] [int] NOT NULL,
	[EmployeeName] [varchar](100) NULL,
	[EmailAddress] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Event_Details]    Script Date: 4/29/2019 11:57:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Event_Details](
	[EventID] [varchar](50) NOT NULL,
	[EventName] [varchar](200) NOT NULL,
	[Beneficiary] [varchar](200) NULL,
	[Location] [varchar](100) NULL,
	[EventDate] [date] NULL,
	[EventDescription] [varchar](max) NULL,
	[NoofVolunteers] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[EventID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EventBeneficiaryDetails]    Script Date: 4/29/2019 11:57:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EventBeneficiaryDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EventID] [varchar](50) NULL,
	[BaseLocation] [varchar](100) NULL,
	[CouncilName] [varchar](100) NULL,
	[BeneficiaryName] [varchar](100) NULL,
 CONSTRAINT [pk_EventBeneficiaryDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EventBenificaryDetails]    Script Date: 4/29/2019 11:57:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventBenificaryDetails](
	[EventID] [int] NOT NULL,
	[BaseLocation] [nvarchar](100) NULL,
	[CouncilName] [nvarchar](100) NULL,
	[BenificaryName] [nvarchar](100) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EventDateDetails]    Script Date: 4/29/2019 11:57:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EventDateDetails](
	[EventID] [varchar](50) NOT NULL,
	[EventDate] [datetime] NULL,
	[Month] [varchar](50) NULL,
 CONSTRAINT [pk_EventDateDetails] PRIMARY KEY CLUSTERED 
(
	[EventID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EventDetails]    Script Date: 4/29/2019 11:57:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EventDetails](
	[EventID] [varchar](50) NOT NULL,
	[EventName] [varchar](100) NULL,
	[EventDescription] [varchar](500) NULL,
	[IIEPCategory] [varchar](500) NULL,
	[Status] [varchar](500) NULL,
 CONSTRAINT [pk_EventDetails] PRIMARY KEY CLUSTERED 
(
	[EventID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EventPOCDetails]    Script Date: 4/29/2019 11:57:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EventPOCDetails](
	[EventID] [varchar](50) NOT NULL,
	[POCID] [int] NOT NULL,
	[POCName] [varchar](100) NULL,
	[POCContactNumber] [varchar](100) NULL,
 CONSTRAINT [pk_EventPOCDetails] PRIMARY KEY CLUSTERED 
(
	[EventID] ASC,
	[POCID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EventSummary]    Script Date: 4/29/2019 11:57:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventSummary](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EventID] [nvarchar](255) NULL,
	[Month] [nvarchar](255) NULL,
	[BaseLocation] [nvarchar](255) NULL,
	[BeneficiaryName] [nvarchar](255) NULL,
	[VenueAddress] [nvarchar](255) NULL,
	[CouncilName] [nvarchar](255) NULL,
	[Project] [nvarchar](255) NULL,
	[Category] [nvarchar](255) NULL,
	[EventName] [nvarchar](255) NULL,
	[EventDescription] [nvarchar](255) NULL,
	[EventDate] [datetime] NULL,
	[TotalNoOfVolunteers] [float] NULL,
	[TotalVolunteerHours] [float] NULL,
	[TotalTravelHours] [float] NULL,
	[OverallVolunteeringHours] [float] NULL,
	[LivesImpacted] [float] NULL,
	[ActivityType] [float] NULL,
	[Status] [nvarchar](255) NULL,
	[POCID] [nvarchar](255) NULL,
	[POCName] [nvarchar](255) NULL,
	[POCContact Number] [nvarchar](255) NULL,
	[IsProcessed] [bit] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EventSummaryDetails]    Script Date: 4/29/2019 11:57:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EventSummaryDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EventID] [varchar](50) NULL,
	[Project] [varchar](50) NULL,
	[Category] [varchar](100) NULL,
	[VenueAddress] [varchar](500) NULL,
	[CouncilName] [varchar](500) NULL,
	[ActivityType] [int] NULL,
 CONSTRAINT [pk_EventSummaryDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EventTimeSpentDetails]    Script Date: 4/29/2019 11:57:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EventTimeSpentDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EventID] [varchar](50) NULL,
	[TotalVolunteers] [int] NULL,
	[TotalVolunteerHours] [int] NULL,
	[TotalTravelHours] [int] NULL,
	[OverallVolunteerHours] [int] NULL,
	[LivesImpacted] [int] NULL,
 CONSTRAINT [pk_EventTimeSpentDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EventVolunteerDetails]    Script Date: 4/29/2019 11:57:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EventVolunteerDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EventID] [varchar](50) NULL,
	[EmployeeID] [int] NULL,
	[EmployeeName] [varchar](100) NULL,
	[BU] [varchar](100) NULL,
	[VolunteerHours] [int] NULL,
	[TravelHours] [int] NULL,
	[LivesImpacted] [int] NULL,
 CONSTRAINT [pk_EventVolunteerDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoginDetails]    Script Date: 4/29/2019 11:57:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoginDetails](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[UserRole] [nvarchar](50) NOT NULL,
	[IsDeleted] [int] NOT NULL,
 CONSTRAINT [PK_LoginDetails] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Logindetails_Test]    Script Date: 4/29/2019 11:57:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Logindetails_Test](
	[EmployeeID] [int] NOT NULL,
	[EmployeeName] [varchar](100) NOT NULL,
	[Password] [varchar](100) NOT NULL,
	[IsAdmin] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Master_EmailContent]    Script Date: 4/29/2019 11:57:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Master_EmailContent](
	[EmailContentID] [varchar](50) NOT NULL,
	[EmailContentName] [varchar](100) NULL,
	[EmailContentLocation] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[EmailContentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Master_Questions]    Script Date: 4/29/2019 11:57:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Master_Questions](
	[QuestionID] [int] NOT NULL,
	[IsDeleted] [bit] NULL,
	[Question] [varchar](max) NOT NULL,
	[DisplayOrder] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[QuestionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MasterBaseLocation]    Script Date: 4/29/2019 11:57:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MasterBaseLocation](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BaseLocation] [varchar](100) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MasterBeneficiary]    Script Date: 4/29/2019 11:57:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MasterBeneficiary](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Beneficiary] [varchar](100) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MasterCountry]    Script Date: 4/29/2019 11:57:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MasterCountry](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Country] [varchar](100) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MasterEvent]    Script Date: 4/29/2019 11:57:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MasterEvent](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EventID] [varchar](50) NOT NULL,
	[EventName] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OutReachEventInformation]    Script Date: 4/29/2019 11:57:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OutReachEventInformation](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EventID] [nvarchar](255) NULL,
	[BaseLocation] [nvarchar](255) NULL,
	[BeneficiaryName] [nvarchar](255) NULL,
	[CouncilName] [nvarchar](255) NULL,
	[EventName] [nvarchar](255) NULL,
	[EventDescription] [nvarchar](255) NULL,
	[EventDate] [nvarchar](255) NULL,
	[EmployeeID] [nvarchar](255) NULL,
	[EmployeeName] [nvarchar](255) NULL,
	[VolunteerHours] [float] NULL,
	[TravelHours] [float] NULL,
	[LivesImpacted] [float] NULL,
	[BusinessUnit] [nvarchar](255) NULL,
	[Status] [nvarchar](255) NULL,
	[IIEPCategory] [nvarchar](255) NULL,
	[IsProcessed] [bit] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[POC_Credential]    Script Date: 4/29/2019 11:57:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[POC_Credential](
	[EmployeeID] [int] NOT NULL,
	[Password] [varchar](100) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[POC_Info]    Script Date: 4/29/2019 11:57:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[POC_Info](
	[EmployeeID] [int] NOT NULL,
	[EventID] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC,
	[EventID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User_details]    Script Date: 4/29/2019 11:57:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User_details](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](100) NOT NULL,
	[LastName] [varchar](100) NULL,
	[MailId] [varchar](100) NULL,
	[Mobile] [int] NULL,
	[Gender] [varchar](100) NULL,
	[IsAdmin] [bit] NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Volunteer_Details]    Script Date: 4/29/2019 11:57:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Volunteer_Details](
	[EmployeeID] [int] NOT NULL,
	[EmployeeName] [varchar](100) NOT NULL,
	[EventID] [varchar](50) NOT NULL,
	[EventName] [varchar](100) NOT NULL,
	[BusinessUnit] [varchar](50) NULL,
	[TypeOfVolunteer] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC,
	[EventID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[POC_Credential]  WITH CHECK ADD FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee_Details] ([EmployeeID])
GO
ALTER TABLE [dbo].[POC_Info]  WITH CHECK ADD FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee_Details] ([EmployeeID])
GO
USE [master]
GO
ALTER DATABASE [ReportingSystem] SET  READ_WRITE 
GO
