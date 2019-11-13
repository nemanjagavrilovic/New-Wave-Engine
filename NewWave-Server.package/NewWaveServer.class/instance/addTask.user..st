routes
addTask: aTask user: aUser
	| tasks |
	tasks := pendingTasks
		at: aUser
		ifPresent: [ 
			pendingTasks at: aUser add: aTask.
		]
		ifAbsentPut: [ OrderedCollection with: aTask ].