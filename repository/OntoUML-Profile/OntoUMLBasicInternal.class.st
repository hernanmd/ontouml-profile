Class {
	#name : #OntoUMLBasicInternal,
	#superclass : #OntoUMLElement,
	#category : 'OntoUML-Profile-OntoUML-Profile'
}

{ #category : #'accessing - Formal' }
OntoUMLBasicInternal >> base_Association [
	^ (sharedGeneralizations at: #Formal) base_Association
]

{ #category : #'accessing - Formal' }
OntoUMLBasicInternal >> base_Association: anAssociation [
	(sharedGeneralizations at: #Formal) base_Association: anAssociation
]

{ #category : #initialization }
OntoUMLBasicInternal >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #Formal.
	}
]

{ #category : #initialization }
OntoUMLBasicInternal >> initializeSharedGeneralizations [
	sharedGeneralizations at: #Formal put: (OntoUMLFormal newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #BasicInternal put: self.
]
