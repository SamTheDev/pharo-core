testUpToEnd
	| testString filename  |
	testString := '�l�ve en Fran�ais'.
	filename := 'test-file-' , 99 atRandom printString , '.txt'.
	MultiByteFileStream 
		forceNewFileNamed: filename
		do: [ :stream | 
			stream
				nextPutAll: testString .
		].
	
	filename asFileReference
		readStreamDo: [ :stream | 
			| str1 |
			self assert: ( stream peek = $� ).
			self assert: ( (stream next: 5) = '�l�ve' ).
			str1 := stream upToEnd .
			self assert: ( str1 = ' en Fran�ais') .
		] 