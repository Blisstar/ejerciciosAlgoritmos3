!classDefinition: #Habitat category: 'AvispasYAbejasParte2'!
DenotativeObject subclass: #Habitat
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AvispasYAbejasParte2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Habitat class' category: 'AvispasYAbejasParte2'!
Habitat class
	instanceVariableNames: 'cantidadHuevosAvispaOrnella cantidadDeAlimento hayAvispas cantidadDePolillas cantidadDeAvispas cantidadDeOrugasDeAvispas hayAimento cantidadDeHuevosDeAvispas hayOruga hayPolilla hayPolillas cantidadHuevosAvispaOriana cantidadHuevosAvispaPolly'!

!Habitat class methodsFor: 'getters' stamp: 'Joel 4/25/2022 11:14:37'!
cantidadDeAvispas
	^1! !

!Habitat class methodsFor: 'getters' stamp: 'JMK 4/25/2022 13:15:01'!
cantidadDeHuevosDeAvispas
	cantidadDeHuevosDeAvispas := cantidadHuevosAvispaOriana + cantidadHuevosAvispaOrnella + cantidadHuevosAvispaPolly.
	^cantidadDeHuevosDeAvispas! !

!Habitat class methodsFor: 'getters' stamp: 'Joel 4/25/2022 10:40:36'!
cantidadDeOrugasDeAvispas
	^cantidadDeOrugasDeAvispas! !

!Habitat class methodsFor: 'getters' stamp: 'JMK 4/25/2022 13:11:48'!
cantidadHuevosAvispaOriana
	^cantidadHuevosAvispaOriana.! !

!Habitat class methodsFor: 'getters' stamp: 'JMK 4/25/2022 13:13:10'!
cantidadHuevosAvispaOrnella
	^cantidadHuevosAvispaOrnella.! !

!Habitat class methodsFor: 'getters' stamp: 'JMK 4/25/2022 13:13:45'!
cantidadHuevosAvispaPolly
	^cantidadHuevosAvispaPolly.! !


!Habitat class methodsFor: 'setters' stamp: 'JMK 4/25/2022 12:52:36'!
cantidadDePolillas
	^cantidadDePolillas.! !

!Habitat class methodsFor: 'setters' stamp: 'JMK 4/25/2022 12:43:23'!
colocarAlimento
	cantidadDeAlimento := cantidadDeAlimento +1.
	hayAimento := true .! !

!Habitat class methodsFor: 'setters' stamp: 'JMK 4/25/2022 12:57:38'!
colocarHuevo
	cantidadDeHuevosDeAvispas := cantidadDeHuevosDeAvispas + 1.
	cantidadDeOrugasDeAvispas := cantidadDeOrugasDeAvispas -1.
	cantidadDePolillas := cantidadDePolillas -1.! !

!Habitat class methodsFor: 'setters' stamp: 'JMK 4/25/2022 12:14:55'!
colocarOruga: numeroDeOrugasColocar
	cantidadDeOrugasDeAvispas := cantidadDeOrugasDeAvispas + numeroDeOrugasColocar.
	hayOruga := true.! !

!Habitat class methodsFor: 'setters' stamp: 'JMK 4/25/2022 12:24:30'!
colocarPolilla: numeroDePolillasAcolocar
	cantidadDePolillas := cantidadDePolillas + numeroDePolillasAcolocar.
	hayPolilla := true.! !

!Habitat class methodsFor: 'setters' stamp: 'JMK 4/25/2022 12:44:29'!
hayAlimento
	^cantidadDeAlimento > 0.! !

!Habitat class methodsFor: 'setters' stamp: 'JMK 4/25/2022 12:45:47'!
hayOrugas
	^cantidadDeOrugasDeAvispas > 0.! !

!Habitat class methodsFor: 'setters' stamp: 'JMK 4/25/2022 12:46:41'!
hayPolillas
	^cantidadDePolillas > 0.! !

!Habitat class methodsFor: 'setters' stamp: 'JMK 4/25/2022 12:25:45'!
matarAvispas
	cantidadDeHuevosDeAvispas := 0.
	hayAvispas:=false.! !

!Habitat class methodsFor: 'setters' stamp: 'JMK 4/25/2022 12:11:59'!
matarOrugas
	cantidadDeOrugasDeAvispas := 0.
	hayOruga:= false.! !

