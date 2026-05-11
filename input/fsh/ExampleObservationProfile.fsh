Alias: $ObsCompRefRangeLimit = http://example.com/Extension/StructureDefinition/ObsCompRefRangeLimit

Profile: ObservationParent
Parent: Observation
Id: observation-parent
* ^fhirVersion = #4.0.1

Profile: ExampleObservation
Parent: ObservationParent
Id: example-observation
* ^fhirVersion = #4.0.1

* referenceRange 0..*
* referenceRange.low.extension.url=$ObsCompRefRangeLimit
* referenceRange.low.extension.valueCode  1..1

* referenceRange.low.value 1..1  MS
* referenceRange.low.unit 0..1 MS
* referenceRange.low.system 0..1 MS
* referenceRange.low.code 0..1 MS

* component MS
  * referenceRange 0..1 MS
  * referenceRange.id ..0
  * referenceRange.extension ..0
  * referenceRange.modifierExtension ..0
  * referenceRange.low.id ..0

  * referenceRange.low.extension.url=$ObsCompRefRangeLimit
  * referenceRange.low.extension.valueCode  1..1
  * referenceRange.low.value 1..1  MS
  * referenceRange.low.unit 0..1 MS
  * referenceRange.low.system 0..1 MS
  * referenceRange.low.code 0..1 MS
  * referenceRange.low.extension.valueCode = #> (exactly)

// -----------------------------------------
//JP_eCS_ObsRefRangeLimit
// -----------------------------------------
Extension: ObsRefRangeLimit
Id: obsRefRangeLimit
* ^url = $ObsCompRefRangeLimit
* ^status = #active
* ^fhirVersion = #4.0.1
* ^context[+].type = #element
* ^context[=].expression = "Observation.referenceRange.low"
* ^context[+].type = #element
* ^context[=].expression = "Observation.component.referenceRange.low"
* extension 0..0

* value[x] only code
* valueCode from http://hl7.org/fhir/ValueSet/quantity-comparator
