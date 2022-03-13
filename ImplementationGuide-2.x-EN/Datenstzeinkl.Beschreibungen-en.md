## Data Sets incl. Descriptions

The official and accepted version of the information model for the PERSON module can be found on [ART-DECOR](https://art-decor.org/art-decor/decor-datasets--mide-). To standardize the representation, the information model was additionally mapped as FHIR Logical Model:

{{render:https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/LogicalModel/Person}}

It should be noted that the Logical Model aims purely at the mapping of data elements and their description. Used data types and cardinalities are not to be regarded as obligatory. This is finally defined by the FHIR profiles. For each element within the Logical Model there is a 1:1 mapping to an element of a concrete FHIR resource.

@``` from StructureDefinition where url =  'https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/LogicalModel/Person' for differential.element select Logical_Model: id, Description: short.extension.extension.where(url ='content').value```