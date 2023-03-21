## Description Module Person

{{render:implementation-guides/ImplementationGuide-Common/images/ModulPerson.jpg}}

The PERSON module plays a central role in the data repository of each individual hospital and each large study as well as in cross-site or cross-project information models.

In the present specification, the PERSON module is explicitly modeled for PATIENTS and PROBANDS, the previous DEMOGRAPHY module is integrated, and the possibility of a cross-site Master Patient Index based on identifying data (IDAT) is provided.

**Mapping of the PERSON module in ART-DECOR with the components Name, Demography, Patient and ResearchSubject:** <br><br>

[{{render:implementation-guides/ImplementationGuide-Common/images/art-decor-person-2x-gesamt.png}}](https://art-decor.org/art-decor/decor-datasets--mide-?id=&effectiveDate=&conceptId=&conceptEffectiveDate=)


The leading identifying -- though fraught with uncertainty -- feature is the name with its various components.

**Mapping of the Name in the PERSON module:** <br><br>

[{{render:implementation-guides/ImplementationGuide-Common/images/art-decor-person-2x-name.png}}](https://art-decor.org/art-decor/decor-datasets--mide-?id=&effectiveDate=&conceptId=&conceptEffectiveDate=)

The addition of demographic characteristics such as date of birth, gender, and place of residence improves the possibility of identification. (For SHI patients ([90% of the population in Germany](https://www.gkv-spitzenverband.de/service/zahlen_und_grafiken/zahlen_und_grafiken.jsp))  the insurance number can be mentioned as a further characteristic that can be readily identified within certain limits.)

**Mapping of the Demography dataset group:** <br><br>

[{{render:implementation-guides/ImplementationGuide-Common/images/art-decor-person-2x-demographie.png}}](https://art-decor.org/art-decor/decor-datasets--mide-?id=&effectiveDate=&conceptId=&conceptEffectiveDate=)

However, the individual data on persons in the PERSON module are not only used for identification purposes. A characteristic such as place of residence is also needed for spatial analyses, and age and gender, for example, are also needed for risk adjustment.

Conversely, the fact that this information is contained in the PERSON module of the core data set does not mean that it is intended for general release. Their use is subject to the rules of the respective data integration center and the MI initiative. The required special security must be ensured by technical and organizational measures and as part of the implementation.


**Mapping of the Patient dataset group:** <br><br>

[{{render:implementation-guides/ImplementationGuide-Common/images/art-decor-person-2x-patientin.png}}](https://art-decor.org/art-decor/decor-datasets--mide-?id=&effectiveDate=&conceptId=&conceptEffectiveDate=)

Within hospitals or other health care facilities, the term *Patient* is used for persons admitted for care on one or more occasions. Usually, a person is assigned a *"Patient Identifier "* and a *"Case Number/Admission Number "* the first time they are hospitalized. Each time a new, administratively delineated claim is made, individuals are assigned new case numbers; however, the patient number should be retained for life, if possible.
Each person may be a *Patient* in several different hospitals and other health care facilities and will be assigned a facility-specific patient identification number for each. For more details on the *Patient* entity, see the FALL module.

For the purpose of using health care data in the context of biomedical research projects, essential elements of a patient master data set as used in active care processes must be removed in order to pseudonymize the data sets. For such a pseudonymized data set, a separate specification is included in the PERSON module. In principle, this is a technical implementation of the specifications for pseudonymization in the [MII data protection concept v1.0](https://www.medizin.uni-tuebingen.de/files/view/9pdz6meGqZppXyZjArPk4wD8/MII-Datenschutzkonzept.pdf).

**Tab. 1:** Overview of the entities and their access possibilities to data categories with the respective protection levels 

| Data category                        |  DIZ location   | Overarching trusteeship body | Data Management Center |     User      | Research Data Portal |
 | ------------------------------------- | :-------------: | :--------------------------: | :-------------------: | :-------------: | :-------------------: |
 | IDAT (C<sup>2</sup>)                  |        X        |       (X)<sup>3</sup>        |    (X)<sup>4</sup>    | (X)<sup>4</sup> |                       |
 | MDAT (D-E<sup>5</sup>)                |        X        |                              |     X<sup>6</sup>     |  X<sup>6</sup>  |                       |
 | Pseudonym<sub>DIZ</sub>(B)            |        X        |                              |                       |                 |                       |
 | IDAT<sub>Kodiert</sub>(B)             |        X        |              X               |                       |                 |                       |
 | Pseudonym<sub>DIZ-Projekt</sub>(B)    |        X        |              X               |    (X)<sup>6</sup>    |                 |                       |
 | Pseudonym<sub>Nutzer-Projekt</sub>(B) | (X)<sup>8</sup> |              X               |           X           |        X        |    (X)<sup>9</sup>    |

 <sup>1</sup> according to the protection level concept of the State Commissioner for Data Protection Lower Saxony <br>
 <sup>2</sup> depending on the possibility of assignment to the patient data, possibly also higher <br>
 <sup>3</sup> only in individual cases, in which an mapping of the data records on the basis of IDAT<sub>Coded</sub> is not possible with sufficient certainty.<br>
 <sup>4</sup> only age and address data (only zip code or municipality code) in the level of detail to be justified and checked in each case according to scientific necessity <br>
 <sup>5</sup> depending on the scope and sensitivity of the data, psychiatric diagnoses with discrimination potential may have to be classified differently from a flu-like infection <br>
 <sup>6</sup> for each project, only the parts of the MDAT necessary for a scientific question are published. For each project, only the parts of the MDAT that are necessary for a scientific question are published, and if necessary, only in the necessary detail (e.g. date of birth or postal code).<br>
 <sup>7</sup> only for data output without connected trust center and without record linkage <br>
 <sup>8</sup> depending on architecture model <br>
 <sup>9</sup> only when coordinating revocations through the Research Data Portal <br><br>

**Mapping of the Research Subject dataset group:** <br><br>

[{{render:implementation-guides/ImplementationGuide-Common/images/art-decor-person-2x-patient-pseudonym.png}}](https://art-decor.org/art-decor/decor-datasets--mide-?id=&effectiveDate=&conceptId=&conceptEffectiveDate=)

In studies, the term *Research Subject* is used for participating persons. Each person can be a *Research Subject* in different studies and is assigned a new *Research Subject Identification Number* each time.

From the perspective of the MI initiative, a distinction must be made between external and internal subjects. External subjects are enrolled in cohort studies, registry studies, or randomized clinical trials where data are collected independently of the MII. Internal subjects, on the other hand, are enrolled in the MII based on health care data, and individuals may be *Research Subjects* more than once, for example, in the HiGHmed use cases Infection Control and Cardiology or the SMITH use cases HELP and ASIC, and additionally in one or both of the consortia-wide use cases CORD and POLAR.

For each *Research Subject*, it is noted in particular in which study a participation takes place. In addition, the characteristics *Subject Identification Code*, *Legal Basis of Participation*, *Start*, *End* and *Status of Participation* are documented.


