isSelectorsAndVariables
	| current |
	current := ranges at: completionIndex.
	^current isUnfinished