initialization
readEvents: aRequest
	| json n prvi |
	"n := engine mainExecutor flowHandler node."
	"json := String streamContents: [ :stream |
		(NeoJSONWriter on: (NeoJSONMockStream on: stream))
			prettyPrint: true;
			nextPut: n ]."
	"^ n."
	n := pendingTasks at: 'default'.
	n ifNil: [ ^ 'Non-existing user' ].
	n ifEmpty: [ ^ 'Empty' ].
	"n ifEmpty: [ ^ NeoJSONWriter toStringPretty: { #result -> 'empty'.} ]."
	prvi := n first. 
	"^ prvi value."
	^ prvi value.
		