#define SCOREBOARD_FIXED_POINT_BASE 100.0

uniform int eu_e4b4_ieu_scoreboard_0; // posterization effect
uniform int eu_e4b4_ieu_scoreboard_1; // brightness
uniform int eu_e4b4_ieu_scoreboard_2; // contrast
uniform int eu_e4b4_ieu_scoreboard_3; // saturation
uniform int eu_e4b4_ieu_scoreboard_4; // wb
uniform int eu_e4b4_ieu_scoreboard_5; // sky color
uniform int eu_e4b4_ieu_scoreboard_6;
uniform int eu_e4b4_ieu_scoreboard_7;

#define POSTERIZATION_STRENGTH eu_e4b4_ieu_scoreboard_0 / SCOREBOARD_FIXED_POINT_BASE

#define GRADE_BRIGHTNESS_DEFAULT 0.80
#define GRADE_BRIGHTNESS (eu_e4b4_ieu_scoreboard_1 == 0 ? GRADE_BRIGHTNESS_DEFAULT : (eu_e4b4_ieu_scoreboard_1 / SCOREBOARD_FIXED_POINT_BASE))

#define GRADE_CONTRAST_DEFAULT 1.00
#define GRADE_CONTRAST (eu_e4b4_ieu_scoreboard_2 == 0 ? GRADE_CONTRAST_DEFAULT : (eu_e4b4_ieu_scoreboard_2 / SCOREBOARD_FIXED_POINT_BASE))

#define GRADE_SATURATION_DEFAULT 0.70
#define GRADE_SATURATION (eu_e4b4_ieu_scoreboard_3 == 0 ? GRADE_SATURATION_DEFAULT : (eu_e4b4_ieu_scoreboard_3 / SCOREBOARD_FIXED_POINT_BASE))

#define GRADE_WHITE_BALANCE_DEFAULT 5500
#define GRADE_WHITE_BALANCE (eu_e4b4_ieu_scoreboard_4 == 0 ? GRADE_WHITE_BALANCE_DEFAULT : eu_e4b4_ieu_scoreboard_4)

#define SKY_COLOR_SHIFT vec3( \
        ((eu_e4b4_ieu_scoreboard_5 & 0xFF0000) >> 16) / SCOREBOARD_FIXED_POINT_BASE, \
        ((eu_e4b4_ieu_scoreboard_5 & 0x00FF00) >> 8)  / SCOREBOARD_FIXED_POINT_BASE, \
        ((eu_e4b4_ieu_scoreboard_5 & 0x0000FF) >> 0)  / SCOREBOARD_FIXED_POINT_BASE \
    )
