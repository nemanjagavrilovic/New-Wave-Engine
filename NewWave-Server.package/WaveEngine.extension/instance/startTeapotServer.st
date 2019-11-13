*NewWave-Server
startTeapotServer
	pluginData
		at: #NewWaveServer
		put: (NewWaveServer serveOn: 8081 waveEngine: self)