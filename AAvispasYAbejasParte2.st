!classDefinition: #Habitat category: 'AvispasYAbejasParte2'!
DenotativeObject subclass: #Habitat
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AvispasYAbejasParte2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Habitat class' category: 'AvispasYAbejasParte2'!
Habitat class
	instanceVariableNames: 'cantidadDeAlimento hayAvispas cantidadDePolillas cantidadDeAvispas cantidadDeOrugasDeAvispas hayAimento cantidadDeHuevosDeAvispas hayOruga hayPolilla hayPolillas'!

!Habitat class methodsFor: 'getters' stamp: 'Joel 4/25/2022 11:14:37'!
cantidadDeAvispas
	^1! !

!Habitat class methodsFor: 'getters' stamp: 'JMK 4/25/2022 16:36:50'!
cantidadDeHuevosDeAvispas
	^cantidadDeHuevosDeAvispas! !

!Habitat class methodsFor: 'getters' stamp: 'JMK 4/25/2022 15:04:20'!
cantidadDeOrugasDeAvispas
	^cantidadDeOrugasDeAvispas ! !


!Habitat class methodsFor: 'setters' stamp: 'JMK 4/25/2022 16:21:22'!
IncrementarUnaCantidadDeOrugasDeAvispas: cantidadOrugasAgregar
	cantidadDeOrugasDeAvispas := cantidadDeOrugasDeAvispas + cantidadOrugasAgregar.! !

!Habitat class methodsFor: 'setters' stamp: 'JMK 4/25/2022 12:52:36'!
cantidadDePolillas
	^cantidadDePolillas.! !

!Habitat class methodsFor: 'setters' stamp: 'JMK 4/25/2022 12:14:55'!
colocarOruga: numeroDeOrugasColocar
	cantidadDeOrugasDeAvispas := cantidadDeOrugasDeAvispas + numeroDeOrugasColocar.
	hayOruga := true.! !

!Habitat class methodsFor: 'setters' stamp: 'JMK 4/25/2022 12:24:30'!
colocarPolilla: numeroDePolillasAcolocar
	cantidadDePolillas := cantidadDePolillas + numeroDePolillasAcolocar.
	hayPolilla := true.! !

!Habitat class methodsFor: 'setters' stamp: 'JMK 4/25/2022 17:36:09'!
decrementarCantidadDeHuevoDeAvispas: cantidadHuevosAquitar
	cantidadDeHuevosDeAvispas := cantidadDeHuevosDeAvispas - cantidadHuevosAquitar.! !

!Habitat class methodsFor: 'setters' stamp: 'JMK 4/25/2022 12:45:47'!
hayOrugas
	^cantidadDeOrugasDeAvispas > 0.! !

!Habitat class methodsFor: 'setters' stamp: 'JMK 4/25/2022 12:46:41'!
hayPolillas
	^cantidadDePolillas > 0.! !

!Habitat class methodsFor: 'setters' stamp: 'JMK 4/25/2022 16:38:21'!
incremenarCantidadDeHuevosDeAvispas: cantidadAincrementarDeHuevos
	cantidadDeHuevosDeAvispas := cantidadDeHuevosDeAvispas + cantidadAincrementarDeHuevos.! !

!Habitat class methodsFor: 'setters' stamp: 'JMK 4/25/2022 14:24:42'!
matarTodasLasAvispas
	self quitarTodosLosHuevos.
	hayAvispas:=false.! !

!Habitat class methodsFor: 'setters' stamp: 'JMK 4/25/2022 14:25:21'!
matarTodasLasOrugas
	cantidadDeOrugasDeAvispas := 0.
	hayOruga:= false.! !

!Habitat class methodsFor: 'setters' stamp: 'JMK 4/25/2022 14:25:03'!
matarTodasLasPolillas
	cantidadDePolillas := 0.
	hayPolillas := false.! !

!Habitat class methodsFor: 'setters' stamp: 'JMK 4/25/2022 17:26:15'!
quitarTodosLosHuevos
	cantidadDeHuevosDeAvispas := 0.
	LaAvispaOriana reiniciarCantidadDeHueavosDeAvispaOriana.
	LaAvispaOrnella reiniciarCantidadDeHuevosDeAvispaOrnella.
	LaAvispaPolly reiniciarCantidadDeHuevosDeAvispaPolly.
	LaAvispaLara reiniciarCantidadDeHueavosDeAvispaLara.! !

