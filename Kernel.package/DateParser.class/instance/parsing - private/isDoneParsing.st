isDoneParsing

	^ patternStream atEnd or: [ inputStream atEnd or: [  invalidPattern  ]]