!Habitat class methodsFor: 'setters' stamp: 'JMK 4/25/2022 12:25:58'!
matarPolillas
	cantidadDePolillas := 0.
	hayPolillas := false.! !

!Habitat class methodsFor: 'setters' stamp: 'JMK 4/25/2022 12:43:47'!
quitarAlimento
	cantidadDeAlimento :=0.
	hayAimento := false! !


!Habitat class methodsFor: '--** private fileout/in **--' stamp: 'JMK 4/25/2022 13:23:53'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	cantidadHuevosAvispaOrnella := nil.
	cantidadDeAlimento := 1.
	hayAvispas := false.
	cantidadDePolillas := -1.
	cantidadDeAvispas := nil.
	cantidadDeOrugasDeAvispas := -1.
	hayAimento := true.
	cantidadDeHuevosDeAvispas := 1.
	hayOruga := false.
	hayPolilla := true.
	hayPolillas := false.
	cantidadHuevosAvispaOriana := nil.
	cantidadHuevosAvispaPolly := nil.! !


!classDefinition: #LaAvispaOriana category: 'AvispasYAbejasParte2'!
DenotativeObject subclass: #LaAvispaOriana
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AvispasYAbejasParte2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'LaAvispaOriana class' category: 'AvispasYAbejasParte2'!
LaAvispaOriana class
	instanceVariableNames: 'cantidadDeHuevosPuestos'!

!LaAvispaOriana class methodsFor: 'actions' stamp: 'JMK 4/25/2022 13:10:28'!
intentarReproducirse
	(Habitat hayAlimento | Habitat hayOrugas) ifTrue: [Habitat cantidadDeAvispas > 0 ifTrue:[Habitat colocarHuevo.]]! !


!LaAvispaOriana class methodsFor: '--** private fileout/in **--' stamp: 'JMK 4/25/2022 13:23:53'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	cantidadDeHuevosPuestos := nil.! !


!classDefinition: #LaAvispaOrnella category: 'AvispasYAbejasParte2'!
DenotativeObject subclass: #LaAvispaOrnella
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AvispasYAbejasParte2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'LaAvispaOrnella class' category: 'AvispasYAbejasParte2'!
LaAvispaOrnella class
	instanceVariableNames: 'cantidadDeHuevosPuestos'!

!LaAvispaOrnella class methodsFor: 'actions' stamp: 'JMK 4/25/2022 13:10:37'!
intentarReproducirse
	(Habitat hayAlimento | Habitat hayOrugas) ifTrue: [Habitat cantidadDeAvispas > 0 ifTrue:[Habitat colocarHuevo.]]! !


!LaAvispaOrnella class methodsFor: '--** private fileout/in **--' stamp: 'JMK 4/25/2022 13:23:53'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	cantidadDeHuevosPuestos := nil.! !


!classDefinition: #LaAvispaPolly category: 'AvispasYAbejasParte2'!
DenotativeObject subclass: #LaAvispaPolly
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AvispasYAbejasParte2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'LaAvispaPolly class' category: 'AvispasYAbejasParte2'!
LaAvispaPolly class
	instanceVariableNames: 'cantidadDeHuevosPuestos'!

!LaAvispaPolly class methodsFor: 'actions' stamp: 'JMK 4/25/2022 13:10:44'!
intentarReproducirse
	(Habitat hayAlimento | Habitat hayPolillas) ifTrue: [Habitat cantidadDeAvispas > 0 ifTrue:[Habitat colocarHuevo.]]! !


!LaAvispaPolly class methodsFor: '--** private fileout/in **--' stamp: 'JMK 4/25/2022 13:23:53'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	cantidadDeHuevosPuestos := nil.! !


!classDefinition: #PruebasReproduccionDeAvispas category: 'AvispasYAbejasParte2'!
DenotativeObject subclass: #PruebasReproduccionDeAvispas
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AvispasYAbejasParte2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'PruebasReproduccionDeAvispas class' category: 'AvispasYAbejasParte2'!
PruebasReproduccionDeAvispas class
	instanceVariableNames: 'test01EnElInicioDeLosTiemposNoHayHuevos'!

!PruebasReproduccionDeAvispas class methodsFor: 'tests - Oriana' stamp: 'JMB 4/18/2022 18:38:11'!
test01EnElInicioDeLosTiemposNoHayHuevos	
	self retrocederElHabitatAlInicioDeLosTiempos.
	
	Assert that: self habitat cantidadDeHuevosDeAvispas isEqualTo: 0! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - Oriana' stamp: 'JMB 4/21/2022 12:12:44'!
