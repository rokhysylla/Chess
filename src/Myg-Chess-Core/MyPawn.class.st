Class {
	#name : 'MyPawn',
	#superclass : 'MyPiece',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'as yet unclassified' }
MyPawn >> captureDiagonal [

	| diagonalTargets |
	diagonalTargets := self isWhite
		ifTrue: [ { square up left . square up right } ]
		ifFalse: [ { square down left . square down right } ].
		
	^ diagonalTargets select: [ :s |
		s notNil and: [ s hasPiece and: [ s contents color ~= color ] ] ]
]

{ #category : 'accessing' }
MyPawn >> id [

	^ 'P'
]

{ #category : 'as yet unclassified' }
MyPawn >> isfirstPosition [
	^ self isWhite
		ifTrue: [ square name second = $2 ]
		ifFalse: [ square name second = $7 ]
]

{ #category : 'as yet unclassified' }
MyPawn >> moveforward [
	| moves nextSquare |
	moves := OrderedCollection new.
	nextSquare := self isWhite ifTrue: [ square up ] ifFalse: [ square down ].
	
	 [ nextSquare hasPiece not] ifTrue: [
		moves add: nextSquare.
		self isfirstPosition ifTrue: [
			| doubleSquare |
			doubleSquare := self isWhite ifTrue: [ nextSquare up ] ifFalse: [ nextSquare down ].
			[ doubleSquare hasPiece not ] ifTrue:[
			moves add:doubleSquare]]].
			
	^ moves
]

{ #category : 'rendering' }
MyPawn >> renderPieceOn: aSquare [ 
	
	^ aSquare renderPawn: self
]

{ #category : 'rendering' }
MyPawn >> targetSquaresLegal: aBoolean [

	^ (self isWhite
		   ifTrue: [ { square up } ]
		   ifFalse: [ { square down } ]) select: [ :s |
		  s notNil and: [
			  s hasPiece not or: [ s contents color ~= color ] ] ]
]
