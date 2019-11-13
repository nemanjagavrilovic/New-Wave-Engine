routes
removeTask: aTask user: aUser
	| tasks |
	tasks := pendingTasks at: aUser ifAbsent: [ ^ '{"result": "Empty"}'].
	tasks remove: aTask.