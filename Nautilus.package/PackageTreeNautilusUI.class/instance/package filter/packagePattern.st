packagePattern
	^ packagePattern ifNil: [ '.*' asRegexIgnoringCase ]