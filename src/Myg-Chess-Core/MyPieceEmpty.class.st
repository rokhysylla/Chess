Class {
	#name : 'MyPieceEmpty',
	#superclass : 'MyPiece',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'accessing' }
MyPieceEmpty >> id [ 
	^''
]

{ #category : 'rendering' }
MyPieceEmpty >> isPiece [ 
	^false
]

{ #category : 'rendering' }
MyPieceEmpty >> onEssai [
	^' '
]

{ #category : 'rendering' }
MyPieceEmpty >> renderPieceOn: aSquare [
	^' '
]

{ #category : 'rendering' }
MyPieceEmpty >> targetSquaresLegal: aBoolean [
	^#()
]
