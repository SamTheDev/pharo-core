testLessThan

self assert: ('@' < 'A').
self assert: ('abcd' < '� � �').
self assert: ('xyz' < '�').
self assert: ('� t e s t' < '� � �').
self assert: ('' < 'a').
self deny: ('� � �' < '� � �').
self deny: ('aaa' < 'AAA').