!Habitat class methodsFor: 'setters' stamp: 'JMK 4/25/2022 18:28:37'!
quitarUnaCantidadDeOrugas: cantidadOrugasAquitar
	cantidadDeOrugasDeAvispas := cantidadDeOrugasDeAvispas - cantidadOrugasAquitar.! !

!Habitat class methodsFor: 'setters' stamp: 'JMK 4/25/2022 14:28:44'!
quitarUnaCantidadDePolillas: cantidadPolillasQuitar
	cantidadDePolillas := cantidadDePolillas - cantidadPolillasQuitar.! !


!Habitat class methodsFor: '--** private fileout/in **--' stamp: 'Joel 4/25/2022 18:53:06'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	cantidadDeAlimento := 0.
	hayAvispas := false.
	cantidadDePolillas := 1.
	cantidadDeAvispas := nil.
	cantidadDeOrugasDeAvispas := 0.
	hayAimento := false.
	cantidadDeHuevosDeAvispas := 1.
	hayOruga := false.
	hayPolilla := true.
	hayPolillas := false.! !


!classDefinition: #LaAvispaLara category: 'AvispasYAbejasParte2'!
DenotativeObject subclass: #LaAvispaLara
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AvispasYAbejasParte2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'LaAvispaLara class' category: 'AvispasYAbejasParte2'!
LaAvispaLara class
	instanceVariableNames: 'cantidadHuevosAvispaLara'!

!LaAvispaLara class methodsFor: 'actions' stamp: 'Joel 4/25/2022 18:50:18'!
intentarReproducirse
	(Habitat cantidadDeHuevosDeAvispas > 0 ) ifTrue:  [self robarHuevo.]! !

!LaAvispaLara class methodsFor: 'actions' stamp: 'JMK 4/25/2022 17:20:09'!
reiniciarCantidadDeHueavosDeAvispaLara
	cantidadHuevosAvispaLara := 0.! !

!LaAvispaLara class methodsFor: 'actions' stamp: 'JMK 4/25/2022 18:18:00'!
robarHuevo
	cantidadHuevosAvispaLara := cantidadHuevosAvispaLara + Habitat cantidadDeHuevosDeAvispas.
	LaAvispaOriana cantidadHuevosAvispaOriana > 0 ifTrue: LaAvispaOriana perderHuevo.
	LaAvispaOrnella cantidadHuevosAvispaOrnella > 0 ifTrue: LaAvispaOrnella perderHuevo.
	LaAvispaPolly cantidadHuevosAvispaPolly > 0 ifTrue: LaAvispaPolly perderHuevo.
	Habitat IncrementarUnaCantidadDeOrugasDeAvispas: cantidadHuevosAvispaLara.
	Habitat incremenarCantidadDeHuevosDeAvispas: cantidadHuevosAvispaLara.! !


!LaAvispaLara class methodsFor: 'getters' stamp: 'JMK 4/25/2022 17:19:11'!
cantidadHuevosAvispaLara
	^cantidadHuevosAvispaLara! !


!LaAvispaLara class methodsFor: '--** private fileout/in **--' stamp: 'Joel 4/25/2022 18:53:06'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	cantidadHuevosAvispaLara := 0.! !


!classDefinition: #LaAvispaOriana category: 'AvispasYAbejasParte2'!
DenotativeObject subclass: #LaAvispaOriana
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AvispasYAbejasParte2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'LaAvispaOriana class' category: 'AvispasYAbejasParte2'!
LaAvispaOriana class
	instanceVariableNames: 'cantidadHuevosAvispaOriana'!

!LaAvispaOriana class methodsFor: 'actions' stamp: 'Joel 4/25/2022 18:40:13'!
colocarHuevo
	cantidadHuevosAvispaOriana := cantidadHuevosAvispaOriana + 1.
	Habitat incremenarCantidadDeHuevosDeAvispas: 1.
	Habitat quitarUnaCantidadDeOrugas: 1.! !

