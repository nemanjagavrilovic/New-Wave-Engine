accessing
performExecution: elemToExecute executor: wave
	| aFuture tktElem assigne variable user test |
	super performExecution: elemToExecute executor: wave.
	user := nil.
	tktElem := wave returnTKT: elemToExecute.
	
	(elemToExecute assigne user isKindOf: NullNode ) 
		ifTrue:['Not assigned' logCr.] 
		ifFalse:[
			elemToExecute assigne user username logCr.
		].
		
	aFuture := wave worker future: [ tktElem value ].
	aFuture
		onSuccessDo: [ :v | 
			v logCr.
			wave taskResult: v.
			wave tryToExecuteNext: elemToExecute ].
	aFuture
		onFailureDo: [ :v | 
			'failed' logCr.
			v logCr ]