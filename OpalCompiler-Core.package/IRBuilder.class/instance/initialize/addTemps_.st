addTemps: newKeys
	| i offset |
	offset := self currentScope tempMap size.
	i := 1.
	newKeys do: [:key |
		self  currentScope tempMap at: key ifAbsentPut: [offset + i].
		i := i + 1.
	].