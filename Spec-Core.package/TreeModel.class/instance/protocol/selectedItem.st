selectedItem
	< api: #inspect>
	"Return the selected item"
	"In the case of a multiple selection list, it returns the last selected item"
	
	^ selectionHolder contents last