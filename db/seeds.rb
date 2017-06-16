# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Fieldset.create( json: %q({ "title": "Fraicheur",
                         "questions":
                         [
                            { "type": "radio",
                              "name": "Bien ou quoi?",
                              "question_id": "1",
                              "answers":
                              [
                                {
                                  "answer_id": "0",
                                  "next_id": "end"
                                },
                                {
                                  "answer_id": "1",
                                  "next_id": "end"
                                }
                              ]
                            }
                        ],
                        "answers":
                        [
                          {
                            "answer_id": "0",
                            "name": "Bien"
                          },
                          {
                            "answer_id": "1",
                            "name": "Pas bien..."
                          }
                        ]
                        }))

Fieldset.create( json: %q({ "title": "Chaleur",
                         "questions":
                         [
                            { "type": "checkbox",
                              "name": "Bien ou quoi?",
                              "question_id": "1",
                              "answers":
                              [
                                {
                                  "answer_id": "0",
                                  "next_id": "end"
                                },
                                {
                                  "answer_id": "1",
                                  "next_id": "end"
                                }
                              ]
                            }
                        ],
                        "answers":
                        [
                          {
                            "answer_id": "0",
                            "name": "Bien"
                          },
                          {
                            "answer_id": "1",
                            "name": "Pas bien..."
                          }
                        ]
                        }))

Fieldset.create(json: %q(
{
    "title": "Enquête de satisfaction visiteur",
    "questions": [
        {
            "type": "radio",
            "name": "Par quel biais êtes-vous venu sur le salon ?",
            "question_id": "0",
            "answers": [
                {
                    "answer_id": "0",
                    "next_id": "1"
                },
                {
                    "answer_id": "1",
                    "next_id": "1"
                },
                {
                    "answer_id": "2",
                    "next_id": "1"
                },
                {
                    "answer_id": "3",
                    "next_id": "1"
                },
                {
                    "answer_id": "4",
                    "next_id": "1"
                }
            ]
        },
        {
            "type": "radio",
            "name": "Avez-vous reçu beaucoup d'e-mails concernant le salon ?",
            "question_id": "1",
            "answers": [
                {
                    "answer_id": "5",
                    "next_id": "2"
                },
                {
                    "answer_id": "6",
                    "next_id": "2"
                }
            ]
        },
        {
            "type": "radio",
            "name": "Le salon a-t-il répondu à vos attentes ?",
            "question_id": "2",
            "answers": [
                {
                    "answer_id": "7",
                    "next_id": "3"
                },
                {
                    "answer_id": "8",
                    "next_id": "3"
                }
            ]
        },
        {
            "type": "open",
            "name": "Que souhaiteriez vous trouver sur la 9eme édition ?",
            "question_id": "3",
            "next_id": "4",
            "answers": [
                {
                  "answer_id": "9"
                }
            ]
        },
        {
            "type": "radio",
            "name": "Avez-vous participé à une conférence ?",
            "question_id": "4",
            "answers": [
                {
                    "answer_id": "10",
                    "next_id": "5"
                },
                {
                    "answer_id": "11",
                    "next_id": "5"
                }
            ]
        },
        {
            "type": "open",
            "name": "Quel thème auriez vous souhaité voir abordé sur le salon ?",
            "question_id": "5",
            "next_id": "6",
            "answers": [
                {
                  "answer_id": "12"
                }
            ]

        },
        {
            "type": "radio",
            "name": "Souhaiteriez-vous un salon plus généraliste ?",
            "question_id": "6",
            "answers": [
                {
                    "answer_id": "13",
                    "next_id": "7"
                },
                {
                    "answer_id": "14",
                    "next_id": "7"
                }
            ]
        },
        {
            "type": "open",
            "name": "Avez-vous des remarques sur l'organisation du salon ?",
            "question_id": "7",
            "next_id": "8",
            "answers": [
                {
                  "answer_id": "15"
                }
            ]
        },
        {
            "type": "radio",
            "name": "De quel département êtes-vous ?",
            "question_id": "8",
            "answers": [
                {
                    "answer_id": "16",
                    "next_id": "end"
                },
                {
                    "answer_id": "17",
                    "next_id": "end"
                },
                {
                    "answer_id": "18",
                    "next_id": "end"
                }
            ]
        }
    ],
    "answers": [
        {
            "answer_id": "0",
            "name": "Invitation papier reçue par un exposant"
        },
        {
            "answer_id": "1",
            "name": "Invitation papier reçue dans un magazine"
        },
        {
            "answer_id": "2",
            "name": "Invitation papier autre"
        },
        {
            "answer_id": "3",
            "name": "Invitation e-mail"
        },
        {
            "answer_id": "4",
            "name": "autre"
        },
        {
            "answer_id": "5",
            "name": "oui"
        },
        {
            "answer_id": "6",
            "name": "non"
        },
        {
            "answer_id": "7",
            "name": "oui"
        },
        {
            "answer_id": "8",
            "name": "non"
        },
        {
            "answer_id": "9",
            "name": ""
        },
        {
            "answer_id": "10",
            "name": "oui"
        },
        {
            "answer_id": "11",
            "name": "non"
        },
        {
            "answer_id": "12",
            "name": ""
        },
        {
            "answer_id": "13",
            "name": "oui"
        },
        {
            "answer_id": "14",
            "name": "non"
        },
        {
            "answer_id": "15",
            "name": ""
        },
        {
            "answer_id": "16",
            "name": "67"
        },
        {
            "answer_id": "17",
            "name": "68"
        },
        {
            "answer_id": "18",
            "name": "autre"
        }
    ]
}))


