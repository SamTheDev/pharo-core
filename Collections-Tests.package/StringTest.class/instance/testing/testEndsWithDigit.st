testEndsWithDigit

self deny: ('������������' endsWithDigit).
self assert: ('������������9' endsWithDigit).
self deny: ('99test' endsWithDigit).
self assert: ('  999' endsWithDigit).