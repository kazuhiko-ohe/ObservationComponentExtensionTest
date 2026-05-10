Instance: minimal-observation-example
InstanceOf: MinimalObservation
Usage: #example
Title: "Minimal Observation Example"
Description: "Example instance conforming to MinimalObservation."

* status = #final
* category[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[0].coding[0].code = #vital-signs
* category[0].coding[0].display = "Vital Signs"
* code.coding[0] = LNC#8310-5 "Body temperature"
* code.text = "Body temperature"
* subject.reference = "Patient/example"
* effectiveDateTime = "2026-04-30T09:00:00+09:00"
* valueQuantity.value = 36.5
* valueQuantity.unit = "Cel"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #Cel