test02CuandoOrianaLaAvispaSeReproducePorPrimeraVezDejaUnHuevo
	self retrocederElHabitatAlInicioDeLosTiempos. 
	self hacerQueElHabitatTengaLosRecursosSuficientes.
	
	self laAvispaOriana intentarReproducirse.
	
	Assert that: self habitat cantidadDeHuevosDeAvispas isEqualTo: 1.! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - Oriana' stamp: 'JMB 4/21/2022 12:12:11'!
test03CadaVezQueOrianaSeReproduceDejaUnHuevoMas
	self retrocederElHabitatAlInicioDeLosTiempos. 
	self hacerQueElHabitatTengaLosRecursosSuficientes.
	self laAvispaOriana intentarReproducirse.
	
	self laAvispaOriana intentarReproducirse.
	
	Assert that: self habitat cantidadDeHuevosDeAvispas isEqualTo: 2.! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - Oriana' stamp: 'Joel 4/25/2022 10:52:38'!
test04ParaDejarUnHuevoOrianaLaAvispaReduceLaPoblacionDeUnaOrugaANinguna
	self retrocederElHabitatAlInicioDeLosTiempos.
	self queElHabitatTengaUnaOrugaMas.
	
	self laAvispaOriana intentarReproducirse.
	
	Assert that: self habitat cantidadDeOrugasDeAvispas isEqualTo: 0.! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - Oriana' stamp: 'JMK 4/25/2022 11:35:44'!
test05ParaDejarUnHuevoOrianaLaAvispaDecrementaEnUnoLaPoblacionDeOrugasDelHabitat
	self retrocederElHabitatAlInicioDeLosTiempos.
	self queElHabitatTengaDosOrugasMas.
	
	self laAvispaOriana intentarReproducirse.
	
	Assert that: self habitat cantidadDeOrugasDeAvispas isEqualTo: 1.! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - Oriana' stamp: 'JMB 4/21/2022 12:13:22'!
test06CuandoNoHayOrugasOrianaLaAvispaNoPuedeDejarHuevos
	self retrocederElHabitatAlInicioDeLosTiempos.
	
	self laAvispaOriana intentarReproducirse.
	
	Assert that: self habitat cantidadDeHuevosDeAvispas isEqualTo: 0.! !


!PruebasReproduccionDeAvispas class methodsFor: 'tests - Ornella' stamp: 'JMB 4/21/2022 12:14:24'!
test07CuandoOrnellaLaAvispaSeReproduceDejaUnHuevo
	self retrocederElHabitatAlInicioDeLosTiempos. 
	self hacerQueElHabitatTengaLosRecursosSuficientes.
	
	self laAvispaOrnella intentarReproducirse.
	
	Assert that: self habitat cantidadDeHuevosDeAvispas isEqualTo: 1.! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - Ornella' stamp: 'JMK 4/25/2022 12:17:53'!
test08ParaDejarUnHuevoOrnellaLaAvispaReduceLaPoblacionDeUnaOrugaANinguna
	self retrocederElHabitatAlInicioDeLosTiempos.
	self queElHabitatTengaUnaOrugaMas.
	
	self laAvispaOrnella intentarReproducirse.
	
	Assert that: self habitat cantidadDeOrugasDeAvispas isEqualTo: 0.! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - Ornella' stamp: 'JMB 4/21/2022 12:14:11'!
test09CuandoNoHayOrugasOrnellaLaAvispaNoPuedeDejarHuevos
	self retrocederElHabitatAlInicioDeLosTiempos.
	
	self laAvispaOrnella intentarReproducirse.
	
	Assert that: self habitat cantidadDeHuevosDeAvispas isEqualTo: 0.! !


!PruebasReproduccionDeAvispas class methodsFor: 'tests - Polly' stamp: 'JMB 4/21/2022 12:14:46'!
test10CuandoPollyLaAvispaSeReproduceDejaUnHuevo
	self retrocederElHabitatAlInicioDeLosTiempos. 
	self hacerQueElHabitatTengaLosRecursosSuficientes.
	
	self laAvispaPolly intentarReproducirse.
	
	Assert that: self habitat cantidadDeHuevosDeAvispas isEqualTo: 1.! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - Polly' stamp: 'JMB 4/21/2022 12:14:40'!
