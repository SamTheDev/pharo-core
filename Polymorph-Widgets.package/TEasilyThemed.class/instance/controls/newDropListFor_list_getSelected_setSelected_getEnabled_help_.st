newDropListFor: aModel list: listSel getSelected: getSel setSelected: setSel getEnabled: enabledSel help: helpText
	"Answer a drop list for the given model."

	^self theme
		newDropListIn: self
		for: aModel
		list: listSel
		getSelected: getSel
		setSelected: setSel
		getEnabled: enabledSel
		useIndex: true
		help: helpText