initialization
registerRoutes
	teapot
		GET: '/' -> '<h1>It works!</h1>';output: #html;
		GET: '/events' -> (Send message: #readEvents: to: self); output: #json;
		GET: '/eventzz' -> (Send message: #addEvent: to: self); output: #json;
		POST: '/addNewEntity' -> (Send message: #addNewEntity: to: self).