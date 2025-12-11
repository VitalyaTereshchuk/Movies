// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation
import Swifter

let server = HttpServer()

server["/movies"] = { request in
    let json = """
        [
          {
            "id": "tt1312221",
            "url": "https://www.imdb.com/title/tt1312221/",
            "primaryTitle": "Frankenstein",
            "originalTitle": "Frankenstein",
            "type": "movie",
            "description": "Dr. Victor Frankenstein, a brilliant but egotistical scientist, brings a creature to life in a monstrous experiment that ultimately leads to the undoing of both the creator and his tragic creation.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BYzYzNDYxMTQtMTU4OS00MTdlLThhMTQtZjI4NGJmMTZmNmRiXkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BYzYzNDYxMTQtMTU4OS00MTdlLThhMTQtZjI4NGJmMTZmNmRiXkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BYzYzNDYxMTQtMTU4OS00MTdlLThhMTQtZjI4NGJmMTZmNmRiXkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BYzYzNDYxMTQtMTU4OS00MTdlLThhMTQtZjI4NGJmMTZmNmRiXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": null,
            "contentRating": "R",
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2025-11-07",
            "interests": [
              "Body Horror",
              "Dark Fantasy",
              "Monster Horror",
              "Psychological Drama",
              "Psychological Horror",
              "Steampunk",
              "Tragedy",
              "Drama",
              "Fantasy",
              "Horror"
            ],
            "countriesOfOrigin": [
              "MX",
              "US"
            ],
            "externalLinks": [
              "https://www.netflix.com/title/81507921"
            ],
            "spokenLanguages": [
              "en",
              "da",
              "fr"
            ],
            "filmingLocations": [
              "North Bay, Nipissing, Ontario, Canada"
            ],
            "productionCompanies": [
              {
                "id": "co0235528",
                "name": "Bluegrass Films"
              },
              {
                "id": "co0901284",
                "name": "Demilo Films"
              },
              {
                "id": "co0839619",
                "name": "Double Dare You (DDY)"
              }
            ],
            "budget": 120000000,
            "grossWorldwide": 144496,
            "genres": [
              "Drama",
              "Fantasy",
              "Horror"
            ],
            "isAdult": false,
            "runtimeMinutes": 149,
            "averageRating": 7.5,
            "numVotes": 154344,
            "metascore": 77
          },
          {
            "id": "tt19847976",
            "url": "https://www.imdb.com/title/tt19847976/",
            "primaryTitle": "Wicked: For Good",
            "originalTitle": "Wicked: For Good",
            "type": "movie",
            "description": "Elphaba, the future Wicked Witch of the West and her relationship with Glinda, the Good Witch of the North. The second of a two-part feature film adaptation of the Broadway musical.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BNzRhNTE4ZTYtNTM0Mi00MzU3LTk4MTktYWE3MzQ2NTU0MDNlXkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNzRhNTE4ZTYtNTM0Mi00MzU3LTk4MTktYWE3MzQ2NTU0MDNlXkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNzRhNTE4ZTYtNTM0Mi00MzU3LTk4MTktYWE3MzQ2NTU0MDNlXkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNzRhNTE4ZTYtNTM0Mi00MzU3LTk4MTktYWE3MzQ2NTU0MDNlXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": null,
            "contentRating": "PG",
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2025-11-21",
            "interests": [
              "Fairy Tale",
              "Pop Musical",
              "Family",
              "Fantasy",
              "Musical",
              "Romance"
            ],
            "countriesOfOrigin": [
              "US"
            ],
            "externalLinks": [
              "https://www.facebook.com/wickedmovie",
              "https://www.instagram.com/wickedmovie/"
            ],
            "spokenLanguages": [
              "en"
            ],
            "filmingLocations": [
              "England, UK"
            ],
            "productionCompanies": [
              {
                "id": "co0005073",
                "name": "Universal Pictures"
              },
              {
                "id": "co0093810",
                "name": "Marc Platt Productions"
              },
              {
                "id": "co0800147",
                "name": "Ontario Interactive Digital Media Tax Credit"
              }
            ],
            "budget": 150000000,
            "grossWorldwide": 253477920,
            "genres": [
              "Family",
              "Fantasy",
              "Musical"
            ],
            "isAdult": false,
            "runtimeMinutes": 137,
            "averageRating": 7.1,
            "numVotes": 21353,
            "metascore": 58
          },
          {
            "id": "tt30144839",
            "url": "https://www.imdb.com/title/tt30144839/",
            "primaryTitle": "One Battle After Another",
            "originalTitle": "One Battle After Another",
            "type": "movie",
            "description": "When their evil enemy resurfaces after 16 years, a group of ex-revolutionaries reunite to rescue the daughter of one of their own.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BMzBkZmQ0NjMtNTZlMy00ZjdlLTg5ODUtYWFlNGM0YzE3MTg0XkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMzBkZmQ0NjMtNTZlMy00ZjdlLTg5ODUtYWFlNGM0YzE3MTg0XkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMzBkZmQ0NjMtNTZlMy00ZjdlLTg5ODUtYWFlNGM0YzE3MTg0XkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMzBkZmQ0NjMtNTZlMy00ZjdlLTg5ODUtYWFlNGM0YzE3MTg0XkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": "https://www.youtube.com/watch?v=hg8AGTyYMBA",
            "contentRating": "R",
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2025-09-26",
            "interests": [
              "Action Epic",
              "Dark Comedy",
              "Epic",
              "Political Thriller",
              "Action",
              "Crime",
              "Drama",
              "Thriller"
            ],
            "countriesOfOrigin": [
              "US"
            ],
            "externalLinks": [
              "https://www.instagram.com/onebattleafteranothermovie/?hl=en",
              "https://www.onebattleafteranothermovie.com/"
            ],
            "spokenLanguages": [
              "en",
              "es"
            ],
            "filmingLocations": [
              "El Paso, Texas, USA"
            ],
            "productionCompanies": [
              {
                "id": "co0027686",
                "name": "Ghoulardi Film Company"
              },
              {
                "id": "co0002663",
                "name": "Warner Bros."
              },
              {
                "id": "co1090055",
                "name": "Domain Entertainment (II)"
              }
            ],
            "budget": 130000000,
            "grossWorldwide": 202101742,
            "genres": [
              "Action",
              "Crime",
              "Drama"
            ],
            "isAdult": false,
            "runtimeMinutes": 161,
            "averageRating": 8,
            "numVotes": 175769,
            "metascore": 95
          },
          {
            "id": "tt29768334",
            "url": "https://www.imdb.com/title/tt29768334/",
            "primaryTitle": "Train Dreams",
            "originalTitle": "Train Dreams",
            "type": "movie",
            "description": "Based on Denis Johnson's beloved novella, Train Dreams is the moving portrait of Robert Grainier, a logger and railroad worker who leads a life of unexpected depth and beauty in the rapidly-changing America of the early 20th Century.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BZDkzNzkyNTktYzNhMi00YjhiLWI5YmUtZjliMTY0ZDc5NmMyXkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BZDkzNzkyNTktYzNhMi00YjhiLWI5YmUtZjliMTY0ZDc5NmMyXkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BZDkzNzkyNTktYzNhMi00YjhiLWI5YmUtZjliMTY0ZDc5NmMyXkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BZDkzNzkyNTktYzNhMi00YjhiLWI5YmUtZjliMTY0ZDc5NmMyXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": null,
            "contentRating": "PG-13",
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2025-11-21",
            "interests": [
              "Period Drama",
              "Drama"
            ],
            "countriesOfOrigin": [
              "US"
            ],
            "externalLinks": [],
            "spokenLanguages": [
              "en"
            ],
            "filmingLocations": [
              "Spokane, Washington, USA"
            ],
            "productionCompanies": [
              {
                "id": "co1031934",
                "name": "Black Bear"
              },
              {
                "id": "co0172185",
                "name": "Kamala Films"
              }
            ],
            "budget": null,
            "grossWorldwide": null,
            "genres": [
              "Drama"
            ],
            "isAdult": false,
            "runtimeMinutes": 102,
            "averageRating": 7.6,
            "numVotes": 10658,
            "metascore": 88
          },
          {
            "id": "tt1262426",
            "url": "https://www.imdb.com/title/tt1262426/",
            "primaryTitle": "Wicked",
            "originalTitle": "Wicked: Part I",
            "type": "movie",
            "description": "Elphaba, a young woman ridiculed for her green skin, and Galinda, a popular girl, become friends at Shiz University in the Land of Oz. After an encounter with the Wonderful Wizard of Oz, their friendship reaches a crossroads.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BOWMwYjYzYmMtMWQ2Ni00NWUwLTg2MzAtYzkzMDBiZDIwOTMwXkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BOWMwYjYzYmMtMWQ2Ni00NWUwLTg2MzAtYzkzMDBiZDIwOTMwXkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BOWMwYjYzYmMtMWQ2Ni00NWUwLTg2MzAtYzkzMDBiZDIwOTMwXkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BOWMwYjYzYmMtMWQ2Ni00NWUwLTg2MzAtYzkzMDBiZDIwOTMwXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": "https://www.youtube.com/watch?v=6COmYeLsz4c",
            "contentRating": "PG",
            "startYear": 2024,
            "endYear": null,
            "releaseDate": "2024-11-22",
            "interests": [
              "Fairy Tale",
              "Pop Musical",
              "Fantasy",
              "Musical",
              "Romance"
            ],
            "countriesOfOrigin": [
              "US",
              "JP",
              "CA",
              "IS",
              "GB"
            ],
            "externalLinks": [
              "https://www.facebook.com/wickedmovie",
              "https://www.instagram.com/wickedmovie"
            ],
            "spokenLanguages": [
              "en"
            ],
            "filmingLocations": [
              "Sky Studios Elstree Rowley, Borehamwood, Hertfordshire, England, UK"
            ],
            "productionCompanies": [
              {
                "id": "co0005073",
                "name": "Universal Pictures"
              },
              {
                "id": "co0093810",
                "name": "Marc Platt Productions"
              },
              {
                "id": "co0037668",
                "name": "Moving Pictures (I)"
              }
            ],
            "budget": 150000000,
            "grossWorldwide": 758053377,
            "genres": [
              "Fantasy",
              "Musical",
              "Romance"
            ],
            "isAdult": false,
            "runtimeMinutes": 160,
            "averageRating": 7.4,
            "numVotes": 195726,
            "metascore": 73
          },
          {
            "id": "tt14107334",
            "url": "https://www.imdb.com/title/tt14107334/",
            "primaryTitle": "The Running Man",
            "originalTitle": "The Running Man",
            "type": "movie",
            "description": "A man joins a game show in which contestants, allowed to flee anywhere in the world, are pursued by hunters hired to kill them.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BMTk5NjU4OTAtNTEyMS00ZjBiLTg0ZjMtOGJiMGJhNjQ3MzYxXkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMTk5NjU4OTAtNTEyMS00ZjBiLTg0ZjMtOGJiMGJhNjQ3MzYxXkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMTk5NjU4OTAtNTEyMS00ZjBiLTg0ZjMtOGJiMGJhNjQ3MzYxXkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMTk5NjU4OTAtNTEyMS00ZjBiLTg0ZjMtOGJiMGJhNjQ3MzYxXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": null,
            "contentRating": "R",
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2025-11-14",
            "interests": [
              "Conspiracy Thriller",
              "Dark Comedy",
              "Dystopian Sci-Fi",
              "One-Person Army Action",
              "Political Thriller",
              "Survival",
              "Action",
              "Adventure",
              "Sci-Fi",
              "Thriller"
            ],
            "countriesOfOrigin": [
              "GB",
              "US"
            ],
            "externalLinks": [
              "https://www.facebook.com/RunningManMovie",
              "https://www.runningmanmovie.com/"
            ],
            "spokenLanguages": [
              "en"
            ],
            "filmingLocations": [
              "Bulgaria"
            ],
            "productionCompanies": [
              {
                "id": "co0801004",
                "name": "Complete Fiction"
              },
              {
                "id": "co0301801",
                "name": "Genre Films"
              },
              {
                "id": "co0023400",
                "name": "Paramount Pictures"
              }
            ],
            "budget": 110000000,
            "grossWorldwide": 50015275,
            "genres": [
              "Action",
              "Adventure",
              "Sci-Fi"
            ],
            "isAdult": false,
            "runtimeMinutes": 133,
            "averageRating": 6.7,
            "numVotes": 23981,
            "metascore": 56
          },
          {
            "id": "tt32159989",
            "url": "https://www.imdb.com/title/tt32159989/",
            "primaryTitle": "After the Hunt",
            "originalTitle": "After the Hunt",
            "type": "movie",
            "description": "A college professor finds herself at a personal and professional crossroads when a star pupil levels an accusation against one of her colleagues and a dark secret from her own past threatens to come to light.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BMzYyOTAwODEtZTY4My00MjVkLWJjYjUtMjE2N2UzYTE3MTY3XkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMzYyOTAwODEtZTY4My00MjVkLWJjYjUtMjE2N2UzYTE3MTY3XkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMzYyOTAwODEtZTY4My00MjVkLWJjYjUtMjE2N2UzYTE3MTY3XkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMzYyOTAwODEtZTY4My00MjVkLWJjYjUtMjE2N2UzYTE3MTY3XkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": null,
            "contentRating": "R",
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2025-10-17",
            "interests": [
              "Psychological Drama",
              "Psychological Thriller",
              "Crime",
              "Drama",
              "Thriller"
            ],
            "countriesOfOrigin": [
              "US",
              "IT"
            ],
            "externalLinks": [],
            "spokenLanguages": [
              "en",
              "de"
            ],
            "filmingLocations": [
              "Cambridge, Cambridgeshire, England, UK"
            ],
            "productionCompanies": [
              {
                "id": "co1025982",
                "name": "Amazon MGM Studios"
              },
              {
                "id": "co0003687",
                "name": "Imagine Entertainment"
              },
              {
                "id": "co0432917",
                "name": "Frenesy Film Company"
              }
            ],
            "budget": null,
            "grossWorldwide": 9364139,
            "genres": [
              "Crime",
              "Drama",
              "Thriller"
            ],
            "isAdult": false,
            "runtimeMinutes": 138,
            "averageRating": 5.9,
            "numVotes": 10509,
            "metascore": 52
          },
          {
            "id": "tt32558705",
            "url": "https://www.imdb.com/title/tt32558705/",
            "primaryTitle": "The Hunger Games: Sunrise on the Reaping",
            "originalTitle": "The Hunger Games: Sunrise on the Reaping",
            "type": "movie",
            "description": "Explores Panem 24 years before Katniss' saga, starting on the morning of the reaping for the 50th Hunger Games, where a young Haymitch Abernathy participates.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BZWZhNjJmYmQtN2JkNS00OGY0LTk3YzYtNDgwNjE2ODIwODczXkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BZWZhNjJmYmQtN2JkNS00OGY0LTk3YzYtNDgwNjE2ODIwODczXkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BZWZhNjJmYmQtN2JkNS00OGY0LTk3YzYtNDgwNjE2ODIwODczXkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BZWZhNjJmYmQtN2JkNS00OGY0LTk3YzYtNDgwNjE2ODIwODczXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": null,
            "contentRating": null,
            "startYear": 2026,
            "endYear": null,
            "releaseDate": "2026-11-20",
            "interests": [
              "Dark Fantasy",
              "Dystopian Sci-Fi",
              "Teen Adventure",
              "Teen Fantasy",
              "Action",
              "Adventure",
              "Fantasy",
              "Sci-Fi",
              "Thriller"
            ],
            "countriesOfOrigin": [
              "US"
            ],
            "externalLinks": [],
            "spokenLanguages": [
              "en"
            ],
            "filmingLocations": [
              "Somiedo, Asturias, Spain"
            ],
            "productionCompanies": [
              {
                "id": "co0006881",
                "name": "Lionsgate"
              },
              {
                "id": "co0212151",
                "name": "Color Force"
              },
              {
                "id": "co0130575",
                "name": "Medienboard Berlin-Brandenburg"
              }
            ],
            "budget": null,
            "grossWorldwide": null,
            "genres": [
              "Action",
              "Adventure",
              "Fantasy"
            ],
            "isAdult": false,
            "runtimeMinutes": null,
            "averageRating": null,
            "numVotes": 0,
            "metascore": null
          },
          {
            "id": "tt4712810",
            "url": "https://www.imdb.com/title/tt4712810/",
            "primaryTitle": "Now You See Me: Now You Don't",
            "originalTitle": "Now You See Me: Now You Don't",
            "type": "movie",
            "description": "A diamond heist reunites retired Horsemen illusionists with new performers Greenblatt, Smith and Sessa as they target dangerous criminals.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BYmZmZDc1Y2EtMmU2MS00NmMzLTllZmYtNjlkODFkNjZlOGE0XkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BYmZmZDc1Y2EtMmU2MS00NmMzLTllZmYtNjlkODFkNjZlOGE0XkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BYmZmZDc1Y2EtMmU2MS00NmMzLTllZmYtNjlkODFkNjZlOGE0XkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BYmZmZDc1Y2EtMmU2MS00NmMzLTllZmYtNjlkODFkNjZlOGE0XkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": null,
            "contentRating": "PG-13",
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2025-11-14",
            "interests": [
              "Heist",
              "Crime",
              "Thriller"
            ],
            "countriesOfOrigin": [
              "US"
            ],
            "externalLinks": [
              "https://nowyouseeme.movie/"
            ],
            "spokenLanguages": [
              "en"
            ],
            "filmingLocations": [
              "Belgium"
            ],
            "productionCompanies": [
              {
                "id": "co0286662",
                "name": "Abu Dhabi Film Commission"
              },
              {
                "id": "co1159186",
                "name": "Hungary Film Commision"
              },
              {
                "id": "co0006881",
                "name": "Lionsgate"
              }
            ],
            "budget": 90000000,
            "grossWorldwide": 148980000,
            "genres": [
              "Crime",
              "Thriller"
            ],
            "isAdult": false,
            "runtimeMinutes": 113,
            "averageRating": 6.3,
            "numVotes": 13680,
            "metascore": 50
          },
          {
            "id": "tt31227572",
            "url": "https://www.imdb.com/title/tt31227572/",
            "primaryTitle": "Predator: Badlands",
            "originalTitle": "Predator: Badlands",
            "type": "movie",
            "description": "A young Predator outcast from his clan finds an unlikely ally on his journey in search of the ultimate adversary.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BNTdjZGUxMTItNjRkNS00N2VhLWE4MjMtMjVhODMwMGIxNjUwXkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNTdjZGUxMTItNjRkNS00N2VhLWE4MjMtMjVhODMwMGIxNjUwXkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNTdjZGUxMTItNjRkNS00N2VhLWE4MjMtMjVhODMwMGIxNjUwXkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNTdjZGUxMTItNjRkNS00N2VhLWE4MjMtMjVhODMwMGIxNjUwXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": null,
            "contentRating": "PG-13",
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2025-11-07",
            "interests": [
              "Alien Invasion",
              "Action",
              "Adventure",
              "Sci-Fi",
              "Thriller"
            ],
            "countriesOfOrigin": [],
            "externalLinks": [],
            "spokenLanguages": [
              "en"
            ],
            "filmingLocations": [
              "Rotorua, New Zealand"
            ],
            "productionCompanies": [
              {
                "id": "co0781821",
                "name": "20th Century Studios"
              },
              {
                "id": "co0772793",
                "name": "Toberoff Productions"
              },
              {
                "id": "co1105246",
                "name": "Deutsche Filmakademie"
              }
            ],
            "budget": 105000000,
            "grossWorldwide": 162054166,
            "genres": [
              "Action",
              "Adventure",
              "Sci-Fi"
            ],
            "isAdult": false,
            "runtimeMinutes": 107,
            "averageRating": 7.5,
            "numVotes": 42365,
            "metascore": 71
          },
          {
            "id": "tt34276058",
            "url": "https://www.imdb.com/title/tt34276058/",
            "primaryTitle": "The Family Plan 2",
            "originalTitle": "The Family Plan 2",
            "type": "movie",
            "description": "Now that Dan’s assassin days are behind him, all he wants for Christmas is quality time with his kids. But when he learns his daughter has her own plans, he books a family trip to London—putting them all in the crosshairs of an unexpected enemy.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BNzk4NWNmMDYtZmRmMC00NDcxLWEyYTAtNDc5YWQwZDhlODI1XkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNzk4NWNmMDYtZmRmMC00NDcxLWEyYTAtNDc5YWQwZDhlODI1XkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNzk4NWNmMDYtZmRmMC00NDcxLWEyYTAtNDc5YWQwZDhlODI1XkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNzk4NWNmMDYtZmRmMC00NDcxLWEyYTAtNDc5YWQwZDhlODI1XkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": null,
            "contentRating": "PG-13",
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2025-11-21",
            "interests": [
              "Action",
              "Comedy",
              "Family"
            ],
            "countriesOfOrigin": [
              "US",
              "GB"
            ],
            "externalLinks": [],
            "spokenLanguages": [
              "en"
            ],
            "filmingLocations": [
              "Paris, France"
            ],
            "productionCompanies": [
              {
                "id": "co0822606",
                "name": "Apple Original Films"
              },
              {
                "id": "co0947376",
                "name": "Municipal Pictures"
              },
              {
                "id": "co0947376",
                "name": "Municipal Pictures"
              }
            ],
            "budget": null,
            "grossWorldwide": null,
            "genres": [
              "Action",
              "Comedy",
              "Family"
            ],
            "isAdult": false,
            "runtimeMinutes": 106,
            "averageRating": 5.6,
            "numVotes": 4620,
            "metascore": 38
          },
          {
            "id": "tt31425731",
            "url": "https://www.imdb.com/title/tt31425731/",
            "primaryTitle": "Playdate",
            "originalTitle": "Playdate",
            "type": "movie",
            "description": "Brian has just been fired from his job. He becomes a stay-at-home dad. He accepts a playdate invitation from another stay-at-home dad who turns out to be a loose cannon.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BNWQ4N2Y5YjYtNGE1Ni00YWExLWIzNDYtMmM2ZTc0OGJmMDA1XkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNWQ4N2Y5YjYtNGE1Ni00YWExLWIzNDYtMmM2ZTc0OGJmMDA1XkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNWQ4N2Y5YjYtNGE1Ni00YWExLWIzNDYtMmM2ZTc0OGJmMDA1XkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNWQ4N2Y5YjYtNGE1Ni00YWExLWIzNDYtMmM2ZTc0OGJmMDA1XkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": null,
            "contentRating": "PG-13",
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2025-11-12",
            "interests": [
              "Buddy Comedy",
              "Action",
              "Comedy"
            ],
            "countriesOfOrigin": [
              "US"
            ],
            "externalLinks": [],
            "spokenLanguages": [
              "en"
            ],
            "filmingLocations": [
              "Maple Ridge, British Columbia, Canada"
            ],
            "productionCompanies": [
              {
                "id": "co1049087",
                "name": "A Higher Standard"
              },
              {
                "id": "co0586735",
                "name": "Nickel City Pictures"
              },
              {
                "id": "co1049810",
                "name": "WideAwake Pictures"
              }
            ],
            "budget": null,
            "grossWorldwide": 191320,
            "genres": [
              "Action",
              "Comedy"
            ],
            "isAdult": false,
            "runtimeMinutes": 93,
            "averageRating": 5.5,
            "numVotes": 13919,
            "metascore": 20
          },
          {
            "id": "tt33053440",
            "url": "https://www.imdb.com/title/tt33053440/",
            "primaryTitle": "Champagne Problems",
            "originalTitle": "Champagne Problems",
            "type": "movie",
            "description": "An executive travels to France to secure the acquisition of a renowned champagne brand before Christmas, but her plans are upended when she falls into a whirlwind romance with a charming Parisian - only to discover he's the founder's son.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BYmZiMTZlMzktOGMxYi00MGJhLWI4YTUtYTAwNTU5Y2UyMGNlXkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BYmZiMTZlMzktOGMxYi00MGJhLWI4YTUtYTAwNTU5Y2UyMGNlXkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BYmZiMTZlMzktOGMxYi00MGJhLWI4YTUtYTAwNTU5Y2UyMGNlXkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BYmZiMTZlMzktOGMxYi00MGJhLWI4YTUtYTAwNTU5Y2UyMGNlXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": null,
            "contentRating": null,
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2025-11-19",
            "interests": [
              "Romantic Comedy",
              "Comedy",
              "Romance"
            ],
            "countriesOfOrigin": [
              "US"
            ],
            "externalLinks": [],
            "spokenLanguages": [
              "en"
            ],
            "filmingLocations": [
              "Épernay, Marne, France"
            ],
            "productionCompanies": [
              {
                "id": "co0840117",
                "name": "Grumpy Entertainment"
              },
              {
                "id": "co0820172",
                "name": "Off Camera Entertainment"
              }
            ],
            "budget": null,
            "grossWorldwide": null,
            "genres": [
              "Comedy",
              "Romance"
            ],
            "isAdult": false,
            "runtimeMinutes": 99,
            "averageRating": 6.1,
            "numVotes": 3786,
            "metascore": 50
          },
          {
            "id": "tt35520315",
            "url": "https://www.imdb.com/title/tt35520315/",
            "primaryTitle": "The Age of Disclosure",
            "originalTitle": "The Age of Disclosure",
            "type": "movie",
            "description": "Featuring 34 U.S. Government insiders, this explosive documentary reveals an 80-year global cover-up of non-human intelligent life and a secret war among major nations to reverse engineer advanced technology of non-human origin.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BNzExZmFjYjctYzlmNS00YmJlLTk2OWUtZThlYjU4Y2RlMDhlXkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNzExZmFjYjctYzlmNS00YmJlLTk2OWUtZThlYjU4Y2RlMDhlXkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNzExZmFjYjctYzlmNS00YmJlLTk2OWUtZThlYjU4Y2RlMDhlXkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNzExZmFjYjctYzlmNS00YmJlLTk2OWUtZThlYjU4Y2RlMDhlXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": "https://www.youtube.com/watch?v=DkU7ZqbADRs",
            "contentRating": null,
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2025-11-21",
            "interests": [
              "Documentary"
            ],
            "countriesOfOrigin": [
              "US"
            ],
            "externalLinks": [
              "https://www.theageofdisclosure.com"
            ],
            "spokenLanguages": [
              "en"
            ],
            "filmingLocations": [],
            "productionCompanies": [
              {
                "id": "co0459354",
                "name": "Farah Films"
              }
            ],
            "budget": null,
            "grossWorldwide": null,
            "genres": [
              "Documentary"
            ],
            "isAdult": false,
            "runtimeMinutes": 109,
            "averageRating": 7.1,
            "numVotes": 1918,
            "metascore": 45
          },
          {
            "id": "tt29567915",
            "url": "https://www.imdb.com/title/tt29567915/",
            "primaryTitle": "Nuremberg",
            "originalTitle": "Nuremberg",
            "type": "movie",
            "description": "A WWII psychiatrist evaluates Nazi leaders before the Nuremberg trials, growing increasingly obsessed with understanding evil as he forms a disturbing bond with Hermann Göring.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BMWUzODNkYWUtMmMzOC00NzZjLTlkMTctOTkwM2I2ZWI1MTlmXkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMWUzODNkYWUtMmMzOC00NzZjLTlkMTctOTkwM2I2ZWI1MTlmXkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMWUzODNkYWUtMmMzOC00NzZjLTlkMTctOTkwM2I2ZWI1MTlmXkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMWUzODNkYWUtMmMzOC00NzZjLTlkMTctOTkwM2I2ZWI1MTlmXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": null,
            "contentRating": "PG-13",
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2025-11-07",
            "interests": [
              "Legal Drama",
              "Legal Thriller",
              "Psychological Drama",
              "Psychological Thriller",
              "Biography",
              "Drama",
              "History",
              "Thriller",
              "War"
            ],
            "countriesOfOrigin": [
              "US"
            ],
            "externalLinks": [],
            "spokenLanguages": [
              "en",
              "de"
            ],
            "filmingLocations": [
              "Duna Palota, Budapest, Hungary"
            ],
            "productionCompanies": [
              {
                "id": "co0073388",
                "name": "Walden Media"
              },
              {
                "id": "co0862488",
                "name": "Filmsquad"
              },
              {
                "id": "co0321082",
                "name": "Mythology Entertainment"
              }
            ],
            "budget": null,
            "grossWorldwide": 14099355,
            "genres": [
              "Biography",
              "Drama",
              "History"
            ],
            "isAdult": false,
            "runtimeMinutes": 148,
            "averageRating": 7.7,
            "numVotes": 11766,
            "metascore": 61
          },
          {
            "id": "tt34610311",
            "url": "https://www.imdb.com/title/tt34610311/",
            "primaryTitle": "The Shadow's Edge",
            "originalTitle": "Bu feng zhui ying",
            "type": "movie",
            "description": "Macau Police brings the tracking expert police officer out of retirement to help catch a dangerous group of professional thieves.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BYjhhODA0NzctMDY0Ny00YTRkLWIzNzgtN2E1MDY3MTU2ODQyXkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BYjhhODA0NzctMDY0Ny00YTRkLWIzNzgtN2E1MDY3MTU2ODQyXkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BYjhhODA0NzctMDY0Ny00YTRkLWIzNzgtN2E1MDY3MTU2ODQyXkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BYjhhODA0NzctMDY0Ny00YTRkLWIzNzgtN2E1MDY3MTU2ODQyXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": null,
            "contentRating": "Not Rated",
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2025-08-16",
            "interests": [
              "Mandarin",
              "Action",
              "Crime",
              "Drama",
              "Thriller"
            ],
            "countriesOfOrigin": [
              "HK",
              "CN"
            ],
            "externalLinks": [],
            "spokenLanguages": [
              "Cantonese"
            ],
            "filmingLocations": [
              "Macau, China"
            ],
            "productionCompanies": [
              {
                "id": "co0440827",
                "name": "Beijing Hairun Pictures Company"
              },
              {
                "id": "co0735657",
                "name": "Beijing New United Films"
              },
              {
                "id": "co1146294",
                "name": "Beijing Sheep Says Bah Films"
              }
            ],
            "budget": null,
            "grossWorldwide": 2234349,
            "genres": [
              "Action",
              "Crime",
              "Drama"
            ],
            "isAdult": false,
            "runtimeMinutes": 141,
            "averageRating": 7.4,
            "numVotes": 2710,
            "metascore": null
          },
          {
            "id": "tt31844586",
            "url": "https://www.imdb.com/title/tt31844586/",
            "primaryTitle": "Sisu: Road to Revenge",
            "originalTitle": "Sisu 2",
            "type": "movie",
            "description": "A man returns to dismantle his family's house, where they were murdered in war, to rebuild it elsewhere. When the killer, a Red Army commander, tracks him down, a brutal cross-country pursuit begins.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BM2ZiNDZiZDQtMjYyOC00MWY1LTkyZjgtNDM1MmMwZTdhOWFkXkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BM2ZiNDZiZDQtMjYyOC00MWY1LTkyZjgtNDM1MmMwZTdhOWFkXkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BM2ZiNDZiZDQtMjYyOC00MWY1LTkyZjgtNDM1MmMwZTdhOWFkXkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BM2ZiNDZiZDQtMjYyOC00MWY1LTkyZjgtNDM1MmMwZTdhOWFkXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": null,
            "contentRating": "R",
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2025-11-21",
            "interests": [
              "One-Person Army Action",
              "Action",
              "War"
            ],
            "countriesOfOrigin": [
              "FI"
            ],
            "externalLinks": [],
            "spokenLanguages": [
              "en",
              "fi"
            ],
            "filmingLocations": [
              "Estonia"
            ],
            "productionCompanies": [
              {
                "id": "co0613744",
                "name": "Subzero Film Entertainment"
              },
              {
                "id": "co0842305",
                "name": "Good Chaos"
              },
              {
                "id": "co1124249",
                "name": "Cosmic Snowball"
              }
            ],
            "budget": 11000000,
            "grossWorldwide": 5788509,
            "genres": [
              "Action",
              "War"
            ],
            "isAdult": false,
            "runtimeMinutes": 89,
            "averageRating": 7.3,
            "numVotes": 3866,
            "metascore": 76
          },
          {
            "id": "tt12300742",
            "url": "https://www.imdb.com/title/tt12300742/",
            "primaryTitle": "Bugonia",
            "originalTitle": "Bugonia",
            "type": "movie",
            "description": "Two conspiracy-obsessed young men kidnap the high-powered CEO of a major company, convinced that she is an alien intent on destroying planet Earth.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BNzIzNWQxMjEtZmQ3MS00OTk2LWFlZjktZDUyYWRkM2M3NWVlXkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNzIzNWQxMjEtZmQ3MS00OTk2LWFlZjktZDUyYWRkM2M3NWVlXkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNzIzNWQxMjEtZmQ3MS00OTk2LWFlZjktZDUyYWRkM2M3NWVlXkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNzIzNWQxMjEtZmQ3MS00OTk2LWFlZjktZDUyYWRkM2M3NWVlXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": null,
            "contentRating": "R",
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2025-10-31",
            "interests": [
              "Alien Invasion",
              "Dark Comedy",
              "Satire",
              "Comedy",
              "Crime",
              "Sci-Fi"
            ],
            "countriesOfOrigin": [
              "US",
              "KR",
              "IE"
            ],
            "externalLinks": [
              "https://www.focusfeatures.com/bugonia"
            ],
            "spokenLanguages": [
              "en"
            ],
            "filmingLocations": [
              "Sarakiniko Beach, Milos Island, Greece"
            ],
            "productionCompanies": [
              {
                "id": "co0042399",
                "name": "Focus Features"
              },
              {
                "id": "co0079290",
                "name": "Fremantle"
              },
              {
                "id": "co0214624",
                "name": "Element Pictures"
              }
            ],
            "budget": null,
            "grossWorldwide": 32857834,
            "genres": [
              "Comedy",
              "Crime",
              "Sci-Fi"
            ],
            "isAdult": false,
            "runtimeMinutes": 118,
            "averageRating": 7.7,
            "numVotes": 41999,
            "metascore": 72
          },
          {
            "id": "tt22898462",
            "url": "https://www.imdb.com/title/tt22898462/",
            "primaryTitle": "The Conjuring: Last Rites",
            "originalTitle": "The Conjuring: Last Rites",
            "type": "movie",
            "description": "Paranormal investigators Ed and Lorraine Warren take on one last terrifying case involving mysterious entities they must confront.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BM2VmMzRkYzgtMzg2ZC00OTFkLTkwMTYtNTMxNjM2YzI1MjgyXkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BM2VmMzRkYzgtMzg2ZC00OTFkLTkwMTYtNTMxNjM2YzI1MjgyXkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BM2VmMzRkYzgtMzg2ZC00OTFkLTkwMTYtNTMxNjM2YzI1MjgyXkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BM2VmMzRkYzgtMzg2ZC00OTFkLTkwMTYtNTMxNjM2YzI1MjgyXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": null,
            "contentRating": "R",
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2025-09-05",
            "interests": [
              "Supernatural Horror",
              "Horror",
              "Mystery",
              "Thriller"
            ],
            "countriesOfOrigin": [
              "GB",
              "US"
            ],
            "externalLinks": [
              "https://www.warnerbros.com/movies/conjuring-last-rites"
            ],
            "spokenLanguages": [
              "en"
            ],
            "filmingLocations": [
              "Knebworth, Hertfordshire, England, UK"
            ],
            "productionCompanies": [
              {
                "id": "co0046718",
                "name": "New Line Cinema"
              },
              {
                "id": "co1090055",
                "name": "Domain Entertainment (II)"
              },
              {
                "id": "co0179825",
                "name": "The Safran Company"
              }
            ],
            "budget": 55000000,
            "grossWorldwide": 494052137,
            "genres": [
              "Horror",
              "Mystery",
              "Thriller"
            ],
            "isAdult": false,
            "runtimeMinutes": 135,
            "averageRating": 6.2,
            "numVotes": 74603,
            "metascore": 54
          },
          {
            "id": "tt4627382",
            "url": "https://www.imdb.com/title/tt4627382/",
            "primaryTitle": "Roofman",
            "originalTitle": "Roofman",
            "type": "movie",
            "description": "A charismatic criminal, while on the run from the police, hides in a hidden space of a toy store. There, he adopts a new identity and becomes involved with an employee, beginning a relationship as unlikely as it is risky.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BYjU4OTkyN2MtYjI0Mi00MjE3LWFkNTktZDNjODc3OTdiMDdiXkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BYjU4OTkyN2MtYjI0Mi00MjE3LWFkNTktZDNjODc3OTdiMDdiXkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BYjU4OTkyN2MtYjI0Mi00MjE3LWFkNTktZDNjODc3OTdiMDdiXkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BYjU4OTkyN2MtYjI0Mi00MjE3LWFkNTktZDNjODc3OTdiMDdiXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": null,
            "contentRating": "R",
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2025-10-10",
            "interests": [
              "Dark Comedy",
              "Dark Romance",
              "Biography",
              "Crime",
              "Drama",
              "History",
              "Music",
              "Romance"
            ],
            "countriesOfOrigin": [
              "US"
            ],
            "externalLinks": [
              "https://www.roofmanmovie.com/"
            ],
            "spokenLanguages": [
              "en"
            ],
            "filmingLocations": [
              "Gastonia, North Carolina, USA"
            ],
            "productionCompanies": [
              {
                "id": "co0144109",
                "name": "Hunting Lane Films"
              },
              {
                "id": "co0655304",
                "name": "51 Entertainment"
              },
              {
                "id": "co0518293",
                "name": "High Frequency Entertainment"
              }
            ],
            "budget": 19000000,
            "grossWorldwide": 33040526,
            "genres": [
              "Biography",
              "Crime",
              "Drama"
            ],
            "isAdult": false,
            "runtimeMinutes": 126,
            "averageRating": 7,
            "numVotes": 23876,
            "metascore": 66
          },
          {
            "id": "tt32376165",
            "url": "https://www.imdb.com/title/tt32376165/",
            "primaryTitle": "A House of Dynamite",
            "originalTitle": "A House of Dynamite",
            "type": "movie",
            "description": "When a single, unattributed missile is launched at the United States, a race begins to determine who is responsible and how to respond.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BNjAzMjQ4YTUtOGI1Yy00YTFkLTlkMDQtMDEwOWNjYmE3MTU1XkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNjAzMjQ4YTUtOGI1Yy00YTFkLTlkMDQtMDEwOWNjYmE3MTU1XkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNjAzMjQ4YTUtOGI1Yy00YTFkLTlkMDQtMDEwOWNjYmE3MTU1XkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNjAzMjQ4YTUtOGI1Yy00YTFkLTlkMDQtMDEwOWNjYmE3MTU1XkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": null,
            "contentRating": "R",
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2025-10-24",
            "interests": [
              "Disaster",
              "Political Drama",
              "Political Thriller",
              "Drama",
              "Thriller"
            ],
            "countriesOfOrigin": [
              "US"
            ],
            "externalLinks": [],
            "spokenLanguages": [
              "en"
            ],
            "filmingLocations": [
              "Kenya"
            ],
            "productionCompanies": [
              {
                "id": "co0755716",
                "name": "First Light Productions"
              },
              {
                "id": "co0144901",
                "name": "Netflix"
              },
              {
                "id": "co1101944",
                "name": "Prologue Entertainment"
              }
            ],
            "budget": null,
            "grossWorldwide": 13567,
            "genres": [
              "Drama",
              "Thriller"
            ],
            "isAdult": false,
            "runtimeMinutes": 112,
            "averageRating": 6.4,
            "numVotes": 89057,
            "metascore": 75
          },
          {
            "id": "tt36604797",
            "url": "https://www.imdb.com/title/tt36604797/",
            "primaryTitle": "Holiday Touchdown: A Bills Love Story",
            "originalTitle": "Holiday Touchdown: A Bills Love Story",
            "type": "tvMovie",
            "description": "The movie centers around the Quinns and DeLucas who have lived next door to each other for decades in the shadow of Highmark Stadium - the home of their beloved Buffalo Bills. With their longtime friendship rooted in being proud members of Bills Mafia, the two clans have enjoyed cherished traditions that revolve around cheering for their favorite team - especially at the holidays when they celebrate the last home game before Christmas. Pediatric doctor Morgan Quinn (Roden) and the Bills' VP of Stadium Development Gabe DeLuca (Daddario) have always been close friends, but Gabe has always held a torch for her -a fact obvious to their families (Pollan, Aaron, Schirripa, Murin)...and everyone else who crosses their path. When Morgan learns from her Uncle Tommy (Danza) that someone anonymously helped her family get by after he was drafted more than 60 years ago - and that he continues to receive a Christmas gift each year to this day - she decides to find his benefactor and give her uncle a Christmas he'll always remember. Aided by Bills Mafia friends of theirs, Morgan and Gabe work together to unwrap the gifter's identity. Along the way, Gabe's love for Morgan deepens and in turn, she begins to see him in a new light though neither is daring enough to admit their feelings. Meanwhile, Morgan's hopes of pulling off her surprise for Uncle Tommy get sacked. That is, until Gabe takes matters into his own hands and uses his connections with the Bills to pull off the surprise of a lifetime for Morgan and both their families that will make this a Christmas they'll never forget.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BOGM3ZDcxMGEtYzI2Ny00MzI1LTg2NGItMTdlMjhhNDNmMmIxXkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BOGM3ZDcxMGEtYzI2Ny00MzI1LTg2NGItMTdlMjhhNDNmMmIxXkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BOGM3ZDcxMGEtYzI2Ny00MzI1LTg2NGItMTdlMjhhNDNmMmIxXkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BOGM3ZDcxMGEtYzI2Ny00MzI1LTg2NGItMTdlMjhhNDNmMmIxXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": null,
            "contentRating": "TV-G",
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2025-11-22",
            "interests": [
              "Holiday Romance",
              "Drama",
              "Family",
              "Romance"
            ],
            "countriesOfOrigin": [],
            "externalLinks": [
              "https://www.hallmarkchannel.com/holiday-touchdown-a-bills-love-story"
            ],
            "spokenLanguages": [
              "en"
            ],
            "filmingLocations": [
              "Buffalo FilmWorks - 370 Babcock Street, Buffalo, New York, USA"
            ],
            "productionCompanies": [
              {
                "id": "co0939898",
                "name": "Hallmark Media"
              },
              {
                "id": "co0001577",
                "name": "NFL Films"
              },
              {
                "id": "co0956208",
                "name": "Skydance Sports"
              }
            ],
            "budget": 3000000,
            "grossWorldwide": null,
            "genres": [
              "Drama",
              "Family",
              "Romance"
            ],
            "isAdult": false,
            "runtimeMinutes": null,
            "averageRating": 6.5,
            "numVotes": 441,
            "metascore": null
          },
          {
            "id": "tt26581740",
            "url": "https://www.imdb.com/title/tt26581740/",
            "primaryTitle": "Weapons",
            "originalTitle": "Weapons",
            "type": "movie",
            "description": "When all but one child from the same class mysteriously vanish on the same night at exactly the same time, a community is left questioning who or what is behind their disappearance.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BNTBhNWJjZWItYzY3NS00M2NkLThmOWYtYTlmNzBmN2UxZWFjXkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNTBhNWJjZWItYzY3NS00M2NkLThmOWYtYTlmNzBmN2UxZWFjXkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNTBhNWJjZWItYzY3NS00M2NkLThmOWYtYTlmNzBmN2UxZWFjXkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNTBhNWJjZWItYzY3NS00M2NkLThmOWYtYTlmNzBmN2UxZWFjXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": null,
            "contentRating": "R",
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2025-08-08",
            "interests": [
              "Dark Comedy",
              "Psychological Horror",
              "Supernatural Horror",
              "Witch Horror",
              "Horror",
              "Mystery"
            ],
            "countriesOfOrigin": [
              "US"
            ],
            "externalLinks": [
              "https://amzn.to/45rTpoV",
              "https://www.warnerbros.com/movies/weapons"
            ],
            "spokenLanguages": [
              "en"
            ],
            "filmingLocations": [
              "Atlanta, Georgia, USA"
            ],
            "productionCompanies": [
              {
                "id": "co0046718",
                "name": "New Line Cinema"
              },
              {
                "id": "co1090055",
                "name": "Domain Entertainment (II)"
              },
              {
                "id": "co1124458",
                "name": "Subconscious"
              }
            ],
            "budget": 38000000,
            "grossWorldwide": 268250044,
            "genres": [
              "Horror",
              "Mystery"
            ],
            "isAdult": false,
            "runtimeMinutes": 128,
            "averageRating": 7.5,
            "numVotes": 248492,
            "metascore": 81
          },
          {
            "id": "tt10676052",
            "url": "https://www.imdb.com/title/tt10676052/",
            "primaryTitle": "The Fantastic Four: First Steps",
            "originalTitle": "The Fantastic Four: First Steps",
            "type": "movie",
            "description": "Forced to balance their roles as heroes with the strength of their family bond, the Fantastic Four must defend Earth from a ravenous space god called Galactus and his enigmatic herald, the Silver Surfer.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BOGM5MzA3MDAtYmEwMi00ZDNiLTg4MDgtMTZjOTc0ZGMyNTIwXkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BOGM5MzA3MDAtYmEwMi00ZDNiLTg4MDgtMTZjOTc0ZGMyNTIwXkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BOGM5MzA3MDAtYmEwMi00ZDNiLTg4MDgtMTZjOTc0ZGMyNTIwXkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BOGM5MzA3MDAtYmEwMi00ZDNiLTg4MDgtMTZjOTc0ZGMyNTIwXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": null,
            "contentRating": "PG-13",
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2025-07-25",
            "interests": [
              "Space Sci-Fi",
              "Superhero",
              "Urban Adventure",
              "Action",
              "Adventure",
              "Sci-Fi"
            ],
            "countriesOfOrigin": [
              "US"
            ],
            "externalLinks": [
              "https://www.facebook.com/FantasticFour",
              "https://www.marvel.com/movies/the-fantastic-four-first-steps"
            ],
            "spokenLanguages": [
              "en"
            ],
            "filmingLocations": [
              "Palacio de Exposiciones y Congresos Ciudad de Oviedo, Oviedo, Asturias, Spain"
            ],
            "productionCompanies": [
              {
                "id": "co0051941",
                "name": "Marvel Studios"
              },
              {
                "id": "co0041067",
                "name": "Pinewood Studios"
              },
              {
                "id": "co0065796",
                "name": "New Zealand Film Commission"
              }
            ],
            "budget": 200000000,
            "grossWorldwide": 521858728,
            "genres": [
              "Action",
              "Adventure",
              "Sci-Fi"
            ],
            "isAdult": false,
            "runtimeMinutes": 115,
            "averageRating": 6.9,
            "numVotes": 209670,
            "metascore": 65
          },
          {
            "id": "tt26443597",
            "url": "https://www.imdb.com/title/tt26443597/",
            "primaryTitle": "Zootopia 2",
            "originalTitle": "Zootopia 2",
            "type": "movie",
            "description": "Brave rabbit cop Judy Hopps and her friend, the fox Nick Wilde, team up again to crack a new case, the most perilous and intricate of their careers.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BYjg1Mjc3MjQtMTZjNy00YWVlLWFhMWEtMWI3ZTgxYjJmNmRlXkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BYjg1Mjc3MjQtMTZjNy00YWVlLWFhMWEtMWI3ZTgxYjJmNmRlXkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BYjg1Mjc3MjQtMTZjNy00YWVlLWFhMWEtMWI3ZTgxYjJmNmRlXkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BYjg1Mjc3MjQtMTZjNy00YWVlLWFhMWEtMWI3ZTgxYjJmNmRlXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": null,
            "contentRating": "PG",
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2025-11-26",
            "interests": [
              "Animal Adventure",
              "Buddy Comedy",
              "Computer Animation",
              "Urban Adventure",
              "Whodunnit",
              "Action",
              "Adventure",
              "Animation",
              "Comedy",
              "Crime"
            ],
            "countriesOfOrigin": [
              "US"
            ],
            "externalLinks": [
              "https://movies.disney.com/zootopia-2",
              "https://youtu.be/0s3SW4fCLf8"
            ],
            "spokenLanguages": [
              "en"
            ],
            "filmingLocations": [
              "Walt Disney Animation Studios - 2100 Riverside Drive, Burbank, California, USA"
            ],
            "productionCompanies": [
              {
                "id": "co0074039",
                "name": "Walt Disney Animation Studios"
              },
              {
                "id": "co0008970",
                "name": "Walt Disney Pictures"
              }
            ],
            "budget": null,
            "grossWorldwide": 1562,
            "genres": [
              "Action",
              "Adventure",
              "Animation"
            ],
            "isAdult": false,
            "runtimeMinutes": 108,
            "averageRating": 7.8,
            "numVotes": 1287,
            "metascore": 73
          },
          {
            "id": "tt34992378",
            "url": "https://www.imdb.com/title/tt34992378/",
            "primaryTitle": "A Merry Little Ex-Mas",
            "originalTitle": "A Merry Little Ex-Mas",
            "type": "movie",
            "description": "A separated couple tries celebrating one last Christmas together with their kids before their divorce. However, the husband's new girlfriend joins the festivities, causing tension and chaos during the holidays.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BNjBlMTdiN2EtNzQ5MS00ODQ0LWI3NWUtYjdmMDU2N2Y4YWQ2XkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNjBlMTdiN2EtNzQ5MS00ODQ0LWI3NWUtYjdmMDU2N2Y4YWQ2XkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNjBlMTdiN2EtNzQ5MS00ODQ0LWI3NWUtYjdmMDU2N2Y4YWQ2XkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNjBlMTdiN2EtNzQ5MS00ODQ0LWI3NWUtYjdmMDU2N2Y4YWQ2XkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": null,
            "contentRating": null,
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2025-11-12",
            "interests": [
              "Dark Comedy",
              "Holiday Comedy",
              "Satire",
              "Comedy"
            ],
            "countriesOfOrigin": [],
            "externalLinks": [],
            "spokenLanguages": [
              "en"
            ],
            "filmingLocations": [
              "Toronto, Ontario, Canada"
            ],
            "productionCompanies": [
              {
                "id": "co0035722",
                "name": "Hartbreak Films"
              }
            ],
            "budget": null,
            "grossWorldwide": null,
            "genres": [
              "Comedy"
            ],
            "isAdult": false,
            "runtimeMinutes": 91,
            "averageRating": 5.3,
            "numVotes": 4350,
            "metascore": null
          },
          {
            "id": "tt32123395",
            "url": "https://www.imdb.com/title/tt32123395/",
            "primaryTitle": "Altered",
            "originalTitle": "Altered",
            "type": "movie",
            "description": "In an alternate present, genetically enhanced humans dominate society. Outcasts Leon and Chloe fight for justice against corrupt politicians exploiting genetic disparity, risking everything to challenge the oppressive system.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BYzVkYTAzMTQtZGRhNS00OTEzLWJlMDktZDRkMDdjYTgyY2E1XkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BYzVkYTAzMTQtZGRhNS00OTEzLWJlMDktZDRkMDdjYTgyY2E1XkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BYzVkYTAzMTQtZGRhNS00OTEzLWJlMDktZDRkMDdjYTgyY2E1XkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BYzVkYTAzMTQtZGRhNS00OTEzLWJlMDktZDRkMDdjYTgyY2E1XkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": null,
            "contentRating": "PG-13",
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2025-11-21",
            "interests": [
              "Action",
              "Sci-Fi"
            ],
            "countriesOfOrigin": [
              "CA"
            ],
            "externalLinks": [],
            "spokenLanguages": [
              "en"
            ],
            "filmingLocations": [
              "Kazakhstan"
            ],
            "productionCompanies": [
              {
                "id": "co0966894",
                "name": "Art Galaxy"
              },
              {
                "id": "co0298077",
                "name": "Splendid Entertainment"
              },
              {
                "id": "co0871043",
                "name": "Studio Atlantic"
              }
            ],
            "budget": 15000000,
            "grossWorldwide": 346774,
            "genres": [
              "Action",
              "Sci-Fi"
            ],
            "isAdult": false,
            "runtimeMinutes": 87,
            "averageRating": 3.8,
            "numVotes": 690,
            "metascore": null
          },
          {
            "id": "tt16431870",
            "url": "https://www.imdb.com/title/tt16431870/",
            "primaryTitle": "The Family Plan",
            "originalTitle": "The Family Plan",
            "type": "movie",
            "description": "A former top assassin living incognito as a suburban dad must take his unsuspecting family on the run when his past catches up to him.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BMjcxYmNmNTktZDhlNS00ZGUzLTk2NGUtZDQwMDVmMWZkMjY0XkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMjcxYmNmNTktZDhlNS00ZGUzLTk2NGUtZDQwMDVmMWZkMjY0XkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMjcxYmNmNTktZDhlNS00ZGUzLTk2NGUtZDQwMDVmMWZkMjY0XkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMjcxYmNmNTktZDhlNS00ZGUzLTk2NGUtZDQwMDVmMWZkMjY0XkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": "https://www.youtube.com/watch?v=ns8weNznn1Y",
            "contentRating": "PG-13",
            "startYear": 2023,
            "endYear": null,
            "releaseDate": "2023-12-15",
            "interests": [
              "Car Action",
              "Martial Arts",
              "Action",
              "Comedy"
            ],
            "countriesOfOrigin": [
              "US"
            ],
            "externalLinks": [
              "https://tv.apple.com/us/movie/the-family-plan/umc.cmc.6o6y3wel2lez2tkdu2cv8dzd1"
            ],
            "spokenLanguages": [
              "en",
              "fr",
              "de",
              "sv"
            ],
            "filmingLocations": [
              "Lorain Avenue Bridge, Cleveland, Ohio, USA"
            ],
            "productionCompanies": [
              {
                "id": "co0822606",
                "name": "Apple Original Films"
              },
              {
                "id": "co0947376",
                "name": "Municipal Pictures"
              },
              {
                "id": "co0152219",
                "name": "Skydance Media"
              }
            ],
            "budget": null,
            "grossWorldwide": null,
            "genres": [
              "Action",
              "Comedy"
            ],
            "isAdult": false,
            "runtimeMinutes": 118,
            "averageRating": 6.3,
            "numVotes": 58265,
            "metascore": 39
          },
          {
            "id": "tt12042730",
            "url": "https://www.imdb.com/title/tt12042730/",
            "primaryTitle": "Project Hail Mary",
            "originalTitle": "Project Hail Mary",
            "type": "movie",
            "description": "An astronaut tries to save Earth while alone in outer space.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BYTI4MzYxYzAtMDk1Yi00MDljLWEyM2ItODZmNzZhNTUwMmU4XkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BYTI4MzYxYzAtMDk1Yi00MDljLWEyM2ItODZmNzZhNTUwMmU4XkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BYTI4MzYxYzAtMDk1Yi00MDljLWEyM2ItODZmNzZhNTUwMmU4XkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BYTI4MzYxYzAtMDk1Yi00MDljLWEyM2ItODZmNzZhNTUwMmU4XkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": null,
            "contentRating": null,
            "startYear": 2026,
            "endYear": null,
            "releaseDate": "2026-03-20",
            "interests": [
              "Dystopian Sci-Fi",
              "Space Sci-Fi",
              "Sci-Fi"
            ],
            "countriesOfOrigin": [
              "US"
            ],
            "externalLinks": [],
            "spokenLanguages": [
              "en"
            ],
            "filmingLocations": [
              "South Parade Pier, Southsea, Portsmouth, Hampshire, England, UK"
            ],
            "productionCompanies": [
              {
                "id": "co1025982",
                "name": "Amazon MGM Studios"
              },
              {
                "id": "co0721787",
                "name": "General Admission"
              },
              {
                "id": "co0191864",
                "name": "Lord Miller"
              }
            ],
            "budget": 108000000,
            "grossWorldwide": null,
            "genres": [
              "Sci-Fi"
            ],
            "isAdult": false,
            "runtimeMinutes": null,
            "averageRating": null,
            "numVotes": 0,
            "metascore": null
          },
          {
            "id": "tt31973693",
            "url": "https://www.imdb.com/title/tt31973693/",
            "primaryTitle": "The Roses",
            "originalTitle": "The Roses",
            "type": "movie",
            "description": "A tinderbox of competition and resentments underneath the façade of a picture-perfect couple is ignited when the husband's professional dreams come crashing down.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BYzliNTEyYjEtNGE3Mi00ZDIzLTg1NzYtZDBhNTQ5ZDVkMmM3XkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BYzliNTEyYjEtNGE3Mi00ZDIzLTg1NzYtZDBhNTQ5ZDVkMmM3XkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BYzliNTEyYjEtNGE3Mi00ZDIzLTg1NzYtZDBhNTQ5ZDVkMmM3XkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BYzliNTEyYjEtNGE3Mi00ZDIzLTg1NzYtZDBhNTQ5ZDVkMmM3XkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": null,
            "contentRating": "R",
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2025-08-29",
            "interests": [
              "Dark Comedy",
              "Satire",
              "Screwball Comedy",
              "Tragedy",
              "Comedy"
            ],
            "countriesOfOrigin": [
              "GB",
              "US"
            ],
            "externalLinks": [
              "https://www.searchlightpictures.com/the-roses"
            ],
            "spokenLanguages": [
              "en"
            ],
            "filmingLocations": [
              "Salcombe, Devon, England, UK"
            ],
            "productionCompanies": [
              {
                "id": "co0028932",
                "name": "Searchlight Pictures"
              },
              {
                "id": "co0420822",
                "name": "TSG Entertainment"
              },
              {
                "id": "co0778033",
                "name": "South of the River Pictures"
              }
            ],
            "budget": null,
            "grossWorldwide": 51981278,
            "genres": [
              "Comedy"
            ],
            "isAdult": false,
            "runtimeMinutes": 105,
            "averageRating": 6.7,
            "numVotes": 30073,
            "metascore": 58
          },
          {
            "id": "tt14364480",
            "url": "https://www.imdb.com/title/tt14364480/",
            "primaryTitle": "Wake Up Dead Man: A Knives Out Mystery",
            "originalTitle": "Wake Up Dead Man: A Knives Out Mystery",
            "type": "movie",
            "description": "Benoit Blanc returns for his most dangerous case yet.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BNzcxNjQxYWEtZTRlMy00ZDFmLTk1MGMtZGYwZjUxNjMzM2M2XkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNzcxNjQxYWEtZTRlMy00ZDFmLTk1MGMtZGYwZjUxNjMzM2M2XkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNzcxNjQxYWEtZTRlMy00ZDFmLTk1MGMtZGYwZjUxNjMzM2M2XkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNzcxNjQxYWEtZTRlMy00ZDFmLTk1MGMtZGYwZjUxNjMzM2M2XkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": null,
            "contentRating": "PG-13",
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2025-12-12",
            "interests": [
              "Dark Comedy",
              "Whodunnit",
              "Comedy",
              "Crime",
              "Drama",
              "Mystery",
              "Thriller"
            ],
            "countriesOfOrigin": [
              "US"
            ],
            "externalLinks": [],
            "spokenLanguages": [
              "en"
            ],
            "filmingLocations": [
              "Leavesden Film Studios, Hertfordshire, England, UK"
            ],
            "productionCompanies": [
              {
                "id": "co0144901",
                "name": "Netflix"
              },
              {
                "id": "co0236721",
                "name": "Ram Bergman Productions"
              },
              {
                "id": "co0762940",
                "name": "T-Street"
              }
            ],
            "budget": 40000000,
            "grossWorldwide": null,
            "genres": [
              "Comedy",
              "Crime",
              "Drama"
            ],
            "isAdult": false,
            "runtimeMinutes": 140,
            "averageRating": 8,
            "numVotes": 904,
            "metascore": 82
          },
          {
            "id": "tt14142060",
            "url": "https://www.imdb.com/title/tt14142060/",
            "primaryTitle": "Rental Family",
            "originalTitle": "Rental Family",
            "type": "movie",
            "description": "An American actor in Tokyo struggling to find purpose lands an unusual gig: working for a Japanese rental family agency, playing stand-in roles for strangers. He rediscovers purpose, belonging, and the beauty of human connection.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BMzFiNTViOTQtOTUxNi00ODczLWI0MTgtNDE1ZWU5YmIzMjY2XkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMzFiNTViOTQtOTUxNi00ODczLWI0MTgtNDE1ZWU5YmIzMjY2XkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMzFiNTViOTQtOTUxNi00ODczLWI0MTgtNDE1ZWU5YmIzMjY2XkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMzFiNTViOTQtOTUxNi00ODczLWI0MTgtNDE1ZWU5YmIzMjY2XkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": null,
            "contentRating": "PG-13",
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2025-11-21",
            "interests": [
              "Coming-of-Age",
              "Tragedy",
              "Comedy",
              "Drama"
            ],
            "countriesOfOrigin": [
              "JP",
              "US"
            ],
            "externalLinks": [],
            "spokenLanguages": [
              "en",
              "ja"
            ],
            "filmingLocations": [
              "Japan"
            ],
            "productionCompanies": [
              {
                "id": "co0260911",
                "name": "Knockonwood"
              },
              {
                "id": "co1143480",
                "name": "Domo Arigato Productions"
              },
              {
                "id": "co0625497",
                "name": "Sight Unseen Pictures"
              }
            ],
            "budget": null,
            "grossWorldwide": 3768142,
            "genres": [
              "Comedy",
              "Drama"
            ],
            "isAdult": false,
            "runtimeMinutes": 110,
            "averageRating": 7.9,
            "numVotes": 2361,
            "metascore": 68
          },
          {
            "id": "tt9362736",
            "url": "https://www.imdb.com/title/tt9362736/",
            "primaryTitle": "Die My Love",
            "originalTitle": "Die My Love",
            "type": "movie",
            "description": "Grace, a writer and young mother, is slowly slipping into madness. Locked away in an old house in and around Montana, we see her acting increasingly agitated and erratic, leaving her companion, Jackson, increasingly worried and helpless.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BYjc5OWZlZmYtMTg3Yy00YzFmLTg0YTgtNjVjN2M2ZWJjOWM1XkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BYjc5OWZlZmYtMTg3Yy00YzFmLTg0YTgtNjVjN2M2ZWJjOWM1XkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BYjc5OWZlZmYtMTg3Yy00YzFmLTg0YTgtNjVjN2M2ZWJjOWM1XkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BYjc5OWZlZmYtMTg3Yy00YzFmLTg0YTgtNjVjN2M2ZWJjOWM1XkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": null,
            "contentRating": "R",
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2025-11-07",
            "interests": [
              "Dark Comedy",
              "Psychological Drama",
              "Psychological Thriller",
              "Drama",
              "Thriller"
            ],
            "countriesOfOrigin": [
              "GB",
              "US"
            ],
            "externalLinks": [
              "https://mubi.com/films/die-my-love"
            ],
            "spokenLanguages": [
              "en"
            ],
            "filmingLocations": [
              "Calgary, Alberta, Canada"
            ],
            "productionCompanies": [
              {
                "id": "co0719924",
                "name": "Excellent Cadaver"
              },
              {
                "id": "co0410488",
                "name": "Black Label Media"
              },
              {
                "id": "co0141038",
                "name": "Sikelia Productions"
              }
            ],
            "budget": null,
            "grossWorldwide": 7407257,
            "genres": [
              "Drama",
              "Thriller"
            ],
            "isAdult": false,
            "runtimeMinutes": 119,
            "averageRating": 6.6,
            "numVotes": 13240,
            "metascore": 72
          },
          {
            "id": "tt31176520",
            "url": "https://www.imdb.com/title/tt31176520/",
            "primaryTitle": "Eddington",
            "originalTitle": "Eddington",
            "type": "movie",
            "description": "In May of 2020, a standoff between a small-town sheriff and mayor sparks a powder keg as neighbor is pitted against neighbor in Eddington, New Mexico.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BNmM0Yzc1ZjAtZTg4My00NDI3LWEwMzAtY2ZkNzMxMWMwOTFlXkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNmM0Yzc1ZjAtZTg4My00NDI3LWEwMzAtY2ZkNzMxMWMwOTFlXkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNmM0Yzc1ZjAtZTg4My00NDI3LWEwMzAtY2ZkNzMxMWMwOTFlXkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNmM0Yzc1ZjAtZTg4My00NDI3LWEwMzAtY2ZkNzMxMWMwOTFlXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": null,
            "contentRating": "R",
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2025-07-18",
            "interests": [
              "Contemporary Western",
              "Dark Comedy",
              "Satire",
              "Comedy",
              "Drama",
              "Western"
            ],
            "countriesOfOrigin": [
              "US",
              "FI"
            ],
            "externalLinks": [
              "https://a24films.com/films/eddington"
            ],
            "spokenLanguages": [
              "en"
            ],
            "filmingLocations": [
              "Truth or Consequences, New Mexico, USA"
            ],
            "productionCompanies": [
              {
                "id": "co0390816",
                "name": "A24"
              },
              {
                "id": "co0751821",
                "name": "Square Peg"
              },
              {
                "id": "co0347294",
                "name": "828 Productions"
              }
            ],
            "budget": 25000000,
            "grossWorldwide": 13730746,
            "genres": [
              "Comedy",
              "Drama",
              "Western"
            ],
            "isAdult": false,
            "runtimeMinutes": 148,
            "averageRating": 6.6,
            "numVotes": 39430,
            "metascore": 65
          },
          {
            "id": "tt18382850",
            "url": "https://www.imdb.com/title/tt18382850/",
            "primaryTitle": "If I Had Legs I'd Kick You",
            "originalTitle": "If I Had Legs I'd Kick You",
            "type": "movie",
            "description": "With her life crashing down around her, Linda attempts to navigate her child's mysterious illness, her absent husband, a missing person, and an increasingly hostile relationship with her therapist.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BMGRlMjIzMDctNzNkMS00MzEwLTlhZWEtM2FjYmE1ZmFjMzZlXkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMGRlMjIzMDctNzNkMS00MzEwLTlhZWEtM2FjYmE1ZmFjMzZlXkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMGRlMjIzMDctNzNkMS00MzEwLTlhZWEtM2FjYmE1ZmFjMzZlXkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMGRlMjIzMDctNzNkMS00MzEwLTlhZWEtM2FjYmE1ZmFjMzZlXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": null,
            "contentRating": "R",
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2025-10-10",
            "interests": [
              "Dark Comedy",
              "Psychological Drama",
              "Comedy",
              "Drama",
              "Thriller"
            ],
            "countriesOfOrigin": [
              "US"
            ],
            "externalLinks": [
              "https://a24films.com/films/if-i-had-legs-id-kick-you"
            ],
            "spokenLanguages": [
              "en"
            ],
            "filmingLocations": [
              "Montauk, New York, USA"
            ],
            "productionCompanies": [
              {
                "id": "co0390816",
                "name": "A24"
              },
              {
                "id": "co1012540",
                "name": "Bronxburgh"
              },
              {
                "id": "co1114944",
                "name": "Central Pictures"
              }
            ],
            "budget": null,
            "grossWorldwide": 1211148,
            "genres": [
              "Comedy",
              "Drama",
              "Thriller"
            ],
            "isAdult": false,
            "runtimeMinutes": 113,
            "averageRating": 6.7,
            "numVotes": 6113,
            "metascore": 77
          },
          {
            "id": "tt27604215",
            "url": "https://www.imdb.com/title/tt27604215/",
            "primaryTitle": "In Your Dreams",
            "originalTitle": "In Your Dreams",
            "type": "movie",
            "description": "Stevie and her little brother Elliot journey into the wildly absurd landscape of their own dreams to ask the Sandman to grant them the perfect family.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BMmFjOGIwMDUtMjEyYi00MzE0LWEwMmMtMjYyMGUzM2RkMjlhXkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMmFjOGIwMDUtMjEyYi00MzE0LWEwMmMtMjYyMGUzM2RkMjlhXkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMmFjOGIwMDUtMjEyYi00MzE0LWEwMmMtMjYyMGUzM2RkMjlhXkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMmFjOGIwMDUtMjEyYi00MzE0LWEwMmMtMjYyMGUzM2RkMjlhXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": null,
            "contentRating": "PG",
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2025-11-14",
            "interests": [
              "Buddy Comedy",
              "Computer Animation",
              "High-Concept Comedy",
              "Slapstick",
              "Adventure",
              "Animation",
              "Comedy",
              "Family",
              "Fantasy"
            ],
            "countriesOfOrigin": [
              "US"
            ],
            "externalLinks": [
              "https://www.netflix.com/title/80992977"
            ],
            "spokenLanguages": [
              "en"
            ],
            "filmingLocations": [],
            "productionCompanies": [
              {
                "id": "co1090055",
                "name": "Domain Entertainment (II)"
              },
              {
                "id": "co1132681",
                "name": "Intromagine Pictures"
              },
              {
                "id": "co0764941",
                "name": "Kuku Studios"
              }
            ],
            "budget": null,
            "grossWorldwide": null,
            "genres": [
              "Adventure",
              "Animation",
              "Comedy"
            ],
            "isAdult": false,
            "runtimeMinutes": 90,
            "averageRating": 6.5,
            "numVotes": 2953,
            "metascore": 61
          },
          {
            "id": "tt1527793",
            "url": "https://www.imdb.com/title/tt1527793/",
            "primaryTitle": "No Other Choice",
            "originalTitle": "Eojjeolsuga eobsda",
            "type": "movie",
            "description": "After being unemployed for several years, a man devises a unique plan to secure a new job: eliminate his competition.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BMjg3NzY0N2ItZGFlMy00NzAzLTk2NjItMDk2YTU3ZWU0MDA1XkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMjg3NzY0N2ItZGFlMy00NzAzLTk2NjItMDk2YTU3ZWU0MDA1XkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMjg3NzY0N2ItZGFlMy00NzAzLTk2NjItMDk2YTU3ZWU0MDA1XkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMjg3NzY0N2ItZGFlMy00NzAzLTk2NjItMDk2YTU3ZWU0MDA1XkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": null,
            "contentRating": "R",
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2025-09-24",
            "interests": [
              "Korean",
              "Caper",
              "Dark Comedy",
              "Satire",
              "Comedy",
              "Crime",
              "Drama",
              "Thriller"
            ],
            "countriesOfOrigin": [
              "KR"
            ],
            "externalLinks": [],
            "spokenLanguages": [
              "ko",
              "en"
            ],
            "filmingLocations": [
              "Ulsan, South Korea"
            ],
            "productionCompanies": [
              {
                "id": "co0725641",
                "name": "CJ ENM Co."
              },
              {
                "id": "co0043365",
                "name": "CJ Entertainment"
              },
              {
                "id": "co0157434",
                "name": "Moho Film"
              }
            ],
            "budget": null,
            "grossWorldwide": 20072255,
            "genres": [
              "Comedy",
              "Crime",
              "Drama"
            ],
            "isAdult": false,
            "runtimeMinutes": 139,
            "averageRating": 7.7,
            "numVotes": 5690,
            "metascore": 86
          },
          {
            "id": "tt14846026",
            "url": "https://www.imdb.com/title/tt14846026/",
            "primaryTitle": "Sisu",
            "originalTitle": "Sisu",
            "type": "movie",
            "description": "When an ex-soldier who discovers gold in the Lapland wilderness tries to take the loot into the city, German soldiers led by a brutal SS officer battle him.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BYjAxN2RmYjktMDE2OS00MWM5LThlZTQtZDY4YzAxMWQyZWY4XkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BYjAxN2RmYjktMDE2OS00MWM5LThlZTQtZDY4YzAxMWQyZWY4XkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BYjAxN2RmYjktMDE2OS00MWM5LThlZTQtZDY4YzAxMWQyZWY4XkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BYjAxN2RmYjktMDE2OS00MWM5LThlZTQtZDY4YzAxMWQyZWY4XkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": "https://www.youtube.com/watch?v=d2k4QAItiSA",
            "contentRating": "R",
            "startYear": 2022,
            "endYear": null,
            "releaseDate": "2023-04-28",
            "interests": [
              "Action Epic",
              "Epic",
              "One-Person Army Action",
              "Period Drama",
              "War Epic",
              "Action",
              "Thriller",
              "War"
            ],
            "countriesOfOrigin": [
              "FI",
              "GB",
              "US"
            ],
            "externalLinks": [],
            "spokenLanguages": [
              "en",
              "fi"
            ],
            "filmingLocations": [
              "Lapland, Finland"
            ],
            "productionCompanies": [
              {
                "id": "co0613744",
                "name": "Subzero Film Entertainment"
              },
              {
                "id": "co0842305",
                "name": "Good Chaos"
              },
              {
                "id": "co0222021",
                "name": "Stage 6 Films"
              }
            ],
            "budget": null,
            "grossWorldwide": 14229970,
            "genres": [
              "Action",
              "Thriller",
              "War"
            ],
            "isAdult": false,
            "runtimeMinutes": 91,
            "averageRating": 6.9,
            "numVotes": 107055,
            "metascore": 70
          },
          {
            "id": "tt27419466",
            "url": "https://www.imdb.com/title/tt27419466/",
            "primaryTitle": "Moana",
            "originalTitle": "Moana",
            "type": "movie",
            "description": "Live-action adaptation of the 2016 Disney animated film Moana.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BMTg1MjM5M2ItMTU0My00YzI2LTg5NzEtZGNmN2ZmNzhiNjQ1XkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMTg1MjM5M2ItMTU0My00YzI2LTg5NzEtZGNmN2ZmNzhiNjQ1XkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMTg1MjM5M2ItMTU0My00YzI2LTg5NzEtZGNmN2ZmNzhiNjQ1XkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMTg1MjM5M2ItMTU0My00YzI2LTg5NzEtZGNmN2ZmNzhiNjQ1XkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": null,
            "contentRating": null,
            "startYear": 2026,
            "endYear": null,
            "releaseDate": "2026-07-10",
            "interests": [
              "Quest",
              "Sea Adventure",
              "Teen Adventure",
              "Teen Fantasy",
              "Action",
              "Adventure",
              "Comedy",
              "Family",
              "Fantasy",
              "Musical"
            ],
            "countriesOfOrigin": [
              "US"
            ],
            "externalLinks": [],
            "spokenLanguages": [
              "en"
            ],
            "filmingLocations": [
              "Oahu, Hawaii, USA"
            ],
            "productionCompanies": [
              {
                "id": "co0348357",
                "name": "Flynn Picture Company"
              },
              {
                "id": "co0296091",
                "name": "New Zealand Large Budget Screen Production Grant"
              },
              {
                "id": "co0536392",
                "name": "Seven Bucks Productions"
              }
            ],
            "budget": null,
            "grossWorldwide": null,
            "genres": [
              "Action",
              "Adventure",
              "Comedy"
            ],
            "isAdult": false,
            "runtimeMinutes": null,
            "averageRating": null,
            "numVotes": 0,
            "metascore": null
          },
          {
            "id": "tt12583926",
            "url": "https://www.imdb.com/title/tt12583926/",
            "primaryTitle": "Anniversary",
            "originalTitle": "Anniversary",
            "type": "movie",
            "description": "A provocative thriller about a very close-knit family that is torn apart as a new movement, The Change, envelops the country.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BMTgzNTU4MjctNGYxYy00NzA0LTk5MTgtNGRiMDhmYTVjYzI5XkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMTgzNTU4MjctNGYxYy00NzA0LTk5MTgtNGRiMDhmYTVjYzI5XkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMTgzNTU4MjctNGYxYy00NzA0LTk5MTgtNGRiMDhmYTVjYzI5XkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMTgzNTU4MjctNGYxYy00NzA0LTk5MTgtNGRiMDhmYTVjYzI5XkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": null,
            "contentRating": "R",
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2025-10-29",
            "interests": [
              "Dark Comedy",
              "Political Thriller",
              "Psychological Thriller",
              "Thriller"
            ],
            "countriesOfOrigin": [
              "US"
            ],
            "externalLinks": [],
            "spokenLanguages": [
              "en",
              "de"
            ],
            "filmingLocations": [
              "Dublin, Ireland"
            ],
            "productionCompanies": [
              {
                "id": "co0006881",
                "name": "Lionsgate"
              },
              {
                "id": "co0580964",
                "name": "Fifth Season"
              },
              {
                "id": "co0156991",
                "name": "Nick Wechsler Productions"
              }
            ],
            "budget": null,
            "grossWorldwide": 630001,
            "genres": [
              "Thriller"
            ],
            "isAdult": false,
            "runtimeMinutes": 111,
            "averageRating": 6.7,
            "numVotes": 2317,
            "metascore": 58
          },
          {
            "id": "tt33764258",
            "url": "https://www.imdb.com/title/tt33764258/",
            "primaryTitle": "The Odyssey",
            "originalTitle": "The Odyssey",
            "type": "movie",
            "description": "After the Trojan War, Odysseus faces a dangerous voyage back to Ithaca, meeting creatures like the Cyclops Polyphemus, Sirens, and Circe along the way.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BNDQ0MGE5MTQtODk5Ny00NTI5LTk4MDUtZDQzNDhhOTI2Yzc5XkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNDQ0MGE5MTQtODk5Ny00NTI5LTk4MDUtZDQzNDhhOTI2Yzc5XkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNDQ0MGE5MTQtODk5Ny00NTI5LTk4MDUtZDQzNDhhOTI2Yzc5XkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNDQ0MGE5MTQtODk5Ny00NTI5LTk4MDUtZDQzNDhhOTI2Yzc5XkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": null,
            "contentRating": null,
            "startYear": 2026,
            "endYear": null,
            "releaseDate": "2026-07-17",
            "interests": [
              "Action Epic",
              "Adventure Epic",
              "Fantasy Epic",
              "Historical Epic",
              "Action",
              "Adventure",
              "Fantasy",
              "History"
            ],
            "countriesOfOrigin": [
              "US",
              "GB"
            ],
            "externalLinks": [],
            "spokenLanguages": [
              "en"
            ],
            "filmingLocations": [
              "Messinia, Peloponnese region, Greece"
            ],
            "productionCompanies": [
              {
                "id": "co0147954",
                "name": "Syncopy"
              },
              {
                "id": "co0005073",
                "name": "Universal Pictures"
              }
            ],
            "budget": 250000000,
            "grossWorldwide": null,
            "genres": [
              "Action",
              "Adventure",
              "Fantasy"
            ],
            "isAdult": false,
            "runtimeMinutes": null,
            "averageRating": null,
            "numVotes": 0,
            "metascore": null
          },
          {
            "id": "tt1670345",
            "url": "https://www.imdb.com/title/tt1670345/",
            "primaryTitle": "Now You See Me",
            "originalTitle": "Now You See Me",
            "type": "movie",
            "description": "An FBI agent and an Interpol detective track a team of illusionists who pull off bank heists during their performances, and reward their audiences with the money.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BMTY0NDY3MDMxN15BMl5BanBnXkFtZTcwOTM5NzMzOQ@@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMTY0NDY3MDMxN15BMl5BanBnXkFtZTcwOTM5NzMzOQ@@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMTY0NDY3MDMxN15BMl5BanBnXkFtZTcwOTM5NzMzOQ@@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMTY0NDY3MDMxN15BMl5BanBnXkFtZTcwOTM5NzMzOQ@@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": "https://www.youtube.com/watch?v=p-pVxwaFuBs",
            "contentRating": "PG-13",
            "startYear": 2013,
            "endYear": null,
            "releaseDate": "2013-05-31",
            "interests": [
              "Caper",
              "Heist",
              "Crime",
              "Mystery",
              "Thriller"
            ],
            "countriesOfOrigin": [
              "US",
              "FR"
            ],
            "externalLinks": [
              "https://www.facebook.com/NowYouSeeMeMovie",
              "http://www.grandillusion.jp/"
            ],
            "spokenLanguages": [
              "en",
              "fr"
            ],
            "filmingLocations": [
              "New Orleans, Louisiana, USA"
            ],
            "productionCompanies": [
              {
                "id": "co0046206",
                "name": "Summit Entertainment"
              },
              {
                "id": "co0176022",
                "name": "K/O Paper Products"
              },
              {
                "id": "co0177709",
                "name": "SOIXAN7E QUIN5E"
              }
            ],
            "budget": 75000000,
            "grossWorldwide": 351723989,
            "genres": [
              "Crime",
              "Mystery",
              "Thriller"
            ],
            "isAdult": false,
            "runtimeMinutes": 115,
            "averageRating": 7.2,
            "numVotes": 756941,
            "metascore": 50
          },
          {
            "id": "tt32332404",
            "url": "https://www.imdb.com/title/tt32332404/",
            "primaryTitle": "Keeper",
            "originalTitle": "Keeper",
            "type": "movie",
            "description": "A romantic anniversary trip to a secluded cabin turns sinister when a dark presence reveals itself, forcing a couple to confront the property's haunting past.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BYWEwYmY5NGYtOWFkNy00YTAxLWJmNzMtZWM0M2Y1NjcxMDMyXkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BYWEwYmY5NGYtOWFkNy00YTAxLWJmNzMtZWM0M2Y1NjcxMDMyXkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BYWEwYmY5NGYtOWFkNy00YTAxLWJmNzMtZWM0M2Y1NjcxMDMyXkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BYWEwYmY5NGYtOWFkNy00YTAxLWJmNzMtZWM0M2Y1NjcxMDMyXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": null,
            "contentRating": "R",
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2025-11-14",
            "interests": [
              "Body Horror",
              "Folk Horror",
              "Monster Horror",
              "Psychological Horror",
              "Supernatural Horror",
              "Tragedy",
              "Horror"
            ],
            "countriesOfOrigin": [
              "US",
              "CA"
            ],
            "externalLinks": [
              "https://www.neonrated.com/film/keeper"
            ],
            "spokenLanguages": [
              "en"
            ],
            "filmingLocations": [
              "Vancouver, British Columbia, Canada"
            ],
            "productionCompanies": [
              {
                "id": "co1144519",
                "name": "Oddfellows Pictures"
              },
              {
                "id": "co0817344",
                "name": "Range Media Partners"
              },
              {
                "id": "co0873723",
                "name": "Wayward Entertainment"
              }
            ],
            "budget": 6000000,
            "grossWorldwide": 4453221,
            "genres": [
              "Horror"
            ],
            "isAdult": false,
            "runtimeMinutes": 99,
            "averageRating": 5.9,
            "numVotes": 6916,
            "metascore": 54
          },
          {
            "id": "tt5950044",
            "url": "https://www.imdb.com/title/tt5950044/",
            "primaryTitle": "Superman",
            "originalTitle": "Superman",
            "type": "movie",
            "description": "Superman must reconcile his alien Kryptonian heritage with his human upbringing as reporter Clark Kent. As the embodiment of truth, justice and the human way he soon finds himself in a world that views these as old-fashioned.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BOGMwZGJiM2EtMzEwZC00YTYzLWIxNzYtMmJmZWNlZjgxZTMwXkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BOGMwZGJiM2EtMzEwZC00YTYzLWIxNzYtMmJmZWNlZjgxZTMwXkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BOGMwZGJiM2EtMzEwZC00YTYzLWIxNzYtMmJmZWNlZjgxZTMwXkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BOGMwZGJiM2EtMzEwZC00YTYzLWIxNzYtMmJmZWNlZjgxZTMwXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": "https://www.youtube.com/watch?v=uhUht6vAsMY",
            "contentRating": "PG-13",
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2025-07-11",
            "interests": [
              "Action Epic",
              "Adventure Epic",
              "Epic",
              "Sci-Fi Epic",
              "Superhero",
              "Action",
              "Adventure",
              "Sci-Fi"
            ],
            "countriesOfOrigin": [
              "US"
            ],
            "externalLinks": [
              "https://www.supermanmovie.net/"
            ],
            "spokenLanguages": [
              "en"
            ],
            "filmingLocations": [
              "Cincinnati, Ohio, USA"
            ],
            "productionCompanies": [
              {
                "id": "co1064049",
                "name": "DC Studios"
              },
              {
                "id": "co1090055",
                "name": "Domain Entertainment (II)"
              },
              {
                "id": "co0690814",
                "name": "Troll Court Entertainment"
              }
            ],
            "budget": 225000000,
            "grossWorldwide": 616684465,
            "genres": [
              "Action",
              "Adventure",
              "Sci-Fi"
            ],
            "isAdult": false,
            "runtimeMinutes": 129,
            "averageRating": 7.1,
            "numVotes": 353998,
            "metascore": 68
          },
          {
            "id": "tt31956415",
            "url": "https://www.imdb.com/title/tt31956415/",
            "primaryTitle": "Freakier Friday",
            "originalTitle": "Freakier Friday",
            "type": "movie",
            "description": "22 years after Tess and Anna endured an identity crisis, Anna now has a daughter and a soon-to-be stepdaughter. As they navigate the challenges that come when two families merge, Tess and Anna discover that lightning might strike twice.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BY2Q0M2NmMjctODEwMi00NGIyLTk4NjUtMzBlNDAxYTZlZGJiXkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BY2Q0M2NmMjctODEwMi00NGIyLTk4NjUtMzBlNDAxYTZlZGJiXkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BY2Q0M2NmMjctODEwMi00NGIyLTk4NjUtMzBlNDAxYTZlZGJiXkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BY2Q0M2NmMjctODEwMi00NGIyLTk4NjUtMzBlNDAxYTZlZGJiXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": "https://www.youtube.com/watch?v=n7YJj6iO2QY",
            "contentRating": "PG",
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2025-08-08",
            "interests": [
              "Body Swap Comedy",
              "Comedy",
              "Family",
              "Fantasy"
            ],
            "countriesOfOrigin": [
              "US"
            ],
            "externalLinks": [
              "https://movies.disney.com/freakier-friday"
            ],
            "spokenLanguages": [
              "en"
            ],
            "filmingLocations": [
              "Los Angeles, California, USA"
            ],
            "productionCompanies": [
              {
                "id": "co0008970",
                "name": "Walt Disney Pictures"
              },
              {
                "id": "co0007784",
                "name": "Gunn Films"
              },
              {
                "id": "co0641949",
                "name": "Burr! Productions"
              }
            ],
            "budget": 42000000,
            "grossWorldwide": 153176952,
            "genres": [
              "Comedy",
              "Family",
              "Fantasy"
            ],
            "isAdult": false,
            "runtimeMinutes": 110,
            "averageRating": 6.4,
            "numVotes": 28231,
            "metascore": 60
          },
          {
            "id": "tt10374610",
            "url": "https://www.imdb.com/title/tt10374610/",
            "primaryTitle": "The Long Walk",
            "originalTitle": "The Long Walk",
            "type": "movie",
            "description": "A group of teenage boys compete in an annual contest known as The Long Walk, in which they must maintain a certain walking speed or get shot.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BNmE4YmIxNWQtMzJhMy00NDI5LWFmYjEtMGYyMmFhNzdjODVmXkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNmE4YmIxNWQtMzJhMy00NDI5LWFmYjEtMGYyMmFhNzdjODVmXkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNmE4YmIxNWQtMzJhMy00NDI5LWFmYjEtMGYyMmFhNzdjODVmXkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNmE4YmIxNWQtMzJhMy00NDI5LWFmYjEtMGYyMmFhNzdjODVmXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": null,
            "contentRating": "R",
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2025-09-12",
            "interests": [
              "Dystopian Sci-Fi",
              "Psychological Horror",
              "Psychological Thriller",
              "Survival",
              "Teen Horror",
              "Horror",
              "Sci-Fi",
              "Thriller"
            ],
            "countriesOfOrigin": [
              "US"
            ],
            "externalLinks": [
              "https://www.thelongwalk.movie/"
            ],
            "spokenLanguages": [
              "en"
            ],
            "filmingLocations": [
              "Garson, Manitoba, Canada"
            ],
            "productionCompanies": [
              {
                "id": "co0179392",
                "name": "Lionsgate"
              },
              {
                "id": "co0126933",
                "name": "Manitoba Film and Video Tax Credit Program"
              },
              {
                "id": "co0744411",
                "name": "Media Capital Technologies"
              }
            ],
            "budget": 20000000,
            "grossWorldwide": 62921477,
            "genres": [
              "Horror",
              "Sci-Fi",
              "Thriller"
            ],
            "isAdult": false,
            "runtimeMinutes": 108,
            "averageRating": 6.8,
            "numVotes": 72653,
            "metascore": 71
          },
          {
            "id": "tt28996126",
            "url": "https://www.imdb.com/title/tt28996126/",
            "primaryTitle": "Nobody 2",
            "originalTitle": "Nobody 2",
            "type": "movie",
            "description": "Suburban dad Hutch Mansell, a former lethal assassin, is pulled back into his violent past after thwarting a home invasion, setting off a chain of events",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BOWViZjhjYjQtZDI1MC00MWMyLTlhZTktNmIzY2Y0ZWVkMWFhXkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BOWViZjhjYjQtZDI1MC00MWMyLTlhZTktNmIzY2Y0ZWVkMWFhXkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BOWViZjhjYjQtZDI1MC00MWMyLTlhZTktNmIzY2Y0ZWVkMWFhXkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BOWViZjhjYjQtZDI1MC00MWMyLTlhZTktNmIzY2Y0ZWVkMWFhXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": null,
            "contentRating": "R",
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2025-08-15",
            "interests": [
              "Dark Comedy",
              "One-Person Army Action",
              "Action",
              "Comedy",
              "Crime",
              "Thriller"
            ],
            "countriesOfOrigin": [
              "US"
            ],
            "externalLinks": [
              "https://www.facebook.com/nobodymovie",
              "https://www.instagram.com/nobodymovie/"
            ],
            "spokenLanguages": [
              "en"
            ],
            "filmingLocations": [
              "Winnipeg, Manitoba, Canada"
            ],
            "productionCompanies": [
              {
                "id": "co0005073",
                "name": "Universal Pictures"
              },
              {
                "id": "co0743169",
                "name": "87North"
              },
              {
                "id": "co0594150",
                "name": "Eighty Two Films"
              }
            ],
            "budget": 25000000,
            "grossWorldwide": 41608255,
            "genres": [
              "Action",
              "Comedy",
              "Crime"
            ],
            "isAdult": false,
            "runtimeMinutes": 89,
            "averageRating": 6.3,
            "numVotes": 57859,
            "metascore": 59
          },
          {
            "id": "tt29644189",
            "url": "https://www.imdb.com/title/tt29644189/",
            "primaryTitle": "Black Phone 2",
            "originalTitle": "Black Phone 2",
            "type": "movie",
            "description": "As Finn, now 17, struggles with life after his captivity, his sister begins receiving calls in her dreams from the black phone and seeing disturbing visions of three boys being stalked at a winter camp known as Alpine Lake.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BMTVjMzNmZGYtOWU5NS00NDYzLThhZTktZGNlODIwYWVhMDRmXkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMTVjMzNmZGYtOWU5NS00NDYzLThhZTktZGNlODIwYWVhMDRmXkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMTVjMzNmZGYtOWU5NS00NDYzLThhZTktZGNlODIwYWVhMDRmXkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMTVjMzNmZGYtOWU5NS00NDYzLThhZTktZGNlODIwYWVhMDRmXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": null,
            "contentRating": "R",
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2025-10-17",
            "interests": [
              "Psychological Horror",
              "Supernatural Horror",
              "Horror"
            ],
            "countriesOfOrigin": [
              "US"
            ],
            "externalLinks": [
              "https://www.facebook.com/blackphonemovie/",
              "https://www.instagram.com/blackphonemovie/"
            ],
            "spokenLanguages": [
              "en",
              "es"
            ],
            "filmingLocations": [
              "Toronto, Ontario, Canada"
            ],
            "productionCompanies": [
              {
                "id": "co0098315",
                "name": "Blumhouse Productions"
              },
              {
                "id": "co0016350",
                "name": "Canadian Film or Video Production Tax Credit (CPTC)"
              },
              {
                "id": "co0843410",
                "name": "Crooked Highway"
              }
            ],
            "budget": 30000000,
            "grossWorldwide": 130515847,
            "genres": [
              "Horror"
            ],
            "isAdult": false,
            "runtimeMinutes": 114,
            "averageRating": 6.2,
            "numVotes": 35143,
            "metascore": 61
          },
          {
            "id": "tt31036941",
            "url": "https://www.imdb.com/title/tt31036941/",
            "primaryTitle": "Jurassic World: Rebirth",
            "originalTitle": "Jurassic World: Rebirth",
            "type": "movie",
            "description": "Five years post-Jurassic World: Dominion (2022), an expedition braves isolated equatorial regions to extract DNA from three massive prehistoric creatures for a groundbreaking medical breakthrough.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BMGM3ZmI3NzQtNzU5Yi00ZWI1LTg3YTAtNmNmNWIyMWFjZTBkXkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMGM3ZmI3NzQtNzU5Yi00ZWI1LTg3YTAtNmNmNWIyMWFjZTBkXkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMGM3ZmI3NzQtNzU5Yi00ZWI1LTg3YTAtNmNmNWIyMWFjZTBkXkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMGM3ZmI3NzQtNzU5Yi00ZWI1LTg3YTAtNmNmNWIyMWFjZTBkXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": "https://www.youtube.com/watch?v=jan5CFWs9ic",
            "contentRating": "PG-13",
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2025-07-02",
            "interests": [
              "Dinosaur Adventure",
              "Jungle Adventure",
              "Action",
              "Adventure",
              "Sci-Fi",
              "Thriller"
            ],
            "countriesOfOrigin": [
              "US"
            ],
            "externalLinks": [
              "https://amzn.to/4fKCra9",
              "https://www.facebook.com/JurassicWorld/"
            ],
            "spokenLanguages": [
              "en",
              "fr",
              "es"
            ],
            "filmingLocations": [
              "Krabi, Thailand"
            ],
            "productionCompanies": [
              {
                "id": "co0005073",
                "name": "Universal Pictures"
              },
              {
                "id": "co0009119",
                "name": "Amblin Entertainment"
              },
              {
                "id": "co0169264",
                "name": "Dentsu"
              }
            ],
            "budget": 180000000,
            "grossWorldwide": 868878422,
            "genres": [
              "Action",
              "Adventure",
              "Sci-Fi"
            ],
            "isAdult": false,
            "runtimeMinutes": 133,
            "averageRating": 5.9,
            "numVotes": 157085,
            "metascore": 50
          },
          {
            "id": "tt31193180",
            "url": "https://www.imdb.com/title/tt31193180/",
            "primaryTitle": "Sinners",
            "originalTitle": "Sinners",
            "type": "movie",
            "description": "Trying to leave their troubled lives behind, twin brothers return to their hometown to start again, only to discover that an even greater evil is waiting to welcome them back.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BNjIwZWY4ZDEtMmIxZS00NDA4LTg4ZGMtMzUwZTYyNzgxMzk5XkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNjIwZWY4ZDEtMmIxZS00NDA4LTg4ZGMtMzUwZTYyNzgxMzk5XkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNjIwZWY4ZDEtMmIxZS00NDA4LTg4ZGMtMzUwZTYyNzgxMzk5XkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNjIwZWY4ZDEtMmIxZS00NDA4LTg4ZGMtMzUwZTYyNzgxMzk5XkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": "https://www.youtube.com/watch?v=bKGxHflevuk",
            "contentRating": "R",
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2025-04-18",
            "interests": [
              "Folk Horror",
              "Period Drama",
              "Supernatural Horror",
              "Vampire Horror",
              "Action",
              "Drama",
              "Horror",
              "Music",
              "Thriller"
            ],
            "countriesOfOrigin": [
              "US",
              "AU",
              "CA"
            ],
            "externalLinks": [
              "https://www.sinnersmovie.com/"
            ],
            "spokenLanguages": [
              "en",
              "zh"
            ],
            "filmingLocations": [
              "New Orleans, Louisiana, USA"
            ],
            "productionCompanies": [
              {
                "id": "co0002663",
                "name": "Warner Bros."
              },
              {
                "id": "co1090055",
                "name": "Domain Entertainment (II)"
              },
              {
                "id": "co0843639",
                "name": "Proximity Media"
              }
            ],
            "budget": 90000000,
            "grossWorldwide": 367853537,
            "genres": [
              "Action",
              "Drama",
              "Horror"
            ],
            "isAdult": false,
            "runtimeMinutes": 137,
            "averageRating": 7.6,
            "numVotes": 316322,
            "metascore": 84
          },
          {
            "id": "tt27543578",
            "url": "https://www.imdb.com/title/tt27543578/",
            "primaryTitle": "Good Fortune",
            "originalTitle": "Good Fortune",
            "type": "movie",
            "description": "A well-meaning but rather inept angel named Gabriel meddles in the lives of a struggling gig worker and a wealthy venture capitalist.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BYjk3ZTgwZmUtOTVlMy00ODExLTkzMTUtYzRhM2FjNGYyMzZkXkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BYjk3ZTgwZmUtOTVlMy00ODExLTkzMTUtYzRhM2FjNGYyMzZkXkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BYjk3ZTgwZmUtOTVlMy00ODExLTkzMTUtYzRhM2FjNGYyMzZkXkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BYjk3ZTgwZmUtOTVlMy00ODExLTkzMTUtYzRhM2FjNGYyMzZkXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": null,
            "contentRating": "R",
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2025-10-17",
            "interests": [
              "Comedy",
              "Fantasy",
              "Romance"
            ],
            "countriesOfOrigin": [
              "US"
            ],
            "externalLinks": [
              "https://www.goodfortune.movie/"
            ],
            "spokenLanguages": [
              "en"
            ],
            "filmingLocations": [
              "Los Angeles, California, USA"
            ],
            "productionCompanies": [
              {
                "id": "co0006881",
                "name": "Lionsgate"
              },
              {
                "id": "co0744411",
                "name": "Media Capital Technologies"
              },
              {
                "id": "co0642802",
                "name": "Oh Brudder Productions"
              }
            ],
            "budget": 30000000,
            "grossWorldwide": 25548684,
            "genres": [
              "Comedy",
              "Fantasy",
              "Romance"
            ],
            "isAdult": false,
            "runtimeMinutes": 97,
            "averageRating": 6.5,
            "numVotes": 20080,
            "metascore": 62
          }
        ]
        """
    return HttpResponse.ok(.text(json))
}

do {
    try server.start(8080)
    RunLoop.main.run()
}
catch {
    print("❌Failed to start server: \(error)❗️")
}
