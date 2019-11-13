routes
addNewEntity: aRequest
	| tmp |
	(aRequest at: 'firstName') logCr.
	(aRequest at: 'lastName') logCr.
	tmp := NeoJSONWriter toString: aRequest entity fields.
	engine engineAnnouncer announce: (WaveAnnouncer with: tmp).
	^ 'Adding of entity executed'.