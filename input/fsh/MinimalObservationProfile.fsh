Profile: MinimalObservation
Parent: Observation
Id: minimal-observation
Title: "Minimal Observation Profile"
Description: "A minimal derived profile of the FHIR R4 Observation resource."

* status MS
* category 1..* MS
* code MS
* subject 1..1 MS
* effective[x] 1..1 MS
* value[x] only Quantity
* valueQuantity MS
* valueQuantity.value 1..1 MS
* valueQuantity.unit MS
* valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* valueQuantity.code MS
