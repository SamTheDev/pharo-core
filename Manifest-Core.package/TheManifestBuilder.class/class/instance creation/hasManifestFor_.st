hasManifestFor: aItem

	^  (self new manifestOf: aItem) isNil not
		