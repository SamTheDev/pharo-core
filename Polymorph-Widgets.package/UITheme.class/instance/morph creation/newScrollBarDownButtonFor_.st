newScrollBarDownButtonFor: aScrollbar

	^ BorderedMorph 
				newBounds: (aScrollbar innerBounds bottomRight - aScrollbar buttonExtent 
						extent: aScrollbar buttonExtent)