test11ParaDejarUnHuevoPollyLaAvispaReduceLaPoblacionDeUnaPolillaANinguna
	self retrocederElHabitatAlInicioDeLosTiempos.
	self queElHabitatTengaUnaPolillaMas.
	
	self laAvispaPolly intentarReproducirse.
	
	Assert that: self habitat cantidadDePolillas isEqualTo: 0.! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - Polly' stamp: 'JMB 4/21/2022 12:14:36'!
test12ParaDejarUnHuevoPollyLaAvispaDecrementaEnUnoLaPoblacionDePolillasDelHabitat
	self retrocederElHabitatAlInicioDeLosTiempos.
	self queElHabitatTengaDosPolillasMas.
	
	self laAvispaPolly intentarReproducirse.
	
	Assert that: self habitat cantidadDePolillas isEqualTo: 1.! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - Polly' stamp: 'JMB 4/21/2022 12:14:30'!
test13CuandoNoHayPolillasPollyLaAvispaNoPuedeDejarHuevos
	self retrocederElHabitatAlInicioDeLosTiempos.
	
	self laAvispaPolly intentarReproducirse.
	
	Assert that: self habitat cantidadDeHuevosDeAvispas isEqualTo: 0.! !


!PruebasReproduccionDeAvispas class methodsFor: 'tests - firma genetica' stamp: 'JMB 4/21/2022 12:15:06'!
test14CuandoOrianaLaAvispaSeReproduceDejaUnHuevoConSuFirmaGenetica
	self retrocederElHabitatAlInicioDeLosTiempos. 
	self hacerQueElHabitatTengaLosRecursosSuficientes.
	
	self laAvispaOriana intentarReproducirse.
	
	Assert that: self cantidadDeHuevosConLaFirmaGeneticaDeOriana isEqualTo: 1.! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - firma genetica' stamp: 'JMB 4/21/2022 12:15:02'!
test15CuandoOrianaLaAvispaAunNoSeReprodujoNoTieneHuevosConSuFirmaGenetica
	self retrocederElHabitatAlInicioDeLosTiempos. 
	
	self laAvispaOriana intentarReproducirse.
	
	Assert that: self cantidadDeHuevosConLaFirmaGeneticaDeOriana isEqualTo: 0.! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - firma genetica' stamp: 'JMB 4/21/2022 12:14:58'!
test16CuandoPollyLaAvispaSeReproduceDejaUnHuevoConSuFirmaGenetica
	self retrocederElHabitatAlInicioDeLosTiempos. 
	self hacerQueElHabitatTengaLosRecursosSuficientes.
	
	self laAvispaPolly intentarReproducirse.
	
	Assert that: self cantidadDeHuevosConLaFirmaGeneticaDePolly isEqualTo: 1.
	Assert that: self cantidadDeHuevosConLaFirmaGeneticaDeOriana isEqualTo: 0.! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - firma genetica' stamp: 'JMB 4/21/2022 12:14:54'!
test17CuandoOrnellaLaAvispaSeReproduceDejaUnHuevoConLaMismaFirmaGeneticaQueOriana
	self retrocederElHabitatAlInicioDeLosTiempos. 
	self hacerQueElHabitatTengaLosRecursosSuficientes.
	
	self laAvispaOrnella intentarReproducirse.
	
	Assert that: self cantidadDeHuevosConLaFirmaGeneticaDeOrnella isEqualTo: 1.
	Assert 
		that: self cantidadDeHuevosConLaFirmaGeneticaDeOrnella  
		isEqualTo: self cantidadDeHuevosConLaFirmaGeneticaDeOriana! !


!PruebasReproduccionDeAvispas class methodsFor: 'tests - Lara la ladrona' stamp: 'JMB 4/21/2022 12:15:27'!
test18CuandoLaraLaAvispaSeReproduceDejaUnHuevoConSuFirmaGenetica
	self retrocederElHabitatAlInicioDeLosTiempos. 
	self hacerQueElHabitatTengaLosRecursosSuficientes.
	self laAvispaOrnella intentarReproducirse.
	
	self laAvispaLara intentarReproducirse.
	
	Assert that: self cantidadDeHuevosConLaFirmaGeneticaDeLara isEqualTo: 1.! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - Lara la ladrona' stamp: 'JMB 4/21/2022 12:15:22'!