!LaAvispaOriana class methodsFor: 'actions' stamp: 'Joel 4/25/2022 18:38:37'!
intentarReproducirse
	Habitat hayOrugas ifTrue:  [self colocarHuevo]! !

!LaAvispaOriana class methodsFor: 'actions' stamp: 'JMK 4/25/2022 18:16:01'!
perderHuevo
	Habitat decrementarCantidadDeHuevoDeAvispas: cantidadHuevosAvispaOriana.
	cantidadHuevosAvispaOriana := 0.
	! !

!LaAvispaOriana class methodsFor: 'actions' stamp: 'JMK 4/25/2022 16:57:12'!
reiniciarCantidadDeHueavosDeAvispaOriana
	cantidadHuevosAvispaOriana := 0.! !


!LaAvispaOriana class methodsFor: 'getters' stamp: 'JMK 4/25/2022 14:36:41'!
cantidadHuevosAvispaOriana
	^cantidadHuevosAvispaOriana! !


!LaAvispaOriana class methodsFor: '--** private fileout/in **--' stamp: 'Joel 4/25/2022 18:53:06'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	cantidadHuevosAvispaOriana := 0.! !


!classDefinition: #LaAvispaOrnella category: 'AvispasYAbejasParte2'!
DenotativeObject subclass: #LaAvispaOrnella
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AvispasYAbejasParte2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'LaAvispaOrnella class' category: 'AvispasYAbejasParte2'!
LaAvispaOrnella class
	instanceVariableNames: 'cantidadHuevosAvispaOrnella'!

!LaAvispaOrnella class methodsFor: 'actions' stamp: 'Joel 4/25/2022 18:46:06'!
colocarHuevo
	cantidadHuevosAvispaOrnella  := cantidadHuevosAvispaOrnella + 1.
	Habitat quitarUnaCantidadDeOrugas: 1.
	Habitat incremenarCantidadDeHuevosDeAvispas: 1.! !

!LaAvispaOrnella class methodsFor: 'actions' stamp: 'Joel 4/25/2022 18:45:31'!
intentarReproducirse
	Habitat hayOrugas ifTrue:[self colocarHuevo]! !

!LaAvispaOrnella class methodsFor: 'actions' stamp: 'JMK 4/25/2022 18:16:19'!
perderHuevo
	Habitat decrementarCantidadDeHuevoDeAvispas: cantidadHuevosAvispaOrnella .
	cantidadHuevosAvispaOrnella := 0 .! !

!LaAvispaOrnella class methodsFor: 'actions' stamp: 'JMK 4/25/2022 16:57:42'!
reiniciarCantidadDeHuevosDeAvispaOrnella
	cantidadHuevosAvispaOrnella := 0.! !


!LaAvispaOrnella class methodsFor: 'getters' stamp: 'JMK 4/25/2022 13:47:02'!
cantidadHuevosAvispaOrnella
	^cantidadHuevosAvispaOrnella.! !


!LaAvispaOrnella class methodsFor: '--** private fileout/in **--' stamp: 'Joel 4/25/2022 18:53:06'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	cantidadHuevosAvispaOrnella := 0.! !


!classDefinition: #LaAvispaPolly category: 'AvispasYAbejasParte2'!
DenotativeObject subclass: #LaAvispaPolly
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AvispasYAbejasParte2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'LaAvispaPolly class' category: 'AvispasYAbejasParte2'!
LaAvispaPolly class
	instanceVariableNames: 'cantidadHuevosAvispaPolly'!

!LaAvispaPolly class methodsFor: 'actions' stamp: 'Joel 4/25/2022 18:49:00'!
colocarHuevo
	cantidadHuevosAvispaPolly := cantidadHuevosAvispaPolly +1.
	Habitat incremenarCantidadDeHuevosDeAvispas: 1.
	Habitat quitarUnaCantidadDePolillas: 1.! !

!LaAvispaPolly class methodsFor: 'actions' stamp: 'Joel 4/25/2022 18:48:38'!
intentarReproducirse
	(Habitat hayPolillas) ifTrue: [self colocarHuevo]! !

