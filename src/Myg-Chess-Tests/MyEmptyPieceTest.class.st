Class {
	#name : 'MyEmptyPieceTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyEmptyPieceTest >> testEmptyPieceNoLegalMoves [
	| emptyPiece |
	emptyPiece := MyPieceEmpty new.
	self assert: (emptyPiece targetSquaresLegal: false) isEmpty
]

{ #category : 'tests' }
MyEmptyPieceTest >> testIsNotAPiece [
	| emptyPiece |
	emptyPiece := MyPieceEmpty new.
	self assert: emptyPiece isPiece equals:false.
]
