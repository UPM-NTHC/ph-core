# PSGC - Draft PH Core Implementation Guide v0.2.0

## CodeSystem: PSGC (Experimental) 

 
Fragment declaration of the official Philippine Standard Geographic Code (published quarterly by the Philippine Statistics Authority). 

This Code system is referenced in the definition of the following value sets:

* [Barangays](ValueSet-barangays.md)
* [Cities](ValueSet-cities.md)
* [Provinces](ValueSet-provinces.md)
* [Regions](ValueSet-regions.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "PSGC",
  "url" : "https://psa.gov.ph/classification/psgc",
  "version" : "0.2.0",
  "name" : "PSGC",
  "title" : "PSGC",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-16T04:07:14+00:00",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "Fragment declaration of the official Philippine Standard Geographic Code (published quarterly by the Philippine Statistics Authority).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PH",
      "display" : "Philippines"
    }]
  }],
  "caseSensitive" : true,
  "content" : "fragment",
  "concept" : [{
    "code" : "0100000000",
    "display" : "Region I (Ilocos Region)",
    "concept" : [{
      "code" : "0102800000",
      "display" : "Ilocos Norte",
      "concept" : [{
        "code" : "0102801000",
        "display" : "Adams",
        "concept" : [{
          "code" : "0102801001",
          "display" : "Adams"
        }]
      },
      {
        "code" : "0102802000",
        "display" : "Bacarra",
        "concept" : [{
          "code" : "0102802001",
          "display" : "Bani"
        },
        {
          "code" : "0102802002",
          "display" : "Buyon"
        },
        {
          "code" : "0102802003",
          "display" : "Cabaruan"
        },
        {
          "code" : "0102802004",
          "display" : "Cabulalaan"
        },
        {
          "code" : "0102802005",
          "display" : "Cabusligan"
        }]
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
      }]
    },
    {
      "code" : "0102900000",
      "display" : "Ilocos Sur",
      "concept" : [{
        "code" : "0102901000",
        "display" : "Alilem",
        "concept" : [{
          "code" : "0102901001",
          "display" : "Alilem Daya "
        }]
      },
      {
        "code" : "0102906000",
        "display" : "City of Candon"
      },
      {
        "code" : "0102934000",
        "display" : "City of Vigan "
      }]
    },
    {
      "code" : "0103300000",
      "display" : "La Union",
      "concept" : [{
        "code" : "0103314000",
        "display" : "City of San Fernando "
      }]
    },
    {
      "code" : "0105500000",
      "display" : "Pangasinan",
      "concept" : [{
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
      }]
    }]
  },
  {
    "code" : "0200000000",
    "display" : "Region II (Cagayan Valley)",
    "concept" : [{
      "code" : "0200900000",
      "display" : "Batanes",
      "concept" : [{
        "code" : "0200901000",
        "display" : "Basco ",
        "concept" : [{
          "code" : "0200901001",
          "display" : "Ihubok II"
        }]
      }]
    },
    {
      "code" : "0201500000",
      "display" : "Cagayan",
      "concept" : [{
        "code" : "0201501000",
        "display" : "Abulug",
        "concept" : [{
          "code" : "0201501001",
          "display" : "Alinunu"
        }]
      },
      {
        "code" : "0201529000",
        "display" : "Tuguegarao City "
      }]
    },
    {
      "code" : "0203100000",
      "display" : "Isabela",
      "concept" : [{
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
      }]
    }]
  },
  {
    "code" : "0300000000",
    "display" : "Region III (Central Luzon)",
    "concept" : [{
      "code" : "0300800000",
      "display" : "Bataan",
      "concept" : [{
        "code" : "0300801000",
        "display" : "Abucay",
        "concept" : [{
          "code" : "0300801001",
          "display" : "Bangkal"
        }]
      },
      {
        "code" : "0300803000",
        "display" : "City of Balanga "
      }]
    },
    {
      "code" : "0301400000",
      "display" : "Bulacan",
      "concept" : [{
        "code" : "0301401000",
        "display" : "Angat",
        "concept" : [{
          "code" : "0301401001",
          "display" : "Banaban"
        }]
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
      }]
    },
    {
      "code" : "0330100000",
      "display" : "City of Angeles"
    },
    {
      "code" : "0331400000",
      "display" : "City of Olongapo"
    }]
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
    "code" : "0400000000",
    "display" : "Region IV-A (CALABARZON)",
    "concept" : [{
      "code" : "0401000000",
      "display" : "Batangas",
      "concept" : [{
        "code" : "0401001000",
        "display" : "Agoncillo",
        "concept" : [{
          "code" : "0401001001",
          "display" : "Adia"
        }]
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
      }]
    },
    {
      "code" : "0402100000",
      "display" : "Cavite",
      "concept" : [{
        "code" : "0402101000",
        "display" : "Alfonso",
        "concept" : [{
          "code" : "0402101001",
          "display" : "Amuyong"
        }]
      }]
    },
    {
      "code" : "0403400000",
      "display" : "Laguna"
    },
    {
      "code" : "0405600000",
      "display" : "Quezon"
    },
    {
      "code" : "0405800000",
      "display" : "Rizal"
    }]
  },
  {
    "code" : "0500000000",
    "display" : "Region V (Bicol Region)",
    "concept" : [{
      "code" : "0500500000",
      "display" : "Albay",
      "concept" : [{
        "code" : "0500501000",
        "display" : "Bacacay",
        "concept" : [{
          "code" : "0500501001",
          "display" : "Baclayon"
        }]
      }]
    },
    {
      "code" : "0501600000",
      "display" : "Camarines Norte",
      "concept" : [{
        "code" : "0501601000",
        "display" : "Basud",
        "concept" : [{
          "code" : "0501601001",
          "display" : "Angas"
        }]
      }]
    }]
  },
  {
    "code" : "0600000000",
    "display" : "Region VI (Western Visayas)",
    "concept" : [{
      "code" : "0600400000",
      "display" : "Aklan",
      "concept" : [{
        "code" : "0600401000",
        "display" : "Altavas",
        "concept" : [{
          "code" : "0600401001",
          "display" : "Cabangila"
        }]
      }]
    },
    {
      "code" : "0600600000",
      "display" : "Antique",
      "concept" : [{
        "code" : "0600601000",
        "display" : "Anini-Y",
        "concept" : [{
          "code" : "0600601001",
          "display" : "Bayo Grande"
        }]
      }]
    }]
  },
  {
    "code" : "0700000000",
    "display" : "Region VII (Central Visayas)",
    "concept" : [{
      "code" : "0701200000",
      "display" : "Bohol",
      "concept" : [{
        "code" : "0701201000",
        "display" : "Alburquerque",
        "concept" : [{
          "code" : "0701201001",
          "display" : "Bahi"
        }]
      }]
    },
    {
      "code" : "0702200000",
      "display" : "Cebu",
      "concept" : [{
        "code" : "0702201000",
        "display" : "Alcantara",
        "concept" : [{
          "code" : "0702201001",
          "display" : "Cabadiangan"
        }]
      }]
    }]
  },
  {
    "code" : "0800000000",
    "display" : "Region VIII (Eastern Visayas)",
    "concept" : [{
      "code" : "0802600000",
      "display" : "Eastern Samar",
      "concept" : [{
        "code" : "0802601000",
        "display" : "Arteche",
        "concept" : [{
          "code" : "0802601001",
          "display" : "Aguinaldo"
        }]
      }]
    },
    {
      "code" : "0803700000",
      "display" : "Leyte",
      "concept" : [{
        "code" : "0803701000",
        "display" : "Abuyog",
        "concept" : [{
          "code" : "0803701001",
          "display" : "Alangilan"
        }]
      }]
    }]
  },
  {
    "code" : "0900000000",
    "display" : "Region IX (Zamboanga Peninsula)",
    "concept" : [{
      "code" : "0906600000",
      "display" : "Sulu",
      "concept" : [{
        "code" : "0906601000",
        "display" : "Indanan",
        "concept" : [{
          "code" : "0906601001",
          "display" : "Adjid"
        }]
      }]
    },
    {
      "code" : "0907200000",
      "display" : "Zamboanga del Norte",
      "concept" : [{
        "code" : "0907201000",
        "display" : "City of Dapitan",
        "concept" : [{
          "code" : "0907201001",
          "display" : "Aliguay"
        }]
      }]
    }]
  },
  {
    "code" : "1000000000",
    "display" : "Region X (Northern Mindanao)",
    "concept" : [{
      "code" : "1001300000",
      "display" : "Bukidnon",
      "concept" : [{
        "code" : "1001301000",
        "display" : "Baungon",
        "concept" : [{
          "code" : "1001301001",
          "display" : "Balintad"
        }]
      }]
    },
    {
      "code" : "1001800000",
      "display" : "Camiguin",
      "concept" : [{
        "code" : "1001801000",
        "display" : "Catarman",
        "concept" : [{
          "code" : "1001801001",
          "display" : "Alga"
        }]
      }]
    }]
  },
  {
    "code" : "1100000000",
    "display" : "Region XI (Davao Region)",
    "concept" : [{
      "code" : "1102300000",
      "display" : "Davao del Norte",
      "concept" : [{
        "code" : "1102301000",
        "display" : "Asuncion",
        "concept" : [{
          "code" : "1102301004",
          "display" : "Binancian"
        }]
      }]
    },
    {
      "code" : "1102400000",
      "display" : "Davao del Sur",
      "concept" : [{
        "code" : "1102401000",
        "display" : "Bansalan",
        "concept" : [{
          "code" : "1102401001",
          "display" : "Alegre"
        }]
      }]
    }]
  },
  {
    "code" : "1200000000",
    "display" : "Region XII (SOCCSKSARGEN)",
    "concept" : [{
      "code" : "1204700000",
      "display" : "Cotabato",
      "concept" : [{
        "code" : "1204701000",
        "display" : "Alamada",
        "concept" : [{
          "code" : "1204701001",
          "display" : "Bao"
        }]
      }]
    },
    {
      "code" : "1206300000",
      "display" : "South Cotabato",
      "concept" : [{
        "code" : "1206302000",
        "display" : "Banga",
        "concept" : [{
          "code" : "1206302002",
          "display" : "Benitez "
        }]
      }]
    }]
  },
  {
    "code" : "1300000000",
    "display" : "National Capital Region (NCR)",
    "concept" : [{
      "code" : "1380100000",
      "display" : "City of Caloocan",
      "concept" : [{
        "code" : "1380100001",
        "display" : "Barangay 1"
      }]
    },
    {
      "code" : "1380200000",
      "display" : "City of Las Piñas"
    },
    {
      "code" : "1380600000",
      "display" : "City of Manila",
      "concept" : [{
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
      }]
    }]
  },
  {
    "code" : "1400000000",
    "display" : "Cordillera Administrative Region (CAR)",
    "concept" : [{
      "code" : "1400100000",
      "display" : "Abra",
      "concept" : [{
        "code" : "1400101000",
        "display" : "Bangued ",
        "concept" : [{
          "code" : "1400101001",
          "display" : "Agtangao"
        }]
      }]
    },
    {
      "code" : "1401100000",
      "display" : "Benguet",
      "concept" : [{
        "code" : "1401101000",
        "display" : "Atok",
        "concept" : [{
          "code" : "1401101001",
          "display" : "Abiang"
        }]
      }]
    },
    {
      "code" : "1402700000",
      "display" : "Ifugao"
    },
    {
      "code" : "1403200000",
      "display" : "Kalinga"
    },
    {
      "code" : "1404400000",
      "display" : "Mountain Province"
    },
    {
      "code" : "1408100000",
      "display" : "Apayao"
    }]
  },
  {
    "code" : "1600000000",
    "display" : "Region XIII (Caraga)",
    "concept" : [{
      "code" : "1600200000",
      "display" : "Agusan del Norte",
      "concept" : [{
        "code" : "1600201000",
        "display" : "Buenavista",
        "concept" : [{
          "code" : "1600201001",
          "display" : "Abilan"
        }]
      }]
    },
    {
      "code" : "1600300000",
      "display" : "Agusan del Sur",
      "concept" : [{
        "code" : "1600301000",
        "display" : "City of Bayugan",
        "concept" : [{
          "code" : "1600301001",
          "display" : "Calaitan"
        }]
      }]
    }]
  },
  {
    "code" : "1700000000",
    "display" : "MIMAROPA Region",
    "concept" : [{
      "code" : "1704000000",
      "display" : "Marinduque",
      "concept" : [{
        "code" : "1704001000",
        "display" : "Boac ",
        "concept" : [{
          "code" : "1704001001",
          "display" : "Agot"
        }]
      }]
    },
    {
      "code" : "1705100000",
      "display" : "Occidental Mindoro",
      "concept" : [{
        "code" : "1705101000",
        "display" : "Abra De Ilog",
        "concept" : [{
          "code" : "1705101001",
          "display" : "Balao"
        }]
      }]
    }]
  },
  {
    "code" : "1800000000",
    "display" : "Negros Island Region (NIR)",
    "concept" : [{
      "code" : "1804500000",
      "display" : "Negros Occidental",
      "concept" : [{
        "code" : "1804502000",
        "display" : "City of Bago",
        "concept" : [{
          "code" : "1804502001",
          "display" : "Abuanan"
        }]
      }]
    },
    {
      "code" : "1804600000",
      "display" : "Negros Oriental",
      "concept" : [{
        "code" : "1804601000",
        "display" : "Amlan",
        "concept" : [{
          "code" : "1804601001",
          "display" : "Bio-os"
        }]
      }]
    }]
  },
  {
    "code" : "1900000000",
    "display" : "Bangsamoro Autonomous Region In Muslim Mindanao (BARMM)",
    "concept" : [{
      "code" : "1900700000",
      "display" : "Basilan",
      "concept" : [{
        "code" : "1900702000",
        "display" : "City of Lamitan ",
        "concept" : [{
          "code" : "1900702001",
          "display" : "Arco"
        }]
      }]
    },
    {
      "code" : "1903600000",
      "display" : "Lanao del Sur",
      "concept" : [{
        "code" : "1903601000",
        "display" : "Bacolod-Kalawi",
        "concept" : [{
          "code" : "1903601001",
          "display" : "Ampao"
        }]
      }]
    }]
  }]
}

```
