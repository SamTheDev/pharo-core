includesBehavior: aClass
	
	self isTrait ifTrue: [ ^false ].
	^self == aClass or:[self inheritsFrom: aClass]