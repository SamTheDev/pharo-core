testFindStringStartingAt

self assert: ('������������' findString: '��' startingAt: 1) = 0.
self assert: ('������������' findString: '��' startingAt: 10) = 0.
self assert: ('������������' findString: '�' startingAt: 5) = 7.
self assert: ('salkjsdlkgfee' findString: 'lke' startingAt: 1) = 0.
self assert: ('salkjsdlkgfee' findString: 'ee'startingAt: 3) = 12.
self assert: (' ' findString: '' startingAt: 1) = 0.