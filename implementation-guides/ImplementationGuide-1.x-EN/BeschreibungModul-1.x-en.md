## Description Module Person

{{render:implementation-guides/ImplementationGuide-Common/images/ModulPerson.jpg}}

The PERSON module plays a central role in the information model of each individual hospital and each large study as well as in cross-site or cross-project information models.

In the present specification, the PERSON module is explicitly modeled for PATIENTS and PROBANDS, the previous DEMOGRAPHY module is integrated, and the possibility of a cross-site Master Patient Index based on identifying data (IDAT) is provided.

**Mapping of the PERSON module in ART-DECOR with the components Name, Demography, Patient and ResearchSubject:** <br><br>

[{{render:implementation-guides/ImplementationGuide-Common/images/PersonGanz.jpg}}](https://art-decor.org/art-decor/decor-datasets--mide-?id=&effectiveDate=&conceptId=&conceptEffectiveDate=)


The leading identifying -- though fraught with uncertainty -- feature is the name with its various components.

**Mapping of the Name in the PERSON module:** <br><br>

[{{render:implementation-guides/ImplementationGuide-Common/images/NamePerson.jpg}}](https://art-decor.org/art-decor/decor-datasets--mide-?id=&effectiveDate=&conceptId=&conceptEffectiveDate=)

The addition of demographic characteristics such as date of birth, gender, and place of residence improves the possibility of identification. (For SHI patients ([90% of the population in Germany](https://www.gkv-spitzenverband.de/service/zahlen_und_grafiken/zahlen_und_grafiken.jsp))  the insurance number can be mentioned as a further characteristic that can be readily identified within certain limits.)

**Mapping of the Demography dataset group:** <br><br>

[{{render:implementation-guides/ImplementationGuide-Common/images/DemoPerson.jpg}}](https://art-decor.org/art-decor/decor-datasets--mide-?id=&effectiveDate=&conceptId=&conceptEffectiveDate=)

However, the individual data on persons in the PERSON module are not only used for identification purposes. A characteristic such as place of residence is also needed for spatial analyses, and age and gender, for example, are also needed for risk adjustment.
Conversely, the fact that this information is contained in the PERSON module of the core data set does not mean that it is intended for general release. Their use is subject to the rules of the respective data integration center and the MI initiative. The required special security must be ensured by technical and organizational measures and as part of the implementation.


**Mapping of the Patient dataset group:** <br><br>

[{{render:implementation-guides/ImplementationGuide-Common/images/PatPerson.jpg}}](https://art-decor.org/art-decor/decor-datasets--mide-?id=&effectiveDate=&conceptId=&conceptEffectiveDate=)

Within hospitals or other health care facilities, the term *Patient* is used for persons admitted for care on one or more occasions. Usually, a person is assigned a *"Patient Identifier "* and a *"Case Number/Admission Number "* the first time they are hospitalized. Each time a new, administratively delineated claim is made, individuals are assigned new case numbers; however, the patient number should be retained for life, if possible.
Each person may be a *Patient* in several different hospitals and other health care facilities and will be assigned a facility-specific patient identification number for each. For more details on the *Patient* entity, see the FALL module.

In studies, the term *Research Subject* is used for persons. Each person can be a *Research Subject* in different studies and is assigned a new *Research Subject Identification Number* each time.

From the perspective of the MI initiative, a distinction must be made between external and internal subjects. External subjects are enrolled in cohort studies, registry studies, or randomized clinical trials where data are collected independently of the MII. Internal subjects, on the other hand, are enrolled in the MII based on health care data, and individuals may be *Research Subjects* more than once, for example, in the HiGHmed use cases Infection Control and Cardiology or the SMITH use cases HELP and ASIC, and additionally in one or both of the consortia-wide use cases CORD and POLAR. 
Each person can therefore be a proband more than once.

For each *Research Subject*, it is noted in particular in which study a participation takes place. In addition, the characteristics *Subject Identification Code*, *Legal Basis of Participation*, *Start*, *End* and *Status of Participation* are documented.

**Mapping of the Research Subject dataset group:** <br><br>

[{{render:implementation-guides/ImplementationGuide-Common/images/ProPerson.jpg}}](https://art-decor.org/art-decor/decor-datasets--mide-?id=&effectiveDate=&conceptId=&conceptEffectiveDate=)


