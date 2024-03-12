#' Complete list of available palettes.
#'
#' Use names(emwColsPalettes) to return all palette names.
#'
#' @export
emwColsPalettes <- list(
  # sequential palettes

  Corals = list(
  c("#ff6361",
    "#ff7371",
    "#ff8281",
    "#ff9290",
    "#ffa1a0",
    "#ffb1b0",
    "#ffd0d0",
    "#ffe0df",
    "#ffefef"),
  c(1, 2, 3, 4, 5, 6, 7, 8, 9),
  "seq",
  TRUE
  ),
  Reds = list(
    c("#9c191b",
      "#ac1c1e",
      "#bd1f21",
      "#d02224",
      "#dd2c2f",
      "#e35053",
      "#e66063",
      "#ec8385",
      "#f1a7a9",
      "#f6cacc"),
    c(1, 2, 3, 4, 5, 6, 7, 8, 9),
    "seq",
    TRUE
  ),

  DrkReds = list(
    c("#e01e37",
      "#da1e37",
      "#c71f37",
      "#bd1f36",
      "#b21e35",
      "#a71e34",
      "#a11d33",
      "#85182a",
      "#6e1423",
      "#641220"),
    c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
    "seq",
    TRUE
  ),
  Pinks = list(
    c("#ff0072","#ff177f","#ff2e8c","#ff4598","#ff5ca5","#ff74b2","#ff8bbf","#ffa2cb","#ffb9d8","#ffd0e5"),
  c(1, 2, 3, 4, 5, 6, 7, 8, 9),
  "seq",
  TRUE
  ),
  Oranges = list(
    c("#ff7b00", "#ff8800", "#ff9500", "#ffa200", "#ffaa00", "#ffb700", "#ffd000", "#ffdd00", "#ffea00"),
    c(1, 2, 3, 4, 5, 6, 7, 8, 9),
    "seq",
    TRUE
  ),
  Yellows = list(
    c("#ffda0a",
      "#ffe433",
      "#ffe747",
      "#ffec5c",
      "#ffee70",
      "#fff185",
      "#fff599",
      "#fff8a5",
      "#ffffb7"
    ),
    c(1, 2, 3, 4, 5, 6, 7, 8, 9),
    "seq",
    TRUE
  ),
  Greens = list(
  c("#0a2d27","#13594e","#1d8676","#26b29d","#30dfc4","#59e5d0","#83ecdc","#acf2e7","#d6f9f3"),
  c(1, 2, 3, 4, 5, 6, 7, 8, 9),
  "seq",
  TRUE
  ),
  Blues = list(
    c("#013a63","#01497c","#2a6f97","#2c7da0","#468faf","#61a5c2","#89c2d9","#a9d6e5"),
    c(1, 2, 3, 4, 5, 6, 7, 8),
    "seq",
    TRUE
  ),
  Purples = list(
    c("#310055","#4a0a77","#6818a5","#ab51e3","#d283ff","#dc97ff"),
    c(1, 2, 3, 4, 5, 6),
    "seq",
    TRUE
    ),
  BlueGrey = list(
  c("#0466c8","#0353a4","#023e7d","#002855","#33415c","#5c677d","#7d8597","#979dac"),
  c(1, 2, 3, 4, 5, 6, 7, 8),
  "seq",
  TRUE
  ),
  Teals = list(
    c("#0bfeff","#0dffef","#0affdd","#0bffc7","#0bffb3","#08ffa3","#0bff8d","#11ff7b"),
    c(1, 2, 3, 4, 5, 6, 7, 8),
    "seq",
    TRUE
  ),

  FireStorm = list(
    c( '#ffffff',
       '#ffe0df',
       '#ffc1c0',
       '#ffa1a0',
       '#ff8281',
       '#ff6361',
       '#eb4b49',
       '#d63331',
       '#c21a18',
       '#ad0200'),
    c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
    "seq",
    TRUE
  ),
  IcePack = list(
    c('#40bce9',
      '#35a0c6',
      '#2983a4',
      '#1e6781',
      '#124a5f',
      '#072e3c',
      '#05232d',
      '#04171e',
      '#020c0f',
      '#000000'),
    c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
    "seq",
    TRUE
  ),

  Gilmore_S1 = list(
    c("#DF6D3B", "#F3A749", "#F5C371", "#F5D9AC", "#EDE9D0"),
    c(1, 2, 3, 4, 5),
    "seq",
    FALSE
  ),
  Gilmore_S2 = list(
    c("#125072", "#4C98A7", "#8DCBD2", "#CAE4E6", "#ECFBFF"),
    c(1, 2, 3, 4, 5),
    "seq",
    FALSE
  ), Gilmore_S3 = list(
    c("#4D306D", "#7F629B", "#BB9DC6", "#E2D0DD", "#FFF6FF"),
    c(1, 2, 3, 4, 5),
    "seq",
    FALSE
  ), Gilmore_S4 = list(
    c("#205D3D", "#518E66","#89B997","#C1DAB9", "#EDFDF3"),
    c(1, 2, 3, 4, 5),
    "seq",
    FALSE
  ), Gilmore_S6 = list(
    c("#992058", "#AF526F", "#E6AAB4", "#F7CFDF", "#FCECFC"),
    c(1, 2, 3, 4, 5),
    "seq",
    FALSE
  ),
  Gilmore_S6 = list(
    c("#1E325A", "#3F4F7A", "#6E7CAB", "#C3D0FF", "#E6F0FF"),
    c(1, 2, 3, 4, 5),
    "seq",
    FALSE
  ),
  AYITL = list(
    c("#023e8a", "#0077b6", "#0096c7" , "#00b4d8", "#48cae4", "#90e0ef", "#ADE8f4", "#caf0f8", "#FBFAF8"),
    c(1, 2, 3, 4, 5, 6, 7, 8, 9),
    "seq",
    FALSE
  ),
# Divergent palettes
  Coral2Blues = list(
    c("#ff6361", "#ff7371", "#ff9290", "#fefdfa","#2a6f97","#01497c","#013a63"),
  c(1, 2, 3, 4, 5, 6, 7),
  "div",
  TRUE
    ),
  Blue2Blues = list(
  c("#051720","#03273c","#003554","#fefdfa","#004d74","#006494","#006da4"),
  c(1, 2, 3, 4, 5, 6, 7),
  "div",
  TRUE
  ),
  DrkRed2Blues = list(
    c( "#800016","#c00021","#ff002b","#fefdfa","#407ba7","#003554","#03273c","#051720"),
    c(1, 2, 3, 4, 5, 6, 7),
    "div",
    TRUE
  ),
  Yellow2Blues = list(
    c("#004d74","#006494","#006da4","#fefdfa", "#ffe380","#ffe380","#fdc500"),
    c(1, 2, 3, 4, 5, 6, 7),
    "div",
    TRUE
  ),

  Blue2Oranges = list(
    c("#166281","#1e85ae","#4cb6e1","#8cd0ec","#f5f5f5","#ffaf02","#fc9e02","#f88c01","#f06900"),
    c(1, 2, 3, 4, 5, 6, 7, 8, 9),
    "div",
    TRUE
  ),

  UNLRed2Yellows = list(
    c("#d00000", "#d96a27", "#e1a261", "#ecd2a9", "#fefdfa", "#fff4d1","#ffeba7","#ffe17d","#ffd74f"),
    c(1, 2, 3, 4, 5, 6, 7, 8, 9),
    "div",
    TRUE
  ),
  UNLRed2Blues = list(
    c("#d00000", "#d96a27", "#e1a261", "#ecd2a9", "#fefdfa","#c9d4c5","#87aea3", "#428792","#005d84"),
    c(1, 2, 3, 4, 5, 6, 7, 8, 9),
    "div",
    TRUE
  ),
  ##### qualitative palettes
  Fav = list(
    c("#ff6361", "#202C39", "#19647E", "#FFFD82", "#15B097", "floralwhite"),
    c(1, 2, 3, 4, 5),
    "qual",
    TRUE
  ),
  Flat = list(
    c("#ff8281", #light-coral
      "#235789", #lapis-lazuli
      "#F4EEA9", #icterine
      "#FCBF49", #xanthous
      "#03CEA4", #mint
      "#3C887E", #dark-cyan
      "#1985A1", #blue
      "#4C5C68", #paynes-gray
      "#303036" #jet),
    ),
    c(1, 2, 3, 4, 5, 6, 7, 8, 9),
    "qual",
    TRUE
  ),
  BigHuge = list(
    c("#ff6561", "#1f2b38", "#75a2ca", "#b6ecf5", "#43b08b", "#79fd88", "#59a20c", "#d9fdac", "#47faf4", "#b176e9", "#fe5cde", "#fcc2fb", "#b8819a", "#e5fe44", "#9aa27a", "#ce7e2b", "#fcd107"
  ),
  c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17),
  "qual",
  FALSE
  ),
  Bright = list(
    c("#ff6361",  # coral
      "#FFB86C",  # orange
      "#F1FA8C",  # yellow
      "#50FA7B",  # green
      "#19647E",  # purple
      "#8BE9FD",  # cyan
      "#FF79C6",  # pink
      "#85FFC7", #aquamarine
      "#F9F9F9" #seasalt
    ),
    c(1, 2, 3, 4, 5, 6, 7, 8, 9),
    "qual",
    FALSE
  ),
  Preppy = list(
    c("#FF5E5B", "#ffd166", "#13C4A3", "#FAF3DD","#118ab2", "#073b4c", "#253237"),
    c(1, 2, 3, 4, 5, 6, 7),
    "qual",
    FALSE
  ),
  Easter = list(
    c("#ff8281", "#ffd6a5","#fdffb6", "#caffbf","#9bf6ff","#a0c4ff","#bdb2ff","#ffc6ff","#fffffc"),
    c(1, 2, 3, 4, 5, 6, 7, 8, 9),
    "qual",
    FALSE
  ),

  Roygbiv = list(
    c("#ff595e","#ff924c","#ffca3a","#c5ca30","#8ac926","#36949d","#1982c4","#4267ac","#565aa0","#6a4c93"),
    c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
    "qual",
    FALSE
  ),
  WeddingBlueBells = list(
    c("#a1dce2", "#02365b", "#31a590",	"#d0eeee", "#3eb4d2", "#4E889D", "#2D637B", "#0077b6", "#0096c7", "#00b4d8", "#48cae4", "#90e0ef", "#ADE8f4", "#caf0f8", "#8791A8", "#292F3A"),
    c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16),
    "qual",
    FALSE
  ),
  APLS = list(
    c("#1B3264",
      "#4271B3",
      "#FEFDFA",
      "#ffcc00",
      "#000000"
    ),
    c(1, 2, 3, 4, 5),
    "qual",
    FALSE
  ),
  UNL = list(
    c(
      "#d00000",
      "#f5f1e7",
      "#ffd74f",
      "#c7c8ca",
      "#249AB5",
      "#005D84",
      "#001226",
      "#404040"
    ),
    c(1, 2, 3, 4, 5, 6, 7, 8),
    "qual",
    FALSE
  ),
  Pomona = list(
    c("#0056b7", "#f7931e", "#051311", "#082742", "#48bea1", "#145a6a", "#b0fff9"),
    c(1, 2, 3, 4, 5, 6, 7),
    "qual",
    FALSE
  ),
  Claremont = list(
    c("#0056b7", #Pomona
      "#f7931e", #Pitzer
      "#34745C", #Scripps
      "#FDB913", #HMC
      "#981A31" #CMC
    ),
    c(1, 2, 3, 4, 5),
    "qual",
    FALSE
  )
  )
