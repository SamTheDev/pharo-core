desktopGradientFillColor
	^ DesktopGradientFillColor ifNil: [DesktopGradientFillColor := self desktopColor]