test19CuandoLaraLaAvispaSeReproduceLeSacaElHuevoAOtraAvispa
	self retrocederElHabitatAlInicioDeLosTiempos. 
	self hacerQueElHabitatTengaLosRecursosSuficientes.
	self laAvispaOriana intentarReproducirse.
	
	self laAvispaLara intentarReproducirse.
	
	Assert that: self cantidadDeHuevosConLaFirmaGeneticaDeOriana isEqualTo: 0.! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - Lara la ladrona' stamp: 'JMB 4/21/2022 12:15:18'!
test20CuandoLaraLaAvispaSeReproduceLeSacaElHuevoAPolly
	self retrocederElHabitatAlInicioDeLosTiempos. 
	self hacerQueElHabitatTengaLosRecursosSuficientes.
	self laAvispaPolly intentarReproducirse.
	
	self laAvispaLara intentarReproducirse.
	
	Assert that: self cantidadDeHuevosConLaFirmaGeneticaDePolly isEqualTo: 0.! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - Lara la ladrona' stamp: 'JMB 4/21/2022 12:15:12'!
test21CuandoLaraLaAvispaNoTieneRecursosNoDejaUnHuevo
	self retrocederElHabitatAlInicioDeLosTiempos. 
		
	self laAvispaLara intentarReproducirse.
		
	Assert that: self cantidadDeHuevosConLaFirmaGeneticaDeLara isEqualTo: 0.! !


!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'JMB 4/19/2022 19:14:52'!
cantidadDeHuevosConLaFirmaGeneticaDeLara
	Assert isTrue: false description: 'Reemplazar esto por la implementación correspondiente'.! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'JMK 4/25/2022 13:16:52'!
cantidadDeHuevosConLaFirmaGeneticaDeOriana
	^Habitat cantidadHuevosAvispaOriana.! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'JMK 4/25/2022 13:16:39'!
cantidadDeHuevosConLaFirmaGeneticaDeOrnella
	^Habitat cantidadHuevosAvispaOrnella.! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'JMK 4/25/2022 13:16:20'!
cantidadDeHuevosConLaFirmaGeneticaDePolly
	^Habitat cantidadHuevosAvispaPolly.! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'JMK 4/21/2022 19:49:59'!
habitat
	^Habitat! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'JMK 4/25/2022 12:50:29'!
hacerQueElHabitatTengaLosRecursosSuficientes
	Habitat colocarAlimento ! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'JMB 4/19/2022 19:14:28'!
laAvispaLara
	Assert isTrue: false description: 'Reemplazar esto por la implementación correspondiente'.! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'JMK 4/21/2022 19:55:50'!
laAvispaOriana
	^LaAvispaOriana ! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'JMK 4/25/2022 12:19:22'!
laAvispaOrnella
	^LaAvispaOrnella! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'JMK 4/25/2022 12:51:18'!
laAvispaPolly
	^LaAvispaPolly.! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'JMK 4/25/2022 11:38:35'!
queElHabitatTengaDosOrugasMas
	self habitat colocarOruga: 2.! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'JMK 4/25/2022 12:27:21'!
queElHabitatTengaDosPolillasMas
	self habitat colocarPolilla: 2.! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'JMK 4/25/2022 11:38:27'!
queElHabitatTengaUnaOrugaMas
	self habitat colocarOruga: 1.! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'JMK 4/25/2022 12:26:40'!
queElHabitatTengaUnaPolillaMas
	self habitat colocarPolilla: 1.! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'JMK 4/25/2022 12:30:22'!
retrocederElHabitatAlInicioDeLosTiempos
	Habitat quitarAlimento.
	Habitat matarAvispas.
	Habitat matarOrugas.
	Habitat matarPolillas.! !


!PruebasReproduccionDeAvispas class methodsFor: '--** private fileout/in **--' stamp: 'JMK 4/25/2022 13:23:53'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	test01EnElInicioDeLosTiemposNoHayHuevos := nil.! !

Habitat initializeAfterFileIn!
LaAvispaOriana initializeAfterFileIn!
LaAvispaOrnella initializeAfterFileIn!
LaAvispaPolly initializeAfterFileIn!
PruebasReproduccionDeAvispas initializeAfterFileIn!