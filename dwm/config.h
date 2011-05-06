/* See LICENSE file for copyright and license details. */

/* appearance */
#define BARPOS			BarTop /* BarTop, BarBot, BarOff */
#define BORDERPX		1
#define FONT			"-*-lucida-medium-r-normal-*-10-*-*-*-*-*-*-*"

#define NORMBORDERCOLOR		"#101020"
#define NORMBGCOLOR		"#1a1a1a"
#define NORMFGCOLOR		"#e0e0d0"
#define SELBORDERCOLOR		"#101020"
#define SELBGCOLOR		"#303038"
#define SELFGCOLOR		"#fffff0"

/* tagging */
#define TAGS \
const char *tags[] = { "term", "devel", "web", "im", "x", "y", "z", NULL };
/* Query class:instance:title for regex matching info with following command:
 * xprop | awk -F '"' '/^WM_CLASS/ { printf("%s:%s:",$4,$2) }; /^WM_NAME/ { printf("%s\n",$2) }' */
#define RULES \
static Rule rule[] = { \
	/* class:instance:title regex	tags regex	isfloat */ \
	{ "[Tt]erminal.*",		"term",		False }, \
	{ "emacs.*",			"devel",	False }, \
	{ "Firefox.*",			"web",		True }, \
	{ "[Gg]aim.*",			"im",		True }, \
	{ "[Pp]idgin.*",		"im",		True }, \
	{ "[Ss]kype.*",			"x",		True }, \
	{ "[Tt]ransmission.*",		"x",		True }, \
	{ "gtk-theme.*",		NULL,		True }, \
	{ "MPlayer.*",			NULL,		True }, \
	{ "gksu.*",			NULL,		True }, \
	{ "gqview.*",			NULL,		True }, \
	{ "qiv.*",			NULL,		True }, \
	{ "Gimp.*",			NULL,		True }, \
        { "[Gg]nome-panel",		"y",		True }, \
};
/* layout(s) */
#define LAYOUTS \
static Layout layout[] = { \
	/* symbol		function */ \
	{ "[=]",		tile }, /* first entry is default */ \
	{ "[..]",		floating }, \
};
#define MASTERWIDTH		500		/* master width per thousand */
#define NMASTER			1		/* clients in master area */
#define SNAP			16		/* snap pixel */

