testUTF16Back
	| encoder stream |
	encoder := ZnUTF16Encoder new.
	stream := (encoder encodeString: 'Les �l�ves Fran�aises') readStream.
	self should: [ encoder backOnStream: stream ] raise: Error.
	4 timesRepeat: [ encoder nextFromStream: stream ].
	self assert: (encoder nextFromStream: stream) equals: $�.
	encoder backOnStream: stream.
	self assert: (encoder nextFromStream: stream) equals: $�.
	10 timesRepeat: [ encoder nextFromStream: stream ].
	13 timesRepeat: [ encoder backOnStream: stream ].
	self assert: (encoder nextFromStream: stream) equals: $s