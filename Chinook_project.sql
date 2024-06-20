SELECT *
FROM chinook.actoralbum

SELECT *
FROM 
	chinook.artist

SELECT *
FROM 
	chinook.customer

SELECT *
FROM 
	chinook.employee

SELECT *
FROM 
	chinook.genre

SELECT *
FROM 
	chinook.invoice

SELECT *
FROM 
	chinook.invoiceline

SELECT *
FROM 
	chinook.mediatype

SELECT *
FROM 
	chinook.playlist

SELECT *
FROM 
	chinook.playlisttrack

SELECT *
FROM 
	chinook.track

SELECT 
	t.*, 
	Ct.*,
	mt.Name AS Media_format
FROM 
	chinook.track AS t
INNER JOIN 
	chinook.playlisttrack AS Ct ON t.TrackId = Ct.TrackId
LEFT JOIN 
	chinook.mediatype AS mt ON t.MediaTypeId = mt.MediaTypeId;


