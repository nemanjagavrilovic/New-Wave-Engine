as yet unclassified
performExecution: elemToExecute executor: wave
	"Here I should clean up everything related to this execution."
	"wave flowHandler node: nil."
	('Ending worker on process ', Processor activeProcess identityHash asString) logCr.
	('Worker process is ', wave worker process identityHash asString ) logCr.
	"wave workList addToCompleted: (wave activationForNode: elemToExecute)."
	"wave engine workList completed asString logCr.
	wave engine workList running asString logCr."
	
	" Kad se zaustavi glavni executor zaustavi i task scheduler"
	wave engine mainExecutor = wave ifTrue: [ 
		"wave engine scheduler stop."
	].
	
	wave worker stop.
	