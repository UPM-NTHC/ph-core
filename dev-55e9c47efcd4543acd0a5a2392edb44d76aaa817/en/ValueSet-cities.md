# Cities - Draft PH Core Implementation Guide v0.2.0

## ValueSet: Cities (Experimental) 

 
All city, municipality, and sub-municipality values from the Philippine Standard Geographic Codes (PSGC) published by the Philippine Statistics Authority (PSA). 

 **References** 

* [City/Municipality](StructureDefinition-city-municipality.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "cities",
  "url" : "https://fhir.doh.gov.ph/phcore/ValueSet/cities",
  "version" : "0.2.0",
  "name" : "Cities",
  "title" : "Cities",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-09-09T08:36:51+00:00",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "All city, municipality, and sub-municipality values from the Philippine Standard Geographic Codes (PSGC) published by the Philippine Statistics Authority (PSA).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PH",
      "display" : "Philippines"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://psa.gov.ph/classification/psgc",
      "concept" : [{
        "code" : "0102801000",
        "display" : "Adams"
      },
      {
        "code" : "0102802000",
        "display" : "Bacarra"
      },
      {
        "code" : "0102803000",
        "display" : "Badoc"
      },
      {
        "code" : "0102804000",
        "display" : "Bangui"
      },
      {
        "code" : "0102805000",
        "display" : "City of Batac"
      },
      {
        "code" : "0102806000",
        "display" : "Burgos"
      },
      {
        "code" : "0102807000",
        "display" : "Carasi"
      },
      {
        "code" : "0102808000",
        "display" : "Currimao"
      },
      {
        "code" : "0102809000",
        "display" : "Dingras"
      },
      {
        "code" : "0102810000",
        "display" : "Dumalneg"
      },
      {
        "code" : "0102811000",
        "display" : "Banna"
      },
      {
        "code" : "0102812000",
        "display" : "City of Laoag "
      },
      {
        "code" : "0102813000",
        "display" : "Marcos"
      },
      {
        "code" : "0102901000",
        "display" : "Alilem"
      },
      {
        "code" : "0102906000",
        "display" : "City of Candon"
      },
      {
        "code" : "0102934000",
        "display" : "City of Vigan "
      },
      {
        "code" : "0103314000",
        "display" : "City of San Fernando "
      },
      {
        "code" : "0105503000",
        "display" : "City of Alaminos"
      },
      {
        "code" : "0105518000",
        "display" : "City of Dagupan"
      },
      {
        "code" : "0105532000",
        "display" : "City of San Carlos"
      },
      {
        "code" : "0105546000",
        "display" : "City of Urdaneta"
      },
      {
        "code" : "0200901000",
        "display" : "Basco "
      },
      {
        "code" : "0201501000",
        "display" : "Abulug"
      },
      {
        "code" : "0201529000",
        "display" : "Tuguegarao City "
      },
      {
        "code" : "0203108000",
        "display" : "City of Cauayan"
      },
      {
        "code" : "0203114000",
        "display" : "City of Ilagan "
      },
      {
        "code" : "0203135000",
        "display" : "City of Santiago"
      },
      {
        "code" : "0330100000",
        "display" : "City of Angeles"
      },
      {
        "code" : "0331400000",
        "display" : "City of Olongapo"
      },
      {
        "code" : "0300801000",
        "display" : "Abucay"
      },
      {
        "code" : "0300803000",
        "display" : "City of Balanga "
      },
      {
        "code" : "0301401000",
        "display" : "Angat"
      },
      {
        "code" : "0301403000",
        "display" : "City of Baliwag"
      },
      {
        "code" : "0301410000",
        "display" : "City of Malolos "
      },
      {
        "code" : "0301412000",
        "display" : "City of Meycauayan"
      },
      {
        "code" : "0301420000",
        "display" : "City of San Jose Del Monte"
      },
      {
        "code" : "0304903000",
        "display" : "City of Cabanatuan"
      },
      {
        "code" : "0304908000",
        "display" : "City of Gapan"
      },
      {
        "code" : "0304917000",
        "display" : "Science City of Muñoz"
      },
      {
        "code" : "0304919000",
        "display" : "City of Palayan "
      },
      {
        "code" : "0304926000",
        "display" : "San Jose City"
      },
      {
        "code" : "0305409000",
        "display" : "Mabalacat City"
      },
      {
        "code" : "0305416000",
        "display" : "City of San Fernando "
      },
      {
        "code" : "0306916000",
        "display" : "City of Tarlac "
      },
      {
        "code" : "0401001000",
        "display" : "Agoncillo"
      },
      {
        "code" : "0401005000",
        "display" : "Batangas City "
      },
      {
        "code" : "0401007000",
        "display" : "City of Calaca"
      },
      {
        "code" : "0401014000",
        "display" : "City of Lipa"
      },
      {
        "code" : "0401028000",
        "display" : "City of Sto. Tomas"
      },
      {
        "code" : "0401031000",
        "display" : "City of Tanauan"
      },
      {
        "code" : "0402101000",
        "display" : "Alfonso"
      },
      {
        "code" : "0500501000",
        "display" : "Bacacay"
      },
      {
        "code" : "0501601000",
        "display" : "Basud"
      },
      {
        "code" : "0600401000",
        "display" : "Altavas"
      },
      {
        "code" : "0600601000",
        "display" : "Anini-Y"
      },
      {
        "code" : "0701201000",
        "display" : "Alburquerque"
      },
      {
        "code" : "0702201000",
        "display" : "Alcantara"
      },
      {
        "code" : "0802601000",
        "display" : "Arteche"
      },
      {
        "code" : "0803701000",
        "display" : "Abuyog"
      },
      {
        "code" : "0906601000",
        "display" : "Indanan"
      },
      {
        "code" : "0907201000",
        "display" : "City of Dapitan"
      },
      {
        "code" : "1001301000",
        "display" : "Baungon"
      },
      {
        "code" : "1001801000",
        "display" : "Catarman"
      },
      {
        "code" : "1102301000",
        "display" : "Asuncion"
      },
      {
        "code" : "1102401000",
        "display" : "Bansalan"
      },
      {
        "code" : "1204701000",
        "display" : "Alamada"
      },
      {
        "code" : "1206302000",
        "display" : "Banga"
      },
      {
        "code" : "1380100000",
        "display" : "City of Caloocan"
      },
      {
        "code" : "1380200000",
        "display" : "City of Las Piñas"
      },
      {
        "code" : "1380600000",
        "display" : "City of Manila"
      },
      {
        "code" : "1380601000",
        "display" : "Tondo I/II"
      },
      {
        "code" : "1380602000",
        "display" : "Binondo"
      },
      {
        "code" : "1380603000",
        "display" : "Quiapo"
      },
      {
        "code" : "1380604000",
        "display" : "San Nicolas"
      },
      {
        "code" : "1380605000",
        "display" : "Santa Cruz"
      },
      {
        "code" : "1380606000",
        "display" : "Sampaloc"
      },
      {
        "code" : "1380607000",
        "display" : "San Miguel"
      },
      {
        "code" : "1380608000",
        "display" : "Ermita"
      },
      {
        "code" : "1380609000",
        "display" : "Intramuros"
      },
      {
        "code" : "1380610000",
        "display" : "Malate"
      },
      {
        "code" : "1380611000",
        "display" : "Paco"
      },
      {
        "code" : "1380612000",
        "display" : "Pandacan"
      },
      {
        "code" : "1380613000",
        "display" : "Port Area"
      },
      {
        "code" : "1380614000",
        "display" : "Santa Ana"
      },
      {
        "code" : "1400101000",
        "display" : "Bangued "
      },
      {
        "code" : "1401101000",
        "display" : "Atok"
      },
      {
        "code" : "1600201000",
        "display" : "Buenavista"
      },
      {
        "code" : "1600301000",
        "display" : "City of Bayugan"
      },
      {
        "code" : "1704001000",
        "display" : "Boac "
      },
      {
        "code" : "1705101000",
        "display" : "Abra De Ilog"
      },
      {
        "code" : "1804502000",
        "display" : "City of Bago"
      },
      {
        "code" : "1804601000",
        "display" : "Amlan"
      },
      {
        "code" : "1900702000",
        "display" : "City of Lamitan "
      },
      {
        "code" : "1903601000",
        "display" : "Bacolod-Kalawi"
      }]
    }]
  }
}

```
