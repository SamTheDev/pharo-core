contentLength
	contentLength isNil ifTrue: [ self computeRepresentation ].
	^ contentLength