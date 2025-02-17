Class {
	#name : #OntoUMLMediation,
	#superclass : #OntoUMLElement,
	#category : 'OntoUML-Profile-OntoUML-Profile'
}

{ #category : #'accessing - Formal' }
OntoUMLMediation >> base_Association [
	^ (sharedGeneralizations at: #Formal) base_Association
]

{ #category : #'accessing - Formal' }
OntoUMLMediation >> base_Association: anAssociation [
	(sharedGeneralizations at: #Formal) base_Association: anAssociation
]

{ #category : #initialization }
OntoUMLMediation >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #BasicInternal.
	}
]

{ #category : #initialization }
OntoUMLMediation >> initializeSharedGeneralizations [
	sharedGeneralizations at: #Formal put: (OntoUMLFormal newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #BasicInternal put: (OntoUMLBasicInternal newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Mediation put: self.
]
