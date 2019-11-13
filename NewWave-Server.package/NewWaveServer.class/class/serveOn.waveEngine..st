instance creation
serveOn: portNumber waveEngine: aWaveEngine
	^ self new  
		initializePort: portNumber;
		engine: aWaveEngine; 
		start