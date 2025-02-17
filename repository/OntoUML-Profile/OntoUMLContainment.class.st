Class {
	#name : #OntoUMLContainment,
	#superclass : #OntoUMLElement,
	#category : 'OntoUML-Profile-OntoUML-Profile'
}

{ #category : #'accessing - Formal' }
OntoUMLContainment >> base_Association [
	^ (sharedGeneralizations at: #Formal) base_Association
]

{ #category : #'accessing - Formal' }
OntoUMLContainment >> base_Association: anAssociation [
	(sharedGeneralizations at: #Formal) base_Association: anAssociation
]

{ #category : #initialization }
OntoUMLContainment >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #BasicInternal.
	}
]

{ #category : #initialization }
OntoUMLContainment >> initializeSharedGeneralizations [
	sharedGeneralizations at: #Formal put: (OntoUMLFormal newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #BasicInternal put: (OntoUMLBasicInternal newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Containment put: self.
]
