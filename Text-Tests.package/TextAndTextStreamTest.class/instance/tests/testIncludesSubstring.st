testIncludesSubstring
	"test that Text correctly checks that the supplied substring is present (case sensitive)"
	self assert: ('testing this string' asText includesSubstring: 'ring').
	self assert: ('������������' asText includesSubstring: '').
	self deny: ('������������' asText includesSubstring: 'a').
	self assert: ('������������' asText includesSubstring: '��').
	self deny: ('kjdsnlksjdf' asText includesSubstring: 'K')