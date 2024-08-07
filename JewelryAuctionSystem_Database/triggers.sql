CREATE SEQUENCE registerBidID_sequence
    START WITH 0
    INCREMENT BY 1;
GO
CREATE TRIGGER autogenerate_registerBidID 
ON Register_Bid
INSTEAD OF INSERT
AS 
BEGIN
    DECLARE @newregisterBidID NVARCHAR(50);
    SET @newregisterBidID = 'Reg' + CAST(NEXT VALUE FOR registerBidID_sequence AS NVARCHAR(50));
    INSERT INTO Register_Bid(registerBidID, sessionID, memberID, bidAmount_Current, bidTime_Current, preBid_Amount, preBid_Time, [status])
    SELECT @newregisterBidID, sessionID, memberID, bidAmount_Current, bidTime_Current, preBid_Amount, CONVERT(TIME, GETDATE()), [status]
    FROM inserted;
END;
GO
CREATE SEQUENCE bidID_sequence
    START WITH 0
    INCREMENT BY 1;
GO
CREATE TRIGGER autogenerate_bidID
ON Bid_Track
INSTEAD OF INSERT
AS 
BEGIN
    DECLARE @newbidID NVARCHAR(50);
    SET @newbidID = 'Bid' + CAST(NEXT VALUE FOR bidID_sequence AS NVARCHAR(50));
    INSERT INTO Bid_Track(bidID, bidAmount, bidTime, sessionID, memberID)
    SELECT @newbidID, bidAmount, CONVERT(TIME, GETDATE()), sessionID, memberID
    FROM inserted;
END;
CREATE TRIGGER check_unique_username
ON Users
INSTEAD OF INSERT
AS
BEGIN
    IF EXISTS (SELECT 1 FROM Users INNER JOIN inserted ON Users.username = inserted.username)
    BEGIN
        RAISERROR ('username already exists.', 16, 1);
        ROLLBACK TRANSACTION;
    END
    ELSE
    BEGIN
        DECLARE @new_userID VARCHAR(50);
        SET @new_userID = 'User' + CAST(NEXT VALUE FOR userID_sequence AS VARCHAR(50));
        
        INSERT INTO Users (userID, username, email, [password], joined_at, roleID)
        SELECT @new_userID, username, email, [password], GETDATE(), roleID
        FROM inserted;
    END
END;
GO
CREATE TRIGGER autogenerate_addressID 
ON [Address] 
INSTEAD OF INSERT
AS 
BEGIN
    DECLARE @newaddressID VARCHAR(50);
    SET @newaddressID = 'Address' + CAST(NEXT VALUE FOR addressID_sequence AS VARCHAR(50));
    INSERT INTO [Address] (addressID, street, city, [state], zipcode, country, memberID)
    SELECT @newaddressID, street, city, [state], zipcode, country, memberID
    FROM inserted;
END;
GO
CREATE TRIGGER autogenerate_valuationId 
ON RequestValuation
INSTEAD OF INSERT
AS 
BEGIN
    DECLARE @newvaluationId NVARCHAR(50);
    SET @newvaluationId = 'val' + CAST(NEXT VALUE FOR valuationId_sequence AS NVARCHAR(50));
    INSERT INTO RequestValuation (valuationId, [name], email, phonenumber, communication, [description], photos, memberId)
    SELECT @newvaluationId, [name], email, phonenumber, communication, [description], photos, memberId
    FROM inserted;
END;
GO
CREATE TRIGGER autogenerate_notificationId 
ON [Notification] 
INSTEAD OF INSERT
AS 
BEGIN
    DECLARE @newnotificationId NVARCHAR(50);
    SET @newnotificationId = 'No' + CAST(NEXT VALUE FOR notificationId_sequence AS NVARCHAR(50));
    INSERT INTO [Notification] (notificationId, valuationId, content)
    SELECT @newnotificationId, valuationId, content
    FROM inserted;
