bprd_agents <- data.frame(
  Agent         = c("Hellboy",
                    "Abe Sapian",
                    "Elizabeth Sherman",
                    "Roger",
                    "Johann Kraus"
                    ),
  Species       = c("Cambion",
                   "Ichthyo sapien",
                   "Human",
                   "Homunculus",
                   "Ectoplasmic spirit"
                   ),
  Birth.Year   = as.Date(
                   c("1617",
                     "1865",
                     "1962",
                     "1996",
                     "1946"
                     ), "%Y"
                   ),
  Ability      = c("Right Hand of Doom",
                   "Underwater Breathing",
                   "Pyrokinesis",
                   "Energy Conduit",
                   "Psychokinesis"
                   ),
  Height       = c(210.82, # in cm
                   190.50,
                   170.40,
                   200.35,
                   161.5
                   ),
  Weight       = c(396, # in lbs
                   144.93,
                   132,
                   243,
                   120
                   ),
  Cases.Solved = c(166,
                   88,
                   73,
                   35,
                   31),
  First.Appearance = c("")
)
