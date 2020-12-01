hellboy <- data.frame(
  name = c("Red", "Yellow", "Brown", "Darkbrown"),
  value = c("#DA3A2C", "#FFD576", "#B19F61", "#6F5F45"),
  stringsAsFactors = FALSE
)

abe <- data.frame(
  name = c("Darkblue", "Darkgreen", "Lightgreen", "lightblue"),
  value = c("#006E7D", "#3A948A", "#C1DFA3", "#A0DED3"),
  stringsAsFactors = FALSE
)

liz <- data.frame(
  name = c("Red", "Orange", "Yellow", "Salmon"),
  value = c("#C63140", "#E18341", "#F9B631", "#DA9D9D"),
  stringsAsFactors = FALSE
)

roger <- data.frame(
  name = c("Darkpurple", "Lightpurple", "Orange", "Yellow"),
  value = c("#616882", "#A2A0B8", "#F0851B", "#EAB66D"),
  stringsAsFactors = FALSE
)

krauss <- data.frame(
  name = c(""),
  value = c(""),
  stringsAsFactors = FALSE
)

lobster_johnson <- data.frame(
  name = c("Darkblue", "Lightblue", "Darkred", "Orange"),
  value = c("#1B546F", "#4B7196", "#892225", "#FF920F"),
  stringsAsFactors = FALSE
)

BPRDpals <- list(
  bprd_series = unique(c(hellboy$value, abe$value, liz$value, roger$value)),
  hellboy = hellboy$value,
  abe = abe$value,
  liz = liz$value,
  roger = roger$value,
  lobster_johnson = lobster_johnson$value
)