END;
GO
CREATE TRIGGER autogenerate_jewelryID
ON Jewelry
INSTEAD OF INSERT
AS 
BEGIN
    DECLARE @newjewelryID NVARCHAR(50);

    INSERT INTO Jewelry (
        jewelryID, categoryID, jewelryName, artist, circa, material, dial, braceletMaterial,
        caseDimensions, braceletSize, serialNumber, referenceNumber, caliber, movement, [condition], 
        metal, gemstones, measurements, [weight], stamped, ringSize, minPrice, maxPrice, temp_Price, valuationId, photos
    )
    SELECT 
        'Lot' + CAST(NEXT VALUE FOR jewelryID_sequence AS NVARCHAR(50)),
        categoryID, jewelryName, artist, circa, material, dial, braceletMaterial, 
        caseDimensions, braceletSize, serialNumber, referenceNumber, caliber, movement, [condition], 
        metal, gemstones, measurements, [weight], stamped, ringSize, minPrice, maxPrice, temp_Price, valuationId, photos
    FROM inserted;
END;
GO
CREATE TRIGGER trg_UpdateStatusOnFinalPrice
ON Jewelry
AFTER UPDATE
AS
BEGIN
    IF UPDATE(final_Price)
    BEGIN
        UPDATE Jewelry
        SET [status] = 'Final-Evaluated'
        WHERE jewelryID IN (SELECT jewelryID FROM Inserted) AND final_Price IS NOT NULL;
    END
END;
GO
CREATE TRIGGER update_valuation_status
ON Jewelry
AFTER INSERT
AS
BEGIN
    UPDATE val
    SET val.status = 1
    FROM RequestValuation val
    JOIN inserted i ON val.valuationId = i.valuationId;
END;
GO
CREATE TRIGGER autogenerate_auctionID
ON Auction
INSTEAD OF INSERT
AS 
BEGIN
    DECLARE @newauctionID NVARCHAR(50);

    INSERT INTO Auction (auctionID, startDate, endDate, startTime, endTime)
    SELECT 'Auc' + CAST(NEXT VALUE FOR auctionID_sequence AS NVARCHAR(50)), startDate, endDate, startTime, endTime
    FROM inserted;
END;
CREATE TRIGGER autogenerate_sessionID
ON [Session]
INSTEAD OF INSERT
AS 
BEGIN
    DECLARE @newsessionID NVARCHAR(50);

    INSERT INTO [Session] (sessionID, auctionID, jewelryID)
    SELECT 'Turn' + CAST(NEXT VALUE FOR sessionID_sequence AS NVARCHAR(50)), auctionID, jewelryID
    FROM inserted;
END;
GO
CREATE SEQUENCE addressID_sequence
    START WITH 0
    INCREMENT BY 1;
GO
CREATE TRIGGER autogenerate_addressID
ON [Address]
INSTEAD OF INSERT
AS 
BEGIN
    DECLARE @newaddressID NVARCHAR(50);
    SET @newaddressID = 'Add' + CAST(NEXT VALUE FOR addressID_sequence AS NVARCHAR(50));
    INSERT INTO [Address] (addressID, city, state, zipcode, country, memberID, address1, address2)
    SELECT @newaddressID,  city, state, zipcode, country, memberID, address1, address2
    FROM inserted;
END;
GO
CREATE SEQUENCE memberID_sequence
    START WITH 0
    INCREMENT BY 1;
GO

CREATE TRIGGER autogenerate_memberID
ON Member

	DECLARE @newmemberID VARCHAR(50);
	SET @newmemberID = 'Member' + CAST(NEXT VALUE FOR memberID_sequence AS VARCHAR(50));
	INSERT INTO Member (memberID, userID, firstName, lastName, phoneNumber, gender, dob, avatar, status_register_to_bid, companyName)
	SELECT @newmemberID, userID, firstName, lastName, phoneNumber, gender, dob, avatar, status_register_to_bid, companyName
	FROM inserted;

GO

select * from Users
select * from Member