testSimulateKeystroke

	| textMorph |
	textMorph := TextMorph new contents: ''; openInWorld.
	self assert: textMorph canChangeText.
	textMorph takeKeyboardFocus.
	self simulateKeyStroke: $s.
	self assert: textMorph contents asString equals: 's'.
	textMorph delete.