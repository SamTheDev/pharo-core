initializeEncoder
	"If the content-type specifies an encoding, use that.
	If not, use the value of ZnDefaultCharacterEncoder,
	if that is not set, fall back to UTF-8"
	
	| charSet newEncoder |
	self hasEncoder
		ifTrue: [ ^ self ].
	newEncoder := (charSet := contentType charSet) isNil
		ifTrue: [ ZnDefaultCharacterEncoder value ifNil: [ ZnUTF8Encoder new ] ]
		ifFalse: [ 
			(ZnCharacterEncoder newForEncoding: charSet)
				beLenient;
				yourself ].
	self encoder: newEncoder