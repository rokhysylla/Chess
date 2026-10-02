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
MyPieceEmpty >> renderPieceOn: aSquare [
	^' '
]
