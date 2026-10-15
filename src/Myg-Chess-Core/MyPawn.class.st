Class {
	#name : 'MyPawn',
	#superclass : 'MyPiece',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'rendering' }
MyPawn >> blackPieceCharacters [
	^ #( $P $p )
]

{ #category : 'as yet unclassified' }
MyPawn >> captureDiagonal [

	| diagonalTargets |
	diagonalTargets := self isWhite
		ifTrue: [ { square up left . square up right } ]
		ifFalse: [ { square down left . square down right } ].
		
	^ diagonalTargets select: [ :s |
		s notNil and: [ s contents isEnemyOf:self]]
]

{ #category : 'accessing' }
MyPawn >> id [

	^ 'P'
]

{ #category : 'as yet unclassified' }
MyPawn >> isEnemyOf:aPiece [
	^self color ~= aPiece color
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
	
	 (nextSquare notNil and:[ nextSquare hasPiece not]) ifTrue: [
		moves add: nextSquare.
		self isfirstPosition ifTrue: [
			| doubleSquare |
			doubleSquare := self isWhite ifTrue: [ nextSquare up ] ifFalse: [ nextSquare down ].
			(doubleSquare notNil and:[ doubleSquare hasPiece not ]) ifTrue:[
			moves add:doubleSquare]]].
			
	^ moves
]

{ #category : 'rendering' }
MyPawn >> targetSquaresLegal: aBoolean [

	^ self moveforward , self captureDiagonal 
]

{ #category : 'rendering' }
MyPawn >> whitePieceCharacters [
	^ #( $O $o )
]