!LaAvispaPolly class methodsFor: 'actions' stamp: 'JMK 4/25/2022 18:15:36'!
perderHuevo
	Habitat decrementarCantidadDeHuevoDeAvispas: cantidadHuevosAvispaPolly.
	cantidadHuevosAvispaPolly := 0.! !

!LaAvispaPolly class methodsFor: 'actions' stamp: 'JMK 4/25/2022 16:58:07'!
reiniciarCantidadDeHuevosDeAvispaPolly
	cantidadHuevosAvispaPolly := 0.! !


!LaAvispaPolly class methodsFor: 'getters' stamp: 'JMK 4/25/2022 13:49:23'!
cantidadHuevosAvispaPolly
	^cantidadHuevosAvispaPolly.! !


!LaAvispaPolly class methodsFor: '--** private fileout/in **--' stamp: 'Joel 4/25/2022 18:53:06'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	cantidadHuevosAvispaPolly := 1.! !


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


!PruebasReproduccionDeAvispas class methodsFor: 'tests - Lara la ladrona' stamp: 'JMK 4/25/2022 17:47:44'!
test18CuandoLaraLaAvispaSeReproduceDejaUnHuevoConSuFirmaGenetica
	self retrocederElHabitatAlInicioDeLosTiempos. 
	self hacerQueElHabitatTengaLosRecursosSuficientes.
	self laAvispaOrnella intentarReproducirse.
	
	self laAvispaLara intentarReproducirse.
	
	Assert that: self cantidadDeHuevosConLaFirmaGeneticaDeLara isEqualTo: 1.! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - Lara la ladrona' stamp: 'JMK 4/25/2022 17:47:38'!
test19CuandoLaraLaAvispaSeReproduceLeSacaElHuevoAOtraAvispa
	self retrocederElHabitatAlInicioDeLosTiempos. 
	self hacerQueElHabitatTengaLosRecursosSuficientes.
	self laAvispaOriana intentarReproducirse.
	
	self laAvispaLara intentarReproducirse.
	
	Assert that: self cantidadDeHuevosConLaFirmaGeneticaDeOriana isEqualTo: 0.! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - Lara la ladrona' stamp: 'JMK 4/25/2022 17:47:32'!
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


!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'JMK 4/25/2022 17:21:03'!
cantidadDeHuevosConLaFirmaGeneticaDeLara
	^LaAvispaLara cantidadHuevosAvispaLara ! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'JMK 4/25/2022 17:15:46'!
cantidadDeHuevosConLaFirmaGeneticaDeOriana
	^LaAvispaOriana cantidadHuevosAvispaOriana + LaAvispaOrnella cantidadHuevosAvispaOrnella.! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'JMK 4/25/2022 17:15:33'!
cantidadDeHuevosConLaFirmaGeneticaDeOrnella
	^LaAvispaOriana cantidadHuevosAvispaOriana + LaAvispaOrnella cantidadHuevosAvispaOrnella.! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'JMK 4/25/2022 16:52:00'!
cantidadDeHuevosConLaFirmaGeneticaDePolly
	^LaAvispaPolly cantidadHuevosAvispaPolly .! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'JMK 4/21/2022 19:49:59'!
habitat
	^Habitat! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'Joel 4/25/2022 18:48:03'!
hacerQueElHabitatTengaLosRecursosSuficientes
	Habitat colocarOruga: 10.
	Habitat colocarPolilla: 10.! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'JMK 4/25/2022 17:22:08'!
laAvispaLara
	^LaAvispaLara 
	! !

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

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'Joel 4/25/2022 18:52:27'!
retrocederElHabitatAlInicioDeLosTiempos
	Habitat matarTodasLasAvispas.
	Habitat matarTodasLasOrugas.
	Habitat matarTodasLasPolillas.! !


!PruebasReproduccionDeAvispas class methodsFor: '--** private fileout/in **--' stamp: 'Joel 4/25/2022 18:53:06'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	test01EnElInicioDeLosTiemposNoHayHuevos := nil.! !

Habitat initializeAfterFileIn!
LaAvispaLara initializeAfterFileIn!
LaAvispaOriana initializeAfterFileIn!
LaAvispaOrnella initializeAfterFileIn!
LaAvispaPolly initializeAfterFileIn!
PruebasReproduccionDeAvispas initializeAfterFileIn!