matchTokenFilter: aFilter

	aFilter token ifEmpty: [ ^ true ].
	
	^ self asString asLowercase includesSubstring: aFilter token asLowercase