parsePragmas
	[ currentToken isBinary and: [ currentToken value = #< ] ] whileTrue: [
		self parsePragma.
		self step ]