Fieldset.create(json: %q(
{
    "title": "Enquête conjoncturelle",
    "questions": [
        {
            "type": "radio",
            "name": "Êtes-vous :",
            "question_id": "0",
            "answers": [
                {
                    "answer_id": "0",
                    "next_id": "cd_1"
                },
                {
                    "answer_id": "1",
                    "next_id": "s_1"
                },
                {
                    "answer_id": "2",
                    "next_id": "c_1"
                },
                {
                    "answer_id": "3",
                    "next_id": "e_1"
                }
            ]
        },
        {
            "type": "radio",
            "name": "Votre chiffre d'affaire en 2013 ?",
            "question_id": "cd_1",
            "answers": [
                {
                    "answer_id": "4",
                    "next_id": "cd_2"
                },
                {
                    "answer_id": "5",
                    "next_id": "cd_2"
                },
                {
                    "answer_id": "6",
                    "next_id": "cd_2"
                },
                {
                    "answer_id": "7",
                    "next_id": "cd_2"
                },
                {
                    "answer_id": "8",
                    "next_id": "cd_2"
                }
            ]
        },
        {
            "type": "radio",
            "name": "L'année dernière vous avez ?",
            "question_id": "cd_2",
            "answers": [
                {
                    "answer_id": "9",
                    "next_id": "cd_3"
                },
                {
                    "answer_id": "10",
                    "next_id": "cd_3"
                },
                {
                    "answer_id": "11",
                    "next_id": "cd_3"
                }
            ]
        },
        {
            "type": "radio",
            "name": "Cette année vous avez ?",
            "question_id": "cd_3",
            "answers": [
                {
                    "answer_id": "12",
                    "next_id": "cd_4"
                },
                {
                    "answer_id": "13",
                    "next_id": "cd_4"
                },
                {
                    "answer_id": "14",
                    "next_id": "cd_4"
                }
            ]
        },
        {
            "type": "radio",
            "name": "L'année prochaine vous allez ?",
            "question_id": "cd_4",
            "answers": [
                {
                    "answer_id": "15",
                    "next_id": "end"
                },
                {
                    "answer_id": "16",
                    "next_id": "end"
                },
                {
                    "answer_id": "17",
                    "next_id": "end"
                }
            ]
        },
        {
            "type": "radio",
            "name": "Avez-vous suivi une formation cette année ?",
            "question_id": "s_1",
            "answers": [
                {
                    "answer_id": "18",
                    "next_id": "s_2"
                },
                {
                    "answer_id": "19",
                    "next_id": "s_2"
                },
                {
                    "answer_id": "20",
                    "next_id": "s_2"
                }
            ]
        },
        {
            "type": "radio",
            "name": "Quels sont vos relations avec votre hiérarchie ?",
            "question_id": "s_2",
            "answers": [
                {
                    "answer_id": "21",
                    "next_id": "s_3"
                },
                {
                    "answer_id": "22",
                    "next_id": "s_3"
                },
                {
                    "answer_id": "23",
                    "next_id": "s_3"
                },
                {
                    "answer_id": "24",
                    "next_id": "s_3"
                },
                {
                    "answer_id": "25",
                    "next_id": "s_3"
                }
            ]
        },
        {
            "type": "radio",
            "name": "En ce moment, quelle est votre principale préoccupation professionnelle ?",
            "question_id": "s_3",
            "answers": [
                {
                    "answer_id": "26",
                    "next_id": "s_4"
                },
                {
                    "answer_id": "27",
                    "next_id": "s_4"
                },
                {
                    "answer_id": "28",
                    "next_id": "s_4"
                }
            ]
        },
        {
            "type": "radio",
            "name": "Sur les 3 dernières années, votre pouvoir d'achat a :",
            "question_id": "s_4",
            "answers": [
                {
                    "answer_id": "29",
                    "next_id": "end"
                },
                {
                    "answer_id": "30",
                    "next_id": "end"
                },
                {
                    "answer_id": "31",
                    "next_id": "end"
                },
                {
                    "answer_id": "32",
                    "next_id": "end"
                },
                {
                    "answer_id": "33",
                    "next_id": "end"
                }
            ]
        },
        {
            "type": "radio",
            "name": "Pensez vous retrouver un emploi prochainement ?",
            "question_id": "c_1",
            "answers": [
                {
                    "answer_id": "34",
                    "next_id": "c_2"
                },
                {
                    "answer_id": "35",
                    "next_id": "c_2"
                },
                {
                    "answer_id": "36",
                    "next_id": "c_2"
                },
                {
                    "answer_id": "37",
                    "next_id": "c_2"
                }
            ]
        },
        {
            "type": "radio",
            "name": "D'après vous, quelle est la principale raison pour laquelle vous ne retrouvez pas un emploi ?",
            "question_id": "c_2",
            "answers": [
                {
                    "answer_id": "38",
                    "next_id": "c_3"
                },
                {
                    "answer_id": "39",
                    "next_id": "c_3"
                },
                {
                    "answer_id": "40",
                    "next_id": "c_3"
                }
            ]
        },
        {
            "type": "radio",
            "name": "Cette année, vous pensez que le taux de chômage va... ?",
            "question_id": "c_3",
            "answers": [
                {
                    "answer_id": "41",
                    "next_id": "end"
                },
                {
                    "answer_id": "42",
                    "next_id": "end"
                },
                {
                    "answer_id": "43",
                    "next_id": "end"
                },
                {
                    "answer_id": "44",
                    "next_id": "end"
                },
                {
                    "answer_id": "45",
                    "next_id": "end"
                }
            ]
        },
        {
            "type": "radio",
            "name": "Quel niveau d'études, préparez-vous ?",
            "question_id": "e_1",
            "answers": [
                {
                    "answer_id": "46",
                    "next_id": "e_2"
                },
                {
                    "answer_id": "47",
                    "next_id": "e_2"
                },
                {
                    "answer_id": "48",
                    "next_id": "e_2"
                },
                {
                    "answer_id": "49",
                    "next_id": "e_2"
                },
                {
                    "answer_id": "50",
                    "next_id": "e_2"
                }
            ]
        },
        {
            "type": "radio",
            "name": "Vous pensez que suite à votre cursus, vous trouvez un emploi... ?",
            "question_id": "e_2",
            "answers": [
                {
                    "answer_id": "51",
                    "next_id": "e_3"
                },
                {
                    "answer_id": "52",
                    "next_id": "e_3"
                },
                {
                    "answer_id": "53",
                    "next_id": "e_3"
                },
                {
                    "answer_id": "54",
                    "next_id": "e_3"
                },
                {
                    "answer_id": "55",
                    "next_id": "e_3"
                }
            ]
        },
        {
            "type": "radio",
            "name": "Souhaitez-vous partir étudier à l'étranger ?",
            "question_id": "e_3",
            "answers": [
                {
                    "answer_id": "56",
                    "next_id": "e_4"
                },
                {
                    "answer_id": "57",
                    "next_id": "e_4"
                },
                {
                    "answer_id": "58",
                    "next_id": "e_4"
                }
            ]
        },
        {
            "type": "radio",
            "name": "Souhaitez-vous partir travailler à l'étranger ?",
            "question_id": "e_4",
            "answers": [
                {
                    "answer_id": "59",
                    "next_id": "e_5"
                },
                {
                    "answer_id": "60",
                    "next_id": "e_5"
                },
                {
                    "answer_id": "61",
                    "next_id": "e_5"
                }
            ]
        },
        {
            "type": "radio",
            "name": "L'année prochaine, vous comptez :",
            "question_id": "e_5",
            "answers": [
                {
                    "answer_id": "62",
                    "next_id": "end"
                },
                {
                    "answer_id": "63",
                    "next_id": "end"
                },
                {
                    "answer_id": "64",
                    "next_id": "end"
                }
            ]
        }
    ],
    "answers": [
        {
            "answer_id": "0",
            "name": "Chef d'entreprise"
        },
        {
            "answer_id": "1",
            "name": "Salarié"
        },
        {
            "answer_id": "2",
            "name": "Chômeur"
        },
        {
            "answer_id": "3",
            "name": "Etudiant"
        },
        {
            "answer_id": "4",
            "name": "A fortement augmenté"
        },
        {
            "answer_id": "5",
            "name": "A faiblement augmenté"
        },
        {
            "answer_id": "6",
            "name": "Est resté stable"
        },
        {
            "answer_id": "7",
            "name": "A faiblement diminué"
        },
        {
            "answer_id": "8",
            "name": "A fortement diminué"
        },
        {
            "answer_id": "9",
            "name": "Embauché"
        },
        {
            "answer_id": "10",
            "name": "Licencié"
        },
        {
            "answer_id": "11",
            "name": "Rien"
        },
        {
            "answer_id": "12",
            "name": "Embauché"
        },
        {
            "answer_id": "13",
            "name": "Licencié"
        },
        {
            "answer_id": "14",
            "name": "Rien"
        },
        {
            "answer_id": "15",
            "name": "Embaucher"
        },
        {
            "answer_id": "16",
            "name": "Licencier"
        },
        {
            "answer_id": "17",
            "name": "Rien faire"
        },
        {
            "answer_id": "18",
            "name": "Oui"
        },
        {
            "answer_id": "19",
            "name": "Non mais c'est prévu"
        },
        {
            "answer_id": "20",
            "name": "Non"
        },
        {
            "answer_id": "21",
            "name": "Très bonne"
        },
        {
            "answer_id": "22",
            "name": "Bonne"
        },
        {
            "answer_id": "23",
            "name": "Passable"
        },
        {
            "answer_id": "24",
            "name": "Mauvaise"
        },
        {
            "answer_id": "25",
            "name": "Très mauvaise"
        },
        {
            "answer_id": "26",
            "name": "Votre salaire"
        },
        {
            "answer_id": "27",
            "name": "Garder votre emploi"
        },
        {
            "answer_id": "28",
            "name": "Equilibre vie professionnelle/vie privée"
        },
        {
            "answer_id": "29",
            "name": "Fortement augmenté"
        },
        {
            "answer_id": "30",
            "name": "Légèrement augmenté"
        },
        {
            "answer_id": "31",
            "name": "Sont restés stables"
        },
        {
            "answer_id": "32",
            "name": "Légèrement baissé"
        },
        {
            "answer_id": "33",
            "name": "Fortement baissé"
        },
        {
            "answer_id": "34",
            "name": "Oui"
        },
        {
            "answer_id": "35",
            "name": "Peut être"
        },
        {
            "answer_id": "36",
            "name": "Je ne pense pas"
        },
        {
            "answer_id": "37",
            "name": "Non, certainement pas"
        },
        {
            "answer_id": "38",
            "name": "Il n'y a pas de travail en ce moment"
        },
        {
            "answer_id": "39",
            "name": "Il n'y pas de travail dans votre secteur de compétences"
        },
        {
            "answer_id": "40",
            "name": "Vous ne savez pas"
        },
        {
            "answer_id": "41",
            "name": "Fortement augmenter"
        },
        {
            "answer_id": "42",
            "name": "Un peu augmenter"
        },
        {
            "answer_id": "43",
            "name": "Rester stable"
        },
        {
            "answer_id": "44",
            "name": "Un peu diminuer"
        },
        {
            "answer_id": "45",
            "name": "Fortement diminuer"
        },
        {
            "answer_id": "46",
            "name": "Inférieur au bac"
        },
        {
            "answer_id": "47",
            "name": "Bac"
        },
        {
            "answer_id": "48",
            "name": "Bac+2/3"
        },
        {
            "answer_id": "49",
            "name": "Bac+4/5"
        },
        {
            "answer_id": "50",
            "name": "Supérieur à Bac+5"
        },
        {
            "answer_id": "51",
            "name": "Très facilement"
        },
        {
            "answer_id": "52",
            "name": "Facilement"
        },
        {
            "answer_id": "53",
            "name": "Je ne sais pas"
        },
        {
            "answer_id": "54",
            "name": "Difficilement"
        },
        {
            "answer_id": "55",
            "name": "Avec beaucoup de difficultés"
        },
        {
            "answer_id": "56",
            "name": "Oui, dès que possible"
        },
        {
            "answer_id": "57",
            "name": "Peut être"
        },
        {
            "answer_id": "58",
            "name": "Non"
        },
        {
            "answer_id": "59",
            "name": "Oui, dès que possible"
        },
        {
            "answer_id": "60",
            "name": "Peut être"
        },
        {
            "answer_id": "61",
            "name": "Non"
        },
        {
            "answer_id": "62",
            "name": "Poursuivre vos études"
        },
        {
            "answer_id": "63",
            "name": "Chercher un emploi"
        },
        {
            "answer_id": "64",
            "name": "Prendre une année sabbatique"
        }
    ]
}))