/* key definitions */
/* #define MODKEY			Mod1Mask */
#define MODKEY			Mod4Mask
#define KEYS \
static Key key[] = { \
	/* modifier			key		function	argument */ \
	{ MODKEY,			XK_Return,	spawn,		"exec gnome-terminal" }, \
	{ MODKEY,			XK_r,		spawn,		"exec `cat /home/pmv/app-data/dwm/PROGS | dmenu`" }, \
	{ 0,				XK_Print,	spawn,		"import -window root ~/tmp/screenshot.png" }, \
	{ MODKEY|ControlMask,		XK_End,		spawn,		"exec gnome-session-save --shutdown-dialog" }, \
	{ MODKEY|ControlMask,		XK_Home,	spawn,		"exec gnome-session-save --logout-dialog" }, \
	{ MODKEY,			XK_F5,		spawn,		"exec mpc toggle" }, \
	{ MODKEY,			XK_F6,		spawn,		"exec mpc random" }, \
	{ MODKEY,			XK_F7,		spawn,		"exec mpc prev" }, \
	{ MODKEY,			XK_F8,		spawn,		"exec mpc next" }, \
	{ MODKEY,			XK_F9,		spawn,		"exec mixer vol -10" }, \
	{ MODKEY,			XK_F10,		spawn,		"exec mixer vol +10" }, \
	{ MODKEY,			XK_F11,		spawn,		"exec mixer vol 0" }, \
	{ MODKEY,			XK_Tab,		focusclient,	"1" }, \
	{ MODKEY|ShiftMask,		XK_Tab,		focusclient,	"-1" }, \
	{ MODKEY,			XK_j,		focusclient,	"1" }, \
	{ MODKEY,			XK_k,		focusclient,	"-1" }, \
	{ MODKEY,			XK_l,		focusclient,	"1" }, \
	{ MODKEY,			XK_h,		focusclient,	"-1" }, \
 	{ MODKEY|ShiftMask,		XK_m,		togglemax,	NULL }, \
	{ MODKEY,			XK_m,		zoom,		NULL }, \
	{ MODKEY,			XK_g,		incmasterw,	"32" }, \
	{ MODKEY,			XK_s,		incmasterw,	"-32" }, \
	{ MODKEY|ShiftMask,		XK_j,		incnmaster,	"1" }, \
	{ MODKEY|ShiftMask,		XK_k,		incnmaster,	"-1" }, \
	{ MODKEY|ShiftMask,		XK_0,		tag,		NULL }, \
	{ MODKEY|ShiftMask,		XK_1,		tag,		"0" }, \
	{ MODKEY|ShiftMask,		XK_2,		tag,		"1" }, \
	{ MODKEY|ShiftMask,		XK_3,		tag,		"2" }, \
	{ MODKEY|ShiftMask,		XK_4,		tag,		"3" }, \
	{ MODKEY|ShiftMask,		XK_5,		tag,		"4" }, \
	{ MODKEY|ShiftMask,		XK_6,		tag,		"5" }, \
	{ MODKEY|ShiftMask,		XK_7,		tag,		"6" }, \
	{ MODKEY|ShiftMask,		XK_8,		tag,		"7" }, \
	{ MODKEY|ShiftMask,		XK_9,		tag,		"8" }, \
	{ MODKEY|ControlMask|ShiftMask,	XK_1,		toggletag,	"0" }, \
	{ MODKEY|ControlMask|ShiftMask,	XK_2,		toggletag,	"1" }, \
	{ MODKEY|ControlMask|ShiftMask,	XK_3,		toggletag,	"2" }, \
	{ MODKEY|ControlMask|ShiftMask,	XK_4,		toggletag,	"3" }, \
	{ MODKEY|ControlMask|ShiftMask,	XK_5,		toggletag,	"4" }, \
	{ MODKEY|ControlMask|ShiftMask,	XK_6,		toggletag,	"5" }, \
	{ MODKEY|ControlMask|ShiftMask,	XK_7,		toggletag,	"6" }, \
	{ MODKEY|ControlMask|ShiftMask,	XK_8,		toggletag,	"7" }, \
	{ MODKEY|ControlMask|ShiftMask,	XK_9,		toggletag,	"8" }, \
	{ MODKEY,			XK_b,		togglebar,	NULL }, \
	{ MODKEY,			XK_q,		killclient,	NULL }, \
        { MODKEY,			XK_space,	setlayout,	NULL }, \
	{ MODKEY|ShiftMask,		XK_space,	togglefloating,	NULL }, \
	{ MODKEY,			XK_0,		view,		NULL }, \
	{ MODKEY,			XK_1,		view,		"0" }, \
	{ MODKEY,			XK_2,		view,		"1" }, \
	{ MODKEY,			XK_3,		view,		"2" }, \
	{ MODKEY,			XK_4,		view,		"3" }, \
	{ MODKEY,			XK_5,		view,		"4" }, \
	{ MODKEY,			XK_6,		view,		"5" }, \
	{ MODKEY,			XK_7,		view,		"6" }, \
	{ MODKEY,			XK_8,		view,		"7" }, \
	{ MODKEY,			XK_9,		view,		"8" }, \
	{ MODKEY|ControlMask,		XK_1,		toggleview,	"0" }, \
	{ MODKEY|ControlMask,		XK_2,		toggleview,	"1" }, \
	{ MODKEY|ControlMask,		XK_3,		toggleview,	"2" }, \
	{ MODKEY|ControlMask,		XK_4,		toggleview,	"3" }, \
	{ MODKEY|ControlMask,		XK_5,		toggleview,	"4" }, \
	{ MODKEY|ControlMask,		XK_6,		toggleview,	"5" }, \
	{ MODKEY|ControlMask,		XK_7,		toggleview,	"6" }, \
	{ MODKEY|ControlMask,		XK_8,		toggleview,	"7" }, \
	{ MODKEY|ControlMask,		XK_9,		toggleview,	"8" }, \
/* 	{ MODKEY|ShiftMask,		XK_q,		quit,		{ 0 } }, \ */ \
};
