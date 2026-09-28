Class {
	#name : 'MyPawnTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyPawnTest class >> testRenderPieceOn [
    | p square1 |
    p := MyPawn new.
	 p color: Color white.
    square1 := MyChessSquare new.
    p renderPieceOn: square1.
    self assert: true.
]

{ #category : 'tests' }
MyPawnTest >> testFirstPawnMove [

| pion squares board |
	board := MyChessBoard empty.
	board at: 'e2' put: (pion := MyPawn white).

	squares := pion targetSquares.
     self
		assertCollection: squares
		hasSameElements: { (board at: 'e3') . (board at: 'e4') }
]

{ #category : 'tests' }
MyPawnTest >> testId [

	self assert: MyPawn new id equals: 'P'
]

{ #category : 'tests' }
MyPawnTest >> testMoves [

    | pion squares board |
    board := MyChessBoard empty.
    board at: 'e4' put: (pion := MyPawn white).

    squares := pion targetSquares.

    self
       assertCollection: squares
		hasSameElements: { board at: 'e5' }
]

{ #category : 'tests' }
MyPawnTest >> testRenderPieceOn [
    | p square1 |
    p := MyPawn new.
    p color:Color white.
    square1 := MyChessSquare new.
    square1 color: Color white.
    p renderPieceOn: square1.
    self assert: p isWhite equals:true.
]

{ #category : 'as yet unclassified' }
MyPawnTest >> testessai [
 |p|
p := MyPawn new.
p color: Color white.
p isWhite.
]
