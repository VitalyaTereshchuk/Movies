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
          },
          {
            "id": "tt7130300",
            "url": "https://www.imdb.com/title/tt7130300/",
            "primaryTitle": "The Woman in Cabin 10",
            "originalTitle": "The Woman in Cabin 10",
            "type": "movie",
            "description": "A travel writer stumbles upon a gruesome secret while traveling aboard a luxury cruise ship.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BNDY0YmEyNDMtNTQ0Yi00MWVmLWFiYjMtODM5NmUzZWQ5MDMxXkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNDY0YmEyNDMtNTQ0Yi00MWVmLWFiYjMtODM5NmUzZWQ5MDMxXkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNDY0YmEyNDMtNTQ0Yi00MWVmLWFiYjMtODM5NmUzZWQ5MDMxXkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNDY0YmEyNDMtNTQ0Yi00MWVmLWFiYjMtODM5NmUzZWQ5MDMxXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
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
              "Whodunnit",
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
              "Hjørundfjorden, Norway"
            ],
            "productionCompanies": [
              {
                "id": "co0047306",
                "name": "CBS Films"
              },
              {
                "id": "co0571744",
                "name": "Sister Pictures"
              },
              {
                "id": "co0080580",
                "name": "Gotham Group"
              }
            ],
            "budget": null,
            "grossWorldwide": null,
            "genres": [
              "Drama",
              "Mystery",
              "Thriller"
            ],
            "isAdult": false,
            "runtimeMinutes": 92,
            "averageRating": 5.8,
            "numVotes": 53065,
            "metascore": 41
          },
          {
            "id": "tt0111161",
            "url": "https://www.imdb.com/title/tt0111161/",
            "primaryTitle": "The Shawshank Redemption",
            "originalTitle": "The Shawshank Redemption",
            "type": "movie",
            "description": "A banker convicted of uxoricide forms a friendship over a quarter century with a hardened convict, while maintaining his innocence and trying to remain hopeful through simple compassion.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BMDAyY2FhYjctNDc5OS00MDNlLThiMGUtY2UxYWVkNGY2ZjljXkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMDAyY2FhYjctNDc5OS00MDNlLThiMGUtY2UxYWVkNGY2ZjljXkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMDAyY2FhYjctNDc5OS00MDNlLThiMGUtY2UxYWVkNGY2ZjljXkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMDAyY2FhYjctNDc5OS00MDNlLThiMGUtY2UxYWVkNGY2ZjljXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": "https://www.youtube.com/watch?v=xyXX8LXiNJ4",
            "contentRating": "R",
            "startYear": 1994,
            "endYear": null,
            "releaseDate": "1994-10-14",
            "interests": [
              "Epic",
              "Period Drama",
              "Prison Drama",
              "Drama"
            ],
            "countriesOfOrigin": [
              "US"
            ],
            "externalLinks": [
              "https://www.facebook.com/shawshankredemptionfilm/",
              "https://www.warnerbros.com/movies/shawshank-redemption"
            ],
            "spokenLanguages": [
              "en"
            ],
            "filmingLocations": [
              "Butler, Ohio, USA"
            ],
            "productionCompanies": [
              {
                "id": "co0040620",
                "name": "Castle Rock Entertainment"
              }
            ],
            "budget": 25000000,
            "grossWorldwide": 29334033,
            "genres": [
              "Drama"
            ],
            "isAdult": false,
            "runtimeMinutes": 142,
            "averageRating": 9.3,
            "numVotes": 3126822,
            "metascore": 82
          },
          {
            "id": "tt35600079",
            "url": "https://www.imdb.com/title/tt35600079/",
            "primaryTitle": "A Very Jonas Christmas Movie",
            "originalTitle": "A Very Jonas Christmas Movie",
            "type": "movie",
            "description": "Three famous brothers race against time and face mounting challenges during a chaotic journey from London to New York, desperate to make it home in time for Christmas with their loved ones.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BNWFjODc1NDYtNTAzMS00NDdjLTk3ZDItNTJjMDcwZTY0NWU1XkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNWFjODc1NDYtNTAzMS00NDdjLTk3ZDItNTJjMDcwZTY0NWU1XkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNWFjODc1NDYtNTAzMS00NDdjLTk3ZDItNTJjMDcwZTY0NWU1XkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNWFjODc1NDYtNTAzMS00NDdjLTk3ZDItNTJjMDcwZTY0NWU1XkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": "https://www.youtube.com/watch?v=P71_DZiEeoc",
            "contentRating": "TV-PG",
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2025-11-14",
            "interests": [
              "Holiday Comedy",
              "Comedy",
              "Drama",
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
              "New York City, New York, USA"
            ],
            "productionCompanies": [
              {
                "id": "co0161074",
                "name": "20th Television"
              },
              {
                "id": "co0090850",
                "name": "Disney Television Studios"
              },
              {
                "id": "co0754938",
                "name": "The Walk-Up Company"
              }
            ],
            "budget": null,
            "grossWorldwide": null,
            "genres": [
              "Comedy",
              "Drama",
              "Musical"
            ],
            "isAdult": false,
            "runtimeMinutes": 80,
            "averageRating": 5.7,
            "numVotes": 1949,
            "metascore": null
          },
          {
            "id": "tt1757678",
            "url": "https://www.imdb.com/title/tt1757678/",
            "primaryTitle": "Avatar: Fire and Ash",
            "originalTitle": "Avatar: Fire and Ash",
            "type": "movie",
            "description": "Jake and Neytiri's family grapples with grief after Neteyam's death, encountering a new, aggressive Na'vi tribe, the Ash People, who are led by the fiery Varang, as the conflict on Pandora escalates and a new moral focus emerges.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BZDYxY2I1OGMtN2Y4MS00ZmU1LTgyNDAtODA0MzAyYjI0N2Y2XkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BZDYxY2I1OGMtN2Y4MS00ZmU1LTgyNDAtODA0MzAyYjI0N2Y2XkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BZDYxY2I1OGMtN2Y4MS00ZmU1LTgyNDAtODA0MzAyYjI0N2Y2XkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BZDYxY2I1OGMtN2Y4MS00ZmU1LTgyNDAtODA0MzAyYjI0N2Y2XkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": null,
            "contentRating": "PG-13",
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2025-12-19",
            "interests": [
              "Action Epic",
              "Adventure Epic",
              "Epic",
              "Fantasy Epic",
              "Sci-Fi Epic",
              "Action",
              "Adventure",
              "Fantasy",
              "Sci-Fi",
              "Thriller"
            ],
            "countriesOfOrigin": [
              "US"
            ],
            "externalLinks": [
              "https://www.themoviesz.com/2023/03/avatar-3-2024-release-date-pre.html"
            ],
            "spokenLanguages": [
              "en"
            ],
            "filmingLocations": [
              "New Zealand"
            ],
            "productionCompanies": [
              {
                "id": "co0781821",
                "name": "20th Century Studios"
              },
              {
                "id": "co0420822",
                "name": "TSG Entertainment"
              },
              {
                "id": "co0038663",
                "name": "Lightstorm Entertainment"
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
            "runtimeMinutes": 195,
            "averageRating": null,
            "numVotes": 0,
            "metascore": null
          },
          {
            "id": "tt31434030",
            "url": "https://www.imdb.com/title/tt31434030/",
            "primaryTitle": "Dracula",
            "originalTitle": "Dracula: A Love Tale",
            "type": "movie",
            "description": "When a 15th-century prince denounces God after the loss of his wife he inherits an eternal curse: he becomes Dracula. Condemned to wander the centuries, he defies fate and death, guided by a single hope - to be reunited with his lost love.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BY2U5OTYxZTUtZWFjZC00NjFmLWFhYjgtYzdjNDhmZWU3OTgxXkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BY2U5OTYxZTUtZWFjZC00NjFmLWFhYjgtYzdjNDhmZWU3OTgxXkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BY2U5OTYxZTUtZWFjZC00NjFmLWFhYjgtYzdjNDhmZWU3OTgxXkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BY2U5OTYxZTUtZWFjZC00NjFmLWFhYjgtYzdjNDhmZWU3OTgxXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": null,
            "contentRating": null,
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2026-02-06",
            "interests": [
              "Supernatural Fantasy",
              "Supernatural Horror",
              "Vampire Horror",
              "Fantasy",
              "Horror",
              "Romance"
            ],
            "countriesOfOrigin": [
              "GB",
              "FR"
            ],
            "externalLinks": [],
            "spokenLanguages": [
              "en"
            ],
            "filmingLocations": [
              "Kuhmo, Finland"
            ],
            "productionCompanies": [
              {
                "id": "co0923946",
                "name": "Luc Besson Production"
              },
              {
                "id": "co0048273",
                "name": "EuropaCorp"
              },
              {
                "id": "co0079764",
                "name": "TF1 Films Production"
              }
            ],
            "budget": null,
            "grossWorldwide": 26138188,
            "genres": [
              "Fantasy",
              "Horror",
              "Romance"
            ],
            "isAdult": false,
            "runtimeMinutes": 129,
            "averageRating": 6.2,
            "numVotes": 13619,
            "metascore": null
          },
          {
            "id": "tt33088452",
            "url": "https://www.imdb.com/title/tt33088452/",
            "primaryTitle": "Regretting You",
            "originalTitle": "Regretting You",
            "type": "movie",
            "description": "A mother and daughter must grapple with what's left after a devastating accident reveals a shocking betrayal and forces them to confront family secrets, redefine love, and rediscover themselves.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BNTNlM2MzM2MtZGU3OC00ZTM0LWFhYmYtYTQ1M2RhZTcwYjViXkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNTNlM2MzM2MtZGU3OC00ZTM0LWFhYmYtYTQ1M2RhZTcwYjViXkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNTNlM2MzM2MtZGU3OC00ZTM0LWFhYmYtYTQ1M2RhZTcwYjViXkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNTNlM2MzM2MtZGU3OC00ZTM0LWFhYmYtYTQ1M2RhZTcwYjViXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": null,
            "contentRating": "PG-13",
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2025-10-24",
            "interests": [
              "Romantic Comedy",
              "Drama",
              "Romance"
            ],
            "countriesOfOrigin": [],
            "externalLinks": [
              "https://www.regrettingyoumovie.com/"
            ],
            "spokenLanguages": [
              "en",
              "fr"
            ],
            "filmingLocations": [
              "Atlanta, Georgia, USA"
            ],
            "productionCompanies": [
              {
                "id": "co0002257",
                "name": "Constantin Film"
              },
              {
                "id": "co0741273",
                "name": "FVR Entertainment"
              },
              {
                "id": "co0767037",
                "name": "Frayed Pages Entertainment"
              }
            ],
            "budget": 25000000,
            "grossWorldwide": 87322123,
            "genres": [
              "Drama",
              "Romance"
            ],
            "isAdult": false,
            "runtimeMinutes": 116,
            "averageRating": 6.1,
            "numVotes": 6291,
            "metascore": 33
          },
          {
            "id": "tt29713093",
            "url": "https://www.imdb.com/title/tt29713093/",
            "primaryTitle": "We Bury the Dead",
            "originalTitle": "We Bury the Dead",
            "type": "movie",
            "description": "After a catastrophic military disaster, the dead don't just rise - they hunt. Ava searches for her missing husband, but what she finds is far more terrifying.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BNzQwZDIzMWEtZDNkOS00ODI5LWI1YmYtNDU3MTM0NWQ0MDVmXkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNzQwZDIzMWEtZDNkOS00ODI5LWI1YmYtNDU3MTM0NWQ0MDVmXkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNzQwZDIzMWEtZDNkOS00ODI5LWI1YmYtNDU3MTM0NWQ0MDVmXkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNzQwZDIzMWEtZDNkOS00ODI5LWI1YmYtNDU3MTM0NWQ0MDVmXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": null,
            "contentRating": null,
            "startYear": 2024,
            "endYear": null,
            "releaseDate": "2026-01-02",
            "interests": [
              "Horror",
              "Thriller"
            ],
            "countriesOfOrigin": [
              "AU",
              "US"
            ],
            "externalLinks": [],
            "spokenLanguages": [
              "en"
            ],
            "filmingLocations": [
              "Albany, Western Australia, Australia"
            ],
            "productionCompanies": [
              {
                "id": "co0242245",
                "name": "The Penguin Empire"
              },
              {
                "id": "co0454339",
                "name": "Campfire Studios"
              },
              {
                "id": "co0871445",
                "name": "Giant Leap Media"
              }
            ],
            "budget": null,
            "grossWorldwide": 73,
            "genres": [
              "Horror",
              "Thriller"
            ],
            "isAdult": false,
            "runtimeMinutes": 94,
            "averageRating": 6.4,
            "numVotes": 428,
            "metascore": null
          },
          {
            "id": "tt14905854",
            "url": "https://www.imdb.com/title/tt14905854/",
            "primaryTitle": "Hamnet",
            "originalTitle": "Hamnet",
            "type": "movie",
            "description": "A powerful story of love and loss that inspired the creation of Shakespeare's timeless masterpiece, Hamlet.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BMDQ5ZmY0OWYtOTYzZi00Mzg5LWE3N2EtMjYwZTAzZmJhYjkyXkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMDQ5ZmY0OWYtOTYzZi00Mzg5LWE3N2EtMjYwZTAzZmJhYjkyXkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMDQ5ZmY0OWYtOTYzZi00Mzg5LWE3N2EtMjYwZTAzZmJhYjkyXkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMDQ5ZmY0OWYtOTYzZi00Mzg5LWE3N2EtMjYwZTAzZmJhYjkyXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": null,
            "contentRating": "PG-13",
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2025-12-05",
            "interests": [
              "Epic",
              "Period Drama",
              "Tragedy",
              "Biography",
              "Drama",
              "History"
            ],
            "countriesOfOrigin": [
              "GB"
            ],
            "externalLinks": [],
            "spokenLanguages": [
              "en"
            ],
            "filmingLocations": [],
            "productionCompanies": [
              {
                "id": "co0042399",
                "name": "Focus Features"
              },
              {
                "id": "co0677560",
                "name": "Hera Pictures"
              },
              {
                "id": "co0165439",
                "name": "Neal Street Productions"
              }
            ],
            "budget": null,
            "grossWorldwide": null,
            "genres": [
              "Biography",
              "Drama",
              "History"
            ],
            "isAdult": false,
            "runtimeMinutes": 125,
            "averageRating": 8.2,
            "numVotes": 1343,
            "metascore": 88
          },
          {
            "id": "tt32897959",
            "url": "https://www.imdb.com/title/tt32897959/",
            "primaryTitle": "Wuthering Heights",
            "originalTitle": "Wuthering Heights",
            "type": "movie",
            "description": "A passionate and tumultuous love story set against the backdrop of the Yorkshire moors, exploring the intense and destructive relationship between Heathcliff and Catherine Earnshaw.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BMGFlMTVkMDktZGMzMC00Yjk4LWFmNzEtNTFmMzM2YzM3MWFkXkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMGFlMTVkMDktZGMzMC00Yjk4LWFmNzEtNTFmMzM2YzM3MWFkXkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMGFlMTVkMDktZGMzMC00Yjk4LWFmNzEtNTFmMzM2YzM3MWFkXkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMGFlMTVkMDktZGMzMC00Yjk4LWFmNzEtNTFmMzM2YzM3MWFkXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": null,
            "contentRating": null,
            "startYear": 2026,
            "endYear": null,
            "releaseDate": "2026-02-13",
            "interests": [
              "Period Drama",
              "Steamy Romance",
              "Drama",
              "Romance"
            ],
            "countriesOfOrigin": [
              "US",
              "GB"
            ],
            "externalLinks": [],
            "spokenLanguages": [
              "en"
            ],
            "filmingLocations": [],
            "productionCompanies": [
              {
                "id": "co1033803",
                "name": "Lie Still"
              },
              {
                "id": "co0542434",
                "name": "LuckyChap"
              },
              {
                "id": "co0811855",
                "name": "MRC Film"
              }
            ],
            "budget": null,
            "grossWorldwide": null,
            "genres": [
              "Drama",
              "Romance"
            ],
            "isAdult": false,
            "runtimeMinutes": null,
            "averageRating": null,
            "numVotes": 0,
            "metascore": null
          },
          {
            "id": "tt0099785",
            "url": "https://www.imdb.com/title/tt0099785/",
            "primaryTitle": "Home Alone",
            "originalTitle": "Home Alone",
            "type": "movie",
            "description": "An eight-year-old troublemaker, mistakenly left home alone, must defend his home against a pair of burglars on Christmas Eve.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BNzNmNmQ2ZDEtMTc1MS00NjNiLThlMGUtZmQxNTg1Nzg5NWMzXkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNzNmNmQ2ZDEtMTc1MS00NjNiLThlMGUtZmQxNTg1Nzg5NWMzXkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNzNmNmQ2ZDEtMTc1MS00NjNiLThlMGUtZmQxNTg1Nzg5NWMzXkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNzNmNmQ2ZDEtMTc1MS00NjNiLThlMGUtZmQxNTg1Nzg5NWMzXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": "https://www.youtube.com/watch?v=dzdpqRGA1qc",
            "contentRating": "PG",
            "startYear": 1990,
            "endYear": null,
            "releaseDate": "1990-11-16",
            "interests": [
              "High-Concept Comedy",
              "Holiday Comedy",
              "Holiday Family",
              "Slapstick",
              "Comedy",
              "Family",
              "Holiday"
            ],
            "countriesOfOrigin": [
              "US"
            ],
            "externalLinks": [
              "https://www.facebook.com/HomeAloneMovie?fref=ts",
              "https://www.hotstar.com/id/movies/home-alone/1770000922"
            ],
            "spokenLanguages": [
              "en",
              "fr"
            ],
            "filmingLocations": [
              "671 Lincoln Avenue, Winnetka, Illinois, USA"
            ],
            "productionCompanies": [
              {
                "id": "co0000756",
                "name": "Twentieth Century Fox"
              },
              {
                "id": "co0073707",
                "name": "Hughes Entertainment"
              }
            ],
            "budget": 18000000,
            "grossWorldwide": 476684675,
            "genres": [
              "Comedy",
              "Family"
            ],
            "isAdult": false,
            "runtimeMinutes": 103,
            "averageRating": 7.7,
            "numVotes": 713218,
            "metascore": 63
          },
          {
            "id": "tt16311594",
            "url": "https://www.imdb.com/title/tt16311594/",
            "primaryTitle": "F1: The Movie",
            "originalTitle": "F1",
            "type": "movie",
            "description": "A Formula One driver comes out of retirement to mentor and team up with a younger driver.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BNGI0MDI4NjEtOWU3ZS00ODQyLWFhYTgtNGYxM2ZkM2Q2YjE3XkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNGI0MDI4NjEtOWU3ZS00ODQyLWFhYTgtNGYxM2ZkM2Q2YjE3XkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNGI0MDI4NjEtOWU3ZS00ODQyLWFhYTgtNGYxM2ZkM2Q2YjE3XkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNGI0MDI4NjEtOWU3ZS00ODQyLWFhYTgtNGYxM2ZkM2Q2YjE3XkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": "https://www.youtube.com/watch?v=J-eZpA8DdAg",
            "contentRating": "PG-13",
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2025-06-27",
            "interests": [
              "Car Action",
              "Motorsport",
              "Action",
              "Drama",
              "Sport"
            ],
            "countriesOfOrigin": [
              "US"
            ],
            "externalLinks": [
              "https://www.f1themovie.com/"
            ],
            "spokenLanguages": [
              "en",
              "es",
              "de",
              "it"
            ],
            "filmingLocations": [
              "Hungaroring, Budapest, Hungary"
            ],
            "productionCompanies": [
              {
                "id": "co0822606",
                "name": "Apple Original Films"
              },
              {
                "id": "co0002663",
                "name": "Warner Bros."
              },
              {
                "id": "co0441953",
                "name": "Monolith Pictures (III)"
              }
            ],
            "budget": 200000000,
            "grossWorldwide": 631427111,
            "genres": [
              "Action",
              "Drama",
              "Sport"
            ],
            "isAdult": false,
            "runtimeMinutes": 155,
            "averageRating": 7.7,
            "numVotes": 246808,
            "metascore": 68
          },
          {
            "id": "tt30253473",
            "url": "https://www.imdb.com/title/tt30253473/",
            "primaryTitle": "Materialists",
            "originalTitle": "Materialists",
            "type": "movie",
            "description": "An ambitious young New York City matchmaker finds herself torn between the perfect match and her imperfect ex.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BNmQxMTI1YmEtOGY3Yi00NzVlLWEzMjAtYTI1NWZkNDFiMDg1XkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNmQxMTI1YmEtOGY3Yi00NzVlLWEzMjAtYTI1NWZkNDFiMDg1XkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNmQxMTI1YmEtOGY3Yi00NzVlLWEzMjAtYTI1NWZkNDFiMDg1XkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNmQxMTI1YmEtOGY3Yi00NzVlLWEzMjAtYTI1NWZkNDFiMDg1XkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": "https://www.youtube.com/watch?v=4A_kmjtsJ7c",
            "contentRating": "R",
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2025-06-13",
            "interests": [
              "Feel-Good Romance",
              "Romantic Comedy",
              "Comedy",
              "Romance"
            ],
            "countriesOfOrigin": [
              "FI",
              "US"
            ],
            "externalLinks": [
              "https://a24films.com/films/materialists"
            ],
            "spokenLanguages": [
              "en"
            ],
            "filmingLocations": [
              "Crested Hen Farms - 607 County Route 6, High Falls, New York, USA"
            ],
            "productionCompanies": [
              {
                "id": "co0390816",
                "name": "A24"
              },
              {
                "id": "co0708111",
                "name": "2AM"
              },
              {
                "id": "co0030755",
                "name": "Killer Films"
              }
            ],
            "budget": 20000000,
            "grossWorldwide": 107861107,
            "genres": [
              "Comedy",
              "Romance"
            ],
            "isAdult": false,
            "runtimeMinutes": 116,
            "averageRating": 6.3,
            "numVotes": 72936,
            "metascore": 70
          },
          {
            "id": "tt0093894",
            "url": "https://www.imdb.com/title/tt0093894/",
            "primaryTitle": "The Running Man",
            "originalTitle": "The Running Man",
            "type": "movie",
            "description": "In a future dystopian America, a wrongfully accused and convicted policeman gets his shot at freedom when he's forced to participate in a TV game show where convicts called Runners must battle killers for their freedom.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BMDQwYzMwMDItYzFhZC00YjkzLTlmODAtMzg3NDFlNDhhZjYzXkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMDQwYzMwMDItYzFhZC00YjkzLTlmODAtMzg3NDFlNDhhZjYzXkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMDQwYzMwMDItYzFhZC00YjkzLTlmODAtMzg3NDFlNDhhZjYzXkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMDQwYzMwMDItYzFhZC00YjkzLTlmODAtMzg3NDFlNDhhZjYzXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": "https://www.youtube.com/watch?v=i2FMhBg0h_8",
            "contentRating": "R",
            "startYear": 1987,
            "endYear": null,
            "releaseDate": "1987-11-13",
            "interests": [
              "Conspiracy Thriller",
              "Dark Comedy",
              "Dystopian Sci-Fi",
              "One-Person Army Action",
              "Survival",
              "Action",
              "Sci-Fi",
              "Thriller"
            ],
            "countriesOfOrigin": [
              "US"
            ],
            "externalLinks": [],
            "spokenLanguages": [
              "en",
              "it",
              "ja"
            ],
            "filmingLocations": [
              "Sony Pictures Plaza, 10000 Washington Blvd, Culver City, California, USA"
            ],
            "productionCompanies": [
              {
                "id": "co0047779",
                "name": "TAFT Entertainment Pictures"
              },
              {
                "id": "co0009677",
                "name": "Keith Barish Productions"
              },
              {
                "id": "co0008693",
                "name": "Home Box Office (HBO)"
              }
            ],
            "budget": 27000000,
            "grossWorldwide": 38123906,
            "genres": [
              "Action",
              "Sci-Fi",
              "Thriller"
            ],
            "isAdult": false,
            "runtimeMinutes": 101,
            "averageRating": 6.6,
            "numVotes": 184449,
            "metascore": 45
          },
          {
            "id": "tt14205554",
            "url": "https://www.imdb.com/title/tt14205554/",
            "primaryTitle": "KPop Demon Hunters",
            "originalTitle": "KPop Demon Hunters",
            "type": "movie",
            "description": "A world-renowned K-Pop girl group balance their lives in the spotlight with their secret identities as demon hunters.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BNTBiYWJlMjQtOTIyMy00NTY4LWFhOWItOWZhNzc3NGMyMjc2XkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNTBiYWJlMjQtOTIyMy00NTY4LWFhOWItOWZhNzc3NGMyMjc2XkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNTBiYWJlMjQtOTIyMy00NTY4LWFhOWItOWZhNzc3NGMyMjc2XkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNTBiYWJlMjQtOTIyMy00NTY4LWFhOWItOWZhNzc3NGMyMjc2XkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": null,
            "contentRating": "PG",
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2025-06-20",
            "interests": [
              "Computer Animation",
              "Pop Musical",
              "Superhero",
              "Supernatural Fantasy",
              "Action",
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
              "https://www.netflix.com/title/81498621/"
            ],
            "spokenLanguages": [
              "en",
              "ko"
            ],
            "filmingLocations": [],
            "productionCompanies": [
              {
                "id": "co0467916",
                "name": "Creative BC"
              },
              {
                "id": "co0144901",
                "name": "Netflix"
              },
              {
                "id": "co0121181",
                "name": "Sony Pictures Animation"
              }
            ],
            "budget": 100000000,
            "grossWorldwide": 24619953,
            "genres": [
              "Action",
              "Adventure",
              "Animation"
            ],
            "isAdult": false,
            "runtimeMinutes": 95,
            "averageRating": 7.6,
            "numVotes": 98943,
            "metascore": 77
          },
          {
            "id": "tt1396484",
            "url": "https://www.imdb.com/title/tt1396484/",
            "primaryTitle": "It",
            "originalTitle": "It",
            "type": "movie",
            "description": "In the summer of 1989, a group of bullied kids band together to destroy a shape-shifting monster, which disguises itself as a clown and preys on the children of Derry, their small Maine town.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BZGZmOTZjNzUtOTE4OS00OGM3LWJiNGEtZjk4Yzg2M2Q1YzYxXkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BZGZmOTZjNzUtOTE4OS00OGM3LWJiNGEtZjk4Yzg2M2Q1YzYxXkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BZGZmOTZjNzUtOTE4OS00OGM3LWJiNGEtZjk4Yzg2M2Q1YzYxXkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BZGZmOTZjNzUtOTE4OS00OGM3LWJiNGEtZjk4Yzg2M2Q1YzYxXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": "https://www.youtube.com/watch?v=FnCdOQsX5kc",
            "contentRating": "R",
            "startYear": 2017,
            "endYear": null,
            "releaseDate": "2017-09-08",
            "interests": [
              "Monster Horror",
              "Supernatural Horror",
              "Horror"
            ],
            "countriesOfOrigin": [
              "US",
              "CA"
            ],
            "externalLinks": [
              "https://www.facebook.com/ITMovie/",
              "https://www.instagram.com/itmovieofficial/"
            ],
            "spokenLanguages": [
              "en",
              "he"
            ],
            "filmingLocations": [
              "Bangor, Maine, USA"
            ],
            "productionCompanies": [
              {
                "id": "co0046718",
                "name": "New Line Cinema"
              },
              {
                "id": "co0449458",
                "name": "RatPac-Dune Entertainment"
              },
              {
                "id": "co0084207",
                "name": "Vertigo Entertainment"
              }
            ],
            "budget": 35000000,
            "grossWorldwide": 719766009,
            "genres": [
              "Horror"
            ],
            "isAdult": false,
            "runtimeMinutes": 135,
            "averageRating": 7.3,
            "numVotes": 670786,
            "metascore": 69
          },
          {
            "id": "tt2948356",
            "url": "https://www.imdb.com/title/tt2948356/",
            "primaryTitle": "Zootopia",
            "originalTitle": "Zootopia",
            "type": "movie",
            "description": "In a city of anthropomorphic animals, a rookie bunny cop and a cynical con artist fox must work together to uncover a conspiracy.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BOTMyMjEyNzIzMV5BMl5BanBnXkFtZTgwNzIyNjU0NzE@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BOTMyMjEyNzIzMV5BMl5BanBnXkFtZTgwNzIyNjU0NzE@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BOTMyMjEyNzIzMV5BMl5BanBnXkFtZTgwNzIyNjU0NzE@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BOTMyMjEyNzIzMV5BMl5BanBnXkFtZTgwNzIyNjU0NzE@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": "https://www.youtube.com/watch?v=bY73vFGhSVk",
            "contentRating": "PG",
            "startYear": 2016,
            "endYear": null,
            "releaseDate": "2016-03-04",
            "interests": [
              "Animal Adventure",
              "Buddy Comedy",
              "Computer Animation",
              "Dark Comedy",
              "Satire",
              "Urban Adventure",
              "Action",
              "Adventure",
              "Animation",
              "Comedy"
            ],
            "countriesOfOrigin": [
              "US"
            ],
            "externalLinks": [
              "https://www.facebook.com/DisneyZootopia/?fref=ts",
              "http://aja.disney.com/zootopia"
            ],
            "spokenLanguages": [
              "en"
            ],
            "filmingLocations": [
              "Walt Disney Animation Studios - 500 S. Buena Vista Street, Burbank, California, USA"
            ],
            "productionCompanies": [
              {
                "id": "co0008970",
                "name": "Walt Disney Pictures"
              },
              {
                "id": "co0074039",
                "name": "Walt Disney Animation Studios"
              }
            ],
            "budget": 150000000,
            "grossWorldwide": 1025521689,
            "genres": [
              "Action",
              "Adventure",
              "Animation"
            ],
            "isAdult": false,
            "runtimeMinutes": 108,
            "averageRating": 8,
            "numVotes": 599204,
            "metascore": 78
          },
          {
            "id": "tt0319343",
            "url": "https://www.imdb.com/title/tt0319343/",
            "primaryTitle": "Elf",
            "originalTitle": "Elf",
            "type": "movie",
            "description": "Raised as an oversized elf, Buddy travels from the North Pole to New York City to meet his biological father, Walter Hobbs, who doesn't know he exists and is in desperate need of some Christmas spirit.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BNDQ0ZWE2NzgtNGNhMC00MDIwLWI1MjUtYjYxZGRiM2UyYTQzXkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNDQ0ZWE2NzgtNGNhMC00MDIwLWI1MjUtYjYxZGRiM2UyYTQzXkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNDQ0ZWE2NzgtNGNhMC00MDIwLWI1MjUtYjYxZGRiM2UyYTQzXkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNDQ0ZWE2NzgtNGNhMC00MDIwLWI1MjUtYjYxZGRiM2UyYTQzXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": "https://www.youtube.com/watch?v=W4NIrWgRfrA",
            "contentRating": "PG",
            "startYear": 2003,
            "endYear": null,
            "releaseDate": "2003-11-07",
            "interests": [
              "Holiday Comedy",
              "Holiday Family",
              "Holiday Romance",
              "Quirky Comedy",
              "Urban Adventure",
              "Adventure",
              "Comedy",
              "Family",
              "Fantasy",
              "Holiday"
            ],
            "countriesOfOrigin": [
              "US"
            ],
            "externalLinks": [
              "https://www.facebook.com/buddytheelf"
            ],
            "spokenLanguages": [
              "en"
            ],
            "filmingLocations": [
              "Vancouver, British Columbia, Canada"
            ],
            "productionCompanies": [
              {
                "id": "co0046718",
                "name": "New Line Cinema"
              },
              {
                "id": "co0031707",
                "name": "Guy Walks into a Bar Productions"
              },
              {
                "id": "co0052918",
                "name": "Gold/Miller Productions"
              }
            ],
            "budget": 33000000,
            "grossWorldwide": 230266511,
            "genres": [
              "Adventure",
              "Comedy",
              "Family"
            ],
            "isAdult": false,
            "runtimeMinutes": 97,
            "averageRating": 7.1,
            "numVotes": 334567,
            "metascore": 66
          },
          {
            "id": "tt14999684",
            "url": "https://www.imdb.com/title/tt14999684/",
            "primaryTitle": "Shelby Oaks",
            "originalTitle": "Shelby Oaks",
            "type": "movie",
            "description": "A woman's obsessive search for her missing sister leads her into a terrifying mystery at the hands of an unknown evil.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BOWQ1MjA5YzItMmE2NC00YWZkLWEwZjMtOTIxMDgyYmU2MTRmXkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BOWQ1MjA5YzItMmE2NC00YWZkLWEwZjMtOTIxMDgyYmU2MTRmXkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BOWQ1MjA5YzItMmE2NC00YWZkLWEwZjMtOTIxMDgyYmU2MTRmXkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BOWQ1MjA5YzItMmE2NC00YWZkLWEwZjMtOTIxMDgyYmU2MTRmXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": null,
            "contentRating": "R",
            "startYear": 2024,
            "endYear": null,
            "releaseDate": "2025-10-24",
            "interests": [
              "B-Horror",
              "Monster Horror",
              "Psychological Horror",
              "Psychological Thriller",
              "Supernatural Horror",
              "Horror",
              "Thriller"
            ],
            "countriesOfOrigin": [
              "US",
              "BE"
            ],
            "externalLinks": [
              "https://www.neonrated.com/film/shelby-oaks"
            ],
            "spokenLanguages": [
              "en"
            ],
            "filmingLocations": [
              "Greenwood Farm, Richmond Heights, Ohio, USA"
            ],
            "productionCompanies": [
              {
                "id": "co0406281",
                "name": "Paper Street Pictures"
              },
              {
                "id": "co0059753",
                "name": "Intrepid Pictures"
              },
              {
                "id": "co0396761",
                "name": "Title Media"
              }
            ],
            "budget": 1400000,
            "grossWorldwide": 5776786,
            "genres": [
              "Horror",
              "Thriller"
            ],
            "isAdult": false,
            "runtimeMinutes": 91,
            "averageRating": 5.5,
            "numVotes": 6933,
            "metascore": 40
          },
          {
            "id": "tt0241527",
            "url": "https://www.imdb.com/title/tt0241527/",
            "primaryTitle": "Harry Potter and the Sorcerer's Stone",
            "originalTitle": "Harry Potter and the Sorcerer's Stone",
            "type": "movie",
            "description": "An orphaned boy enrolls in a school of wizardry, where he learns the truth about himself, his family and the terrible evil that haunts the magical world.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BNTU1MzgyMDMtMzBlZS00YzczLThmYWEtMjU3YmFlOWEyMjE1XkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNTU1MzgyMDMtMzBlZS00YzczLThmYWEtMjU3YmFlOWEyMjE1XkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNTU1MzgyMDMtMzBlZS00YzczLThmYWEtMjU3YmFlOWEyMjE1XkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNTU1MzgyMDMtMzBlZS00YzczLThmYWEtMjU3YmFlOWEyMjE1XkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": "https://www.youtube.com/watch?v=l91Km49W9qI",
            "contentRating": "PG",
            "startYear": 2001,
            "endYear": null,
            "releaseDate": "2001-11-16",
            "interests": [
              "Teen Fantasy",
              "Adventure",
              "Family",
              "Fantasy",
              "Holiday"
            ],
            "countriesOfOrigin": [
              "GB",
              "US"
            ],
            "externalLinks": [
              "http://www.facebook.com/harrypotter",
              "http://www.instagram.com/harrypotter"
            ],
            "spokenLanguages": [
              "en",
              "la"
            ],
            "filmingLocations": [
              "Alnwick Castle, Alnwick, Northumberland, England, UK"
            ],
            "productionCompanies": [
              {
                "id": "co0002663",
                "name": "Warner Bros."
              },
              {
                "id": "co0159772",
                "name": "Heyday Films"
              },
              {
                "id": "co0046151",
                "name": "1492 Pictures"
              }
            ],
            "budget": 125000000,
            "grossWorldwide": 1028496499,
            "genres": [
              "Adventure",
              "Family",
              "Fantasy"
            ],
            "isAdult": false,
            "runtimeMinutes": 152,
            "averageRating": 7.7,
            "numVotes": 927856,
            "metascore": 65
          },
          {
            "id": "tt27714581",
            "url": "https://www.imdb.com/title/tt27714581/",
            "primaryTitle": "Sentimental Value",
            "originalTitle": "Affeksjonsverdi",
            "type": "movie",
            "description": "An intimate exploration of family, memories, and the reconciliatory power of art.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BM2Y5ZjNhZjEtOTQxNi00ZWU3LTk1MGQtYjE3MWZiNWUwNjc0XkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BM2Y5ZjNhZjEtOTQxNi00ZWU3LTk1MGQtYjE3MWZiNWUwNjc0XkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BM2Y5ZjNhZjEtOTQxNi00ZWU3LTk1MGQtYjE3MWZiNWUwNjc0XkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BM2Y5ZjNhZjEtOTQxNi00ZWU3LTk1MGQtYjE3MWZiNWUwNjc0XkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": null,
            "contentRating": "R",
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2025-08-20",
            "interests": [
              "Norwegian",
              "Showbiz Drama",
              "Drama"
            ],
            "countriesOfOrigin": [
              "NO",
              "DE",
              "DK",
              "FR",
              "SE"
            ],
            "externalLinks": [
              "https://www.neonrated.com/film/sentimental-value",
              "https://retratofilmes.com/valor-sentimental/"
            ],
            "spokenLanguages": [
              "no",
              "en",
              "fr"
            ],
            "filmingLocations": [
              "The National Theatre, Johanne Dybwads plass 1, Oslo, Norway"
            ],
            "productionCompanies": [
              {
                "id": "co0349510",
                "name": "Mer Film"
              },
              {
                "id": "co0980113",
                "name": "Eye Eye Pictures"
              },
              {
                "id": "co0022545",
                "name": "MK2 Productions"
              }
            ],
            "budget": 7800000,
            "grossWorldwide": 8643157,
            "genres": [
              "Drama"
            ],
            "isAdult": false,
            "runtimeMinutes": 133,
            "averageRating": 8,
            "numVotes": 6819,
            "metascore": 87
          },
          {
            "id": "tt3402138",
            "url": "https://www.imdb.com/title/tt3402138/",
            "primaryTitle": "The Naked Gun",
            "originalTitle": "The Naked Gun",
            "type": "movie",
            "description": "Following in his father's footsteps, a detective works to solve a murder case and save his police department from closure.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BNGFlNDhkNzItZjgxNC00OGYzLWFjZDAtZTJmNDY5ZmEyZDc0XkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNGFlNDhkNzItZjgxNC00OGYzLWFjZDAtZTJmNDY5ZmEyZDc0XkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNGFlNDhkNzItZjgxNC00OGYzLWFjZDAtZTJmNDY5ZmEyZDc0XkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNGFlNDhkNzItZjgxNC00OGYzLWFjZDAtZTJmNDY5ZmEyZDc0XkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": null,
            "contentRating": "PG-13",
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2025-08-01",
            "interests": [
              "Bumbling Detective",
              "Parody",
              "Satire",
              "Slapstick",
              "Action",
              "Comedy",
              "Crime"
            ],
            "countriesOfOrigin": [
              "US"
            ],
            "externalLinks": [
              "https://www.facebook.com/NakedGunMovie/",
              "https://www.instagram.com/nakedgunmovie/"
            ],
            "spokenLanguages": [
              "en"
            ],
            "filmingLocations": [
              "Martin Luther King Jr Federal Building, Atlanta, Georgia, USA"
            ],
            "productionCompanies": [
              {
                "id": "co0023400",
                "name": "Paramount Pictures"
              },
              {
                "id": "co1090055",
                "name": "Domain Entertainment (II)"
              },
              {
                "id": "co0065872",
                "name": "Fuzzy Door Productions"
              }
            ],
            "budget": 42000000,
            "grossWorldwide": 102147396,
            "genres": [
              "Action",
              "Comedy",
              "Crime"
            ],
            "isAdult": false,
            "runtimeMinutes": 85,
            "averageRating": 6.4,
            "numVotes": 91146,
            "metascore": 75
          },
          {
            "id": "tt24950660",
            "url": "https://www.imdb.com/title/tt24950660/",
            "primaryTitle": "Eternity",
            "originalTitle": "Eternity",
            "type": "movie",
            "description": "In an afterlife where souls have one week to decide where to spend eternity, Joan is faced with the impossible choice between the man she spent her life with and her first love, who died young and has waited decades for her to arrive.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BNzlmZTNiOTAtNzhlOC00ZTA1LWJhNTgtMDQ4YmY4NWIyNTA4XkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNzlmZTNiOTAtNzhlOC00ZTA1LWJhNTgtMDQ4YmY4NWIyNTA4XkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNzlmZTNiOTAtNzhlOC00ZTA1LWJhNTgtMDQ4YmY4NWIyNTA4XkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNzlmZTNiOTAtNzhlOC00ZTA1LWJhNTgtMDQ4YmY4NWIyNTA4XkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": null,
            "contentRating": "PG-13",
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2025-11-26",
            "interests": [
              "Feel-Good Romance",
              "Romantic Comedy",
              "Supernatural Fantasy",
              "Comedy",
              "Drama",
              "Fantasy",
              "Romance"
            ],
            "countriesOfOrigin": [
              "US"
            ],
            "externalLinks": [
              "https://a24films.com/films/eternity"
            ],
            "spokenLanguages": [
              "en"
            ],
            "filmingLocations": [
              "Vancouver, British Columbia, Canada"
            ],
            "productionCompanies": [
              {
                "id": "co0390816",
                "name": "A24"
              },
              {
                "id": "co0306981",
                "name": "Star Thrower Entertainment"
              }
            ],
            "budget": null,
            "grossWorldwide": null,
            "genres": [
              "Comedy",
              "Drama",
              "Fantasy"
            ],
            "isAdult": false,
            "runtimeMinutes": 112,
            "averageRating": 7.1,
            "numVotes": 6524,
            "metascore": 65
          },
          {
            "id": "tt27543632",
            "url": "https://www.imdb.com/title/tt27543632/",
            "primaryTitle": "The Housemaid",
            "originalTitle": "The Housemaid",
            "type": "movie",
            "description": "A struggling woman is happy to start over as a housemaid for an affluent, elite couple.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BMGU0ZThmMDUtYmZjMi00MDk5LWE2NTQtYzQ3NWZjNWZkZGE3XkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMGU0ZThmMDUtYmZjMi00MDk5LWE2NTQtYzQ3NWZjNWZkZGE3XkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMGU0ZThmMDUtYmZjMi00MDk5LWE2NTQtYzQ3NWZjNWZkZGE3XkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMGU0ZThmMDUtYmZjMi00MDk5LWE2NTQtYzQ3NWZjNWZkZGE3XkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": null,
            "contentRating": "R",
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2025-12-19",
            "interests": [
              "Psychological Thriller",
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
              "Saint Elizabeth University, Morristown, New Jersey, USA"
            ],
            "productionCompanies": [
              {
                "id": "co0006881",
                "name": "Lionsgate"
              },
              {
                "id": "co0786726",
                "name": "Hidden Pictures"
              },
              {
                "id": "co0409029",
                "name": "Feigco Entertainment"
              }
            ],
            "budget": null,
            "grossWorldwide": null,
            "genres": [
              "Thriller"
            ],
            "isAdult": false,
            "runtimeMinutes": 131,
            "averageRating": null,
            "numVotes": 0,
            "metascore": null
          },
          {
            "id": "tt3110958",
            "url": "https://www.imdb.com/title/tt3110958/",
            "primaryTitle": "Now You See Me 2",
            "originalTitle": "Now You See Me 2",
            "type": "movie",
            "description": "The Four Horsemen resurface, and are forcibly recruited by a tech genius to pull off their most impossible heist yet.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BOTVjNTA0ZWEtNzU2Ny00Njg1LWE1MmEtZTUyZGQzYTVlY2Q5XkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BOTVjNTA0ZWEtNzU2Ny00Njg1LWE1MmEtZTUyZGQzYTVlY2Q5XkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BOTVjNTA0ZWEtNzU2Ny00Njg1LWE1MmEtZTUyZGQzYTVlY2Q5XkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BOTVjNTA0ZWEtNzU2Ny00Njg1LWE1MmEtZTUyZGQzYTVlY2Q5XkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": "https://www.youtube.com/watch?v=AuEjHzOIgBE",
            "contentRating": "PG-13",
            "startYear": 2016,
            "endYear": null,
            "releaseDate": "2016-06-10",
            "interests": [
              "Caper",
              "Heist",
              "Action",
              "Adventure",
              "Comedy",
              "Crime",
              "Mystery",
              "Thriller"
            ],
            "countriesOfOrigin": [
              "US",
              "HK"
            ],
            "externalLinks": [
              "https://www.facebook.com/NowYouSeeMeMovie",
              "http://www.nowyouseeme.movie/"
            ],
            "spokenLanguages": [
              "en"
            ],
            "filmingLocations": [
              "Macau, China"
            ],
            "productionCompanies": [
              {
                "id": "co0046206",
                "name": "Summit Entertainment"
              },
              {
                "id": "co0610132",
                "name": "TIK Films"
              },
              {
                "id": "co0176022",
                "name": "K/O Paper Products"
              }
            ],
            "budget": 90000000,
            "grossWorldwide": 334897606,
            "genres": [
              "Action",
              "Adventure",
              "Comedy"
            ],
            "isAdult": false,
            "runtimeMinutes": 129,
            "averageRating": 6.4,
            "numVotes": 351108,
            "metascore": 46
          },
          {
            "id": "tt0356680",
            "url": "https://www.imdb.com/title/tt0356680/",
            "primaryTitle": "The Family Stone",
            "originalTitle": "The Family Stone",
            "type": "movie",
            "description": "An uptight businesswoman accompanies her boyfriend to his eccentric and outgoing family's annual Christmas celebration and finds that she's a fish out of water in their free-spirited way of life.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BOWRjNzY1MmItNDUwNS00MGMzLWFkN2UtMTEzYjU4MmE2ZDAxXkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BOWRjNzY1MmItNDUwNS00MGMzLWFkN2UtMTEzYjU4MmE2ZDAxXkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BOWRjNzY1MmItNDUwNS00MGMzLWFkN2UtMTEzYjU4MmE2ZDAxXkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BOWRjNzY1MmItNDUwNS00MGMzLWFkN2UtMTEzYjU4MmE2ZDAxXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": "https://www.youtube.com/watch?v=ps8DhuMfScQ",
            "contentRating": "PG-13",
            "startYear": 2005,
            "endYear": null,
            "releaseDate": "2005-12-16",
            "interests": [
              "Feel-Good Romance",
              "Holiday Comedy",
              "Holiday Romance",
              "Romantic Comedy",
              "Comedy",
              "Drama",
              "Holiday",
              "Romance"
            ],
            "countriesOfOrigin": [
              "US",
              "DE"
            ],
            "externalLinks": [
              "https://www.foxmovies.com/movies/the-family-stone"
            ],
            "spokenLanguages": [
              "en"
            ],
            "filmingLocations": [
              "Drew University - 36 Madison Avenue, Madison, New Jersey, USA"
            ],
            "productionCompanies": [
              {
                "id": "co0143569",
                "name": "The Family Stone"
              },
              {
                "id": "co0017497",
                "name": "Fox 2000 Pictures"
              },
              {
                "id": "co0174362",
                "name": "Major Studio Partners"
              }
            ],
            "budget": 18000000,
            "grossWorldwide": 92884429,
            "genres": [
              "Comedy",
              "Drama",
              "Romance"
            ],
            "isAdult": false,
            "runtimeMinutes": 103,
            "averageRating": 6.3,
            "numVotes": 82975,
            "metascore": 56
          },
          {
            "id": "tt28802657",
            "url": "https://www.imdb.com/title/tt28802657/",
            "primaryTitle": "De De Pyaar De 2",
            "originalTitle": "De De Pyaar De 2",
            "type": "movie",
            "description": "Love faces its toughest test yet as Ashish visits Ayesha's family home. Will the age-gap romance win hearts or stir things up? This Pyaar vs Parivaar clash promises a relatable, riotous ride for every kind of audience.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BMDAzODI5MjctNWRhNi00OWU5LWIxMTItMTFjNzc4YjY3N2FlXkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMDAzODI5MjctNWRhNi00OWU5LWIxMTItMTFjNzc4YjY3N2FlXkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMDAzODI5MjctNWRhNi00OWU5LWIxMTItMTFjNzc4YjY3N2FlXkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMDAzODI5MjctNWRhNi00OWU5LWIxMTItMTFjNzc4YjY3N2FlXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": null,
            "contentRating": null,
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2025-11-14",
            "interests": [
              "Hindi"
            ],
            "countriesOfOrigin": [
              "IN"
            ],
            "externalLinks": [],
            "spokenLanguages": [
              "hi"
            ],
            "filmingLocations": [
              "London, England, UK"
            ],
            "productionCompanies": [
              {
                "id": "co0595322",
                "name": "Luv Films"
              },
              {
                "id": "co0095683",
                "name": "T-Series"
              }
            ],
            "budget": null,
            "grossWorldwide": 356676,
            "genres": [],
            "isAdult": false,
            "runtimeMinutes": 150,
            "averageRating": 8.1,
            "numVotes": 9007,
            "metascore": null
          },
          {
            "id": "tt0816692",
            "url": "https://www.imdb.com/title/tt0816692/",
            "primaryTitle": "Interstellar",
            "originalTitle": "Interstellar",
            "type": "movie",
            "description": "When Earth becomes uninhabitable in the future, a farmer and ex-NASA pilot, Joseph Cooper, is tasked to pilot a spacecraft, along with a team of researchers, to find a new planet for humans.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BYzdjMDAxZGItMjI2My00ODA1LTlkNzItOWFjMDU5ZDJlYWY3XkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BYzdjMDAxZGItMjI2My00ODA1LTlkNzItOWFjMDU5ZDJlYWY3XkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BYzdjMDAxZGItMjI2My00ODA1LTlkNzItOWFjMDU5ZDJlYWY3XkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BYzdjMDAxZGItMjI2My00ODA1LTlkNzItOWFjMDU5ZDJlYWY3XkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": "https://www.youtube.com/watch?v=827FNDpQWrQ",
            "contentRating": "PG-13",
            "startYear": 2014,
            "endYear": null,
            "releaseDate": "2014-11-07",
            "interests": [
              "Adventure Epic",
              "Epic",
              "Psychological Drama",
              "Quest",
              "Sci-Fi Epic",
              "Space Sci-Fi",
              "Time Travel",
              "Adventure",
              "Drama",
              "Sci-Fi"
            ],
            "countriesOfOrigin": [
              "US",
              "GB",
              "CA"
            ],
            "externalLinks": [
              "https://www.facebook.com/Interstellar",
              "https://twitter.com/Interstellar"
            ],
            "spokenLanguages": [
              "en"
            ],
            "filmingLocations": [
              "Iceland"
            ],
            "productionCompanies": [
              {
                "id": "co0023400",
                "name": "Paramount Pictures"
              },
              {
                "id": "co0002663",
                "name": "Warner Bros."
              },
              {
                "id": "co1041831",
                "name": "Legendary Pictures"
              }
            ],
            "budget": 165000000,
            "grossWorldwide": 771012321,
            "genres": [
              "Adventure",
              "Drama",
              "Sci-Fi"
            ],
            "isAdult": false,
            "runtimeMinutes": 169,
            "averageRating": 8.7,
            "numVotes": 2437568,
            "metascore": 74
          },
          {
            "id": "tt14948432",
            "url": "https://www.imdb.com/title/tt14948432/",
            "primaryTitle": "Red One",
            "originalTitle": "Red One",
            "type": "movie",
            "description": "After Santa Claus is kidnapped, the North Pole's Head of Security must team up with a notorious hacker in a globe-trotting, action-packed mission to save Christmas.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BZmFkMjE4NjQtZTVmZS00MDZjLWE2ZmEtZTkzODljNjhlNWUxXkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BZmFkMjE4NjQtZTVmZS00MDZjLWE2ZmEtZTkzODljNjhlNWUxXkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BZmFkMjE4NjQtZTVmZS00MDZjLWE2ZmEtZTkzODljNjhlNWUxXkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BZmFkMjE4NjQtZTVmZS00MDZjLWE2ZmEtZTkzODljNjhlNWUxXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": "https://www.youtube.com/watch?v=U8XH3W0cMss",
            "contentRating": "PG-13",
            "startYear": 2024,
            "endYear": null,
            "releaseDate": "2024-11-15",
            "interests": [
              "Dark Fantasy",
              "Holiday Comedy",
              "Action",
              "Adventure",
              "Comedy",
              "Fantasy",
              "Holiday",
              "Mystery"
            ],
            "countriesOfOrigin": [
              "US",
              "CA"
            ],
            "externalLinks": [
              "https://www.amazon.com/salp/redonemovie",
              "https://www.redonemovie.net/"
            ],
            "spokenLanguages": [
              "en"
            ],
            "filmingLocations": [
              "275 Centennial Olympic Park Drive NW, Atlanta, Georgia, USA"
            ],
            "productionCompanies": [
              {
                "id": "co1025982",
                "name": "Amazon MGM Studios"
              },
              {
                "id": "co0536392",
                "name": "Seven Bucks Productions"
              },
              {
                "id": "co0353093",
                "name": "Chris Morgan Productions"
              }
            ],
            "budget": 250000000,
            "grossWorldwide": 186000759,
            "genres": [
              "Action",
              "Adventure",
              "Comedy"
            ],
            "isAdult": false,
            "runtimeMinutes": 123,
            "averageRating": 6.2,
            "numVotes": 147118,
            "metascore": 34
          },
          {
            "id": "tt0032138",
            "url": "https://www.imdb.com/title/tt0032138/",
            "primaryTitle": "The Wizard of Oz",
            "originalTitle": "The Wizard of Oz",
            "type": "movie",
            "description": "Young Dorothy Gale and her dog Toto are swept away by a tornado from their Kansas farm to the magical Land of Oz and embark on a quest with three new friends to see the Wizard, who can return her to her home and fulfill the others' wishes.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BYWRmY2I0MGItYTQ0OC00NWZmLWIwMDktYjJlNDc0MzVhMmViXkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BYWRmY2I0MGItYTQ0OC00NWZmLWIwMDktYjJlNDc0MzVhMmViXkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BYWRmY2I0MGItYTQ0OC00NWZmLWIwMDktYjJlNDc0MzVhMmViXkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BYWRmY2I0MGItYTQ0OC00NWZmLWIwMDktYjJlNDc0MzVhMmViXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": "https://www.youtube.com/watch?v=FfpF8UUVTeM",
            "contentRating": "G",
            "startYear": 1939,
            "endYear": null,
            "releaseDate": "1939-08-25",
            "interests": [
              "Adventure Epic",
              "Classic Musical",
              "Fairy Tale",
              "Fantasy Epic",
              "Quest",
              "Adventure",
              "Family",
              "Fantasy",
              "Musical"
            ],
            "countriesOfOrigin": [
              "US"
            ],
            "externalLinks": [
              "https://www.warnerbros.com/movies/wizard-oz"
            ],
            "spokenLanguages": [
              "en"
            ],
            "filmingLocations": [
              "Stage 28, Sony Pictures Studios - 10202 W. Washington Blvd., Culver City, California, USA"
            ],
            "productionCompanies": [
              {
                "id": "co0054683",
                "name": "Loew's"
              }
            ],
            "budget": 2777000,
            "grossWorldwide": 25637669,
            "genres": [
              "Adventure",
              "Family",
              "Fantasy"
            ],
            "isAdult": false,
            "runtimeMinutes": 102,
            "averageRating": 8.1,
            "numVotes": 460090,
            "metascore": 92
          },
          {
            "id": "tt0068646",
            "url": "https://www.imdb.com/title/tt0068646/",
            "primaryTitle": "The Godfather",
            "originalTitle": "The Godfather",
            "type": "movie",
            "description": "The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BNGEwYjgwOGQtYjg5ZS00Njc1LTk2ZGEtM2QwZWQ2NjdhZTE5XkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNGEwYjgwOGQtYjg5ZS00Njc1LTk2ZGEtM2QwZWQ2NjdhZTE5XkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNGEwYjgwOGQtYjg5ZS00Njc1LTk2ZGEtM2QwZWQ2NjdhZTE5XkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNGEwYjgwOGQtYjg5ZS00Njc1LTk2ZGEtM2QwZWQ2NjdhZTE5XkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": "https://www.youtube.com/watch?v=8V2k2YQEQJ4",
            "contentRating": "R",
            "startYear": 1972,
            "endYear": null,
            "releaseDate": "1972-03-24",
            "interests": [
              "Epic",
              "Gangster",
              "Tragedy",
              "Crime",
              "Drama"
            ],
            "countriesOfOrigin": [
              "US"
            ],
            "externalLinks": [
              "https://www.facebook.com/thegodfather/",
              "https://www.instagram.com/thegodfathermovie/"
            ],
            "spokenLanguages": [
              "en",
              "it",
              "la"
            ],
            "filmingLocations": [
              "Forza d'Agrò, Messina, Sicily, Italy"
            ],
            "productionCompanies": [
              {
                "id": "co0023400",
                "name": "Paramount Pictures"
              },
              {
                "id": "co0921482",
                "name": "Albert S. Ruddy Productions"
              },
              {
                "id": "co0255097",
                "name": "Alfran Productions"
              }
            ],
            "budget": 6000000,
            "grossWorldwide": 250926102,
            "genres": [
              "Crime",
              "Drama"
            ],
            "isAdult": false,
            "runtimeMinutes": 175,
            "averageRating": 9.2,
            "numVotes": 2181512,
            "metascore": 100
          },
          {
            "id": "tt29247040",
            "url": "https://www.imdb.com/title/tt29247040/",
            "primaryTitle": "Baramulla",
            "originalTitle": "Baramulla",
            "type": "movie",
            "description": "A police officer investigating missing children cases discovers disturbing truths while supernatural occurrences threaten his family and Baramulla's tranquility.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BYmU5OGFiN2QtZDBiZC00MjdiLTg5ZmMtNWI2Yjg2NGU0MzhjXkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BYmU5OGFiN2QtZDBiZC00MjdiLTg5ZmMtNWI2Yjg2NGU0MzhjXkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BYmU5OGFiN2QtZDBiZC00MjdiLTg5ZmMtNWI2Yjg2NGU0MzhjXkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BYmU5OGFiN2QtZDBiZC00MjdiLTg5ZmMtNWI2Yjg2NGU0MzhjXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": null,
            "contentRating": "TV-MA",
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2025-11-07",
            "interests": [
              "Hindi",
              "Horror",
              "Mystery",
              "Thriller"
            ],
            "countriesOfOrigin": [
              "IN"
            ],
            "externalLinks": [],
            "spokenLanguages": [
              "hi"
            ],
            "filmingLocations": [],
            "productionCompanies": [
              {
                "id": "co0932746",
                "name": "B62 Studios"
              }
            ],
            "budget": null,
            "grossWorldwide": null,
            "genres": [
              "Horror",
              "Mystery",
              "Thriller"
            ],
            "isAdult": false,
            "runtimeMinutes": 136,
            "averageRating": 7,
            "numVotes": 7395,
            "metascore": null
          },
          {
            "id": "tt26733325",
            "url": "https://www.imdb.com/title/tt26733325/",
            "primaryTitle": "Homebound",
            "originalTitle": "Homebound",
            "type": "movie",
            "description": "Two friends from a North Indian village pursue police jobs seeking dignity, but their friendship strains as desperation grows in their quest.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BYmJiMTlhYTgtODkyMy00OGUwLWE2MzctZjlhMjQ1ZmZjZTNkXkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BYmJiMTlhYTgtODkyMy00OGUwLWE2MzctZjlhMjQ1ZmZjZTNkXkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BYmJiMTlhYTgtODkyMy00OGUwLWE2MzctZjlhMjQ1ZmZjZTNkXkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BYmJiMTlhYTgtODkyMy00OGUwLWE2MzctZjlhMjQ1ZmZjZTNkXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": null,
            "contentRating": null,
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2025-09-26",
            "interests": [
              "Hindi",
              "Drama"
            ],
            "countriesOfOrigin": [
              "IN"
            ],
            "externalLinks": [],
            "spokenLanguages": [
              "hi"
            ],
            "filmingLocations": [],
            "productionCompanies": [
              {
                "id": "co0078768",
                "name": "Dharma Productions"
              }
            ],
            "budget": null,
            "grossWorldwide": 63093,
            "genres": [
              "Drama"
            ],
            "isAdult": false,
            "runtimeMinutes": 119,
            "averageRating": 8,
            "numVotes": 2973,
            "metascore": 85
          },
          {
            "id": "tt30446847",
            "url": "https://www.imdb.com/title/tt30446847/",
            "primaryTitle": "Jay Kelly",
            "originalTitle": "Jay Kelly",
            "type": "movie",
            "description": "Famous movie actor Jay Kelly embarks on a journey of self-discovery, confronting his past and present with his devoted manager Ron. Poignant and humor-filled, pitched at the intersection of regrets and glories.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BMWRlNDM1NjktZDkyYi00Zjk0LWE5MTQtNWEyNzMwODY1Njc5XkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMWRlNDM1NjktZDkyYi00Zjk0LWE5MTQtNWEyNzMwODY1Njc5XkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMWRlNDM1NjktZDkyYi00Zjk0LWE5MTQtNWEyNzMwODY1Njc5XkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMWRlNDM1NjktZDkyYi00Zjk0LWE5MTQtNWEyNzMwODY1Njc5XkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": null,
            "contentRating": "R",
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2025-12-05",
            "interests": [
              "Buddy Comedy",
              "Coming-of-Age",
              "Showbiz Drama",
              "Comedy",
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
              "Caorso, Italy"
            ],
            "productionCompanies": [
              {
                "id": "co0159772",
                "name": "Heyday Films"
              },
              {
                "id": "co1007964",
                "name": "NBGG Pictures"
              },
              {
                "id": "co0532247",
                "name": "Pascal Pictures"
              }
            ],
            "budget": null,
            "grossWorldwide": null,
            "genres": [
              "Comedy",
              "Drama"
            ],
            "isAdult": false,
            "runtimeMinutes": 132,
            "averageRating": 6.7,
            "numVotes": 1296,
            "metascore": 66
          },
          {
            "id": "tt1493274",
            "url": "https://www.imdb.com/title/tt1493274/",
            "primaryTitle": "Caught Stealing",
            "originalTitle": "Caught Stealing",
            "type": "movie",
            "description": "Burned-out ex-baseball player Hank Thompson unexpectedly finds himself embroiled in a dangerous struggle for survival amidst the criminal underbelly of 1990s New York City, forced to navigate a treacherous underworld he never imagined.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BYTk0YTIyYmMtMTJjOC00NmNiLTkxMTktYTU0ZDFhNjJlMTJiXkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BYTk0YTIyYmMtMTJjOC00NmNiLTkxMTktYTU0ZDFhNjJlMTJiXkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BYTk0YTIyYmMtMTJjOC00NmNiLTkxMTktYTU0ZDFhNjJlMTJiXkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BYTk0YTIyYmMtMTJjOC00NmNiLTkxMTktYTU0ZDFhNjJlMTJiXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
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
              "Gangster",
              "Psychological Drama",
              "Psychological Thriller",
              "Comedy",
              "Crime",
              "Thriller"
            ],
            "countriesOfOrigin": [
              "US"
            ],
            "externalLinks": [
              "https://caughtstealing.movie/"
            ],
            "spokenLanguages": [
              "en",
              "es",
              "yi"
            ],
            "filmingLocations": [
              "New York City, New York, USA"
            ],
            "productionCompanies": [
              {
                "id": "co0050868",
                "name": "Columbia Pictures"
              },
              {
                "id": "co0059055",
                "name": "Eagle Pictures"
              },
              {
                "id": "co0062935",
                "name": "Protozoa Pictures"
              }
            ],
            "budget": null,
            "grossWorldwide": 32703294,
            "genres": [
              "Comedy",
              "Crime",
              "Thriller"
            ],
            "isAdult": false,
            "runtimeMinutes": 107,
            "averageRating": 6.9,
            "numVotes": 47923,
            "metascore": 65
          },
          {
            "id": "tt17526714",
            "url": "https://www.imdb.com/title/tt17526714/",
            "primaryTitle": "The Substance",
            "originalTitle": "The Substance",
            "type": "movie",
            "description": "A fading celebrity takes a black-market drug: a cell-replicating substance that helps her create a younger, better version of herself.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BZDQ1NGE5MGMtYzdlZC00ODExLWJlMDMtNWU4NjA5OWYwMDEwXkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BZDQ1NGE5MGMtYzdlZC00ODExLWJlMDMtNWU4NjA5OWYwMDEwXkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BZDQ1NGE5MGMtYzdlZC00ODExLWJlMDMtNWU4NjA5OWYwMDEwXkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BZDQ1NGE5MGMtYzdlZC00ODExLWJlMDMtNWU4NjA5OWYwMDEwXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": "https://www.youtube.com/watch?v=LNlrGhBpYjc",
            "contentRating": "R",
            "startYear": 2024,
            "endYear": null,
            "releaseDate": "2024-09-20",
            "interests": [
              "Body Horror",
              "Dark Comedy",
              "Monster Horror",
              "Psychological Horror",
              "Showbiz Drama",
              "Drama",
              "Horror",
              "Sci-Fi"
            ],
            "countriesOfOrigin": [
              "GB",
              "FR"
            ],
            "externalLinks": [
              "https://amzn.to/3TBpGEO"
            ],
            "spokenLanguages": [
              "en"
            ],
            "filmingLocations": [
              "La Maison du Caviar - 21 Rue Quentin Bauchart, Paris 8, Paris, France"
            ],
            "productionCompanies": [
              {
                "id": "co0057311",
                "name": "Working Title Films"
              },
              {
                "id": "co1085223",
                "name": "Blacksmith"
              },
              {
                "id": "co1065490",
                "name": "A Good Story"
              }
            ],
            "budget": 17500000,
            "grossWorldwide": 77316812,
            "genres": [
              "Drama",
              "Horror",
              "Sci-Fi"
            ],
            "isAdult": false,
            "runtimeMinutes": 141,
            "averageRating": 7.2,
            "numVotes": 364822,
            "metascore": 78
          },
          {
            "id": "tt10545296",
            "url": "https://www.imdb.com/title/tt10545296/",
            "primaryTitle": "The Hunger Games: The Ballad of Songbirds & Snakes",
            "originalTitle": "The Hunger Games: The Ballad of Songbirds & Snakes",
            "type": "movie",
            "description": "Coriolanus Snow mentors and develops feelings for the female District 12 tribute during the 10th Hunger Games.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BZDk2YjNhYzEtYzg2ZC00OWEwLWJhYzgtMGUzMWVjNDFmYzI5XkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BZDk2YjNhYzEtYzg2ZC00OWEwLWJhYzgtMGUzMWVjNDFmYzI5XkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BZDk2YjNhYzEtYzg2ZC00OWEwLWJhYzgtMGUzMWVjNDFmYzI5XkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BZDk2YjNhYzEtYzg2ZC00OWEwLWJhYzgtMGUzMWVjNDFmYzI5XkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": "https://www.youtube.com/watch?v=RDE6Uz73A7g",
            "contentRating": "PG-13",
            "startYear": 2023,
            "endYear": null,
            "releaseDate": "2023-11-17",
            "interests": [
              "Dystopian Sci-Fi",
              "Teen Adventure",
              "Teen Drama",
              "Action",
              "Adventure",
              "Drama",
              "Sci-Fi",
              "Thriller",
              "War"
            ],
            "countriesOfOrigin": [
              "US",
              "CA"
            ],
            "externalLinks": [
              "https://hungergames.movie/"
            ],
            "spokenLanguages": [
              "en"
            ],
            "filmingLocations": [
              "Landschaftspark, Duisburg, North Rhine-Westphalia, Germany"
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
                "id": "co0792582",
                "name": "About Blank"
              }
            ],
            "budget": 100000000,
            "grossWorldwide": 361791134,
            "genres": [
              "Action",
              "Adventure",
              "Drama"
            ],
            "isAdult": false,
            "runtimeMinutes": 157,
            "averageRating": 6.6,
            "numVotes": 172743,
            "metascore": 54
          },
          {
            "id": "tt11214558",
            "url": "https://www.imdb.com/title/tt11214558/",
            "primaryTitle": "The Smashing Machine",
            "originalTitle": "The Smashing Machine",
            "type": "movie",
            "description": "The story of mixed-martial arts and UFC champion, Mark Kerr.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BOWYxZTM1ZGMtMjg5MC00NzcyLTk0ZTEtZWI0ZThkNDJiYjZmXkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BOWYxZTM1ZGMtMjg5MC00NzcyLTk0ZTEtZWI0ZThkNDJiYjZmXkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BOWYxZTM1ZGMtMjg5MC00NzcyLTk0ZTEtZWI0ZThkNDJiYjZmXkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BOWYxZTM1ZGMtMjg5MC00NzcyLTk0ZTEtZWI0ZThkNDJiYjZmXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": null,
            "contentRating": "R",
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2025-10-03",
            "interests": [
              "Boxing",
              "Docudrama",
              "Period Drama",
              "Psychological Drama",
              "Action",
              "Biography",
              "Drama",
              "History",
              "Sport"
            ],
            "countriesOfOrigin": [
              "US"
            ],
            "externalLinks": [],
            "spokenLanguages": [
              "en",
              "ja"
            ],
            "filmingLocations": [
              "Albuquerque, New Mexico, USA"
            ],
            "productionCompanies": [
              {
                "id": "co0390816",
                "name": "A24"
              },
              {
                "id": "co0941754",
                "name": "Magnetic Fields Entertainment"
              },
              {
                "id": "co1069724",
                "name": "Out for the Count"
              }
            ],
            "budget": 40000000,
            "grossWorldwide": 20688306,
            "genres": [
              "Action",
              "Biography",
              "Drama"
            ],
            "isAdult": false,
            "runtimeMinutes": 123,
            "averageRating": 6.5,
            "numVotes": 47578,
            "metascore": 65
          },
          {
            "id": "tt23149780",
            "url": "https://www.imdb.com/title/tt23149780/",
            "primaryTitle": "Eden",
            "originalTitle": "Eden",
            "type": "movie",
            "description": "Based on a factual account of a group of outsiders who settle on a remote island only to discover their greatest threat isn't the brutal climate or deadly wildlife, but each other.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BMmU3YjQ1YzAtMGU4OS00MWJkLTg2NGMtM2NmMmQ3NTM3NjNjXkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMmU3YjQ1YzAtMGU4OS00MWJkLTg2NGMtM2NmMmQ3NTM3NjNjXkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMmU3YjQ1YzAtMGU4OS00MWJkLTg2NGMtM2NmMmQ3NTM3NjNjXkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMmU3YjQ1YzAtMGU4OS00MWJkLTg2NGMtM2NmMmQ3NTM3NjNjXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": null,
            "contentRating": "R",
            "startYear": 2024,
            "endYear": null,
            "releaseDate": "2025-08-22",
            "interests": [
              "Psychological Thriller",
              "Adventure",
              "Drama",
              "History",
              "Thriller"
            ],
            "countriesOfOrigin": [
              "US"
            ],
            "externalLinks": [],
            "spokenLanguages": [
              "en",
              "es"
            ],
            "filmingLocations": [
              "Gold Coast, Queensland, Australia"
            ],
            "productionCompanies": [
              {
                "id": "co0690042",
                "name": "AGC Studios"
              },
              {
                "id": "co0003687",
                "name": "Imagine Entertainment"
              },
              {
                "id": "co1101074",
                "name": "Forte Corp Pictures"
              }
            ],
            "budget": null,
            "grossWorldwide": 2811540,
            "genres": [
              "Adventure",
              "Drama",
              "History"
            ],
            "isAdult": false,
            "runtimeMinutes": 129,
            "averageRating": 6.5,
            "numVotes": 27829,
            "metascore": 57
          },
          {
            "id": "tt0120737",
            "url": "https://www.imdb.com/title/tt0120737/",
            "primaryTitle": "The Lord of the Rings: The Fellowship of the Ring",
            "originalTitle": "The Lord of the Rings: The Fellowship of the Ring",
            "type": "movie",
            "description": "A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BNzIxMDQ2YTctNDY4MC00ZTRhLTk4ODQtMTVlOWY4NTdiYmMwXkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNzIxMDQ2YTctNDY4MC00ZTRhLTk4ODQtMTVlOWY4NTdiYmMwXkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNzIxMDQ2YTctNDY4MC00ZTRhLTk4ODQtMTVlOWY4NTdiYmMwXkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNzIxMDQ2YTctNDY4MC00ZTRhLTk4ODQtMTVlOWY4NTdiYmMwXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": "https://www.youtube.com/watch?v=_nZdmwHrcnw",
            "contentRating": "PG-13",
            "startYear": 2001,
            "endYear": null,
            "releaseDate": "2001-12-19",
            "interests": [
              "Action Epic",
              "Adventure Epic",
              "Dark Fantasy",
              "Epic",
              "Fantasy Epic",
              "Quest",
              "Sword & Sorcery",
              "Adventure",
              "Drama",
              "Fantasy"
            ],
            "countriesOfOrigin": [
              "NZ",
              "US",
              "GB"
            ],
            "externalLinks": [
              "https://www.facebook.com/lordoftheringstrilogy",
              "https://www.warnerbros.com/movies/lord-rings-fellowship-ring"
            ],
            "spokenLanguages": [
              "en"
            ],
            "filmingLocations": [
              "Wellington, New Zealand"
            ],
            "productionCompanies": [
              {
                "id": "co0046718",
                "name": "New Line Cinema"
              },
              {
                "id": "co0046203",
                "name": "WingNut Films"
              },
              {
                "id": "co0614377",
                "name": "Marzano Films"
              }
            ],
            "budget": 93000000,
            "grossWorldwide": 889476171,
            "genres": [
              "Adventure",
              "Drama",
              "Fantasy"
            ],
            "isAdult": false,
            "runtimeMinutes": 178,
            "averageRating": 8.9,
            "numVotes": 2160332,
            "metascore": 92
          },
          {
            "id": "tt0361748",
            "url": "https://www.imdb.com/title/tt0361748/",
            "primaryTitle": "Inglourious Basterds",
            "originalTitle": "Inglourious Basterds",
            "type": "movie",
            "description": "In Nazi-occupied France during World War II, a plan to assassinate Nazi leaders by a group of Jewish U.S. soldiers coincides with a theatre owner's vengeful plans for the same.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BODZhMWJlNjYtNDExNC00MTIzLTllM2ItOGQ2NGVjNDQ3MzkzXkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BODZhMWJlNjYtNDExNC00MTIzLTllM2ItOGQ2NGVjNDQ3MzkzXkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BODZhMWJlNjYtNDExNC00MTIzLTllM2ItOGQ2NGVjNDQ3MzkzXkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BODZhMWJlNjYtNDExNC00MTIzLTllM2ItOGQ2NGVjNDQ3MzkzXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": "https://www.youtube.com/watch?v=QFIUD3aq_do",
            "contentRating": "R",
            "startYear": 2009,
            "endYear": null,
            "releaseDate": "2009-08-21",
            "interests": [
              "Dark Comedy",
              "Period Drama",
              "Adventure",
              "Drama",
              "War"
            ],
            "countriesOfOrigin": [
              "US",
              "DE"
            ],
            "externalLinks": [
              "https://www.facebook.com/inglouriousbasterds",
              "http://basterds.ru/"
            ],
            "spokenLanguages": [
              "en",
              "de",
              "fr",
              "it"
            ],
            "filmingLocations": [
              "Brasserie La Renaissance, 112 rue Championnet, Paris 18, Paris, France"
            ],
            "productionCompanies": [
              {
                "id": "co0005073",
                "name": "Universal Pictures"
              },
              {
                "id": "co0150452",
                "name": "The Weinstein Company"
              },
              {
                "id": "co0019267",
                "name": "A Band Apart"
              }
            ],
            "budget": 70000000,
            "grossWorldwide": 321460744,
            "genres": [
              "Adventure",
              "Drama",
              "War"
            ],
            "isAdult": false,
            "runtimeMinutes": 153,
            "averageRating": 8.4,
            "numVotes": 1739290,
            "metascore": 69
          },
          {
            "id": "tt33292655",
            "url": "https://www.imdb.com/title/tt33292655/",
            "primaryTitle": "Oh, Hi!",
            "originalTitle": "Oh, Hi!",
            "type": "movie",
            "description": "Iris and Isaac's first romantic weekend getaway goes awry in a most unexpected way.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BMTlmNzJlODYtOTVkNC00NWQwLWE5MTUtMGIwMGViNmE1MmY0XkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMTlmNzJlODYtOTVkNC00NWQwLWE5MTUtMGIwMGViNmE1MmY0XkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMTlmNzJlODYtOTVkNC00NWQwLWE5MTUtMGIwMGViNmE1MmY0XkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMTlmNzJlODYtOTVkNC00NWQwLWE5MTUtMGIwMGViNmE1MmY0XkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": null,
            "contentRating": "R",
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2025-07-25",
            "interests": [
              "Dark Comedy",
              "Comedy"
            ],
            "countriesOfOrigin": [
              "US"
            ],
            "externalLinks": [
              "https://www.sonyclassics.com/film/ohhi/"
            ],
            "spokenLanguages": [
              "en"
            ],
            "filmingLocations": [
              "Hudson Valley, New York, USA"
            ],
            "productionCompanies": [
              {
                "id": "co1075958",
                "name": "AmorFortuna"
              },
              {
                "id": "co0429927",
                "name": "Cliffbrook Films"
              },
              {
                "id": "co0759176",
                "name": "QWGmire"
              }
            ],
            "budget": null,
            "grossWorldwide": 2087693,
            "genres": [
              "Comedy"
            ],
            "isAdult": false,
            "runtimeMinutes": 95,
            "averageRating": 6.2,
            "numVotes": 5658,
            "metascore": 62
          },
          {
            "id": "tt10548174",
            "url": "https://www.imdb.com/title/tt10548174/",
            "primaryTitle": "28 Years Later",
            "originalTitle": "28 Years Later",
            "type": "movie",
            "description": "A group of survivors of the rage virus live on a small island. When one of the group leaves the island on a mission into the mainland, he discovers secrets, wonders, and horrors that have mutated not only the infected but other survivors.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BNjgwYTI0YjctMWYzNS00MmI1LWI5YTctNmE1YjBkNDFlNWMxXkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNjgwYTI0YjctMWYzNS00MmI1LWI5YTctNmE1YjBkNDFlNWMxXkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNjgwYTI0YjctMWYzNS00MmI1LWI5YTctNmE1YjBkNDFlNWMxXkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNjgwYTI0YjctMWYzNS00MmI1LWI5YTctNmE1YjBkNDFlNWMxXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": "https://www.youtube.com/watch?v=mcvLKldPM08",
            "contentRating": "R",
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2025-06-20",
            "interests": [
              "Survival",
              "Zombie Horror",
              "Horror",
              "Sci-Fi",
              "Thriller"
            ],
            "countriesOfOrigin": [
              "GB",
              "US"
            ],
            "externalLinks": [
              "https://amzn.to/4ocbhwm",
              "https://28yearslater.movie/"
            ],
            "spokenLanguages": [
              "en",
              "sv"
            ],
            "filmingLocations": [
              "Holy Island of Lindisfarne, Berwick-upon-Tweed, Northumberland, England, UK"
            ],
            "productionCompanies": [
              {
                "id": "co0001799",
                "name": "Sony"
              },
              {
                "id": "co0050868",
                "name": "Columbia Pictures"
              },
              {
                "id": "co0420822",
                "name": "TSG Entertainment"
              }
            ],
            "budget": 60000000,
            "grossWorldwide": 151308832,
            "genres": [
              "Horror",
              "Sci-Fi",
              "Thriller"
            ],
            "isAdult": false,
            "runtimeMinutes": 115,
            "averageRating": 6.6,
            "numVotes": 163029,
            "metascore": 77
          },
          {
            "id": "tt32820897",
            "url": "https://www.imdb.com/title/tt32820897/",
            "primaryTitle": "Demon Slayer: Kimetsu no Yaiba- The Movie - Infinity Castle",
            "originalTitle": "Gekijô-ban Kimetsu no Yaiba Mugen Jô-hen",
            "type": "movie",
            "description": "The Demon Slayer Corps are drawn into the Infinity Castle, where Tanjiro and the Hashira face terrifying Upper Rank demons in a desperate fight as the final battle against Muzan Kibutsuji begins.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BOGQ3YWUzYjEtMTJiYy00ZjQ0LWI0YjktYjhiNGVhNGExYTM3XkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BOGQ3YWUzYjEtMTJiYy00ZjQ0LWI0YjktYjhiNGVhNGExYTM3XkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BOGQ3YWUzYjEtMTJiYy00ZjQ0LWI0YjktYjhiNGVhNGExYTM3XkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BOGQ3YWUzYjEtMTJiYy00ZjQ0LWI0YjktYjhiNGVhNGExYTM3XkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": "https://www.youtube.com/watch?v=seX6WMONCkU",
            "contentRating": "R",
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2025-09-12",
            "interests": [
              "Japanese",
              "Adult Animation",
              "Anime",
              "Dark Fantasy",
              "Hand-Drawn Animation",
              "Shōnen",
              "Supernatural Fantasy",
              "Sword & Sorcery",
              "Action",
              "Adventure"
            ],
            "countriesOfOrigin": [
              "JP",
              "US"
            ],
            "externalLinks": [
              "https://demonslayer-anime.com/infinitycastle/"
            ],
            "spokenLanguages": [
              "ja"
            ],
            "filmingLocations": [
              "Shinjuku, Tokyo, Japan"
            ],
            "productionCompanies": [
              {
                "id": "co0132285",
                "name": "Aniplex"
              },
              {
                "id": "co0251163",
                "name": "Crunchyroll"
              },
              {
                "id": "co0049595",
                "name": "Shueisha"
              }
            ],
            "budget": 20000000,
            "grossWorldwide": 662170616,
            "genres": [
              "Action",
              "Adventure",
              "Animation"
            ],
            "isAdult": false,
            "runtimeMinutes": 155,
            "averageRating": 8.5,
            "numVotes": 52466,
            "metascore": 67
          },
          {
            "id": "tt0097958",
            "url": "https://www.imdb.com/title/tt0097958/",
            "primaryTitle": "National Lampoon's Christmas Vacation",
            "originalTitle": "National Lampoon's Christmas Vacation",
            "type": "movie",
            "description": "The Griswold family's plans for a big family Christmas predictably turn into a big disaster.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BZDgxYzI2YWItNmUyNS00ZWE4LWEzZDctYTk1M2VkYjhkOWVmXkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BZDgxYzI2YWItNmUyNS00ZWE4LWEzZDctYTk1M2VkYjhkOWVmXkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BZDgxYzI2YWItNmUyNS00ZWE4LWEzZDctYTk1M2VkYjhkOWVmXkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BZDgxYzI2YWItNmUyNS00ZWE4LWEzZDctYTk1M2VkYjhkOWVmXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": "https://www.youtube.com/watch?v=tLVd4ipC5Lc",
            "contentRating": "PG-13",
            "startYear": 1989,
            "endYear": null,
            "releaseDate": "1989-12-01",
            "interests": [
              "Holiday Comedy",
              "Slapstick",
              "Comedy",
              "Holiday"
            ],
            "countriesOfOrigin": [
              "US"
            ],
            "externalLinks": [],
            "spokenLanguages": [
              "en"
            ],
            "filmingLocations": [
              "Marshall Field & Co. Department Store - 111 N. State Street, The Loop, Downtown, Chicago, Illinois, USA"
            ],
            "productionCompanies": [
              {
                "id": "co0073707",
                "name": "Hughes Entertainment"
              },
              {
                "id": "co0102282",
                "name": "National Lampoon"
              }
            ],
            "budget": 28000000,
            "grossWorldwide": 74542088,
            "genres": [
              "Comedy"
            ],
            "isAdult": false,
            "runtimeMinutes": 97,
            "averageRating": 7.5,
            "numVotes": 238023,
            "metascore": 49
          },
          {
            "id": "tt0170016",
            "url": "https://www.imdb.com/title/tt0170016/",
            "primaryTitle": "How the Grinch Stole Christmas",
            "originalTitle": "How the Grinch Stole Christmas",
            "type": "movie",
            "description": "On the outskirts of Whoville lives a green, revenge-seeking Grinch who plans to ruin Christmas for all of the citizens of the town.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BNDAwMjFhYTEtNzYyMS00YmY2LTg3MGEtZTRkNWNiMDI4MDRkXkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNDAwMjFhYTEtNzYyMS00YmY2LTg3MGEtZTRkNWNiMDI4MDRkXkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNDAwMjFhYTEtNzYyMS00YmY2LTg3MGEtZTRkNWNiMDI4MDRkXkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BNDAwMjFhYTEtNzYyMS00YmY2LTg3MGEtZTRkNWNiMDI4MDRkXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": "https://www.youtube.com/watch?v=myTaigPrbsg",
            "contentRating": "PG",
            "startYear": 2000,
            "endYear": null,
            "releaseDate": "2000-11-17",
            "interests": [
              "Holiday Comedy",
              "Holiday Family",
              "Quirky Comedy",
              "Slapstick",
              "Comedy",
              "Family",
              "Fantasy",
              "Holiday"
            ],
            "countriesOfOrigin": [
              "US",
              "DE"
            ],
            "externalLinks": [
              "https://www.filmymen.us/2022/11/how-grinch-stole-christmas-movie-how.html"
            ],
            "spokenLanguages": [
              "en"
            ],
            "filmingLocations": [
              "Solitude Mountain Resort, Utah, USA"
            ],
            "productionCompanies": [
              {
                "id": "co0005073",
                "name": "Universal Pictures"
              },
              {
                "id": "co0003687",
                "name": "Imagine Entertainment"
              },
              {
                "id": "co0049831",
                "name": "LUNI Productions GmbH and Company KG"
              }
            ],
            "budget": 123000000,
            "grossWorldwide": 347162175,
            "genres": [
              "Comedy",
              "Family",
              "Fantasy"
            ],
            "isAdult": false,
            "runtimeMinutes": 104,
            "averageRating": 6.4,
            "numVotes": 318129,
            "metascore": 46
          },
          {
            "id": "tt32246771",
            "url": "https://www.imdb.com/title/tt32246771/",
            "primaryTitle": "Bring Her Back",
            "originalTitle": "Bring Her Back",
            "type": "movie",
            "description": "A brother and sister uncover a terrifying ritual at the secluded home of their new foster mother.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BZTlhYTk1ZTEtOWY3NC00NWQ5LTlkOTctNjQ3ZDYyZGE5ZWNlXkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BZTlhYTk1ZTEtOWY3NC00NWQ5LTlkOTctNjQ3ZDYyZGE5ZWNlXkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BZTlhYTk1ZTEtOWY3NC00NWQ5LTlkOTctNjQ3ZDYyZGE5ZWNlXkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BZTlhYTk1ZTEtOWY3NC00NWQ5LTlkOTctNjQ3ZDYyZGE5ZWNlXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": "https://www.youtube.com/watch?v=kBskrYZfhw8",
            "contentRating": "R",
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2025-05-30",
            "interests": [
              "Body Horror",
              "Psychological Horror",
              "Supernatural Horror",
              "Horror",
              "Mystery"
            ],
            "countriesOfOrigin": [
              "AU",
              "US"
            ],
            "externalLinks": [
              "https://amzn.to/4l8Q8S7"
            ],
            "spokenLanguages": [
              "en",
              "ru"
            ],
            "filmingLocations": [
              "Adelaide, South Australia, Australia"
            ],
            "productionCompanies": [
              {
                "id": "co0375200",
                "name": "Causeway Films"
              },
              {
                "id": "co0759130",
                "name": "Salmira Productions"
              },
              {
                "id": "co0036887",
                "name": "The South Australian Film Corporation"
              }
            ],
            "budget": 15000000,
            "grossWorldwide": 39410222,
            "genres": [
              "Horror",
              "Mystery"
            ],
            "isAdult": false,
            "runtimeMinutes": 104,
            "averageRating": 7.1,
            "numVotes": 96831,
            "metascore": 75
          },
          {
            "id": "tt32149847",
            "url": "https://www.imdb.com/title/tt32149847/",
            "primaryTitle": "Drop",
            "originalTitle": "Drop",
            "type": "movie",
            "description": "A widowed mother's first date in years takes a terrifying turn when she's bombarded with anonymous threatening messages on her phone during their upscale dinner, leaving her questioning if her charming date is behind the harassment.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BOWUyOTNlMjItNWUyZC00ZGJiLTg3MDMtODJmMGQyMGY3NzU3XkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BOWUyOTNlMjItNWUyZC00ZGJiLTg3MDMtODJmMGQyMGY3NzU3XkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BOWUyOTNlMjItNWUyZC00ZGJiLTg3MDMtODJmMGQyMGY3NzU3XkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BOWUyOTNlMjItNWUyZC00ZGJiLTg3MDMtODJmMGQyMGY3NzU3XkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": "https://www.youtube.com/watch?v=bs_nFwh5eJw",
            "contentRating": "PG-13",
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2025-04-11",
            "interests": [
              "Whodunnit",
              "Drama",
              "Mystery",
              "Thriller"
            ],
            "countriesOfOrigin": [
              "US",
              "IE"
            ],
            "externalLinks": [
              "https://www.facebook.com/DropTheMovie/",
              "https://www.instagram.com/dropthemovie/"
            ],
            "spokenLanguages": [
              "en"
            ],
            "filmingLocations": [
              "Ardmore Studios, Bray, County Wicklow, Ireland"
            ],
            "productionCompanies": [
              {
                "id": "co0005073",
                "name": "Universal Pictures"
              },
              {
                "id": "co0098315",
                "name": "Blumhouse Productions"
              },
              {
                "id": "co0071240",
                "name": "Platinum Dunes"
              }
            ],
            "budget": 11000000,
            "grossWorldwide": 28744167,
            "genres": [
              "Drama",
              "Mystery",
              "Thriller"
            ],
            "isAdult": false,
            "runtimeMinutes": 95,
            "averageRating": 6.1,
            "numVotes": 47305,
            "metascore": 65
          },
          {
            "id": "tt1375666",
            "url": "https://www.imdb.com/title/tt1375666/",
            "primaryTitle": "Inception",
            "originalTitle": "Inception",
            "type": "movie",
            "description": "A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O., but his tragic past may doom the project and his team to disaster.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": "https://www.youtube.com/watch?v=Jvurpf91omw",
            "contentRating": "PG-13",
            "startYear": 2010,
            "endYear": null,
            "releaseDate": "2010-07-16",
            "interests": [
              "Action Epic",
              "Adventure Epic",
              "Epic",
              "Psychological Thriller",
              "Sci-Fi Epic",
              "Action",
              "Adventure",
              "Sci-Fi",
              "Thriller"
            ],
            "countriesOfOrigin": [
              "US",
              "GB"
            ],
            "externalLinks": [
              "http://wwws.warnerbros.co.jp/inception/",
              "http://inceptionmovie.warnerbros.com/"
            ],
            "spokenLanguages": [
              "en",
              "ja",
              "fr"
            ],
            "filmingLocations": [
              "Fortress Mountain, Kananaskis Country, Alberta, Canada"
            ],
            "productionCompanies": [
              {
                "id": "co0002663",
                "name": "Warner Bros."
              },
              {
                "id": "co1041831",
                "name": "Legendary Pictures"
              },
              {
                "id": "co0147954",
                "name": "Syncopy"
              }
            ],
            "budget": 160000000,
            "grossWorldwide": 839786473,
            "genres": [
              "Action",
              "Adventure",
              "Sci-Fi"
            ],
            "isAdult": false,
            "runtimeMinutes": 148,
            "averageRating": 8.8,
            "numVotes": 2757018,
            "metascore": 74
          },
          {
            "id": "tt9603208",
            "url": "https://www.imdb.com/title/tt9603208/",
            "primaryTitle": "Mission: Impossible - The Final Reckoning",
            "originalTitle": "Mission: Impossible - The Final Reckoning",
            "type": "movie",
            "description": "Hunt and the IMF pursue a dangerous AI called the Entity that's infiltrated global intelligence. With governments and a figure from his past in pursuit, Hunt races to stop it from forever changing the world.",
            "primaryImage": "https://m.media-amazon.com/images/M/MV5BZGQ5NGEyYTItMjNiMi00Y2EwLTkzOWItMjc5YjJiMjMyNTI0XkEyXkFqcGc@.jpg",
            "thumbnails": [
              {
                "url": "https://m.media-amazon.com/images/M/MV5BZGQ5NGEyYTItMjNiMi00Y2EwLTkzOWItMjc5YjJiMjMyNTI0XkEyXkFqcGc@._V1_QL75_UX100_CR0,0,100,148_.jpg",
                "width": 100,
                "height": 148
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BZGQ5NGEyYTItMjNiMi00Y2EwLTkzOWItMjc5YjJiMjMyNTI0XkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                "width": 280,
                "height": 414
              },
              {
                "url": "https://m.media-amazon.com/images/M/MV5BZGQ5NGEyYTItMjNiMi00Y2EwLTkzOWItMjc5YjJiMjMyNTI0XkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg",
                "width": 380,
                "height": 562
              }
            ],
            "trailer": "https://www.youtube.com/watch?v=fsQgc9pCyDU",
            "contentRating": "PG-13",
            "startYear": 2025,
            "endYear": null,
            "releaseDate": "2025-05-23",
            "interests": [
              "Action Epic",
              "Adventure Epic",
              "Spy",
              "Action",
              "Adventure",
              "Thriller"
            ],
            "countriesOfOrigin": [
              "US",
              "GB"
            ],
            "externalLinks": [
              "http://www.missionimpossible.com/",
              "https://x.com/MissionFilm"
            ],
            "spokenLanguages": [
              "en",
              "fr",
              "ru",
              "iu"
            ],
            "filmingLocations": [
              "Aurland, Vestland, Norway"
            ],
            "productionCompanies": [
              {
                "id": "co0023400",
                "name": "Paramount Pictures"
              },
              {
                "id": "co0152219",
                "name": "Skydance Media"
              },
              {
                "id": "co0361287",
                "name": "TC Productions"
              }
            ],
            "budget": 400000000,
            "grossWorldwide": 598767057,
            "genres": [
              "Action",
              "Adventure",
              "Thriller"
            ],
            "isAdult": false,
            "runtimeMinutes": 169,
            "averageRating": 7.2,
            "numVotes": 186322,
            "metascore": 67
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
