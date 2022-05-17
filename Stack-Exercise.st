!classDefinition: #OOStackTest category: 'Stack-Exercise'!
TestCase subclass: #OOStackTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!OOStackTest methodsFor: 'test' stamp: 'HernanWilkinson 5/7/2012 11:30'!
test01StackShouldBeEmptyWhenCreated

	| stack |
	
	stack := OOStack new.
	
	self assert: stack isEmpty! !

!OOStackTest methodsFor: 'test' stamp: 'NR 5/13/2020 13:29:55'!
test02PushAddElementsToTheStack

	| stack |
	
	stack := OOStack new.
	stack push: 'something'.
	
	self deny: stack isEmpty! !

!OOStackTest methodsFor: 'test' stamp: 'NR 5/13/2020 13:30:01'!
test03PopRemovesElementsFromTheStack

	| stack |
	
	stack := OOStack new.
	stack push: 'something'.
	stack pop.
	
	self assert: stack isEmpty! !

!OOStackTest methodsFor: 'test' stamp: 'NR 5/13/2020 13:30:09'!
test04PopReturnsLastPushedObject

	| stack pushedObject |
	
	stack := OOStack new.
	pushedObject := 'something'.
	stack push: pushedObject.
	
	self assert: stack pop = pushedObject! !

!OOStackTest methodsFor: 'test' stamp: 'NR 5/13/2020 13:30:48'!
test05StackBehavesLIFO

	| stack firstPushedObject secondPushedObject |
	
	stack := OOStack new.
	firstPushedObject := 'first'.
	secondPushedObject := 'second'.
	
	stack push: firstPushedObject.
	stack push: secondPushedObject.
	
	self assert: stack pop = secondPushedObject.
	self assert: stack pop = firstPushedObject.
	self assert: stack isEmpty 
	! !

!OOStackTest methodsFor: 'test' stamp: 'NR 5/13/2020 13:30:20'!
test06TopReturnsLastPushedObject

	| stack pushedObject |
	
	stack := OOStack new.
	pushedObject := 'something'.
	
	stack push: pushedObject.
	
	self assert: stack top = pushedObject.
	! !

!OOStackTest methodsFor: 'test' stamp: 'NR 5/13/2020 13:30:24'!
test07TopDoesNotRemoveObjectFromStack

	| stack pushedObject |
	
	stack := OOStack new.
	pushedObject := 'something'.
	
	stack push: pushedObject.
	
	self assert: stack size = 1.
	stack top.
	self assert: stack size = 1.
	! !

!OOStackTest methodsFor: 'test' stamp: 'HAW 4/14/2017 22:48:26'!
test08CanNotPopWhenThereAreNoObjectsInTheStack

	| stack  |
	
	stack := OOStack new.
	self
		should: [ stack pop ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText = OOStack stackEmptyErrorDescription ]
		
! !

!OOStackTest methodsFor: 'test' stamp: 'NR 5/13/2020 13:30:31'!
test09CanNotPopWhenThereAreNoObjectsInTheStackAndTheStackHadObjects

	| stack  |
	
	stack := OOStack new.
	stack push: 'something'.
	stack pop.
	
	self
		should: [ stack pop ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText = OOStack stackEmptyErrorDescription ]
		
! !

!OOStackTest methodsFor: 'test' stamp: 'HAW 4/14/2017 22:48:44'!
test10CanNotTopWhenThereAreNoObjectsInTheStack

	| stack  |
	
	stack := OOStack new.
	self
		should: [ stack top ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText = OOStack stackEmptyErrorDescription ]
		
! !


!classDefinition: #SentenceFinderByPrefixTest category: 'Stack-Exercise'!
TestCase subclass: #SentenceFinderByPrefixTest
	instanceVariableNames: 'pila'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!SentenceFinderByPrefixTest methodsFor: 'test' stamp: 'Joel 5/17/2022 00:01:28'!
test01hacerfindWintDevuelveWinterishere
	| buscador resultados |
	buscador := self crearBuscadorCon: 'Wint'.
	resultados := buscador find.
	
	self assert: resultados pop equals: 'Winter is here'
	
	! !


!SentenceFinderByPrefixTest methodsFor: 'create' stamp: 'Joel 5/16/2022 23:46:19'!
crearBuscadorCon: unPrefijo
	^SentenceFinderByPrefix conPrefijo: unPrefijo pila: pila.! !


!SentenceFinderByPrefixTest methodsFor: 'setup' stamp: 'Joel 5/16/2022 23:37:04'!
setUp
	pila := OOStack new.
	pila push: 'winter is coming'.
	pila push: 'winning is everything'.
	pila push: 'The winds of Winter'.
	pila push: 'Winter is here'.! !


!classDefinition: #OOStack category: 'Stack-Exercise'!
Object subclass: #OOStack
	instanceVariableNames: 'elementos'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!OOStack methodsFor: 'testing' stamp: 'Joel 5/16/2022 18:11:57'!
isEmpty
	^elementos isEmpty! !

!OOStack methodsFor: 'testing' stamp: 'Joel 5/16/2022 23:57:07'!
isString
	elementos do:[ :elemento |
		elemento isString ifFalse:[ ^true ].
	].
	^false
	! !


