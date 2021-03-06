renderImageOf: aBrick on: aCanvas
	|image|
	
	image := aBrick currentImage.
	
	image ifNotNil: [
		aCanvas
			translucentImage: (GLMBrick resizeImage: image scale: ((aBrick brickBounds expandBy: aBrick shadowWidth negated) extent / image extent))
			at: (aBrick brickBounds expandBy: aBrick shadowWidth negated) origin + (((aBrick paddingLeft - aBrick paddingRight)@(aBrick paddingTop - aBrick paddingBottom)) / 2.0) ]