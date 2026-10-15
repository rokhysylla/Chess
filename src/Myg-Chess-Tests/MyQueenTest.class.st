Class {
	#name : 'MyQueenTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyQueenTest >> testId [
	self assert: MyQueen new id equals: 'Q'
]

{ #category : 'tests' }
MyQueenTest >> testQueenCanCaptureEnemyPiece [
	| queen enemyRook board |
	board := MyChessBoard empty.
	board at: 'd4' put: (queen := MyQueen white).
	board at: 'g7' put: (enemyRook := MyRook black).
	
	self assert: (queen targetSquares includes: (board at: 'g7')).
]

{ #category : 'tests' }
MyQueenTest >> testRenderPieceOn [
    | q square1 |
    q := MyQueen new.
    q color:Color white.
    square1 := MyChessSquare new.
    square1 color: Color white.
    q renderPieceOn: square1.
    self assert: q isWhite equals:true.
]