!OOStack methodsFor: 'initialization' stamp: 'Joel 5/16/2022 18:23:56'!
initialize
	elementos := OrderedCollection new.! !


!OOStack methodsFor: 'operations' stamp: 'Joel 5/16/2022 23:13:42'!
pop
	self verificarSiEstaParaPopear .
	^elementos removeLast .! !

!OOStack methodsFor: 'operations' stamp: 'Joel 5/16/2022 23:13:10'!
push: elemento
	self verificarSiEstaParaPushear .
	elementos addLast: elemento.! !


!OOStack methodsFor: 'accessing' stamp: 'Joel 5/16/2022 18:42:15'!
size
	^elementos size.! !

!OOStack methodsFor: 'accessing' stamp: 'Joel 5/16/2022 23:13:35'!
top
	self verificarSiEstaParaPopear .
	^elementos at: self size.! !


!OOStack methodsFor: 'verificacion' stamp: 'Joel 5/16/2022 23:44:17'!
verificarSiEstaParaPopear
	self isEmpty ifTrue: [self error: OOStack stackEmptyErrorDescription. ].! !

!OOStack methodsFor: 'verificacion' stamp: 'Joel 5/16/2022 23:44:27'!
verificarSiEstaParaPushear
	! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'OOStack class' category: 'Stack-Exercise'!
OOStack class
	instanceVariableNames: ''!

!OOStack class methodsFor: 'error descriptions' stamp: 'HernanWilkinson 5/7/2012 11:51'!
stackEmptyErrorDescription
	
	^ 'Stack is empty'! !


!classDefinition: #OOStackLimited category: 'Stack-Exercise'!
OOStack subclass: #OOStackLimited
	instanceVariableNames: 'limitador'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!OOStackLimited methodsFor: 'verificacion' stamp: 'Joel 5/17/2022 00:37:06'!
verificarSiEstaParaPushear
	(self size + 1) = limitador ifTrue: [ self error: OOStackLimited errorNoSePermiteMasElementos. ].! !


!OOStackLimited methodsFor: 'initialization' stamp: 'Joel 5/17/2022 00:35:04'!
inicializarConLimitador:unLimitador
	limitador := unLimitador.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'OOStackLimited class' category: 'Stack-Exercise'!
OOStackLimited class
	instanceVariableNames: ''!

!OOStackLimited class methodsFor: 'error descriptions' stamp: 'Joel 5/17/2022 00:32:39'!
errorNoSePermiteMasElementos
	^'No se permiten apilar mas elementos.'! !


!OOStackLimited class methodsFor: 'initialization' stamp: 'Joel 5/17/2022 00:33:58'!
conLimitador: unLimitador
	^self new inicializarConLimitador: unLimitador ! !


!classDefinition: #SentenceFinderByPrefix category: 'Stack-Exercise'!
Object subclass: #SentenceFinderByPrefix
	instanceVariableNames: 'prefijo pila'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!SentenceFinderByPrefix methodsFor: 'operations' stamp: 'Joel 5/17/2022 00:25:24'!
find
	| pilaAuxiliar resultados |
	pilaAuxiliar := OOStack new.
	resultados := OOStack new.
	(1 to: pila size) do:[ :i | | pop |
			pop := pila pop.
			((pop atAll: (1 to:prefijo size)) = prefijo) ifTrue:[ resultados push: pop.].
			pilaAuxiliar push: pop.
	].
	(1 to: pila size) do:[ :i | pila push: pilaAuxiliar pop. ].
	^resultados
	! !


!SentenceFinderByPrefix methodsFor: 'initialization' stamp: 'Joel 5/16/2022 23:53:13'!
inicializarConPrefijo: unPrefijo pila: unaPila
	(unPrefijo includesSubString: ' ') ifTrue:[ self error: SentenceFinderByPrefix errorPrefijoConEspacios. ].
	(unPrefijo = '') ifTrue:[ self error: SentenceFinderByPrefix errorPrefijoVacio. ].
	(unaPila isString) ifTrue:[ self error: SentenceFinderByPrefix errorStackNoEsTexto. ].
	prefijo := unPrefijo .
	pila := unaPila .! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'SentenceFinderByPrefix class' category: 'Stack-Exercise'!
SentenceFinderByPrefix class
	instanceVariableNames: ''!

!SentenceFinderByPrefix class methodsFor: 'error descriptions' stamp: 'Joel 5/16/2022 22:54:31'!
errorPrefijoConEspacios
	^'Una cadena con espacios no es valida para un prefijo.'! !

!SentenceFinderByPrefix class methodsFor: 'error descriptions' stamp: 'Joel 5/16/2022 22:54:24'!
errorPrefijoVacio
	^'Una cadena vacia no es valida para un prefijo.'! !

!SentenceFinderByPrefix class methodsFor: 'error descriptions' stamp: 'Joel 5/16/2022 22:58:29'!
errorStackNoEsTexto
	^'La pila no es texto'! !


!SentenceFinderByPrefix class methodsFor: 'initialization' stamp: 'Joel 5/16/2022 23:58:20'!
conPrefijo: unPrefijo pila: unaPila
	^self new inicializarConPrefijo: unPrefijo pila: unaPila. ! !
