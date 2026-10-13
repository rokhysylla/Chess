Class {
	#name : 'MyPieceEmpty',
	#superclass : 'MyPiece',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'accessing' }
MyPieceEmpty >> color [
	^ nil
]

{ #category : 'accessing' }
MyPieceEmpty >> id [ 
	^''
]

{ #category : 'rendering' }
MyPieceEmpty >> isEnemyOf:aPiece [
	^false
]

{ #category : 'rendering' }
MyPieceEmpty >> isPiece [ 
	^false
]

{ #category : 'rendering' }
MyPieceEmpty >> renderPieceOn:aSquare [
	^ aSquare color isBlack
		ifTrue: [ 'x' ]
		ifFalse: [ 'z' ]
]

{ #category : 'rendering' }
MyPieceEmpty >> targetSquaresLegal: aBoolean [
	^#()
]
