setWidgetLayoutWithNoOffset: widget at: index delta: delta

	widget layoutFrame: ((currentProportional @ 0 corner: (currentProportional + delta) @ 1) asLayoutFrame leftOffset: currentOffset).
	
	currentOffset := 0.
	currentProportional := currentProportional + delta.
	lastFractionIndex := index