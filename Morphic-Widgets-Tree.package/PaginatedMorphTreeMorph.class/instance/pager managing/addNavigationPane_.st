addNavigationPane: aNavigPane
	pager := aNavigPane.
	self addMorph: pager.
	pager buildPanel.
	self updatePager.
	self changed