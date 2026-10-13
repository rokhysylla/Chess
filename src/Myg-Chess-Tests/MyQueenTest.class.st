Class {
	#name : 'MyQueenTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyQueenTest >> testQueenCanCaptureEnemyPiece [
	| queen enemyRook board |
	board := MyChessBoard empty.
	board at: 'd4' put: (queen := MyQueen white).
	board at: 'g7' put: (enemyRook := MyRook black).
	
	self assert: (queen targetSquares includes: (board at: 'g7')).
]
