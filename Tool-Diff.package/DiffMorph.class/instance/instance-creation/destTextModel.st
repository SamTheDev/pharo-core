destTextModel
	^ destTextModel ifNil: [ destTextModel := RubScrolledTextModel new interactionModel: self ].