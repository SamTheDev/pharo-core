getEncoding
	^ fileEncoding
		ifNil: [ 'utf-8' ]
		