as yet unclassified
instanceValue: instance attributeName: attributeName
	|variable|
	
	variable := instance class allInstVarNames collect: [ :each | each -> (instance instVarNamed: attributeName) ].
	^variable first value .