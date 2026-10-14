#define SCOREBOARD_FIXED_POINT_BASE 100.0

uniform float enderman_target;

uniform float sb_posterization;
uniform float sb_brightness;
uniform float sb_contrast;
uniform float sb_saturation;
uniform float sb_wb;
uniform float sb_eclipse_percent;
uniform float sb_tentacles;

#define POSTERIZATION_STRENGTH (sb_posterization + enderman_target * 0.5)
#define GRADE_BRIGHTNESS sb_brightness
#define GRADE_CONTRAST (sb_contrast + enderman_target * 0.5)
#define GRADE_SATURATION (sb_saturation - enderman_target * 0.2)
#define GRADE_WHITE_BALANCE sb_wb
#define ECLIPSE_PERCENT sb_eclipse_percent
#define TENTACLES sb_tentacles
