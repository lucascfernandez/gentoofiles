static const char norm_fg[] = "#14056E";
static const char norm_bg[] = "#fbfcfe";
static const char norm_border[] = "#8b8d96";

static const char sel_fg[] = "#14056E";
static const char sel_bg[] = "#D56EA9";
static const char sel_border[] = "#14056E";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
};
