Alias: $ObsCompRefRangeLimit = http://example.com/Extension/StructureDefinition/ObsCompRefRangeLimit

Profile: ExampleObservation
Parent: Observation
Id: example-observation

* referenceRange.low.extension.url=$ObsCompRefRangeLimit
* referenceRange.low.extension.valueCode  1..1

* component.referenceRange.low.extension.url=$ObsCompRefRangeLimit
* component.referenceRange.low.extension.valueCode  1..1

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
* value[x] only code
* valueCode from http://hl7.org/fhir/ValueSet/quantity-comparator
