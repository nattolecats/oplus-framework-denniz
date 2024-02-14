.class public final Lcom/oplus/os/WaveformEffect;
.super Ljava/lang/Object;
.source "WaveformEffect.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/os/WaveformEffect$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/os/WaveformEffect;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EFFECT_AFGAME_DOUBLE_KILL:I = 0x4c

.field public static final whitelist EFFECT_AFGAME_NORMAL_KILL:I = 0x4b

.field public static final whitelist EFFECT_AFGAME_PANTA_KILL:I = 0x4f

.field public static final whitelist EFFECT_AFGAME_TRIPLE_KILL:I = 0x4d

.field public static final whitelist EFFECT_AFGAME_ULTRA_KILL:I = 0x4e

.field public static final whitelist EFFECT_ALARM_ALARM_CLOCK:I = 0xee

.field private static final blacklist EFFECT_ALARM_ALARM_CLOCK_DURATION:I = 0x843

.field public static final whitelist EFFECT_ALARM_BEEP:I = 0xef

.field private static final blacklist EFFECT_ALARM_BEEP_DURATION:I = 0x945

.field public static final whitelist EFFECT_ALARM_BREEZE:I = 0xf0

.field private static final blacklist EFFECT_ALARM_BREEZE_DURATION:I = 0x7eff

.field public static final whitelist EFFECT_ALARM_CLOUDSCAPE:I = 0x155

.field private static final blacklist EFFECT_ALARM_CLOUDSCAPE_DURATION:I = 0x725e

.field public static final whitelist EFFECT_ALARM_DAWN:I = 0xf1

.field private static final blacklist EFFECT_ALARM_DAWN_DURATION:I = 0x890e

.field public static final whitelist EFFECT_ALARM_DREAM:I = 0xf2

.field private static final blacklist EFFECT_ALARM_DREAM_DURATION:I = 0x9664

.field public static final whitelist EFFECT_ALARM_FLUTTERING:I = 0xf3

.field private static final blacklist EFFECT_ALARM_FLUTTERING_DURATION:I = 0x578a

.field public static final whitelist EFFECT_ALARM_FLYER:I = 0xf4

.field private static final blacklist EFFECT_ALARM_FLYER_DURATION:I = 0x4e8c

.field public static final whitelist EFFECT_ALARM_GOODENERGY:I = 0x156

.field private static final blacklist EFFECT_ALARM_GOODENERGY_DURATION:I = 0x6c9c

.field public static final whitelist EFFECT_ALARM_INTERESTING:I = 0xf5

.field private static final blacklist EFFECT_ALARM_INTERESTING_DURATION:I = 0x2958

.field public static final whitelist EFFECT_ALARM_IN_GAME_ALARM:I = 0x16c

.field private static final blacklist EFFECT_ALARM_IN_GAME_ALARM_DURATION:I = 0x55d0

.field public static final whitelist EFFECT_ALARM_LEISURELY:I = 0xf6

.field private static final blacklist EFFECT_ALARM_LEISURELY_DURATION:I = 0x480a

.field public static final whitelist EFFECT_ALARM_MEMORY:I = 0xf7

.field private static final blacklist EFFECT_ALARM_MEMORY_DURATION:I = 0x6bdb

.field public static final whitelist EFFECT_ALARM_PACMAN:I = 0x13d

.field private static final blacklist EFFECT_ALARM_PACMAN_DURATION:I = 0x8281

.field public static final whitelist EFFECT_ALARM_RELIEVED:I = 0xf8

.field private static final blacklist EFFECT_ALARM_RELIEVED_DURATION:I = 0x6724

.field public static final whitelist EFFECT_ALARM_RIPPLE:I = 0xf9

.field private static final blacklist EFFECT_ALARM_RIPPLE_DURATION:I = 0x1da6

.field public static final whitelist EFFECT_ALARM_SLOWLY:I = 0xfa

.field private static final blacklist EFFECT_ALARM_SLOWLY_DURATION:I = 0xc39d

.field public static final whitelist EFFECT_ALARM_SPRING:I = 0xfb

.field private static final blacklist EFFECT_ALARM_SPRING_DURATION:I = 0x5f89

.field public static final whitelist EFFECT_ALARM_STARS:I = 0xfc

.field private static final blacklist EFFECT_ALARM_STARS_DURATION:I = 0x57d8

.field public static final whitelist EFFECT_ALARM_SURGING:I = 0xfd

.field private static final blacklist EFFECT_ALARM_SURGING_DURATION:I = 0x322f

.field public static final whitelist EFFECT_ALARM_TACTFULLY:I = 0xfe

.field private static final blacklist EFFECT_ALARM_TACTFULLY_DURATION:I = 0x4f4b

.field public static final whitelist EFFECT_ALARM_THE_WIND:I = 0xff

.field private static final blacklist EFFECT_ALARM_THE_WIND_DURATION:I = 0x5ae0

.field public static final whitelist EFFECT_ALARM_WAKE_UP_SAMURAI:I = 0x16b

.field private static final blacklist EFFECT_ALARM_WAKE_UP_SAMURAI_DURATION:I = 0xac3e

.field public static final whitelist EFFECT_ALARM_WALKING_IN_THE_RAIN:I = 0x100

.field private static final blacklist EFFECT_ALARM_WALKING_IN_THE_RAIN_DURATION:I = 0x4877

.field public static final whitelist EFFECT_ALARM_WEATHER_CLOUDY:I = 0x91

.field public static final whitelist EFFECT_ALARM_WEATHER_DEFAULT:I = 0x93

.field public static final whitelist EFFECT_ALARM_WEATHER_RAIN:I = 0x97

.field public static final whitelist EFFECT_ALARM_WEATHER_SMOG:I = 0x95

.field public static final whitelist EFFECT_ALARM_WEATHER_SNOW:I = 0x96

.field public static final whitelist EFFECT_ALARM_WEATHER_SUNNY:I = 0x94

.field public static final whitelist EFFECT_ALARM_WEATHER_THUNDERSTORM:I = 0x92

.field public static final whitelist EFFECT_ALARM_WEATHER_WIND:I = 0x90

.field public static final whitelist EFFECT_ALERTSLIDER_DOWN:I = 0x134

.field private static final blacklist EFFECT_ALERTSLIDER_DOWN_DURATION:I = 0x104

.field public static final whitelist EFFECT_ARTIST_ALARM:I = 0x139

.field private static final blacklist EFFECT_ARTIST_ALARM_DURATION:I = 0x3d46

.field public static final whitelist EFFECT_ARTIST_NOTIFICATION:I = 0x136

.field private static final blacklist EFFECT_ARTIST_NOTIFICATION_DURATION:I = 0xaad

.field public static final whitelist EFFECT_ARTIST_RINGTONE:I = 0x137

.field private static final blacklist EFFECT_ARTIST_RINGTONE_DURATION:I = 0x50d7

.field public static final whitelist EFFECT_ARTIST_TEXT:I = 0x138

.field private static final blacklist EFFECT_ARTIST_TEXT_DURATION:I = 0x129f

.field public static final whitelist EFFECT_CANYON_CALL:I = 0x15f

.field private static final blacklist EFFECT_CANYON_CALL_DURATION:I = 0x4021

.field public static final whitelist EFFECT_CHASE:I = 0x10d

.field private static final blacklist EFFECT_CHASE_DURATION:I = 0xcd84

.field public static final whitelist EFFECT_CLIMBER:I = 0x10c

.field private static final blacklist EFFECT_CLIMBER_DURATION:I = 0xcbb7

.field public static final whitelist EFFECT_CUSTOMIZED_ATTACH_TO_MIDDLE:I = 0x49

.field public static final whitelist EFFECT_CUSTOMIZED_BREATHE_SPREAD_OUT:I = 0x4a

.field public static final whitelist EFFECT_CUSTOMIZED_CONFLICT:I = 0x34

.field public static final whitelist EFFECT_CUSTOMIZED_CONVERGE:I = 0x33

.field public static final whitelist EFFECT_CUSTOMIZED_LONG_VIBRATE:I = 0x46

.field public static final whitelist EFFECT_CUSTOMIZED_RUSH_LEFT_TO_RIGHT:I = 0x35

.field private static final blacklist EFFECT_CUSTOMIZED_RUSH_LEFT_TO_RIGHT_DURATION:I = 0x6e

.field public static final whitelist EFFECT_CUSTOMIZED_SPREAD_OUT:I = 0x32

.field public static final whitelist EFFECT_CUSTOMIZED_STRONG_GRANULAR:I = 0x45

.field private static final blacklist EFFECT_CUSTOMIZED_STRONG_GRANULAR_DURATION:I = 0x2d

.field public static final whitelist EFFECT_CUSTOMIZED_STRONG_ONE_SENCOND:I = 0x48

.field public static final whitelist EFFECT_CUSTOMIZED_STRONG_POINTFOUR_SENCOND:I = 0x47

.field public static final whitelist EFFECT_CUSTOMIZED_THREE_DIMENSION_TOUCH:I = 0x31

.field private static final blacklist EFFECT_CUSTOMIZED_THREE_DIMENSION_TOUCH_DURATION:I = 0x50

.field public static final whitelist EFFECT_CUSTOMIZED_WEAK_GRANULAR:I = 0x44

.field private static final blacklist EFFECT_CUSTOMIZED_WEAK_GRANULAR_DURATION:I = 0x1e

.field public static final whitelist EFFECT_EMULATION_KEYBOARD_DOWN:I = 0x12e

.field private static final blacklist EFFECT_EMULATION_KEYBOARD_DOWN_DURATION:I = 0x23

.field public static final whitelist EFFECT_EMULATION_KEYBOARD_UP:I = 0x12f

.field private static final blacklist EFFECT_EMULATION_KEYBOARD_UP_DURATION:I = 0x1a

.field public static final whitelist EFFECT_INVALID:I = -0x1

.field public static final whitelist EFFECT_MODERATE_SHORT_VIBRATE_ONCE:I = 0x2

.field private static final blacklist EFFECT_MODERATE_SHORT_VIBRATE_ONCE_DURATION:I = 0x6e

.field public static final whitelist EFFECT_MODERATE_SHORT_VIBRATE_TRIPLE:I = 0x3

.field public static final whitelist EFFECT_MODERATE_SHORT_VIBRATE_TWICE:I = 0x3

.field public static final whitelist EFFECT_MYSTIC_STORE:I = 0x160

.field private static final blacklist EFFECT_MYSTIC_STORE_DURATION:I = 0xac3

.field public static final whitelist EFFECT_NOTIFICATION_ALLAY:I = 0xd6

.field private static final blacklist EFFECT_NOTIFICATION_ALLAY_DURATION:I = 0x1c3

.field public static final whitelist EFFECT_NOTIFICATION_ALLUSION:I = 0xd7

.field private static final blacklist EFFECT_NOTIFICATION_ALLUSION_DURATION:I = 0x3c0

.field public static final whitelist EFFECT_NOTIFICATION_AMIABLE:I = 0xd8

.field private static final blacklist EFFECT_NOTIFICATION_AMIABLE_DURATION:I = 0x656

.field public static final whitelist EFFECT_NOTIFICATION_AUDITION:I = 0x16e

.field private static final blacklist EFFECT_NOTIFICATION_AUDITION_DURATION:I = 0x12d

.field public static final whitelist EFFECT_NOTIFICATION_BEATING:I = 0x14e

.field private static final blacklist EFFECT_NOTIFICATION_BEATING_DURATION:I = 0xbbf

.field public static final whitelist EFFECT_NOTIFICATION_BLARE:I = 0xd9

.field private static final blacklist EFFECT_NOTIFICATION_BLARE_DURATION:I = 0x56c

.field public static final whitelist EFFECT_NOTIFICATION_BLINK:I = 0x157

.field private static final blacklist EFFECT_NOTIFICATION_BLINK_DURATION:I = 0x14b

.field public static final whitelist EFFECT_NOTIFICATION_BLISSFUL:I = 0xda

.field private static final blacklist EFFECT_NOTIFICATION_BLISSFUL_DURATION:I = 0x833

.field public static final whitelist EFFECT_NOTIFICATION_BLOCK:I = 0x152

.field private static final blacklist EFFECT_NOTIFICATION_BLOCK_DURATION:I = 0x1b4

.field public static final whitelist EFFECT_NOTIFICATION_BOWLBELL:I = 0x14a

.field private static final blacklist EFFECT_NOTIFICATION_BOWLBELL_DURATION:I = 0x1013

.field public static final whitelist EFFECT_NOTIFICATION_BRISK:I = 0xdb

.field private static final blacklist EFFECT_NOTIFICATION_BRISK_DURATION:I = 0x23a

.field public static final whitelist EFFECT_NOTIFICATION_BUBBLE:I = 0xdc

.field private static final blacklist EFFECT_NOTIFICATION_BUBBLE_DURATION:I = 0x156

.field public static final whitelist EFFECT_NOTIFICATION_CHEERFUL:I = 0xdd

.field private static final blacklist EFFECT_NOTIFICATION_CHEERFUL_DURATION:I = 0x220

.field public static final whitelist EFFECT_NOTIFICATION_CIRCLE:I = 0x151

.field private static final blacklist EFFECT_NOTIFICATION_CIRCLE_DURATION:I = 0xe40

.field public static final whitelist EFFECT_NOTIFICATION_CLEAR:I = 0xde

.field private static final blacklist EFFECT_NOTIFICATION_CLEAR_DURATION:I = 0x1c9

.field public static final whitelist EFFECT_NOTIFICATION_COMELY:I = 0xdf

.field private static final blacklist EFFECT_NOTIFICATION_COMELY_DURATION:I = 0xbd0

.field public static final whitelist EFFECT_NOTIFICATION_COZY:I = 0xe0

.field private static final blacklist EFFECT_NOTIFICATION_COZY_DURATION:I = 0x8ff

.field public static final whitelist EFFECT_NOTIFICATION_CRYSTALCLEAR:I = 0x81

.field public static final whitelist EFFECT_NOTIFICATION_DING:I = 0xe1

.field private static final blacklist EFFECT_NOTIFICATION_DING_DURATION:I = 0x6a1

.field public static final whitelist EFFECT_NOTIFICATION_EFFERVESCE:I = 0xe2

.field private static final blacklist EFFECT_NOTIFICATION_EFFERVESCE_DURATION:I = 0x5e2

.field public static final whitelist EFFECT_NOTIFICATION_ELEGANT:I = 0xe3

.field private static final blacklist EFFECT_NOTIFICATION_ELEGANT_DURATION:I = 0x765

.field public static final whitelist EFFECT_NOTIFICATION_EMERGE:I = 0x83

.field public static final whitelist EFFECT_NOTIFICATION_FREE:I = 0xe4

.field private static final blacklist EFFECT_NOTIFICATION_FREE_DURATION:I = 0x588

.field public static final whitelist EFFECT_NOTIFICATION_FUN:I = 0x8b

.field public static final whitelist EFFECT_NOTIFICATION_GRANULES:I = 0x8f

.field public static final whitelist EFFECT_NOTIFICATION_HALLUCINATION:I = 0xe5

.field private static final blacklist EFFECT_NOTIFICATION_HALLUCINATION_DURATION:I = 0x579

.field public static final whitelist EFFECT_NOTIFICATION_HARP:I = 0x85

.field public static final whitelist EFFECT_NOTIFICATION_HEARTBEAT:I = 0x6

.field public static final whitelist EFFECT_NOTIFICATION_HEY:I = 0x14c

.field private static final blacklist EFFECT_NOTIFICATION_HEY_DURATION:I = 0xf64

.field public static final whitelist EFFECT_NOTIFICATION_INBOUND:I = 0xe6

.field private static final blacklist EFFECT_NOTIFICATION_INBOUND_DURATION:I = 0x62f

.field public static final whitelist EFFECT_NOTIFICATION_INGENIOUS:I = 0x8e

.field public static final whitelist EFFECT_NOTIFICATION_INSTANT:I = 0x8a

.field public static final whitelist EFFECT_NOTIFICATION_IN_GAME_SMS:I = 0x16d

.field private static final blacklist EFFECT_NOTIFICATION_IN_GAME_SMS_DURATION:I = 0x12c

.field public static final whitelist EFFECT_NOTIFICATION_JOY:I = 0x88

.field public static final whitelist EFFECT_NOTIFICATION_LIGHT:I = 0xe7

.field private static final blacklist EFFECT_NOTIFICATION_LIGHT_DURATION:I = 0x44c

.field public static final whitelist EFFECT_NOTIFICATION_MEET:I = 0xe8

.field private static final blacklist EFFECT_NOTIFICATION_MEET_DURATION:I = 0x367

.field public static final whitelist EFFECT_NOTIFICATION_NAIVETY:I = 0xe9

.field private static final blacklist EFFECT_NOTIFICATION_NAIVETY_DURATION:I = 0x756

.field public static final whitelist EFFECT_NOTIFICATION_NEWS:I = 0x14d

.field private static final blacklist EFFECT_NOTIFICATION_NEWS_DURATION:I = 0xc0a

.field public static final whitelist EFFECT_NOTIFICATION_ONEPLUS_TWINKLE:I = 0xed

.field private static final blacklist EFFECT_NOTIFICATION_ONEPLUS_TWINKLE_DURATION:I = 0x89e

.field public static final whitelist EFFECT_NOTIFICATION_OVERTONE:I = 0x86

.field public static final whitelist EFFECT_NOTIFICATION_PACMAN:I = 0x13c

.field private static final blacklist EFFECT_NOTIFICATION_PACMAN_DURATION:I = 0xd4

.field public static final whitelist EFFECT_NOTIFICATION_PERCUSSION:I = 0x87

.field public static final whitelist EFFECT_NOTIFICATION_QUICKLY:I = 0xea

.field private static final blacklist EFFECT_NOTIFICATION_QUICKLY_DURATION:I = 0x264

.field public static final whitelist EFFECT_NOTIFICATION_RAPID:I = 0x8

.field public static final whitelist EFFECT_NOTIFICATION_RECEIVE:I = 0x8c

.field public static final whitelist EFFECT_NOTIFICATION_REMIND:I = 0x7

.field public static final whitelist EFFECT_NOTIFICATION_RHYTHM:I = 0xeb

.field private static final blacklist EFFECT_NOTIFICATION_RHYTHM_DURATION:I = 0x34a

.field public static final whitelist EFFECT_NOTIFICATION_RIPPLES:I = 0x84

.field public static final whitelist EFFECT_NOTIFICATION_RISE:I = 0x14b

.field private static final blacklist EFFECT_NOTIFICATION_RISE_DURATION:I = 0xbe4

.field public static final whitelist EFFECT_NOTIFICATION_SHORT:I = 0x14f

.field private static final blacklist EFFECT_NOTIFICATION_SHORT_DURATION:I = 0x86b

.field public static final whitelist EFFECT_NOTIFICATION_SIMPLE:I = 0x80

.field public static final whitelist EFFECT_NOTIFICATION_SPLASH:I = 0x8d

.field public static final whitelist EFFECT_NOTIFICATION_STREAK:I = 0x5

.field public static final whitelist EFFECT_NOTIFICATION_SURPRISE:I = 0xec

.field private static final blacklist EFFECT_NOTIFICATION_SURPRISE_DURATION:I = 0x42b

.field public static final whitelist EFFECT_NOTIFICATION_SYMPHONIC:I = 0x4

.field public static final whitelist EFFECT_NOTIFICATION_TOP:I = 0x150

.field private static final blacklist EFFECT_NOTIFICATION_TOP_DURATION:I = 0x96c

.field public static final whitelist EFFECT_NOTIFICATION_TUNES:I = 0x82

.field public static final whitelist EFFECT_NOTIFICATION_TWINKLE:I = 0x89

.field public static final whitelist EFFECT_NOTIFICATION_WHOOPDOOP:I = 0x158

.field private static final blacklist EFFECT_NOTIFICATION_WHOOPDOOP_DURATION:I = 0x182

.field public static final whitelist EFFECT_NOTIFICATION_ZANZA:I = 0x153

.field private static final blacklist EFFECT_NOTIFICATION_ZANZA_DURATION:I = 0x5b4

.field public static final whitelist EFFECT_OTHER_BIG_SCALE:I = 0x9

.field private static final blacklist EFFECT_OTHER_BIG_SCALE_DURATION:I = 0x1e

.field public static final whitelist EFFECT_OTHER_BREATH_SIMULATION:I = 0xa5

.field private static final blacklist EFFECT_OTHER_BREATH_SIMULATION_DURATION:I = 0xc73

.field public static final whitelist EFFECT_OTHER_BULB:I = 0x11d

.field private static final blacklist EFFECT_OTHER_BULB_DURATION:I = 0x79

.field public static final whitelist EFFECT_OTHER_CHARGING_SIMULATION:I = 0xa6

.field private static final blacklist EFFECT_OTHER_CHARGING_SIMULATION_DURATION:I = 0x3a7

.field public static final whitelist EFFECT_OTHER_CLOSE:I = 0x112

.field private static final blacklist EFFECT_OTHER_CLOSE_DURATION:I = 0x10

.field public static final whitelist EFFECT_OTHER_COMPATIBLE_1:I = 0x116

.field private static final blacklist EFFECT_OTHER_COMPATIBLE_1_DURATION:I = 0x10

.field public static final whitelist EFFECT_OTHER_COMPATIBLE_2:I = 0x117

.field private static final blacklist EFFECT_OTHER_COMPATIBLE_2_DURATION:I = 0x10

.field public static final whitelist EFFECT_OTHER_COMPLETE:I = 0x11c

.field private static final blacklist EFFECT_OTHER_COMPLETE_DURATION:I = 0x10

.field public static final whitelist EFFECT_OTHER_ELASTICITY:I = 0x11e

.field private static final blacklist EFFECT_OTHER_ELASTICITY_DURATION:I = 0x79

.field public static final whitelist EFFECT_OTHER_FINGERPRINT_CORRECT_EFFECT:I = 0x9c

.field private static final blacklist EFFECT_OTHER_FINGERPRINT_CORRECT_EFFECT_DURATION:I = 0x2c5

.field public static final whitelist EFFECT_OTHER_HALF_LAP:I = 0x113

.field private static final blacklist EFFECT_OTHER_HALF_LAP_DURATION:I = 0x23

.field public static final whitelist EFFECT_OTHER_KEYBOARD_MEDIUM:I = 0x9e

.field private static final blacklist EFFECT_OTHER_KEYBOARD_MEDIUM_DURATION:I = 0x24

.field public static final whitelist EFFECT_OTHER_KEYBOARD_STRONG:I = 0x9f

.field private static final blacklist EFFECT_OTHER_KEYBOARD_STRONG_DURATION:I = 0x24

.field public static final whitelist EFFECT_OTHER_KEYBOARD_WEAK:I = 0x9d

.field private static final blacklist EFFECT_OTHER_KEYBOARD_WEAK_DURATION:I = 0x24

.field public static final whitelist EFFECT_OTHER_SMALL_SCALE:I = 0xa

.field private static final blacklist EFFECT_OTHER_SMALL_SCALE_DURATION:I = 0xf

.field public static final whitelist EFFECT_OTHER_STRENGTH_LEVEL_BAR_EDGE:I = 0x9a

.field private static final blacklist EFFECT_OTHER_STRENGTH_LEVEL_BAR_EDGE_DURATION:I = 0x92

.field public static final whitelist EFFECT_OTHER_STYLESWITCH:I = 0x118

.field private static final blacklist EFFECT_OTHER_STYLESWITCH_DURATION:I = 0x1a2b

.field public static final whitelist EFFECT_OTHER_STYLESWITCH_SOFT:I = 0x11f

.field private static final blacklist EFFECT_OTHER_STYLESWITCH_SOFT_DURATION:I = 0x1a2b

.field public static final whitelist EFFECT_OTHER_SUSPENDBUTTON_BOTTOMOUT:I = 0x11a

.field private static final blacklist EFFECT_OTHER_SUSPENDBUTTON_BOTTOMOUT_DURATION:I = 0x10

.field public static final whitelist EFFECT_OTHER_SUSPENDBUTTON_MENU:I = 0x11b

.field private static final blacklist EFFECT_OTHER_SUSPENDBUTTON_MENU_DURATION:I = 0x10

.field public static final whitelist EFFECT_OTHER_THREEFINGERS_LONG:I = 0x10e

.field private static final blacklist EFFECT_OTHER_THREEFINGERS_LONG_DURATION:I = 0x10

.field public static final whitelist EFFECT_OTHER_THREEFINGERS_SCREENSHOT:I = 0x110

.field private static final blacklist EFFECT_OTHER_THREEFINGERS_SCREENSHOT_DURATION:I = 0x10

.field public static final whitelist EFFECT_OTHER_THREEFINGERS_UP:I = 0x10f

.field private static final blacklist EFFECT_OTHER_THREEFINGERS_UP_DURATION:I = 0x10

.field public static final whitelist EFFECT_OTHER_TWOFINGERS_DOWN:I = 0x114

.field private static final blacklist EFFECT_OTHER_TWOFINGERS_DOWN_DURATION:I = 0x10

.field public static final whitelist EFFECT_OTHER_TWOFINGERS_LONG:I = 0x115

.field private static final blacklist EFFECT_OTHER_TWOFINGERS_LONG_DURATION:I = 0x10

.field public static final whitelist EFFECT_OTHER_UNFOLD:I = 0x111

.field private static final blacklist EFFECT_OTHER_UNFOLD_DURATION:I = 0x10

.field public static final whitelist EFFECT_OTHER_VOICE_ASSISTANT:I = 0xa7

.field private static final blacklist EFFECT_OTHER_VOICE_ASSISTANT_DURATION:I = 0x97

.field public static final whitelist EFFECT_OTHER_VOICE_LEVEL_BAR_EDGE:I = 0x99

.field private static final blacklist EFFECT_OTHER_VOICE_LEVEL_BAR_EDGE_DURATION:I = 0x129

.field public static final whitelist EFFECT_OTHER_WATERRIPPLE:I = 0x119

.field private static final blacklist EFFECT_OTHER_WATERRIPPLE_DURATION:I = 0x64

.field public static final whitelist EFFECT_PUBG_RIFLE:I = 0xb

.field private static final blacklist EFFECT_PUBG_RIFLE_DURATION:I = 0x28

.field public static final whitelist EFFECT_PUBG_SHORT_GUN:I = 0xc

.field private static final blacklist EFFECT_PUBG_SHORT_GUN_DURATION:I = 0x28

.field public static final whitelist EFFECT_PUBG_SNIPER:I = 0xd

.field private static final blacklist EFFECT_PUBG_SNIPER_DURATION:I = 0x32

.field private static final blacklist EFFECT_RAM_RAZER_CLICKY_PRESS_DURATION:I = 0xe

.field private static final blacklist EFFECT_RAM_RAZER_LINEAR_PRESS_DURATION:I = 0xe

.field public static final whitelist EFFECT_RAZER_CLICKY_PRESS:I = 0x120

.field public static final whitelist EFFECT_RAZER_LINEAR_PRESS:I = 0x121

.field public static final whitelist EFFECT_RINGTONE_ALACRITY:I = 0xb4

.field private static final blacklist EFFECT_RINGTONE_ALACRITY_DURATION:I = 0x3570

.field public static final whitelist EFFECT_RINGTONE_AMENITY:I = 0xb5

.field private static final blacklist EFFECT_RINGTONE_AMENITY_DURATION:I = 0x3cf2

.field public static final whitelist EFFECT_RINGTONE_BLISS:I = 0x6a

.field public static final whitelist EFFECT_RINGTONE_BLUES:I = 0xb6

.field private static final blacklist EFFECT_RINGTONE_BLUES_DURATION:I = 0x4883

.field public static final whitelist EFFECT_RINGTONE_BOUNCE:I = 0xb7

.field private static final blacklist EFFECT_RINGTONE_BOUNCE_DURATION:I = 0x2a11

.field public static final whitelist EFFECT_RINGTONE_CALM:I = 0x64

.field public static final whitelist EFFECT_RINGTONE_CHILDHOOD:I = 0x79

.field public static final whitelist EFFECT_RINGTONE_CLASSIC:I = 0x6c

.field public static final whitelist EFFECT_RINGTONE_CLOUD:I = 0xb9

.field private static final blacklist EFFECT_RINGTONE_CLOUD_DURATION:I = 0x30d9

.field public static final whitelist EFFECT_RINGTONE_COMMUTE:I = 0x7b

.field public static final whitelist EFFECT_RINGTONE_CYCLOTRON:I = 0xba

.field private static final blacklist EFFECT_RINGTONE_CYCLOTRON_DURATION:I = 0x4004

.field public static final whitelist EFFECT_RINGTONE_DANCE:I = 0x6e

.field public static final whitelist EFFECT_RINGTONE_DAZZLE:I = 0x77

.field public static final whitelist EFFECT_RINGTONE_DELIGHT:I = 0x6b

.field public static final whitelist EFFECT_RINGTONE_DISTINCT:I = 0xbb

.field private static final blacklist EFFECT_RINGTONE_DISTINCT_DURATION:I = 0x1942

.field public static final whitelist EFFECT_RINGTONE_DREAM:I = 0x67

.field public static final whitelist EFFECT_RINGTONE_DREAMJAZZ:I = 0x141

.field private static final blacklist EFFECT_RINGTONE_DREAMJAZZ_DURATION:I = 0x5460

.field public static final whitelist EFFECT_RINGTONE_DYNAMIC:I = 0xbc

.field private static final blacklist EFFECT_RINGTONE_DYNAMIC_DURATION:I = 0x4ade

.field public static final whitelist EFFECT_RINGTONE_EAGER:I = 0xd1

.field private static final blacklist EFFECT_RINGTONE_EAGER_DURATION:I = 0x6026

.field public static final whitelist EFFECT_RINGTONE_EASTERN_TRANQUILITY:I = 0x149

.field private static final blacklist EFFECT_RINGTONE_EASTERN_TRANQUILITY_DURATION:I = 0x5a33

.field public static final whitelist EFFECT_RINGTONE_EBULLITION:I = 0xd2

.field private static final blacklist EFFECT_RINGTONE_EBULLITION_DURATION:I = 0x3f76

.field public static final whitelist EFFECT_RINGTONE_ECHO:I = 0xbd

.field private static final blacklist EFFECT_RINGTONE_ECHO_DURATION:I = 0x3c8d

.field public static final whitelist EFFECT_RINGTONE_ECLUB:I = 0x143

.field private static final blacklist EFFECT_RINGTONE_ECLUB_DURATION:I = 0x49df

.field public static final whitelist EFFECT_RINGTONE_EXPECT:I = 0xbe

.field private static final blacklist EFFECT_RINGTONE_EXPECT_DURATION:I = 0x1d42

.field public static final whitelist EFFECT_RINGTONE_FAIRVIEWS:I = 0x7d

.field public static final whitelist EFFECT_RINGTONE_FANATICAL:I = 0xbf

.field private static final blacklist EFFECT_RINGTONE_FANATICAL_DURATION:I = 0x5d76

.field public static final whitelist EFFECT_RINGTONE_FEELING:I = 0x159

.field private static final blacklist EFFECT_RINGTONE_FEELING_DURATION:I = 0x4d9c

.field public static final whitelist EFFECT_RINGTONE_FIREFLY:I = 0x70

.field public static final whitelist EFFECT_RINGTONE_FRESHMORNING:I = 0x145

.field private static final blacklist EFFECT_RINGTONE_FRESHMORNING_DURATION:I = 0x5d02

.field public static final whitelist EFFECT_RINGTONE_FRIENDSHIP:I = 0xd3

.field private static final blacklist EFFECT_RINGTONE_FRIENDSHIP_DURATION:I = 0x5d10

.field public static final whitelist EFFECT_RINGTONE_FUNK:I = 0x144

.field public static final whitelist EFFECT_RINGTONE_FUNKY:I = 0xc0

.field private static final blacklist EFFECT_RINGTONE_FUNKY_DURATION:I = 0x22c1

.field private static final blacklist EFFECT_RINGTONE_FUNK_DURATION:I = 0x495a

.field public static final whitelist EFFECT_RINGTONE_GAZINGOUT:I = 0x76

.field public static final whitelist EFFECT_RINGTONE_GUITAR:I = 0xc1

.field private static final blacklist EFFECT_RINGTONE_GUITAR_DURATION:I = 0x3ee0

.field public static final whitelist EFFECT_RINGTONE_HARPING:I = 0xc2

.field private static final blacklist EFFECT_RINGTONE_HARPING_DURATION:I = 0x3420

.field public static final whitelist EFFECT_RINGTONE_HIGHLIGHT:I = 0xc3

.field private static final blacklist EFFECT_RINGTONE_HIGHLIGHT_DURATION:I = 0x1ad8

.field public static final whitelist EFFECT_RINGTONE_HOLIDAY:I = 0x146

.field private static final blacklist EFFECT_RINGTONE_HOLIDAY_DURATION:I = 0x618a

.field public static final whitelist EFFECT_RINGTONE_HOUSEMUSIC:I = 0x142

.field private static final blacklist EFFECT_RINGTONE_HOUSEMUSIC_DURATION:I = 0x4aed

.field public static final whitelist EFFECT_RINGTONE_INNOCENCE:I = 0xc5

.field private static final blacklist EFFECT_RINGTONE_INNOCENCE_DURATION:I = 0x515e

.field public static final whitelist EFFECT_RINGTONE_IN_GAME_RINGTON:I = 0x169

.field private static final blacklist EFFECT_RINGTONE_IN_GAME_RINGTON_DURATION:I = 0x3c0a

.field public static final whitelist EFFECT_RINGTONE_JAZZ_LIFE:I = 0xd4

.field private static final blacklist EFFECT_RINGTONE_JAZZ_LIFE_DURATION:I = 0x504c

.field public static final whitelist EFFECT_RINGTONE_JOURNEY:I = 0xc6

.field private static final blacklist EFFECT_RINGTONE_JOURNEY_DURATION:I = 0x615e

.field public static final whitelist EFFECT_RINGTONE_JOYOUS:I = 0xc7

.field private static final blacklist EFFECT_RINGTONE_JOYOUS_DURATION:I = 0x16d4

.field public static final whitelist EFFECT_RINGTONE_LAKESIDE:I = 0x75

.field public static final whitelist EFFECT_RINGTONE_LAZY:I = 0xc8

.field private static final blacklist EFFECT_RINGTONE_LAZY_DURATION:I = 0x47a5

.field public static final whitelist EFFECT_RINGTONE_LDYL:I = 0xc4

.field private static final blacklist EFFECT_RINGTONE_LDYL_DURATION:I = 0x41d0

.field public static final whitelist EFFECT_RINGTONE_LONGING:I = 0x69

.field public static final whitelist EFFECT_RINGTONE_MARIMBA:I = 0xc9

.field private static final blacklist EFFECT_RINGTONE_MARIMBA_DURATION:I = 0x202a

.field public static final whitelist EFFECT_RINGTONE_MEMORIES:I = 0x73

.field public static final whitelist EFFECT_RINGTONE_MODERN:I = 0x148

.field private static final blacklist EFFECT_RINGTONE_MODERN_DURATION:I = 0x5de8

.field public static final whitelist EFFECT_RINGTONE_MYSTICAL:I = 0xca

.field private static final blacklist EFFECT_RINGTONE_MYSTICAL_DURATION:I = 0x4678

.field public static final whitelist EFFECT_RINGTONE_NATURE:I = 0x15a

.field private static final blacklist EFFECT_RINGTONE_NATURE_DURATION:I = 0x462b

.field public static final whitelist EFFECT_RINGTONE_NIGHT:I = 0x74

.field public static final whitelist EFFECT_RINGTONE_NOSTALGIC:I = 0x65

.field public static final whitelist EFFECT_RINGTONE_NOVIBRATE:I = 0x43

.field public static final whitelist EFFECT_RINGTONE_OLD_TELEPHONE:I = 0xcb

.field private static final blacklist EFFECT_RINGTONE_OLD_TELEPHONE_DURATION:I = 0x18b4

.field public static final whitelist EFFECT_RINGTONE_ONEPLUS_CALM:I = 0xb8

.field private static final blacklist EFFECT_RINGTONE_ONEPLUS_CALM_DURATION:I = 0x17fc

.field public static final whitelist EFFECT_RINGTONE_ONEPLUS_TUNE:I = 0xcc

.field private static final blacklist EFFECT_RINGTONE_ONEPLUS_TUNE_DURATION:I = 0x39b6

.field public static final whitelist EFFECT_RINGTONE_OPTIMISTIC:I = 0xce

.field private static final blacklist EFFECT_RINGTONE_OPTIMISTIC_DURATION:I = 0x4dfa

.field public static final whitelist EFFECT_RINGTONE_PACMAN:I = 0x13b

.field private static final blacklist EFFECT_RINGTONE_PACMAN_DURATION:I = 0x2929

.field public static final whitelist EFFECT_RINGTONE_PIANO:I = 0xcf

.field private static final blacklist EFFECT_RINGTONE_PIANO_DURATION:I = 0x56ce

.field public static final whitelist EFFECT_RINGTONE_PLAYPARK:I = 0x6d

.field public static final whitelist EFFECT_RINGTONE_PURE:I = 0x7f

.field public static final whitelist EFFECT_RINGTONE_REALME_ITSREALME:I = 0x52

.field public static final whitelist EFFECT_RINGTONE_REALME_JINGLE:I = 0x51

.field public static final whitelist EFFECT_RINGTONE_REALME_TUNE:I = 0x50

.field public static final whitelist EFFECT_RINGTONE_RELAX:I = 0x78

.field public static final whitelist EFFECT_RINGTONE_RHYTHM:I = 0xcd

.field private static final blacklist EFFECT_RINGTONE_RHYTHM_DURATION:I = 0x458f

.field public static final whitelist EFFECT_RINGTONE_RM_ITSRM:I = 0x52

.field private static final blacklist EFFECT_RINGTONE_RM_ITSRM_DURATION:I = 0x662d

.field public static final whitelist EFFECT_RINGTONE_RM_JINGLE:I = 0x51

.field private static final blacklist EFFECT_RINGTONE_RM_JINGLE_DURATION:I = 0x6c3

.field public static final whitelist EFFECT_RINGTONE_RM_TUNE:I = 0x50

.field private static final blacklist EFFECT_RINGTONE_RM_TUNE_DURATION:I = 0x542f

.field public static final whitelist EFFECT_RINGTONE_ROCK:I = 0x168

.field private static final blacklist EFFECT_RINGTONE_ROCK_DURATION:I = 0x9123

.field public static final whitelist EFFECT_RINGTONE_ROMANCE:I = 0x66

.field public static final whitelist EFFECT_RINGTONE_SCHOOL:I = 0x7a

.field public static final whitelist EFFECT_RINGTONE_SILENCE:I = 0x72

.field public static final whitelist EFFECT_RINGTONE_SOLITUDE:I = 0x7e

.field public static final whitelist EFFECT_RINGTONE_STARS:I = 0x71

.field public static final whitelist EFFECT_RINGTONE_SUMMER:I = 0x7c

.field public static final whitelist EFFECT_RINGTONE_SUN_GLITTERING:I = 0xd5

.field private static final blacklist EFFECT_RINGTONE_SUN_GLITTERING_DURATION:I = 0x47d7

.field public static final whitelist EFFECT_RINGTONE_TEMPLESOUND:I = 0x140

.field private static final blacklist EFFECT_RINGTONE_TEMPLESOUND_DURATION:I = 0x7092

.field public static final whitelist EFFECT_RINGTONE_TRINKETS:I = 0x6f

.field public static final whitelist EFFECT_RINGTONE_T_JINGLE:I = 0x133

.field private static final blacklist EFFECT_RINGTONE_T_JINGLE_DURATION:I = 0x840

.field public static final whitelist EFFECT_RINGTONE_VISIONS:I = 0x68

.field public static final whitelist EFFECT_RINGTONE_WATERCICADE:I = 0x147

.field private static final blacklist EFFECT_RINGTONE_WATERCICADE_DURATION:I = 0x4557

.field public static final whitelist EFFECT_RINGTONE_WHIRL:I = 0xd0

.field private static final blacklist EFFECT_RINGTONE_WHIRL_DURATION:I = 0x2b28

.field public static final whitelist EFFECT_SGAME_DOUBLE_KILL:I = 0x37

.field public static final whitelist EFFECT_SGAME_FIRST_BLOOD:I = 0x36

.field public static final whitelist EFFECT_SGAME_GODLIKE:I = 0x3e

.field public static final whitelist EFFECT_SGAME_KILLING_SPREE:I = 0x3b

.field public static final whitelist EFFECT_SGAME_LEGENDARY:I = 0x3f

.field public static final whitelist EFFECT_SGAME_PANTA_KILL:I = 0x3a

.field public static final whitelist EFFECT_SGAME_RAMPAGE:I = 0x3c

.field public static final whitelist EFFECT_SGAME_TRIBLE_KILL:I = 0x38

.field public static final whitelist EFFECT_SGAME_ULTRA_KILL:I = 0x39

.field public static final whitelist EFFECT_SGAME_UNSTOPPABLE:I = 0x3d

.field public static final whitelist EFFECT_TELCEL_RIE:I = 0x15e

.field private static final blacklist EFFECT_TELCEL_RIE_DURATION:I = 0xe5e5

.field public static final whitelist EFFECT_VIBRATE_WITH_GT:I = 0x13a

.field private static final blacklist EFFECT_VIBRATE_WITH_GT_DURATION:I = 0x438

.field public static final whitelist EFFECT_VIBRATE_WITH_RINGTONE:I = 0x40

.field public static final whitelist EFFECT_WEAKEST_SHORT_VIBRATE_ONCE:I = 0x0

.field private static final blacklist EFFECT_WEAKEST_SHORT_VIBRATE_ONCE_DURATION:I = 0x23

.field public static final whitelist EFFECT_WEAK_EMULATION_KEYBOARD_DOWN:I = 0x130

.field private static final blacklist EFFECT_WEAK_EMULATION_KEYBOARD_DOWN_DURATION:I = 0x23

.field public static final whitelist EFFECT_WEAK_EMULATION_KEYBOARD_UP:I = 0x131

.field private static final blacklist EFFECT_WEAK_EMULATION_KEYBOARD_UP_DURATION:I = 0x1a

.field public static final whitelist EFFECT_WEAK_SHORT_VIBRATE_ONCE:I = 0x1

.field private static final blacklist EFFECT_WEAK_SHORT_VIBRATE_ONCE_DURATION:I = 0x2d

.field public static final whitelist EFFFCT_OTHER_STEPABLE_REGULATE:I = 0x98

.field private static final blacklist EFFFCT_OTHER_STEPABLE_REGULATE_DURATION:I = 0x42

.field private static final blacklist ERTP_INDEX_NOTIFICATION_INBOUND:I = 0xfd

.field private static final blacklist RINGTONE_FILENAME_TITLE:Landroid/util/ArrayMap;

.field private static final blacklist RINGTONE_TITLE_EFFECTS:Landroid/util/ArrayMap;

.field private static final blacklist RTPINDEX_EFFECTS:Landroid/util/SparseIntArray;

.field private static final blacklist RTP_INDEX_AFGAME_DOUBLE_KILL:I = 0x65

.field private static final blacklist RTP_INDEX_AFGAME_NORMAL_KILL:I = 0x64

.field private static final blacklist RTP_INDEX_AFGAME_PANTA_KILL:I = 0x68

.field private static final blacklist RTP_INDEX_AFGAME_TRIBLE_KILL:I = 0x66

.field private static final blacklist RTP_INDEX_AFGAME_ULTRA_KILL:I = 0x67

.field private static final blacklist RTP_INDEX_ALARM_ALARM_CLOCK:I = 0x106

.field private static final blacklist RTP_INDEX_ALARM_BEEP:I = 0x107

.field private static final blacklist RTP_INDEX_ALARM_BREEZE:I = 0x108

.field private static final blacklist RTP_INDEX_ALARM_CLOUDSCAPE:I = 0x5e

.field private static final blacklist RTP_INDEX_ALARM_DAWN:I = 0x109

.field private static final blacklist RTP_INDEX_ALARM_DREAM:I = 0x10a

.field private static final blacklist RTP_INDEX_ALARM_FLUTTERING:I = 0x10b

.field private static final blacklist RTP_INDEX_ALARM_FLYER:I = 0x10c

.field private static final blacklist RTP_INDEX_ALARM_INTERESTING:I = 0x10d

.field private static final blacklist RTP_INDEX_ALARM_LEISURELY:I = 0x10e

.field private static final blacklist RTP_INDEX_ALARM_MEMORY:I = 0x10f

.field private static final blacklist RTP_INDEX_ALARM_PACMAN:I = 0xc6

.field private static final blacklist RTP_INDEX_ALARM_RELIEVED:I = 0x110

.field private static final blacklist RTP_INDEX_ALARM_RIPPLE:I = 0x111

.field private static final blacklist RTP_INDEX_ALARM_SLOWLY:I = 0x112

.field private static final blacklist RTP_INDEX_ALARM_SPRING:I = 0x113

.field private static final blacklist RTP_INDEX_ALARM_STARS:I = 0x114

.field private static final blacklist RTP_INDEX_ALARM_SURGING:I = 0x115

.field private static final blacklist RTP_INDEX_ALARM_TACTFULLY:I = 0x116

.field private static final blacklist RTP_INDEX_ALARM_THE_WIND:I = 0x117

.field private static final blacklist RTP_INDEX_ALARM_WALKING_IN_THE_RAIN:I = 0x118

.field private static final blacklist RTP_INDEX_ALARM_WEATHER_CLOUDY:I = 0x8f

.field private static final blacklist RTP_INDEX_ALARM_WEATHER_DEFAULT:I = 0x91

.field private static final blacklist RTP_INDEX_ALARM_WEATHER_RAIN:I = 0x95

.field private static final blacklist RTP_INDEX_ALARM_WEATHER_SMOG:I = 0x93

.field private static final blacklist RTP_INDEX_ALARM_WEATHER_SNOW:I = 0x94

.field private static final blacklist RTP_INDEX_ALARM_WEATHER_SUNNY:I = 0x92

.field private static final blacklist RTP_INDEX_ALARM_WEATHER_THUNDERSTORM:I = 0x90

.field private static final blacklist RTP_INDEX_ALARM_WEATHER_WIND:I = 0x8e

.field private static final blacklist RTP_INDEX_ALERTSLIDER_DOWN:I = 0x134

.field private static final blacklist RTP_INDEX_ARTIST_ALARM:I = 0x99

.field private static final blacklist RTP_INDEX_ARTIST_NOTIFICATION:I = 0x96

.field private static final blacklist RTP_INDEX_ARTIST_RINGTONE:I = 0x97

.field private static final blacklist RTP_INDEX_ARTIST_TEXT:I = 0x98

.field private static final blacklist RTP_INDEX_ATTACH_TO_MIDDLE:I = 0x36

.field private static final blacklist RTP_INDEX_AUDITION:I = 0x12d

.field private static final blacklist RTP_INDEX_BREATHE_SPREAD_OUT:I = 0x37

.field private static final blacklist RTP_INDEX_BREATH_SIMULATION:I = 0x76

.field private static final blacklist RTP_INDEX_BULB:I = 0xba

.field private static final blacklist RTP_INDEX_CANYON_CALL:I = 0x5a

.field private static final blacklist RTP_INDEX_CHARGING_SIMULATION:I = 0x6c

.field private static final blacklist RTP_INDEX_CHASE:I = 0x125

.field private static final blacklist RTP_INDEX_CLIMBER:I = 0x124

.field private static final blacklist RTP_INDEX_CLOSE:I = 0xaf

.field private static final blacklist RTP_INDEX_COMPATIBLE_1:I = 0xb3

.field private static final blacklist RTP_INDEX_COMPATIBLE_2:I = 0xb4

.field private static final blacklist RTP_INDEX_COMPLETE:I = 0xb9

.field private static final blacklist RTP_INDEX_EFFECT_ALARM_GOODENERGY:I = 0x5f

.field private static final blacklist RTP_INDEX_EFFECT_NOTIFICATION_BLINK:I = 0x60

.field private static final blacklist RTP_INDEX_EFFECT_NOTIFICATION_WHOOPDOOP:I = 0x61

.field private static final blacklist RTP_INDEX_EFFECT_RINGTONE_FEELING:I = 0x62

.field private static final blacklist RTP_INDEX_EFFECT_RINGTONE_NATURE:I = 0x63

.field private static final blacklist RTP_INDEX_ELASTICITY:I = 0xbb

.field private static final blacklist RTP_INDEX_EMULATION_KEYBOARD_DOWN:I = 0x12e

.field private static final blacklist RTP_INDEX_EMULATION_KEYBOARD_UP:I = 0x12f

.field private static final blacklist RTP_INDEX_ERROR_MESSAGE:I = 0x2e

.field private static final blacklist RTP_INDEX_FINGERPRINT_CORRECT_EFFECT:I = 0x6d

.field private static final blacklist RTP_INDEX_GAME_RINGTON:I = 0x129

.field private static final blacklist RTP_INDEX_HALF_LAP:I = 0xb0

.field private static final blacklist RTP_INDEX_HEARTBEAT:I = 0x2b

.field private static final blacklist RTP_INDEX_IN_GAME_ALARM:I = 0x12b

.field private static final blacklist RTP_INDEX_IN_GAME_SMS:I = 0x12c

.field private static final blacklist RTP_INDEX_KEYBOARD_MEDIUM:I = 0x6f

.field private static final blacklist RTP_INDEX_KEYBOARD_STRONG:I = 0x70

.field private static final blacklist RTP_INDEX_KEYBOARD_WEAK:I = 0x6e

.field private static final blacklist RTP_INDEX_LONG_VIBRATE:I = 0x38

.field private static final blacklist RTP_INDEX_MYSTIC_STORE:I = 0x5b

.field private static final blacklist RTP_INDEX_NOTIFICATION_ALLAY:I = 0xed

.field private static final blacklist RTP_INDEX_NOTIFICATION_ALLUSION:I = 0xee

.field private static final blacklist RTP_INDEX_NOTIFICATION_AMIABLE:I = 0xef

.field private static final blacklist RTP_INDEX_NOTIFICATION_BEATING:I = 0x59

.field private static final blacklist RTP_INDEX_NOTIFICATION_BLARE:I = 0xf0

.field private static final blacklist RTP_INDEX_NOTIFICATION_BLISSFUL:I = 0xf1

.field private static final blacklist RTP_INDEX_NOTIFICATION_BLOCK:I = 0x52

.field private static final blacklist RTP_INDEX_NOTIFICATION_BOWLBELL:I = 0x58

.field private static final blacklist RTP_INDEX_NOTIFICATION_BRISK:I = 0xf2

.field private static final blacklist RTP_INDEX_NOTIFICATION_BUBBLE:I = 0xf3

.field private static final blacklist RTP_INDEX_NOTIFICATION_CHEERFUL:I = 0xf4

.field private static final blacklist RTP_INDEX_NOTIFICATION_CIRCLE:I = 0x50

.field private static final blacklist RTP_INDEX_NOTIFICATION_CLEAR:I = 0xf5

.field private static final blacklist RTP_INDEX_NOTIFICATION_COMELY:I = 0xf6

.field private static final blacklist RTP_INDEX_NOTIFICATION_COZY:I = 0xf7

.field private static final blacklist RTP_INDEX_NOTIFICATION_CRYSTALCLEAR:I = 0x80

.field private static final blacklist RTP_INDEX_NOTIFICATION_DING:I = 0xf8

.field private static final blacklist RTP_INDEX_NOTIFICATION_EFFERVESCE:I = 0xf9

.field private static final blacklist RTP_INDEX_NOTIFICATION_ELEGANT:I = 0xfa

.field private static final blacklist RTP_INDEX_NOTIFICATION_EMERGE:I = 0x7b

.field private static final blacklist RTP_INDEX_NOTIFICATION_FREE:I = 0xfb

.field private static final blacklist RTP_INDEX_NOTIFICATION_FUN:I = 0xd

.field private static final blacklist RTP_INDEX_NOTIFICATION_GRANULES:I = 0x9

.field private static final blacklist RTP_INDEX_NOTIFICATION_HALLUCINATION:I = 0xfc

.field private static final blacklist RTP_INDEX_NOTIFICATION_HARP:I = 0x83

.field private static final blacklist RTP_INDEX_NOTIFICATION_HEY:I = 0x53

.field private static final blacklist RTP_INDEX_NOTIFICATION_INGENIOUS:I = 0xc

.field private static final blacklist RTP_INDEX_NOTIFICATION_INSTANT:I = 0x2

.field private static final blacklist RTP_INDEX_NOTIFICATION_JOY:I = 0x81

.field private static final blacklist RTP_INDEX_NOTIFICATION_LIGHT:I = 0xfe

.field private static final blacklist RTP_INDEX_NOTIFICATION_MEET:I = 0xff

.field private static final blacklist RTP_INDEX_NOTIFICATION_NAIVETY:I = 0x100

.field private static final blacklist RTP_INDEX_NOTIFICATION_NEWS:I = 0x55

.field private static final blacklist RTP_INDEX_NOTIFICATION_ONEPLUS_TWINKLE:I = 0x104

.field private static final blacklist RTP_INDEX_NOTIFICATION_OVERTONE:I = 0x84

.field private static final blacklist RTP_INDEX_NOTIFICATION_PACMAN:I = 0xc7

.field private static final blacklist RTP_INDEX_NOTIFICATION_PERCUSSION:I = 0x7e

.field private static final blacklist RTP_INDEX_NOTIFICATION_QUICKLY:I = 0x101

.field private static final blacklist RTP_INDEX_NOTIFICATION_RECEIVE:I = 0xf

.field private static final blacklist RTP_INDEX_NOTIFICATION_RHYTHM:I = 0x102

.field private static final blacklist RTP_INDEX_NOTIFICATION_RIPPLES:I = 0x7f

.field private static final blacklist RTP_INDEX_NOTIFICATION_RISE:I = 0x51

.field private static final blacklist RTP_INDEX_NOTIFICATION_SHORT:I = 0x57

.field private static final blacklist RTP_INDEX_NOTIFICATION_SIMPLE:I = 0x85

.field private static final blacklist RTP_INDEX_NOTIFICATION_SPLASH:I = 0x10

.field private static final blacklist RTP_INDEX_NOTIFICATION_SURPRISE:I = 0x103

.field private static final blacklist RTP_INDEX_NOTIFICATION_TOP:I = 0x56

.field private static final blacklist RTP_INDEX_NOTIFICATION_TUNES:I = 0x7d

.field private static final blacklist RTP_INDEX_NOTIFICATION_TWINKLE:I = 0x82

.field private static final blacklist RTP_INDEX_NOTIFICATION_ZANZA:I = 0x54

.field private static final blacklist RTP_INDEX_RAPID:I = 0x2d

.field private static final blacklist RTP_INDEX_REMIND:I = 0x2c

.field private static final blacklist RTP_INDEX_RINGTONE_ALACRITY:I = 0xc9

.field private static final blacklist RTP_INDEX_RINGTONE_AMENITY:I = 0xca

.field private static final blacklist RTP_INDEX_RINGTONE_BLISS:I = 0x8a

.field private static final blacklist RTP_INDEX_RINGTONE_BLUES:I = 0xcb

.field private static final blacklist RTP_INDEX_RINGTONE_BOUNCE:I = 0xcc

.field private static final blacklist RTP_INDEX_RINGTONE_CALM:I = 0x8c

.field private static final blacklist RTP_INDEX_RINGTONE_CHILDHOOD:I = 0x13

.field private static final blacklist RTP_INDEX_RINGTONE_CLASSIC:I = 0x87

.field private static final blacklist RTP_INDEX_RINGTONE_CLOUD:I = 0xce

.field private static final blacklist RTP_INDEX_RINGTONE_COMMUTE:I = 0x14

.field private static final blacklist RTP_INDEX_RINGTONE_CYCLOTRON:I = 0xcf

.field private static final blacklist RTP_INDEX_RINGTONE_DANCE:I = 0x1e

.field private static final blacklist RTP_INDEX_RINGTONE_DAZZLE:I = 0x1c

.field private static final blacklist RTP_INDEX_RINGTONE_DELIGHT:I = 0x8d

.field private static final blacklist RTP_INDEX_RINGTONE_DISTINCT:I = 0xd0

.field private static final blacklist RTP_INDEX_RINGTONE_DREAM:I = 0x8b

.field private static final blacklist RTP_INDEX_RINGTONE_DREAMJAZZ:I = 0x4e

.field private static final blacklist RTP_INDEX_RINGTONE_DYNAMIC:I = 0xd1

.field private static final blacklist RTP_INDEX_RINGTONE_EAGER:I = 0xe8

.field private static final blacklist RTP_INDEX_RINGTONE_EASTERN_TRANQUILITY:I = 0x47

.field private static final blacklist RTP_INDEX_RINGTONE_EBULLITION:I = 0xe9

.field private static final blacklist RTP_INDEX_RINGTONE_ECHO:I = 0xd2

.field private static final blacklist RTP_INDEX_RINGTONE_ECLUB:I = 0x49

.field private static final blacklist RTP_INDEX_RINGTONE_EXPECT:I = 0xd3

.field private static final blacklist RTP_INDEX_RINGTONE_FAIRVIEWS:I = 0x79

.field private static final blacklist RTP_INDEX_RINGTONE_FANATICAL:I = 0xd4

.field private static final blacklist RTP_INDEX_RINGTONE_FIREFLY:I = 0x16

.field private static final blacklist RTP_INDEX_RINGTONE_FRESHMORNING:I = 0x46

.field private static final blacklist RTP_INDEX_RINGTONE_FRIENDSHIP:I = 0xea

.field private static final blacklist RTP_INDEX_RINGTONE_FUNK:I = 0x4b

.field private static final blacklist RTP_INDEX_RINGTONE_FUNKY:I = 0xd5

.field private static final blacklist RTP_INDEX_RINGTONE_GAZINGOUT:I = 0x18

.field private static final blacklist RTP_INDEX_RINGTONE_GUITAR:I = 0xd6

.field private static final blacklist RTP_INDEX_RINGTONE_HARPING:I = 0xd7

.field private static final blacklist RTP_INDEX_RINGTONE_HIGHLIGHT:I = 0xd8

.field private static final blacklist RTP_INDEX_RINGTONE_HOLIDAY:I = 0x4a

.field private static final blacklist RTP_INDEX_RINGTONE_HOUSEMUSIC:I = 0x4c

.field private static final blacklist RTP_INDEX_RINGTONE_INNOCENCE:I = 0xda

.field private static final blacklist RTP_INDEX_RINGTONE_JAZZ_LIFE:I = 0xeb

.field private static final blacklist RTP_INDEX_RINGTONE_JOURNEY:I = 0xdb

.field private static final blacklist RTP_INDEX_RINGTONE_JOYOUS:I = 0xdc

.field private static final blacklist RTP_INDEX_RINGTONE_LAKESIDE:I = 0x19

.field private static final blacklist RTP_INDEX_RINGTONE_LAZY:I = 0xdd

.field private static final blacklist RTP_INDEX_RINGTONE_LDYL:I = 0xd9

.field private static final blacklist RTP_INDEX_RINGTONE_LONGING:I = 0x7c

.field private static final blacklist RTP_INDEX_RINGTONE_MARIMBA:I = 0xde

.field private static final blacklist RTP_INDEX_RINGTONE_MEMORIES:I = 0x1b

.field private static final blacklist RTP_INDEX_RINGTONE_MODERN:I = 0x4f

.field private static final blacklist RTP_INDEX_RINGTONE_MYSTICAL:I = 0xdf

.field private static final blacklist RTP_INDEX_RINGTONE_NIGHT:I = 0x1d

.field private static final blacklist RTP_INDEX_RINGTONE_NOSTALGIC:I = 0x86

.field private static final blacklist RTP_INDEX_RINGTONE_OLD_TELEPHONE:I = 0xe0

.field private static final blacklist RTP_INDEX_RINGTONE_ONEPLUS_CALM:I = 0xcd

.field private static final blacklist RTP_INDEX_RINGTONE_ONEPLUS_TUNE:I = 0xe1

.field private static final blacklist RTP_INDEX_RINGTONE_OPTIMISTIC:I = 0xe3

.field private static final blacklist RTP_INDEX_RINGTONE_PACMAN:I = 0xc8

.field private static final blacklist RTP_INDEX_RINGTONE_PIANO:I = 0xe4

.field private static final blacklist RTP_INDEX_RINGTONE_PLAYPARK:I = 0x1f

.field private static final blacklist RTP_INDEX_RINGTONE_PURE:I = 0x31

.field private static final blacklist RTP_INDEX_RINGTONE_RELAX:I = 0x20

.field private static final blacklist RTP_INDEX_RINGTONE_RHYTHM:I = 0xe2

.field private static final blacklist RTP_INDEX_RINGTONE_ROMANCE:I = 0x89

.field private static final blacklist RTP_INDEX_RINGTONE_SCHOOL:I = 0x11

.field private static final blacklist RTP_INDEX_RINGTONE_SILENCE:I = 0x23

.field private static final blacklist RTP_INDEX_RINGTONE_SOLITUDE:I = 0x22

.field private static final blacklist RTP_INDEX_RINGTONE_STARS:I = 0x24

.field private static final blacklist RTP_INDEX_RINGTONE_SUMMER:I = 0x25

.field private static final blacklist RTP_INDEX_RINGTONE_SUN_GLITTERING:I = 0xec

.field private static final blacklist RTP_INDEX_RINGTONE_TEMPLESOUND:I = 0x4d

.field private static final blacklist RTP_INDEX_RINGTONE_TRINKETS:I = 0x26

.field private static final blacklist RTP_INDEX_RINGTONE_T_JINGLE:I = 0xe7

.field private static final blacklist RTP_INDEX_RINGTONE_VISIONS:I = 0x88

.field private static final blacklist RTP_INDEX_RINGTONE_WATERCICADE:I = 0x48

.field private static final blacklist RTP_INDEX_RINGTONE_WHIRL:I = 0xe5

.field private static final blacklist RTP_INDEX_RM_ITSRM:I = 0xa1

.field private static final blacklist RTP_INDEX_RM_JINGLE:I = 0xa3

.field private static final blacklist RTP_INDEX_RM_TUNE:I = 0xa2

.field private static final blacklist RTP_INDEX_ROCK:I = 0x128

.field private static final blacklist RTP_INDEX_SGAME_DOUBLE_KILL:I = 0x3d

.field private static final blacklist RTP_INDEX_SGAME_FIRST_BLOOD:I = 0x3c

.field private static final blacklist RTP_INDEX_SGAME_GODLIKE:I = 0x44

.field private static final blacklist RTP_INDEX_SGAME_KILLING_SPREE:I = 0x41

.field private static final blacklist RTP_INDEX_SGAME_LEGENDARY:I = 0x45

.field private static final blacklist RTP_INDEX_SGAME_PANTA_KILL:I = 0x40

.field private static final blacklist RTP_INDEX_SGAME_RAMPAGE:I = 0x42

.field private static final blacklist RTP_INDEX_SGAME_TRIBLE_KILL:I = 0x3e

.field private static final blacklist RTP_INDEX_SGAME_ULTRA_KILL:I = 0x3f

.field private static final blacklist RTP_INDEX_SGAME_UNSTOPPABLE:I = 0x43

.field private static final blacklist RTP_INDEX_SPREAD_OUT:I = 0x2f

.field private static final blacklist RTP_INDEX_STEPABLE_REGULATE:I = 0x69

.field private static final blacklist RTP_INDEX_STREAK:I = 0x2a

.field private static final blacklist RTP_INDEX_STRENGTH_LEVEL_BAR_EDGE:I = 0x6b

.field private static final blacklist RTP_INDEX_STRONG_ONE_SENCOND:I = 0x3a

.field private static final blacklist RTP_INDEX_STRONG_POINTFOUR_SENCOND:I = 0x39

.field private static final blacklist RTP_INDEX_STYLESWITCH:I = 0xb5

.field private static final blacklist RTP_INDEX_STYLESWITCH_SOFT:I = 0xbc

.field private static final blacklist RTP_INDEX_SUSPENDBUTTON_BOTTOMOUT:I = 0xb7

.field private static final blacklist RTP_INDEX_SUSPENDBUTTON_MENU:I = 0xb8

.field private static final blacklist RTP_INDEX_SYMPHONIC:I = 0x29

.field private static final blacklist RTP_INDEX_TELCEL_RIE:I = 0x77

.field private static final blacklist RTP_INDEX_THREEFINGERS_LONG:I = 0xab

.field private static final blacklist RTP_INDEX_THREEFINGERS_SCREENSHOT:I = 0xad

.field private static final blacklist RTP_INDEX_THREEFINGERS_UP:I = 0xac

.field private static final blacklist RTP_INDEX_TWOFINGERS_DOWN:I = 0xb1

.field private static final blacklist RTP_INDEX_TWOFINGERS_LONG:I = 0xb2

.field private static final blacklist RTP_INDEX_UNFOLD:I = 0xae

.field private static final blacklist RTP_INDEX_VIBRATE_GT:I = 0xaa

.field private static final blacklist RTP_INDEX_VOICE_ASSISTANT:I = 0x7a

.field private static final blacklist RTP_INDEX_VOICE_LEVEL_BAR_EDGE:I = 0x6a

.field private static final blacklist RTP_INDEX_WAKE_UP_SAMURAI:I = 0x12a

.field private static final blacklist RTP_INDEX_WATERRIPPLE:I = 0xb6

.field private static final blacklist RTP_INDEX_WEAK_EMULATION_KEYBOARD_DOWN:I = 0x130

.field private static final blacklist RTP_INDEX_WEAK_EMULATION_KEYBOARD_UP:I = 0x131

.field public static final whitelist SETTINGS_VALUE_EFFECT_STRONG:I = 0x960

.field public static final whitelist STRENGTH_LIGHT:I = 0x0

.field public static final whitelist STRENGTH_MEDIUM:I = 0x1

.field public static final whitelist STRENGTH_STRONG:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "WaveformEffect"

.field private static final blacklist WAVEFORMINDEX_EFFECTS:Landroid/util/SparseIntArray;

.field private static final blacklist WAVEFORM_EFFECT_DURATION:Landroid/util/SparseLongArray;

.field private static final blacklist WAVEFORM_INDEX_BIG_SCALE:I = 0xd

.field private static final blacklist WAVEFORM_INDEX_DURATION:Landroid/util/SparseLongArray;

.field public static final whitelist WAVEFORM_INDEX_INVALID:I = -0x1

.field private static final blacklist WAVEFORM_INDEX_MODERATE_SHORT:I = 0x3

.field private static final blacklist WAVEFORM_INDEX_PUBG_RIFLE:I = 0xa

.field private static final blacklist WAVEFORM_INDEX_PUBG_SHORT_GUN:I = 0xb

.field private static final blacklist WAVEFORM_INDEX_PUBG_SNIPER:I = 0xc

.field private static final blacklist WAVEFORM_INDEX_RAZER_CLICKY_PRESS:I = 0x8

.field private static final blacklist WAVEFORM_INDEX_RAZER_LINEAR_PRESS:I = 0x9

.field private static final blacklist WAVEFORM_INDEX_RUSH_LEFT_TO_RIGHT:I = 0x5

.field private static final blacklist WAVEFORM_INDEX_SMALL_SCALE:I = 0xe

.field private static final blacklist WAVEFORM_INDEX_STRONG_GRANULAR:I = 0x6

.field private static final blacklist WAVEFORM_INDEX_THREE_DIMENSION_TOUCH:I = 0x4

.field private static final blacklist WAVEFORM_INDEX_WEAKEST_SHORT:I = 0x1

.field private static final blacklist WAVEFORM_INDEX_WEAK_GRANULAR:I = 0x7

.field private static final blacklist WAVEFORM_INDEX_WEAK_SHORT:I = 0x2

.field public static final whitelist WAVEFORM_NODE_INVALID:I = -0x1

.field public static final whitelist WAVEFORM_NODE_RAM:I = 0x1

.field public static final whitelist WAVEFORM_NODE_RTP:I = 0x2


# instance fields
.field private blacklist mAsynchronous:Z

.field private blacklist mEffectLoop:Z

.field private blacklist mEffectStrength:I

.field private blacklist mEffectType:I

.field private blacklist mIsRingtoneCustomized:Z

.field private blacklist mRingtoneFilePath:Ljava/lang/String;

.field private blacklist mRingtoneVibrateType:I

.field private blacklist mStrengthSettingEnabled:Z

.field private blacklist mUsageHint:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmEffectType(Lcom/oplus/os/WaveformEffect;)I
    .locals 0

    iget p0, p0, Lcom/oplus/os/WaveformEffect;->mEffectType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAsynchronous(Lcom/oplus/os/WaveformEffect;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oplus/os/WaveformEffect;->mAsynchronous:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmEffectLoop(Lcom/oplus/os/WaveformEffect;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oplus/os/WaveformEffect;->mEffectLoop:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmEffectStrength(Lcom/oplus/os/WaveformEffect;I)V
    .locals 0

    iput p1, p0, Lcom/oplus/os/WaveformEffect;->mEffectStrength:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmEffectType(Lcom/oplus/os/WaveformEffect;I)V
    .locals 0

    iput p1, p0, Lcom/oplus/os/WaveformEffect;->mEffectType:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsRingtoneCustomized(Lcom/oplus/os/WaveformEffect;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oplus/os/WaveformEffect;->mIsRingtoneCustomized:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRingtoneFilePath(Lcom/oplus/os/WaveformEffect;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/os/WaveformEffect;->mRingtoneFilePath:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRingtoneVibrateType(Lcom/oplus/os/WaveformEffect;I)V
    .locals 0

    iput p1, p0, Lcom/oplus/os/WaveformEffect;->mRingtoneVibrateType:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmStrengthSettingEnabled(Lcom/oplus/os/WaveformEffect;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oplus/os/WaveformEffect;->mStrengthSettingEnabled:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUsageHint(Lcom/oplus/os/WaveformEffect;I)V
    .locals 0

    iput p1, p0, Lcom/oplus/os/WaveformEffect;->mUsageHint:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 16

    .line 896
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/oplus/os/WaveformEffect;->WAVEFORMINDEX_EFFECTS:Landroid/util/SparseIntArray;

    .line 897
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 898
    const/4 v1, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 899
    const/4 v3, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 900
    const/16 v4, 0x31

    const/4 v5, 0x4

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 901
    const/16 v4, 0x35

    const/4 v6, 0x5

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 902
    const/16 v4, 0x45

    const/4 v7, 0x6

    invoke-virtual {v0, v4, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 903
    const/16 v4, 0x44

    const/4 v8, 0x7

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 904
    const/16 v4, 0x120

    const/16 v9, 0x8

    invoke-virtual {v0, v4, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 905
    const/16 v4, 0x121

    const/16 v9, 0x9

    invoke-virtual {v0, v4, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 906
    const/16 v4, 0xd

    invoke-virtual {v0, v9, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 907
    const/16 v10, 0xa

    const/16 v11, 0xe

    invoke-virtual {v0, v10, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 908
    const/16 v10, 0xb

    const/16 v11, 0xa

    invoke-virtual {v0, v10, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 909
    const/16 v10, 0xc

    const/16 v11, 0xb

    invoke-virtual {v0, v10, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 910
    invoke-virtual {v0, v4, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 919
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/oplus/os/WaveformEffect;->RTPINDEX_EFFECTS:Landroid/util/SparseIntArray;

    .line 922
    const/16 v11, 0x2e

    invoke-virtual {v0, v3, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 924
    const/16 v11, 0x32

    const/16 v12, 0x2f

    invoke-virtual {v0, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 925
    const/16 v11, 0x46

    const/16 v12, 0x38

    invoke-virtual {v0, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 926
    const/16 v11, 0x47

    const/16 v12, 0x39

    invoke-virtual {v0, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 927
    const/16 v11, 0x48

    const/16 v12, 0x3a

    invoke-virtual {v0, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 928
    const/16 v11, 0x49

    const/16 v12, 0x36

    invoke-virtual {v0, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 929
    const/16 v11, 0x4a

    const/16 v12, 0x37

    invoke-virtual {v0, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 931
    const/16 v11, 0x29

    invoke-virtual {v0, v5, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 932
    const/16 v11, 0x2a

    invoke-virtual {v0, v6, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 933
    const/16 v11, 0x2b

    invoke-virtual {v0, v7, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 934
    const/16 v11, 0x2c

    invoke-virtual {v0, v8, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 935
    const/16 v11, 0x8

    const/16 v12, 0x2d

    invoke-virtual {v0, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 937
    const/16 v11, 0x36

    const/16 v12, 0x3c

    invoke-virtual {v0, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 938
    const/16 v11, 0x37

    const/16 v12, 0x3d

    invoke-virtual {v0, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 939
    const/16 v11, 0x38

    const/16 v12, 0x3e

    invoke-virtual {v0, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 940
    const/16 v11, 0x39

    const/16 v12, 0x3f

    invoke-virtual {v0, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 941
    const/16 v11, 0x3a

    const/16 v12, 0x40

    invoke-virtual {v0, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 942
    const/16 v11, 0x3b

    const/16 v12, 0x41

    invoke-virtual {v0, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 943
    const/16 v11, 0x3c

    const/16 v12, 0x42

    invoke-virtual {v0, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 944
    const/16 v11, 0x3d

    const/16 v12, 0x43

    invoke-virtual {v0, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 945
    const/16 v11, 0x3e

    const/16 v12, 0x44

    invoke-virtual {v0, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 946
    const/16 v11, 0x3f

    const/16 v12, 0x45

    invoke-virtual {v0, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 948
    const/16 v11, 0x4b

    const/16 v12, 0x64

    invoke-virtual {v0, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 949
    const/16 v11, 0x4c

    const/16 v13, 0x65

    invoke-virtual {v0, v11, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 950
    const/16 v11, 0x4d

    const/16 v14, 0x66

    invoke-virtual {v0, v11, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 951
    const/16 v11, 0x4e

    const/16 v15, 0x67

    invoke-virtual {v0, v11, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 952
    const/16 v11, 0x4f

    const/16 v15, 0x68

    invoke-virtual {v0, v11, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 954
    const/16 v11, 0x50

    .line 1465
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 954
    const/16 v8, 0xa2

    invoke-virtual {v0, v11, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 955
    const/16 v8, 0x51

    .line 1466
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 955
    const/16 v6, 0xa3

    invoke-virtual {v0, v8, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 956
    const/16 v6, 0x52

    .line 1467
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 956
    const/16 v3, 0xa1

    invoke-virtual {v0, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 958
    const/16 v3, 0x8c

    invoke-virtual {v0, v12, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 959
    const/16 v3, 0x86

    invoke-virtual {v0, v13, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 960
    const/16 v3, 0x89

    invoke-virtual {v0, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 961
    const/16 v3, 0x67

    const/16 v14, 0x8b

    invoke-virtual {v0, v3, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 962
    const/16 v3, 0x68

    const/16 v14, 0x88

    invoke-virtual {v0, v3, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 963
    const/16 v3, 0x69

    const/16 v14, 0x7c

    invoke-virtual {v0, v3, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 964
    const/16 v3, 0x6a

    const/16 v14, 0x8a

    invoke-virtual {v0, v3, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 965
    const/16 v3, 0x6b

    const/16 v14, 0x8d

    invoke-virtual {v0, v3, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 966
    const/16 v3, 0x6c

    const/16 v14, 0x87

    invoke-virtual {v0, v3, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 967
    const/16 v3, 0x6d

    const/16 v14, 0x1f

    invoke-virtual {v0, v3, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 968
    const/16 v3, 0x6e

    const/16 v14, 0x1e

    invoke-virtual {v0, v3, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 969
    const/16 v14, 0x6f

    const/16 v13, 0x26

    invoke-virtual {v0, v14, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 970
    const/16 v13, 0x70

    const/16 v12, 0x16

    invoke-virtual {v0, v13, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 971
    const/16 v12, 0x71

    const/16 v2, 0x24

    invoke-virtual {v0, v12, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 972
    const/16 v2, 0x72

    const/16 v12, 0x23

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 973
    const/16 v2, 0x73

    const/16 v12, 0x1b

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 974
    const/16 v2, 0x74

    const/16 v12, 0x1d

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 975
    const/16 v2, 0x75

    const/16 v12, 0x19

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 976
    const/16 v2, 0x76

    const/16 v12, 0x18

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 977
    const/16 v2, 0x77

    const/16 v12, 0x1c

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 978
    const/16 v2, 0x78

    const/16 v12, 0x20

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 979
    const/16 v2, 0x79

    const/16 v12, 0x13

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 980
    const/16 v2, 0x7a

    const/16 v12, 0x11

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 981
    const/16 v2, 0x7b

    const/16 v12, 0x14

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 982
    const/16 v2, 0x7c

    const/16 v12, 0x25

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 983
    const/16 v2, 0x7d

    const/16 v12, 0x79

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 984
    const/16 v2, 0x7e

    const/16 v12, 0x22

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 985
    const/16 v2, 0x7f

    const/16 v12, 0x31

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 986
    const/16 v2, 0x80

    const/16 v12, 0x85

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 987
    const/16 v2, 0x81

    const/16 v12, 0x80

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 988
    const/16 v2, 0x82

    const/16 v12, 0x7d

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 989
    const/16 v2, 0x83

    const/16 v12, 0x7b

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 990
    const/16 v2, 0x84

    const/16 v12, 0x7f

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 991
    const/16 v2, 0x85

    const/16 v12, 0x83

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 992
    const/16 v2, 0x86

    const/16 v12, 0x84

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 993
    const/16 v2, 0x87

    const/16 v12, 0x7e

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 994
    const/16 v2, 0x88

    const/16 v12, 0x81

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 995
    const/16 v2, 0x89

    const/16 v12, 0x82

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 996
    const/16 v2, 0x8a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 997
    const/16 v2, 0x8b

    invoke-virtual {v0, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 998
    const/16 v2, 0x8c

    const/16 v12, 0xf

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 999
    const/16 v2, 0x8d

    const/16 v12, 0x10

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1000
    const/16 v2, 0x8e

    invoke-virtual {v0, v2, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1001
    const/16 v2, 0x8f

    invoke-virtual {v0, v2, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1002
    const/16 v2, 0x90

    const/16 v12, 0x8e

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1003
    const/16 v2, 0x91

    const/16 v12, 0x8f

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1004
    const/16 v2, 0x92

    const/16 v12, 0x90

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1005
    const/16 v2, 0x93

    const/16 v12, 0x91

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1006
    const/16 v2, 0x94

    const/16 v12, 0x92

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1007
    const/16 v2, 0x95

    const/16 v12, 0x93

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1008
    const/16 v2, 0x96

    const/16 v12, 0x94

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1009
    const/16 v2, 0x97

    const/16 v12, 0x95

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1010
    const/16 v2, 0x136

    const/16 v12, 0x96

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1011
    const/16 v2, 0x137

    const/16 v12, 0x97

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1012
    const/16 v2, 0x138

    const/16 v12, 0x98

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1013
    const/16 v2, 0x139

    const/16 v12, 0x99

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1015
    const/16 v2, 0x98

    const/16 v12, 0x69

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1016
    const/16 v2, 0x99

    const/16 v12, 0x6a

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1017
    const/16 v2, 0x9a

    const/16 v12, 0x6b

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1018
    const/16 v2, 0x9c

    const/16 v12, 0x6d

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1019
    const/16 v2, 0xa5

    const/16 v12, 0x76

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1020
    const/16 v2, 0xa6

    const/16 v12, 0x6c

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1021
    const/16 v2, 0xa7

    const/16 v12, 0x7a

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1022
    const/16 v2, 0x10e

    const/16 v12, 0xab

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1023
    const/16 v2, 0x10f

    const/16 v12, 0xac

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1024
    const/16 v2, 0x110

    const/16 v12, 0xad

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1025
    const/16 v2, 0x111

    const/16 v12, 0xae

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1026
    const/16 v2, 0x112

    const/16 v12, 0xaf

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1027
    const/16 v2, 0x113

    const/16 v12, 0xb0

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1028
    const/16 v2, 0x114

    const/16 v12, 0xb1

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1029
    const/16 v2, 0x115

    const/16 v12, 0xb2

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1030
    const/16 v2, 0x116

    const/16 v12, 0xb3

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1031
    const/16 v2, 0x117

    const/16 v12, 0xb4

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1032
    const/16 v2, 0x118

    const/16 v12, 0xb5

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1033
    const/16 v2, 0x11a

    const/16 v12, 0xb7

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1034
    const/16 v2, 0x11b

    const/16 v12, 0xb8

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1035
    const/16 v2, 0x11c

    const/16 v12, 0xb9

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1036
    const/16 v2, 0x11d

    const/16 v12, 0xba

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1037
    const/16 v2, 0x11e

    const/16 v12, 0xbb

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1038
    const/16 v2, 0x11f

    const/16 v12, 0xbc

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1040
    const/16 v2, 0x134

    const/16 v12, 0x134

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1042
    const/16 v2, 0x13b

    const/16 v12, 0xc8

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1043
    const/16 v2, 0x13c

    const/16 v12, 0xc7

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1044
    const/16 v2, 0x13d

    const/16 v12, 0xc6

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1046
    const/16 v2, 0x133

    const/16 v12, 0xe7

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1049
    const/16 v2, 0xb4

    const/16 v12, 0xc9

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1050
    const/16 v2, 0xb5

    const/16 v12, 0xca

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1051
    const/16 v2, 0xb6

    const/16 v12, 0xcb

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1052
    const/16 v2, 0xb7

    const/16 v12, 0xcc

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1053
    const/16 v2, 0xb8

    const/16 v12, 0xcd

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1054
    const/16 v2, 0xb9

    const/16 v12, 0xce

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1055
    const/16 v2, 0xba

    const/16 v12, 0xcf

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1056
    const/16 v2, 0xbb

    const/16 v12, 0xd0

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1057
    const/16 v2, 0xbc

    const/16 v12, 0xd1

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1058
    const/16 v2, 0xbd

    const/16 v12, 0xd2

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1059
    const/16 v2, 0xbe

    const/16 v12, 0xd3

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1060
    const/16 v2, 0xbf

    const/16 v12, 0xd4

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1061
    const/16 v2, 0xc0

    const/16 v12, 0xd5

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1062
    const/16 v2, 0xc1

    const/16 v12, 0xd6

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1063
    const/16 v2, 0xc2

    const/16 v12, 0xd7

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1064
    const/16 v2, 0xc3

    const/16 v12, 0xd8

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1065
    const/16 v2, 0xc4

    const/16 v12, 0xd9

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1066
    const/16 v2, 0xc5

    const/16 v12, 0xda

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1067
    const/16 v2, 0xc6

    const/16 v12, 0xdb

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1068
    const/16 v2, 0xc7

    const/16 v12, 0xdc

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1069
    const/16 v2, 0xc8

    const/16 v12, 0xdd

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1070
    const/16 v2, 0xc9

    const/16 v12, 0xde

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1071
    const/16 v2, 0xca

    const/16 v12, 0xdf

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1072
    const/16 v2, 0xcb

    const/16 v12, 0xe0

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1073
    const/16 v2, 0xcc

    const/16 v12, 0xe1

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1074
    const/16 v2, 0xcd

    const/16 v12, 0xe2

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1075
    const/16 v2, 0xce

    const/16 v12, 0xe3

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1076
    const/16 v2, 0xcf

    const/16 v12, 0xe4

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1077
    const/16 v2, 0xd0

    const/16 v12, 0xe5

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1078
    const/16 v2, 0xd1

    const/16 v12, 0xe8

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1079
    const/16 v2, 0xd2

    const/16 v12, 0xe9

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1080
    const/16 v2, 0xd3

    const/16 v12, 0xea

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1081
    const/16 v2, 0xd4

    const/16 v12, 0xeb

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1082
    const/16 v2, 0xd5

    const/16 v12, 0xec

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1083
    const/16 v2, 0xd6

    const/16 v12, 0xed

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1084
    const/16 v2, 0xd7

    const/16 v12, 0xee

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1085
    const/16 v2, 0xd8

    const/16 v12, 0xef

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1086
    const/16 v2, 0xd9

    const/16 v12, 0xf0

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1087
    const/16 v2, 0xda

    const/16 v12, 0xf1

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1088
    const/16 v2, 0xdb

    const/16 v12, 0xf2

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1089
    const/16 v2, 0xdc

    const/16 v12, 0xf3

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1090
    const/16 v2, 0xdd

    const/16 v12, 0xf4

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1091
    const/16 v2, 0xde

    const/16 v12, 0xf5

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1092
    const/16 v2, 0xdf

    const/16 v12, 0xf6

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1093
    const/16 v2, 0xe0

    const/16 v12, 0xf7

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1094
    const/16 v2, 0xe1

    const/16 v12, 0xf8

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1095
    const/16 v2, 0xe2

    const/16 v12, 0xf9

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1096
    const/16 v2, 0xe3

    const/16 v12, 0xfa

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1097
    const/16 v2, 0xe4

    const/16 v12, 0xfb

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1098
    const/16 v2, 0xe5

    const/16 v12, 0xfc

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1099
    const/16 v2, 0xe6

    const/16 v12, 0xfd

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1100
    const/16 v2, 0xe7

    const/16 v12, 0xfe

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1101
    const/16 v2, 0xe8

    const/16 v12, 0xff

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1102
    const/16 v2, 0xe9

    const/16 v12, 0x100

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1103
    const/16 v2, 0xea

    const/16 v12, 0x101

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1104
    const/16 v2, 0xeb

    const/16 v12, 0x102

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1105
    const/16 v2, 0xec

    const/16 v12, 0x103

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1106
    const/16 v2, 0xed

    const/16 v12, 0x104

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1107
    const/16 v2, 0xee

    const/16 v12, 0x106

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1108
    const/16 v2, 0xef

    const/16 v12, 0x107

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1109
    const/16 v2, 0xf0

    const/16 v12, 0x108

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1110
    const/16 v2, 0xf1

    const/16 v12, 0x109

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1111
    const/16 v2, 0xf2

    const/16 v12, 0x10a

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1112
    const/16 v2, 0xf3

    const/16 v12, 0x10b

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1113
    const/16 v2, 0xf4

    const/16 v12, 0x10c

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1114
    const/16 v2, 0xf5

    const/16 v12, 0x10d

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1115
    const/16 v2, 0xf6

    const/16 v12, 0x10e

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1116
    const/16 v2, 0xf7

    const/16 v12, 0x10f

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1117
    const/16 v2, 0xf8

    const/16 v12, 0x110

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1118
    const/16 v2, 0xf9

    const/16 v12, 0x111

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1119
    const/16 v2, 0xfa

    const/16 v12, 0x112

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1120
    const/16 v2, 0xfb

    const/16 v12, 0x113

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1121
    const/16 v2, 0xfc

    const/16 v12, 0x114

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1122
    const/16 v2, 0xfd

    const/16 v12, 0x115

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1123
    const/16 v2, 0xfe

    const/16 v12, 0x116

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1124
    const/16 v2, 0xff

    const/16 v12, 0x117

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1125
    const/16 v2, 0x100

    const/16 v12, 0x118

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1126
    const/16 v2, 0x10c

    const/16 v12, 0x124

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1127
    const/16 v2, 0x10d

    const/16 v12, 0x125

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1129
    const/16 v2, 0x15e

    const/16 v12, 0x77

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1132
    const/16 v2, 0x140

    const/16 v12, 0x4d

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1133
    const/16 v2, 0x141

    const/16 v12, 0x4e

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1134
    const/16 v2, 0x142

    const/16 v12, 0x4c

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1135
    const/16 v2, 0x143

    const/16 v12, 0x49

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1136
    const/16 v2, 0x144

    const/16 v12, 0x4b

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1137
    const/16 v2, 0x145

    const/16 v12, 0x46

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1138
    const/16 v2, 0x146

    const/16 v12, 0x4a

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1139
    const/16 v2, 0x147

    const/16 v12, 0x48

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1140
    const/16 v2, 0x148

    const/16 v12, 0x4f

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1141
    const/16 v2, 0x149

    const/16 v12, 0x47

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1142
    const/16 v2, 0x14a

    const/16 v12, 0x58

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1143
    const/16 v2, 0x14b

    invoke-virtual {v0, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 1144
    const/16 v2, 0x14c

    const/16 v12, 0x53

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1145
    const/16 v2, 0x14d

    const/16 v12, 0x55

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1146
    const/16 v2, 0x14e

    const/16 v12, 0x59

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1147
    const/16 v2, 0x14f

    const/16 v12, 0x57

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1148
    const/16 v2, 0x150

    const/16 v12, 0x56

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1149
    const/16 v2, 0x151

    invoke-virtual {v0, v2, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 1150
    const/16 v2, 0x152

    invoke-virtual {v0, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1151
    const/16 v2, 0x153

    const/16 v12, 0x54

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1153
    const/16 v2, 0x155

    const/16 v12, 0x5e

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1154
    const/16 v2, 0x156

    const/16 v12, 0x5f

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1155
    const/16 v2, 0x157

    const/16 v12, 0x60

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1156
    const/16 v2, 0x158

    const/16 v12, 0x61

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1157
    const/16 v2, 0x159

    const/16 v12, 0x62

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1158
    const/16 v2, 0x15a

    const/16 v12, 0x63

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1160
    const/16 v2, 0x13a

    const/16 v12, 0xaa

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1162
    const/16 v2, 0x15f

    const/16 v12, 0x5a

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1163
    const/16 v2, 0x160

    const/16 v12, 0x5b

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1165
    const/16 v2, 0x168

    const/16 v12, 0x128

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1166
    const/16 v2, 0x169

    const/16 v12, 0x129

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1167
    const/16 v2, 0x16b

    const/16 v12, 0x12a

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1168
    const/16 v2, 0x16c

    const/16 v12, 0x12b

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1169
    const/16 v2, 0x16d

    const/16 v12, 0x12c

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1170
    const/16 v2, 0x16e

    const/16 v12, 0x12d

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1172
    const/16 v2, 0x12e

    const/16 v12, 0x12e

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1173
    const/16 v2, 0x12f

    const/16 v12, 0x12f

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1174
    const/16 v2, 0x130

    const/16 v12, 0x130

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1175
    const/16 v2, 0x131

    const/16 v12, 0x131

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1177
    const/16 v2, 0x9d

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1178
    const/16 v2, 0x9e

    invoke-virtual {v0, v2, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 1179
    const/16 v2, 0x9f

    invoke-virtual {v0, v2, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1188
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    sput-object v0, Lcom/oplus/os/WaveformEffect;->WAVEFORM_INDEX_DURATION:Landroid/util/SparseLongArray;

    .line 1189
    const-wide/16 v9, 0x23

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v9, v10}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1190
    const-wide/16 v11, 0x2d

    invoke-virtual {v0, v1, v11, v12}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1191
    const-wide/16 v11, 0x6e

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v11, v12}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1192
    const-wide/16 v11, 0x50

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v11, v12}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1193
    const-wide/16 v11, 0x6e

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v11, v12}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1194
    const-wide/16 v11, 0x2d

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v11, v12}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1195
    const-wide/16 v11, 0x1e

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v11, v12}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1196
    const-wide/16 v11, 0x24

    invoke-virtual {v0, v3, v11, v12}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1197
    invoke-virtual {v0, v14, v11, v12}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1198
    invoke-virtual {v0, v13, v11, v12}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1207
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/oplus/os/WaveformEffect;->RINGTONE_FILENAME_TITLE:Landroid/util/ArrayMap;

    .line 1208
    const-string v2, "ringtone_000"

    const-string v11, "ringtone_000"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1209
    const-string v2, "ringtone_0001"

    const-string v11, "ringtone_0001"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    const-string v2, "ringtone_001"

    const-string v11, "Calm"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    const-string v2, "ringtone_002"

    const-string v11, "Nostalgic"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1212
    const-string v2, "ringtone_003"

    const-string v11, "Romance"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1213
    const-string v2, "ringtone_004"

    const-string v11, "Dream"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1214
    const-string v2, "ringtone_005"

    const-string v11, "Visions"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1215
    const-string v2, "ringtone_006"

    const-string v11, "Longing"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    const-string v2, "ringtone_007"

    const-string v11, "Bliss"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1217
    const-string v2, "ringtone_008"

    const-string v11, "Delight"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    const-string v2, "ringtone_009"

    const-string v11, "Classic"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1219
    const-string v2, "ringtone_010"

    const-string v11, "Playpark"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1220
    const-string v2, "ringtone_011"

    const-string v11, "Dance"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1221
    const-string v2, "ringtone_012"

    const-string v11, "Trinkets"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1222
    const-string v2, "ringtone_013"

    const-string v11, "Firefly"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1223
    const-string v2, "ringtone_014"

    const-string v11, "Stars"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1224
    const-string v2, "ringtone_015"

    const-string v11, "Silence"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1225
    const-string v2, "ringtone_016"

    const-string v11, "Memories"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1226
    const-string v2, "ringtone_017"

    const-string v11, "Night"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1227
    const-string v2, "ringtone_018"

    const-string v11, "Lakeside"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1228
    const-string v2, "ringtone_019"

    const-string v11, "Gazingout"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1229
    const-string v2, "ringtone_020"

    const-string v11, "Dazzle"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1230
    const-string v2, "ringtone_021"

    const-string v11, "Relax"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1231
    const-string v2, "ringtone_022"

    const-string v11, "Childhood"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1232
    const-string v2, "ringtone_023"

    const-string v11, "School"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1233
    const-string v2, "ringtone_024"

    const-string v11, "Commute"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1234
    const-string v2, "ringtone_025"

    const-string v11, "Summer"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1235
    const-string v2, "ringtone_026"

    const-string v11, "Fairviews"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1236
    const-string v2, "ringtone_027"

    const-string v11, "Solitude"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1237
    const-string v2, "ringtone_028"

    const-string v11, "Pure"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1239
    const-string v2, "ringtone_wind"

    const-string v11, "Wind"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1240
    const-string v2, "ringtone_cloud"

    const-string v11, "Cloudy"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1241
    const-string v2, "ringtone_thunderstorm"

    const-string v11, "ThunderStorm"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1242
    const-string v2, "ringtone_weather_default"

    const-string v11, "WeatherDefault"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1243
    const-string v2, "ringtone_sun"

    const-string v11, "Sunny"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1244
    const-string v2, "ringtone_haze"

    const-string v11, "Haze"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1245
    const-string v2, "ringtone_snow"

    const-string v11, "Snow"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1246
    const-string v2, "ringtone_rain"

    const-string v11, "Rain"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1247
    const-string v2, "ringtone_master"

    const-string v11, "Master Ringtone"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1248
    const-string v2, "notification_master"

    const-string v11, "Master Notification"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1249
    const-string v2, "sms_master"

    const-string v11, "Master Text"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1250
    const-string v2, "alarm_master"

    const-string v11, "Master Alarm"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1252
    const-string v2, "notification_000"

    const-string v11, "notification_000"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1253
    const-string v2, "notification_001"

    const-string v11, "Simple"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1254
    const-string v2, "notification_002"

    const-string v11, "CrystalClear"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1255
    const-string v2, "notification_003"

    const-string v11, "Tunes"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1256
    const-string v2, "notification_004"

    const-string v11, "Emerge"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1257
    const-string v2, "notification_005"

    const-string v11, "Ripples"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1258
    const-string v2, "notification_006"

    const-string v11, "Harp"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1259
    const-string v2, "notification_007"

    const-string v11, "Overtone"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1260
    const-string v2, "notification_008"

    const-string v11, "Percussion"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1261
    const-string v2, "notification_009"

    const-string v11, "Joy"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1262
    const-string v2, "notification_010"

    const-string v11, "Twinkle"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1263
    const-string v2, "notification_011"

    const-string v11, "Instant"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1264
    const-string v2, "notification_012"

    const-string v11, "Fun"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1265
    const-string v2, "notification_013"

    const-string v11, "Receive"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1266
    const-string v2, "notification_014"

    const-string v11, "Splash"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1267
    const-string v2, "notification_015"

    const-string v11, "Ingenious"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1268
    const-string v2, "notification_016"

    const-string v11, "Granules"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1271
    const-string v2, "T-Jingle"

    const-string v11, "t_jingle_ringtone"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1274
    const-string v2, "Alacrity"

    const-string v11, "alacrity_ringtone"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1275
    const-string v2, "Amenity"

    const-string v11, "amenity_ringtone"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1276
    const-string v2, "Blues"

    const-string v11, "blues_ringtone"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1277
    const-string v2, "Bounce"

    const-string v11, "bounce_ringtone"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1278
    const-string v2, "Calm"

    const-string v11, "calm_ringtone"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1279
    const-string v2, "Cloud"

    const-string v11, "cloud_ringtone"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1280
    const-string v2, "Cyclotron"

    const-string v11, "cyclotron_ringtone"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1281
    const-string v2, "Distinct"

    const-string v11, "distinct_ringtone"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1282
    const-string v2, "Dynamic"

    const-string v11, "dynamic_ringtone"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1283
    const-string v2, "Echo"

    const-string v11, "echo_ringtone"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1284
    const-string v2, "Expect"

    const-string v11, "expect_ringtone"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1285
    const-string v2, "Fanatical"

    const-string v11, "fanatical_ringtone"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1286
    const-string v2, "Funky"

    const-string v11, "funky_ringtone"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1287
    const-string v2, "Guitar"

    const-string v11, "guitar_ringtone"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1288
    const-string v2, "Harping"

    const-string v11, "harping_ringtone"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1289
    const-string v2, "Highlight"

    const-string v11, "highlight_ringtone"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1290
    const-string v2, "Idyl"

    const-string v11, "idyl_ringtone"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1291
    const-string v2, "Innocence"

    const-string v11, "innocence_ringtone"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1292
    const-string v2, "Journey"

    const-string v11, "journey_ringtone"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1293
    const-string v2, "Joyous"

    const-string v11, "joyous_ringtone"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1294
    const-string v2, "Lazy"

    const-string v11, "lazy_ringtone"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1295
    const-string v2, "Marimba"

    const-string v11, "marimba_ringtone"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1296
    const-string v2, "Mystical"

    const-string v11, "mystical_ringtone"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1297
    const-string v2, "Old_telephone"

    const-string v11, "old_telephone_ringtone"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1298
    const-string v2, "OnePlus_tune"

    const-string v11, "oneplus_tune_ringtone"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1299
    const-string v2, "OnePlus_tune_rhythm"

    const-string v11, "oneplus_tune_rhythm_ringtone"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1300
    const-string v2, "Optimistic"

    const-string v11, "optimistic_ringtone"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1301
    const-string v2, "Piano"

    const-string v11, "piano_ringtone"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1302
    const-string v2, "Whirl"

    const-string v11, "whirl_ringtone"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1303
    const-string v2, "Eager"

    const-string v11, "eager_ringtone"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1304
    const-string v2, "Ebullition"

    const-string v11, "ebullition_ringtone"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1305
    const-string v2, "Friendship"

    const-string v11, "friendship_ringtone"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1306
    const-string v2, "Jazz_life"

    const-string v11, "jazz_life_ringtone"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1307
    const-string v2, "Sun_glittering"

    const-string v11, "sun_glittering_ringtone"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1309
    const-string v2, "Allay"

    const-string v11, "allay_notification"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1310
    const-string v2, "Allusion"

    const-string v11, "allusion_notification"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1311
    const-string v2, "Amiable"

    const-string v11, "amiable_notification"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1312
    const-string v2, "Blare"

    const-string v11, "blare_notification"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1313
    const-string v2, "Blissful"

    const-string v11, "blissful_notification"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1314
    const-string v2, "Brisk"

    const-string v11, "brisk_notification"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1315
    const-string v2, "Bubble"

    const-string v11, "bubble_notification"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1316
    const-string v2, "Cheerful"

    const-string v11, "cheerful_notification"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1317
    const-string v2, "Clear"

    const-string v11, "clear_notification"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1318
    const-string v2, "Comely"

    const-string v11, "comely_notification"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1319
    const-string v2, "Cozy"

    const-string v11, "cozy_notification"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1320
    const-string v2, "Ding"

    const-string v11, "ding_notification"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1321
    const-string v2, "Effervesce"

    const-string v11, "effervesce_notification"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1322
    const-string v2, "Elegant"

    const-string v11, "elegant_notification"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1323
    const-string v2, "Free"

    const-string v11, "free_notification"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1324
    const-string v2, "Hallucination"

    const-string v11, "hallucination_notification"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1325
    const-string v2, "Inbound"

    const-string v11, "inbound_notification"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1326
    const-string v2, "Light"

    const-string v11, "light_notification"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1327
    const-string v2, "Meet"

    const-string v11, "meet_notification"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1328
    const-string v2, "Naivety"

    const-string v11, "naivety_notification"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1329
    const-string v2, "Quickly"

    const-string v11, "quickly_notification"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1330
    const-string v2, "Rhythm"

    const-string v11, "rhythm_notification"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1331
    const-string v2, "Surprise"

    const-string v11, "surprise_notification"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1332
    const-string v2, "Twinkle"

    const-string v11, "twinkle_notification"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1334
    const-string v2, "Alarm_clock"

    const-string v11, "alarm_clock_alarm"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1335
    const-string v2, "Beep"

    const-string v11, "beep_alarm"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1336
    const-string v2, "Breeze"

    const-string v11, "breeze_alarm"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1337
    const-string v2, "Dawn"

    const-string v11, "dawn_alarm"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1338
    const-string v2, "Dream"

    const-string v11, "dream_alarm"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1339
    const-string v2, "Fluttering"

    const-string v11, "fluttering_alarm"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1340
    const-string v2, "Flyer"

    const-string v11, "flyer_alarm"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1341
    const-string v2, "Interesting"

    const-string v11, "interesting_alarm"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1342
    const-string v2, "Leisurely"

    const-string v11, "leisurely_alarm"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1343
    const-string v2, "Memory"

    const-string v11, "memory_alarm"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1344
    const-string v2, "Relieved"

    const-string v11, "relieved_alarm"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1345
    const-string v2, "Ripple"

    const-string v11, "ripple_alarm"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1346
    const-string v2, "Slowly"

    const-string v11, "slowly_alarm"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1347
    const-string v2, "Spring"

    const-string v11, "spring_alarm"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1348
    const-string v2, "Stars"

    const-string v11, "stars_alarm"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1349
    const-string v2, "Surging"

    const-string v11, "surging_alarm"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1350
    const-string v2, "Tactfully"

    const-string v11, "tactfully_alarm"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1351
    const-string v2, "The_wind"

    const-string v11, "the_wind_alarm"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1352
    const-string v2, "Chase"

    const-string v11, "chase_ringtone"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1353
    const-string v2, "Climber"

    const-string v11, "climber_ringtone"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1354
    const-string v2, "Walking_in_the_rain"

    const-string v11, "walking_in_the_rain_alarm"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1356
    const-string v2, "Ringtone_TelcelR\u00ede"

    const-string v11, "Telcel_Rie"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1359
    const-string v2, "ringtone_029"

    const-string v11, "temple_sound"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1360
    const-string v2, "ringtone_030"

    const-string v11, "dream_jazz"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1361
    const-string v2, "ringtone_031"

    const-string v11, "house_music"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1362
    const-string v2, "ringtone_032"

    const-string v11, "e_club"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1363
    const-string v2, "ringtone_033"

    const-string v11, "funk"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1364
    const-string v2, "ringtone_034"

    const-string v11, "fresh_morning"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1365
    const-string v2, "ringtone_035"

    const-string v11, "holiday"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1366
    const-string v2, "ringtone_036"

    const-string v11, "water_cicade"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1367
    const-string v2, "ringtone_037"

    const-string v11, "modern"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1368
    const-string v2, "ringtone_038"

    const-string v11, "eastern_tranquility"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1369
    const-string v2, "notification_017"

    const-string v11, "bowl_bell"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1370
    const-string v2, "notification_018"

    const-string v11, "rise"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1371
    const-string v2, "notification_019"

    const-string v11, "hey"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1372
    const-string v2, "notification_020"

    const-string v11, "news"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1373
    const-string v2, "notification_021"

    const-string v11, "beating"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1374
    const-string v2, "notification_022"

    const-string v11, "short"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1375
    const-string v2, "notification_023"

    const-string v11, "top"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1376
    const-string v2, "notification_024"

    const-string v11, "circle"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1377
    const-string v2, "notification_025"

    const-string v11, "block"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1378
    const-string v2, "notification_026"

    const-string v11, "zanza"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1380
    const-string v2, "Cloudscape"

    const-string v11, "Cloudscape"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1381
    const-string v2, "Good_energy"

    const-string v11, "Goodenergy"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1382
    const-string v2, "Blink"

    const-string v11, "Blink"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1383
    const-string v2, "Whoop_doop"

    const-string v11, "Whoopdoop"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1384
    const-string v2, "OnePlus_new_feeling"

    const-string v11, "Feeling"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1385
    const-string v2, "Nature"

    const-string v11, "Nature"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1387
    const-string v2, "canyon_call"

    const-string v11, "canyon_call"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1388
    const-string v2, "mystic_store"

    const-string v11, "mystic_store"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1390
    const-string v2, "rock"

    const-string v11, "rock"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1391
    const-string v2, "in_game_ringtone"

    const-string v11, "in_game_ringtone"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1392
    const-string v2, "wake_up_samurai"

    const-string v11, "wake_up_samurai"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1393
    const-string v2, "in_game_alarm"

    const-string v11, "in_game_alarm"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1394
    const-string v2, "in_game_sms"

    const-string v11, "in_game_sms"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1395
    const-string v2, "audition"

    const-string v11, "audition"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1397
    const-string v2, "Pacman_ring"

    const-string v11, "Pacman_ring"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1398
    const-string v2, "Pacman_notification"

    const-string v11, "Pacman_notification"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1399
    const-string v2, "Pacman_alarm"

    const-string v11, "Pacman_alarm"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1408
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/oplus/os/WaveformEffect;->RINGTONE_TITLE_EFFECTS:Landroid/util/ArrayMap;

    .line 1410
    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v2, "Calm"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1411
    const/16 v2, 0x65

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v2, "Nostalgic"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1412
    const/16 v2, 0x66

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v2, "Romance"

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1413
    const/16 v2, 0x67

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v11, "Dream"

    invoke-virtual {v0, v11, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1414
    const/16 v2, 0x68

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v11, "Visions"

    invoke-virtual {v0, v11, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1415
    const/16 v2, 0x69

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v11, "Longing"

    invoke-virtual {v0, v11, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1416
    const/16 v2, 0x6a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v11, "Bliss"

    invoke-virtual {v0, v11, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1417
    const/16 v2, 0x6b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v11, "Delight"

    invoke-virtual {v0, v11, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1418
    const/16 v2, 0x6c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v11, "Classic"

    invoke-virtual {v0, v11, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1419
    const/16 v2, 0x6d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v11, "Playpark"

    invoke-virtual {v0, v11, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1420
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v11, "Dance"

    invoke-virtual {v0, v11, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1421
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v11, "Trinkets"

    invoke-virtual {v0, v11, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1422
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v11, "Firefly"

    invoke-virtual {v0, v11, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1423
    const/16 v2, 0x71

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v11, "Stars"

    invoke-virtual {v0, v11, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1424
    const/16 v2, 0x72

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v11, "Silence"

    invoke-virtual {v0, v11, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1425
    const/16 v2, 0x73

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v11, "Memories"

    invoke-virtual {v0, v11, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1426
    const/16 v2, 0x74

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v11, "Night"

    invoke-virtual {v0, v11, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1427
    const/16 v2, 0x75

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v11, "Lakeside"

    invoke-virtual {v0, v11, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1428
    const/16 v2, 0x76

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v11, "Gazingout"

    invoke-virtual {v0, v11, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1429
    const/16 v2, 0x77

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v11, "Dazzle"

    invoke-virtual {v0, v11, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1430
    const/16 v2, 0x78

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v11, "Relax"

    invoke-virtual {v0, v11, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1431
    const/16 v2, 0x79

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v11, "Childhood"

    invoke-virtual {v0, v11, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1432
    const/16 v2, 0x7a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v11, "School"

    invoke-virtual {v0, v11, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1433
    const/16 v2, 0x7b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v11, "Commute"

    invoke-virtual {v0, v11, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1434
    const/16 v2, 0x7c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v11, "Summer"

    invoke-virtual {v0, v11, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1435
    const/16 v2, 0x7d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v11, "Fairviews"

    invoke-virtual {v0, v11, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1436
    const/16 v2, 0x7e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v11, "Solitude"

    invoke-virtual {v0, v11, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1437
    const/16 v2, 0x7f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v11, "Pure"

    invoke-virtual {v0, v11, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1439
    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v11, "Simple"

    invoke-virtual {v0, v11, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1440
    const/16 v2, 0x81

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v11, "CrystalClear"

    invoke-virtual {v0, v11, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1441
    const/16 v2, 0x82

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v11, "Tunes"

    invoke-virtual {v0, v11, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1442
    const/16 v2, 0x83

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v11, "Emerge"

    invoke-virtual {v0, v11, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1443
    const/16 v2, 0x84

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v11, "Ripples"

    invoke-virtual {v0, v11, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1444
    const/16 v2, 0x85

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v11, "Harp"

    invoke-virtual {v0, v11, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1445
    const/16 v2, 0x86

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v11, "Overtone"

    invoke-virtual {v0, v11, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1446
    const/16 v2, 0x87

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v11, "Percussion"

    invoke-virtual {v0, v11, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1447
    const/16 v2, 0x88

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v11, "Joy"

    invoke-virtual {v0, v11, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1448
    const/16 v2, 0x89

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v11, "Twinkle"

    invoke-virtual {v0, v11, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1449
    const/16 v2, 0x8a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v11, "Instant"

    invoke-virtual {v0, v11, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1450
    const/16 v2, 0x8b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v11, "Fun"

    invoke-virtual {v0, v11, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1451
    const/16 v2, 0x8c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v11, "Receive"

    invoke-virtual {v0, v11, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1452
    const/16 v2, 0x8d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v11, "Splash"

    invoke-virtual {v0, v11, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1453
    const/16 v2, 0x8e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v11, "Ingenious"

    invoke-virtual {v0, v11, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1454
    const/16 v2, 0x8f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v11, "Granules"

    invoke-virtual {v0, v11, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1456
    const/16 v2, 0x90

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v11, "Wind"

    invoke-virtual {v0, v11, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1457
    const/16 v2, 0x91

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v11, "Cloudy"

    invoke-virtual {v0, v11, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1458
    const/16 v2, 0x92

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v11, "ThunderStorm"

    invoke-virtual {v0, v11, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1459
    const/16 v2, 0x93

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v11, "WeatherDefault"

    invoke-virtual {v0, v11, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1460
    const/16 v2, 0x94

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v11, "Sunny"

    invoke-virtual {v0, v11, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1461
    const/16 v2, 0x95

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v11, "Haze"

    invoke-virtual {v0, v11, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1462
    const/16 v2, 0x96

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v11, "Snow"

    invoke-virtual {v0, v11, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1463
    const/16 v2, 0x97

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v11, "Rain"

    invoke-virtual {v0, v11, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1465
    const-string v2, "ringtone_0001"

    invoke-virtual {v0, v2, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1466
    const-string v2, "notification_000"

    invoke-virtual {v0, v2, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1467
    const-string v2, "ringtone_000"

    invoke-virtual {v0, v2, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1470
    const-string v2, "realme Tune"

    invoke-virtual {v0, v2, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1471
    const-string v2, "realme Jingle"

    invoke-virtual {v0, v2, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1472
    const-string v2, "it\'s realme"

    invoke-virtual {v0, v2, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1475
    const/16 v2, 0x137

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "Master Ringtone"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1476
    const/16 v2, 0x136

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "Master Notification"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1477
    const/16 v2, 0x138

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "Master Text"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1478
    const/16 v2, 0x139

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "Master Alarm"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1481
    const/16 v2, 0x133

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "t_jingle_ringtone"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1484
    const/16 v2, 0xb4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "alacrity_ringtone"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1485
    const/16 v2, 0xb5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "amenity_ringtone"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1486
    const/16 v2, 0xb6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "blues_ringtone"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1487
    const/16 v2, 0xb7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "bounce_ringtone"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1488
    const/16 v2, 0xb8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "calm_ringtone"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1489
    const/16 v2, 0xb9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "cloud_ringtone"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1490
    const/16 v2, 0xba

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "cyclotron_ringtone"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1491
    const/16 v2, 0xbb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "distinct_ringtone"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1492
    const/16 v2, 0xbc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "dynamic_ringtone"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1493
    const/16 v2, 0xbd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "echo_ringtone"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1494
    const/16 v2, 0xbe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "expect_ringtone"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1495
    const/16 v2, 0xbf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "fanatical_ringtone"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1496
    const/16 v2, 0xc0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "funky_ringtone"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1497
    const/16 v2, 0xc1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "guitar_ringtone"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1498
    const/16 v2, 0xc2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "harping_ringtone"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1499
    const/16 v2, 0xc3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "highlight_ringtone"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1500
    const/16 v2, 0xc4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "idyl_ringtone"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1501
    const/16 v2, 0xc5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "innocence_ringtone"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1502
    const/16 v2, 0xc6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "journey_ringtone"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1503
    const/16 v2, 0xc7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "joyous_ringtone"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1504
    const/16 v2, 0xc8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "lazy_ringtone"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1505
    const/16 v2, 0xc9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "marimba_ringtone"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1506
    const/16 v2, 0xca

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "mystical_ringtone"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1507
    const/16 v2, 0xcb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "old_telephone_ringtone"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1508
    const/16 v2, 0xcc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "oneplus_tune_ringtone"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1509
    const/16 v2, 0xcd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "oneplus_tune_rhythm_ringtone"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1510
    const/16 v2, 0xce

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "optimistic_ringtone"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1511
    const/16 v2, 0xcf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "piano_ringtone"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1512
    const/16 v2, 0xd0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "whirl_ringtone"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1513
    const/16 v2, 0xd1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "eager_ringtone"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1514
    const/16 v2, 0xd2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "ebullition_ringtone"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1515
    const/16 v2, 0xd3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "friendship_ringtone"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1516
    const/16 v2, 0xd4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "jazz_life_ringtone"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1517
    const/16 v2, 0xd5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "sun_glittering_ringtone"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1519
    const/16 v2, 0xd6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "allay_notification"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1520
    const/16 v2, 0xd7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "allusion_notification"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1521
    const/16 v2, 0xd8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "amiable_notification"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1522
    const/16 v2, 0xd9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "blare_notification"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1523
    const/16 v2, 0xda

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "blissful_notification"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1524
    const/16 v2, 0xdb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "brisk_notification"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1525
    const/16 v2, 0xdc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "bubble_notification"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1526
    const/16 v2, 0xdd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "cheerful_notification"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1527
    const/16 v2, 0xde

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "clear_notification"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1528
    const/16 v2, 0xdf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "comely_notification"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1529
    const/16 v2, 0xe0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "cozy_notification"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1530
    const/16 v2, 0xe1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "ding_notification"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1531
    const/16 v2, 0xe2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "effervesce_notification"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1532
    const/16 v2, 0xe3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "elegant_notification"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1533
    const/16 v2, 0xe4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "free_notification"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1534
    const/16 v2, 0xe5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "hallucination_notification"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1535
    const/16 v2, 0xe6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "inbound_notification"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1536
    const/16 v2, 0xe7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "light_notification"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1537
    const/16 v2, 0xe8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "meet_notification"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1538
    const/16 v2, 0xe9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "naivety_notification"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1539
    const/16 v2, 0xea

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "quickly_notification"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1540
    const/16 v2, 0xeb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "rhythm_notification"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1541
    const/16 v2, 0xec

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "surprise_notification"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1542
    const/16 v2, 0xed

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "twinkle_notification"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1544
    const/16 v2, 0xee

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "alarm_clock_alarm"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1545
    const/16 v2, 0xef

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "beep_alarm"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1546
    const/16 v2, 0xf0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "breeze_alarm"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1547
    const/16 v2, 0xf1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "dawn_alarm"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1548
    const/16 v2, 0xf2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "dream_alarm"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1549
    const/16 v2, 0xf3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "fluttering_alarm"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1550
    const/16 v2, 0xf4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "flyer_alarm"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1551
    const/16 v2, 0xf5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "interesting_alarm"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1552
    const/16 v2, 0xf6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "leisurely_alarm"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1553
    const/16 v2, 0xf7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "memory_alarm"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1554
    const/16 v2, 0xf8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "relieved_alarm"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1555
    const/16 v2, 0xf9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "ripple_alarm"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1556
    const/16 v2, 0xfa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "slowly_alarm"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1557
    const/16 v2, 0xfb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "spring_alarm"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1558
    const/16 v2, 0xfc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "stars_alarm"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1559
    const/16 v2, 0xfd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "surging_alarm"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1560
    const/16 v2, 0xfe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "tactfully_alarm"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1561
    const/16 v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "the_wind_alarm"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1562
    const/16 v2, 0x10c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "climber_ringtone"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1563
    const/16 v2, 0x10d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "chase_ringtone"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1564
    const/16 v2, 0x100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "walking_in_the_rain_alarm"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1566
    const/16 v2, 0x15e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "Telcel_Rie"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1569
    const/16 v2, 0x140

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "temple_sound"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1570
    const/16 v2, 0x141

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "dream_jazz"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1571
    const/16 v2, 0x142

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "house_music"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1572
    const/16 v2, 0x143

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "e_club"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1573
    const/16 v2, 0x144

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "funk"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1574
    const/16 v2, 0x145

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "fresh_morning"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1575
    const/16 v2, 0x146

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "holiday"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1576
    const/16 v2, 0x147

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "water_cicade"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1577
    const/16 v2, 0x148

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "modern"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1578
    const/16 v2, 0x149

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "eastern_tranquility"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1579
    const/16 v2, 0x14a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "bowl_bell"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1580
    const/16 v2, 0x14b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "rise"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1581
    const/16 v2, 0x14c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "hey"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1582
    const/16 v2, 0x14d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "news"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1583
    const/16 v2, 0x14e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "beating"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1584
    const/16 v2, 0x14f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "short"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1585
    const/16 v2, 0x150

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "top"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1586
    const/16 v2, 0x151

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "circle"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1587
    const/16 v2, 0x152

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "block"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1588
    const/16 v2, 0x153

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "zanza"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1590
    const/16 v2, 0x155

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "Cloudscape"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1591
    const/16 v2, 0x156

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "Goodenergy"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1592
    const/16 v2, 0x157

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "Blink"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1593
    const/16 v2, 0x158

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "Whoopdoop"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1594
    const/16 v2, 0x159

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "Feeling"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1595
    const/16 v2, 0x15a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "Nature"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1597
    const/16 v2, 0x15f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "canyon_call"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1598
    const/16 v2, 0x160

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "mystic_store"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1600
    const/16 v2, 0x168

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "rock"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1601
    const/16 v2, 0x169

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "in_game_ringtone"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1602
    const/16 v2, 0x16b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "wake_up_samurai"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1603
    const/16 v2, 0x16c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "in_game_alarm"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1604
    const/16 v2, 0x16d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "in_game_sms"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1605
    const/16 v2, 0x16e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "audition"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1607
    const/16 v2, 0x13b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "Pacman_ring"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1608
    const/16 v2, 0x13c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "Pacman_notification"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1609
    const/16 v2, 0x13d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "Pacman_alarm"

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1617
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    sput-object v0, Lcom/oplus/os/WaveformEffect;->WAVEFORM_EFFECT_DURATION:Landroid/util/SparseLongArray;

    .line 1618
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v9, v10}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1619
    const-wide/16 v11, 0x2d

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v11, v12}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1620
    const-wide/16 v11, 0x6e

    invoke-virtual {v0, v1, v11, v12}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1621
    const/16 v1, 0x31

    const-wide/16 v11, 0x50

    invoke-virtual {v0, v1, v11, v12}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1622
    const/16 v1, 0x35

    const-wide/16 v11, 0x6e

    invoke-virtual {v0, v1, v11, v12}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1623
    const/16 v1, 0x45

    const-wide/16 v11, 0x2d

    invoke-virtual {v0, v1, v11, v12}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1624
    const/16 v1, 0x44

    const-wide/16 v11, 0x1e

    invoke-virtual {v0, v1, v11, v12}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1626
    const-wide/16 v1, 0xaa9

    const/4 v5, 0x4

    invoke-virtual {v0, v5, v1, v2}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1627
    const-wide/16 v1, 0x821

    const/4 v5, 0x5

    invoke-virtual {v0, v5, v1, v2}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1628
    const-wide/16 v1, 0xf80

    const/4 v5, 0x6

    invoke-virtual {v0, v5, v1, v2}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1629
    const-wide/16 v1, 0x1770

    const/4 v5, 0x7

    invoke-virtual {v0, v5, v1, v2}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1630
    const/16 v1, 0x8

    const-wide/16 v11, 0x11a4

    invoke-virtual {v0, v1, v11, v12}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1631
    const-wide/16 v1, 0x1e0

    const/4 v5, 0x3

    invoke-virtual {v0, v5, v1, v2}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1632
    const/16 v1, 0x32

    const-wide/16 v11, 0x15e

    invoke-virtual {v0, v1, v11, v12}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1634
    const/16 v1, 0x49

    const-wide/16 v11, 0xc8

    invoke-virtual {v0, v1, v11, v12}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1635
    const/16 v1, 0x4a

    const-wide/16 v11, 0x26c

    invoke-virtual {v0, v1, v11, v12}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1636
    const/16 v1, 0x46

    const-wide/16 v11, 0x15e

    invoke-virtual {v0, v1, v11, v12}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1638
    const/16 v1, 0x33

    const-wide/16 v11, 0x64

    invoke-virtual {v0, v1, v11, v12}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1639
    const/16 v1, 0x34

    const-wide/16 v11, 0x3c

    invoke-virtual {v0, v1, v11, v12}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1640
    const/16 v1, 0x47

    const-wide/16 v11, 0x190

    invoke-virtual {v0, v1, v11, v12}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1641
    const/16 v1, 0x48

    const-wide/16 v11, 0x3e8

    invoke-virtual {v0, v1, v11, v12}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1643
    const/16 v1, 0x36

    const-wide/16 v11, 0xdc

    invoke-virtual {v0, v1, v11, v12}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1644
    const/16 v1, 0x37

    const-wide/16 v11, 0xd2

    invoke-virtual {v0, v1, v11, v12}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1645
    const/16 v1, 0x38

    const-wide/16 v11, 0x19a

    invoke-virtual {v0, v1, v11, v12}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1646
    const/16 v1, 0x39

    const-wide/16 v11, 0x1ae

    invoke-virtual {v0, v1, v11, v12}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1647
    const/16 v1, 0x3a

    const-wide/16 v11, 0x316

    invoke-virtual {v0, v1, v11, v12}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1648
    const/16 v1, 0x3b

    const-wide/16 v11, 0x208

    invoke-virtual {v0, v1, v11, v12}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1649
    const/16 v1, 0x3c

    const-wide/16 v11, 0x1d6

    invoke-virtual {v0, v1, v11, v12}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1650
    const/16 v1, 0x3d

    const-wide/16 v11, 0x24e

    invoke-virtual {v0, v1, v11, v12}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1651
    const/16 v1, 0x3e

    const-wide/16 v11, 0x276

    invoke-virtual {v0, v1, v11, v12}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1652
    const/16 v1, 0x3f

    const-wide/16 v11, 0x3fc

    invoke-virtual {v0, v1, v11, v12}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1653
    const/16 v1, 0x4b

    const-wide/16 v11, 0xe6

    invoke-virtual {v0, v1, v11, v12}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1654
    const/16 v1, 0x4c

    const-wide/16 v11, 0x122

    invoke-virtual {v0, v1, v11, v12}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1655
    const/16 v1, 0x4d

    const-wide/16 v11, 0x1ae

    invoke-virtual {v0, v1, v11, v12}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1656
    const/16 v1, 0x4e

    const-wide/16 v11, 0x262

    invoke-virtual {v0, v1, v11, v12}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1657
    const/16 v1, 0x4f

    const-wide/16 v11, 0x2ee

    invoke-virtual {v0, v1, v11, v12}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1659
    const-wide/16 v1, 0x662d

    invoke-virtual {v0, v6, v1, v2}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1660
    const-wide/16 v1, 0x542f

    const/16 v5, 0x50

    invoke-virtual {v0, v5, v1, v2}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1661
    const-wide/16 v1, 0x6c3

    invoke-virtual {v0, v8, v1, v2}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1663
    const-wide/16 v1, 0x7926

    const/16 v5, 0x64

    invoke-virtual {v0, v5, v1, v2}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1664
    const-wide/16 v1, 0x66d8

    const/16 v5, 0x65

    invoke-virtual {v0, v5, v1, v2}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1665
    const-wide/16 v1, 0x65f2

    const/16 v5, 0x66

    invoke-virtual {v0, v5, v1, v2}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1666
    const/16 v1, 0x67

    const-wide/16 v5, 0x4e32

    invoke-virtual {v0, v1, v5, v6}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1667
    const/16 v1, 0x68

    const-wide/16 v5, 0x6e64

    invoke-virtual {v0, v1, v5, v6}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1668
    const/16 v1, 0x69

    const-wide/16 v5, 0x36bf

    invoke-virtual {v0, v1, v5, v6}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1669
    const/16 v1, 0x6a

    const-wide/16 v5, 0x691d

    invoke-virtual {v0, v1, v5, v6}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1670
    const/16 v1, 0x6b

    const-wide/16 v5, 0x518b

    invoke-virtual {v0, v1, v5, v6}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1671
    const/16 v1, 0x6c

    const-wide/16 v5, 0x7b7

    invoke-virtual {v0, v1, v5, v6}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1672
    const/16 v1, 0x6d

    const-wide/16 v5, 0x433e

    invoke-virtual {v0, v1, v5, v6}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1673
    const-wide/16 v1, 0x4650

    invoke-virtual {v0, v3, v1, v2}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1674
    const-wide/16 v1, 0x49ed

    invoke-virtual {v0, v14, v1, v2}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1675
    const-wide/16 v1, 0x2eb2

    invoke-virtual {v0, v13, v1, v2}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1676
    const/16 v1, 0x71

    const-wide/16 v2, 0x5460

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1677
    const/16 v1, 0x72

    const-wide/16 v2, 0x682a

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1678
    const/16 v1, 0x73

    const-wide/16 v2, 0x5699

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1679
    const/16 v1, 0x74

    const-wide/16 v2, 0x254a

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1680
    const/16 v1, 0x75

    const-wide/16 v2, 0x3f2c

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1681
    const/16 v1, 0x76

    const-wide/16 v2, 0x3183

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1682
    const/16 v1, 0x77

    const-wide/16 v2, 0x44f2

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1683
    const/16 v1, 0x78

    const-wide/16 v2, 0x200a

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1684
    const/16 v1, 0x79

    const-wide/16 v2, 0x49b2

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1685
    const/16 v1, 0x7a

    const-wide/16 v2, 0x294f

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1686
    const/16 v1, 0x7b

    const-wide/16 v2, 0x693e

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1687
    const/16 v1, 0x7c

    const-wide/16 v2, 0x3bc5

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1688
    const/16 v1, 0x7d

    const-wide/16 v2, 0x7f3b

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1689
    const/16 v1, 0x7e

    const-wide/16 v2, 0x6c40

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1690
    const/16 v1, 0x7f

    const-wide/16 v2, 0x28cd

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1691
    const/16 v1, 0x80

    const-wide/16 v2, 0x474

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1692
    const/16 v1, 0x81

    const-wide/16 v2, 0x17e

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1693
    const/16 v1, 0x82

    const-wide/16 v2, 0x40c

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1694
    const/16 v1, 0x83

    const-wide/16 v2, 0x336

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1695
    const/16 v1, 0x84

    const-wide/16 v2, 0x36f

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1696
    const/16 v1, 0x85

    const-wide/16 v2, 0x788

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1697
    const/16 v1, 0x86

    const-wide/16 v2, 0x33e

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1698
    const/16 v1, 0x87

    const-wide/16 v2, 0x3ad

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1699
    const/16 v1, 0x88

    const-wide/16 v2, 0x362

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1700
    const/16 v1, 0x89

    const-wide/16 v2, 0x79b

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1701
    const/16 v1, 0x8a

    const-wide/16 v2, 0x414

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1702
    const/16 v1, 0x8b

    const-wide/16 v2, 0x754

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1703
    const/16 v1, 0x8c

    const-wide/16 v2, 0xf76

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1704
    const/16 v1, 0x8d

    const-wide/16 v2, 0x9d3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1705
    const/16 v1, 0x8e

    const-wide/16 v2, 0x36d

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1706
    const/16 v1, 0x8f

    const-wide/16 v2, 0x953

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1707
    const/16 v1, 0x90

    const-wide/16 v2, 0x4b1a

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1708
    const/16 v1, 0x91

    const-wide/16 v2, 0x522c

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1709
    const/16 v1, 0x92

    const-wide/16 v2, 0x3e5f

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1710
    const/16 v1, 0x93

    const-wide/16 v2, 0x7680

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1711
    const/16 v1, 0x94

    const-wide/16 v2, 0x53ba

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1712
    const/16 v1, 0x95

    const-wide/16 v2, 0x4177

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1713
    const/16 v1, 0x96

    const-wide/16 v2, 0x4719

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1714
    const/16 v1, 0x97

    const-wide/16 v2, 0x4095

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1715
    const/16 v1, 0x136

    const-wide/16 v2, 0xaad

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1716
    const/16 v1, 0x137

    const-wide/16 v2, 0x50d7

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1717
    const/16 v1, 0x138

    const-wide/16 v2, 0x129f

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1718
    const/16 v1, 0x139

    const-wide/16 v2, 0x3d46

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1720
    const/16 v1, 0x98

    const-wide/16 v2, 0x42

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1721
    const/16 v1, 0x99

    const-wide/16 v2, 0x129

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1722
    const/16 v1, 0x9a

    const-wide/16 v2, 0x92

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1723
    const-wide/16 v1, 0x1e

    const/16 v3, 0x9

    invoke-virtual {v0, v3, v1, v2}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1724
    const/16 v1, 0xa

    const-wide/16 v2, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1725
    const/16 v1, 0x9c

    const-wide/16 v2, 0x2c5

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1726
    const/16 v1, 0xa5

    const-wide/16 v2, 0xc73

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1727
    const/16 v1, 0xa6

    const-wide/16 v2, 0x3a7

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1728
    const/16 v1, 0xa7

    const-wide/16 v2, 0x97

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1730
    const/16 v1, 0x10e

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1731
    const/16 v1, 0x10f

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1732
    const/16 v1, 0x110

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1733
    const/16 v1, 0x111

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1734
    const/16 v1, 0x112

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1735
    const/16 v1, 0x113

    invoke-virtual {v0, v1, v9, v10}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1736
    const/16 v1, 0x114

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1737
    const/16 v1, 0x115

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1738
    const/16 v1, 0x116

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1739
    const/16 v1, 0x117

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1740
    const/16 v1, 0x118

    const-wide/16 v5, 0x1a2b

    invoke-virtual {v0, v1, v5, v6}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1741
    const/16 v1, 0x119

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1742
    const/16 v1, 0x11a

    const-wide/16 v5, 0x64

    invoke-virtual {v0, v1, v5, v6}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1743
    const/16 v1, 0x11b

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1744
    const/16 v1, 0x11c

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1745
    const/16 v1, 0x11d

    const-wide/16 v2, 0x79

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1746
    const/16 v1, 0x11e

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1747
    const/16 v1, 0x11f

    const-wide/16 v2, 0x1a2b

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1749
    const/16 v1, 0xb

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1750
    const-wide/16 v1, 0x28

    const/16 v3, 0xc

    invoke-virtual {v0, v3, v1, v2}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1751
    const-wide/16 v1, 0x32

    invoke-virtual {v0, v4, v1, v2}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1754
    const/16 v1, 0x134

    const-wide/16 v2, 0x104

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1757
    const/16 v1, 0x133

    const-wide/16 v2, 0x840

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1760
    const/16 v1, 0xb4

    const-wide/16 v2, 0x3570

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1761
    const/16 v1, 0xb5

    const-wide/16 v2, 0x3cf2

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1762
    const/16 v1, 0xb6

    const-wide/16 v2, 0x4883

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1763
    const/16 v1, 0xb7

    const-wide/16 v2, 0x2a11

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1764
    const/16 v1, 0xb8

    const-wide/16 v2, 0x17fc

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1765
    const/16 v1, 0xb9

    const-wide/16 v2, 0x30d9

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1766
    const/16 v1, 0xba

    const-wide/16 v2, 0x4004

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1767
    const/16 v1, 0xbb

    const-wide/16 v2, 0x1942

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1768
    const/16 v1, 0xbc

    const-wide/16 v2, 0x4ade

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1769
    const/16 v1, 0xbd

    const-wide/16 v2, 0x3c8d

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1770
    const/16 v1, 0xbe

    const-wide/16 v2, 0x1d42

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1771
    const/16 v1, 0xbf

    const-wide/16 v2, 0x5d76

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1772
    const/16 v1, 0xc0

    const-wide/16 v2, 0x22c1

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1773
    const/16 v1, 0xc1

    const-wide/16 v2, 0x3ee0

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1774
    const/16 v1, 0xc2

    const-wide/16 v2, 0x3420

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1775
    const/16 v1, 0xc3

    const-wide/16 v2, 0x1ad8

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1776
    const/16 v1, 0xc4

    const-wide/16 v2, 0x41d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1777
    const/16 v1, 0xc5

    const-wide/16 v2, 0x515e

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1778
    const/16 v1, 0xc6

    const-wide/16 v2, 0x615e

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1779
    const/16 v1, 0xc7

    const-wide/16 v2, 0x16d4

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1780
    const/16 v1, 0xc8

    const-wide/16 v2, 0x47a5

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1781
    const/16 v1, 0xc9

    const-wide/16 v2, 0x202a

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1782
    const/16 v1, 0xca

    const-wide/16 v2, 0x4678

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1783
    const/16 v1, 0xcb

    const-wide/16 v2, 0x18b4

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1784
    const/16 v1, 0xcc

    const-wide/16 v2, 0x39b6

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1785
    const/16 v1, 0xcd

    const-wide/16 v2, 0x458f

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1786
    const/16 v1, 0xce

    const-wide/16 v2, 0x4dfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1787
    const/16 v1, 0xcf

    const-wide/16 v2, 0x56ce

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1788
    const/16 v1, 0xd0

    const-wide/16 v2, 0x2b28

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1789
    const/16 v1, 0xd1

    const-wide/16 v2, 0x6026

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1790
    const/16 v1, 0xd2

    const-wide/16 v2, 0x3f76

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1791
    const/16 v1, 0xd3

    const-wide/16 v2, 0x5d10

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1792
    const/16 v1, 0xd4

    const-wide/16 v2, 0x504c

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1793
    const/16 v1, 0xd5

    const-wide/16 v2, 0x47d7

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1794
    const/16 v1, 0xd6

    const-wide/16 v2, 0x1c3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1795
    const/16 v1, 0xd7

    const-wide/16 v2, 0x3c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1796
    const/16 v1, 0xd8

    const-wide/16 v2, 0x656

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1797
    const/16 v1, 0xd9

    const-wide/16 v2, 0x56c

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1798
    const/16 v1, 0xda

    const-wide/16 v2, 0x833

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1799
    const/16 v1, 0xdb

    const-wide/16 v2, 0x23a

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1800
    const/16 v1, 0xdc

    const-wide/16 v2, 0x156

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1801
    const/16 v1, 0xdd

    const-wide/16 v2, 0x220

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1802
    const/16 v1, 0xde

    const-wide/16 v2, 0x1c9

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1803
    const/16 v1, 0xdf

    const-wide/16 v2, 0xbd0

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1804
    const/16 v1, 0xe0

    const-wide/16 v2, 0x8ff

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1805
    const/16 v1, 0xe1

    const-wide/16 v2, 0x6a1

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1806
    const/16 v1, 0xe2

    const-wide/16 v2, 0x5e2

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1807
    const/16 v1, 0xe3

    const-wide/16 v2, 0x765

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1808
    const/16 v1, 0xe4

    const-wide/16 v2, 0x588

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1809
    const/16 v1, 0xe5

    const-wide/16 v2, 0x579

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1810
    const/16 v1, 0xe6

    const-wide/16 v2, 0x62f

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1811
    const/16 v1, 0xe7

    const-wide/16 v2, 0x44c

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1812
    const/16 v1, 0xe8

    const-wide/16 v2, 0x367

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1813
    const/16 v1, 0xe9

    const-wide/16 v2, 0x756

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1814
    const/16 v1, 0xea

    const-wide/16 v2, 0x264

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1815
    const/16 v1, 0xeb

    const-wide/16 v2, 0x34a

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1816
    const/16 v1, 0xec

    const-wide/16 v2, 0x42b

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1817
    const/16 v1, 0xed

    const-wide/16 v2, 0x89e

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1818
    const/16 v1, 0xee

    const-wide/16 v2, 0x843

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1819
    const/16 v1, 0xef

    const-wide/16 v2, 0x945

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1820
    const/16 v1, 0xf0

    const-wide/16 v2, 0x7eff

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1821
    const/16 v1, 0xf1

    const-wide/32 v2, 0x890e

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1822
    const/16 v1, 0xf2

    const-wide/32 v2, 0x9664

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1823
    const/16 v1, 0xf3

    const-wide/16 v2, 0x578a

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1824
    const/16 v1, 0xf4

    const-wide/16 v2, 0x4e8c

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1825
    const/16 v1, 0xf5

    const-wide/16 v2, 0x2958

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1826
    const/16 v1, 0xf6

    const-wide/16 v2, 0x480a

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1827
    const/16 v1, 0xf7

    const-wide/16 v2, 0x6bdb

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1828
    const/16 v1, 0xf8

    const-wide/16 v2, 0x6724

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1829
    const/16 v1, 0xf9

    const-wide/16 v2, 0x1da6

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1830
    const/16 v1, 0xfa

    const-wide/32 v2, 0xc39d

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1831
    const/16 v1, 0xfb

    const-wide/16 v2, 0x5f89

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1832
    const/16 v1, 0xfc

    const-wide/16 v2, 0x57d8

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1833
    const/16 v1, 0xfd

    const-wide/16 v2, 0x322f

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1834
    const/16 v1, 0xfe

    const-wide/16 v2, 0x4f4b

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1835
    const/16 v1, 0xff

    const-wide/16 v2, 0x5ae0

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1836
    const/16 v1, 0x100

    const-wide/16 v2, 0x4877

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1837
    const/16 v1, 0x10c

    const-wide/32 v2, 0xcbb7

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1838
    const/16 v1, 0x10d

    const-wide/32 v2, 0xcd84

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1840
    const/16 v1, 0x15e

    const-wide/32 v2, 0xe5e5

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1841
    const/16 v1, 0x120

    const-wide/16 v2, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1842
    const/16 v1, 0x121

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1845
    const/16 v1, 0x140

    const-wide/16 v2, 0x7092

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1846
    const/16 v1, 0x141

    const-wide/16 v2, 0x5460

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1847
    const/16 v1, 0x142

    const-wide/16 v2, 0x4aed

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1848
    const/16 v1, 0x143

    const-wide/16 v2, 0x49df

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1849
    const/16 v1, 0x144

    const-wide/16 v2, 0x495a

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1850
    const/16 v1, 0x145

    const-wide/16 v2, 0x5d02

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1851
    const/16 v1, 0x146

    const-wide/16 v2, 0x618a

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1852
    const/16 v1, 0x147

    const-wide/16 v2, 0x4557

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1853
    const/16 v1, 0x148

    const-wide/16 v2, 0x5de8

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1854
    const/16 v1, 0x149

    const-wide/16 v2, 0x5a33

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1855
    const/16 v1, 0x14a

    const-wide/16 v2, 0x1013

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1856
    const/16 v1, 0x14b

    const-wide/16 v2, 0xbe4

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1857
    const/16 v1, 0x14c

    const-wide/16 v2, 0xf64

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1858
    const/16 v1, 0x14d

    const-wide/16 v2, 0xc0a

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1859
    const/16 v1, 0x14e

    const-wide/16 v2, 0xbbf

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1860
    const/16 v1, 0x14f

    const-wide/16 v2, 0x86b

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1861
    const/16 v1, 0x150

    const-wide/16 v2, 0x96c

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1862
    const/16 v1, 0x151

    const-wide/16 v2, 0xe40

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1863
    const/16 v1, 0x152

    const-wide/16 v2, 0x1b4

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1864
    const/16 v1, 0x153

    const-wide/16 v2, 0x5b4

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1866
    const/16 v1, 0x155

    const-wide/16 v2, 0x725e

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1867
    const/16 v1, 0x156

    const-wide/16 v2, 0x6c9c

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1868
    const/16 v1, 0x157

    const-wide/16 v2, 0x14b

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1869
    const/16 v1, 0x158

    const-wide/16 v2, 0x182

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1870
    const/16 v1, 0x159

    const-wide/16 v2, 0x4d9c

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1871
    const/16 v1, 0x15a

    const-wide/16 v2, 0x462b

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1873
    const/16 v1, 0x13a

    const-wide/16 v2, 0x438

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1875
    const/16 v1, 0x15f

    const-wide/16 v2, 0x4021

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1876
    const/16 v1, 0x160

    const-wide/16 v2, 0xac3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1878
    const/16 v1, 0x168

    const-wide/32 v2, 0x9123

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1879
    const/16 v1, 0x169

    const-wide/16 v2, 0x3c0a

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1880
    const/16 v1, 0x16b

    const-wide/32 v2, 0xac3e

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1881
    const/16 v1, 0x16c

    const-wide/16 v2, 0x55d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1882
    const/16 v1, 0x16d

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1883
    const/16 v1, 0x16e

    const-wide/16 v2, 0x12d

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1885
    const/16 v1, 0x12e

    invoke-virtual {v0, v1, v9, v10}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1886
    const/16 v1, 0x12f

    const-wide/16 v2, 0x1a

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1887
    const/16 v1, 0x130

    invoke-virtual {v0, v1, v9, v10}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1888
    const/16 v1, 0x131

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1890
    const/16 v1, 0x9d

    const-wide/16 v2, 0x24

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1891
    const/16 v1, 0x9e

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1892
    const/16 v1, 0x9f

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1894
    const/16 v1, 0x13b

    const-wide/16 v2, 0x2929

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1895
    const/16 v1, 0x13c

    const-wide/16 v2, 0xd4

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1896
    const/16 v1, 0x13d

    const-wide/32 v2, 0x8281

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 2567
    new-instance v0, Lcom/oplus/os/WaveformEffect$1;

    invoke-direct {v0}, Lcom/oplus/os/WaveformEffect$1;-><init>()V

    sput-object v0, Lcom/oplus/os/WaveformEffect;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 3

    .line 1923
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1909
    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/os/WaveformEffect;->mEffectType:I

    .line 1910
    const/4 v1, 0x1

    iput v1, p0, Lcom/oplus/os/WaveformEffect;->mEffectStrength:I

    .line 1911
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oplus/os/WaveformEffect;->mEffectLoop:Z

    .line 1916
    iput v0, p0, Lcom/oplus/os/WaveformEffect;->mRingtoneVibrateType:I

    .line 1917
    iput-boolean v2, p0, Lcom/oplus/os/WaveformEffect;->mIsRingtoneCustomized:Z

    .line 1918
    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/os/WaveformEffect;->mRingtoneFilePath:Ljava/lang/String;

    .line 1919
    iput-boolean v1, p0, Lcom/oplus/os/WaveformEffect;->mStrengthSettingEnabled:Z

    .line 1920
    iput-boolean v2, p0, Lcom/oplus/os/WaveformEffect;->mAsynchronous:Z

    .line 1921
    iput v2, p0, Lcom/oplus/os/WaveformEffect;->mUsageHint:I

    .line 1924
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 2555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1909
    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/os/WaveformEffect;->mEffectType:I

    .line 1910
    const/4 v1, 0x1

    iput v1, p0, Lcom/oplus/os/WaveformEffect;->mEffectStrength:I

    .line 1911
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oplus/os/WaveformEffect;->mEffectLoop:Z

    .line 1916
    iput v0, p0, Lcom/oplus/os/WaveformEffect;->mRingtoneVibrateType:I

    .line 1917
    iput-boolean v2, p0, Lcom/oplus/os/WaveformEffect;->mIsRingtoneCustomized:Z

    .line 1918
    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/os/WaveformEffect;->mRingtoneFilePath:Ljava/lang/String;

    .line 1919
    iput-boolean v1, p0, Lcom/oplus/os/WaveformEffect;->mStrengthSettingEnabled:Z

    .line 1920
    iput-boolean v2, p0, Lcom/oplus/os/WaveformEffect;->mAsynchronous:Z

    .line 1921
    iput v2, p0, Lcom/oplus/os/WaveformEffect;->mUsageHint:I

    .line 2556
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/os/WaveformEffect;->mEffectType:I

    .line 2557
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/os/WaveformEffect;->mEffectStrength:I

    .line 2558
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/os/WaveformEffect;->mEffectLoop:Z

    .line 2559
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/os/WaveformEffect;->mRingtoneVibrateType:I

    .line 2560
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/os/WaveformEffect;->mIsRingtoneCustomized:Z

    .line 2561
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/os/WaveformEffect;->mRingtoneFilePath:Ljava/lang/String;

    .line 2562
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/os/WaveformEffect;->mStrengthSettingEnabled:Z

    .line 2563
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/os/WaveformEffect;->mAsynchronous:Z

    .line 2564
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/os/WaveformEffect;->mUsageHint:I

    .line 2565
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/oplus/os/WaveformEffect-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/os/WaveformEffect;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/oplus/os/WaveformEffect-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/os/WaveformEffect;-><init>()V

    return-void
.end method

.method public static whitelist getRingtoneTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "ringtoneName"    # Ljava/lang/String;

    .line 2053
    const-string v0, ""

    .line 2054
    .local v0, "ringtoneTitle":Ljava/lang/String;
    sget-object v1, Lcom/oplus/os/WaveformEffect;->RINGTONE_FILENAME_TITLE:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2055
    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 2057
    :cond_0
    return-object v0
.end method

.method public static whitelist getRingtoneWaveFormEffect(Ljava/lang/String;)I
    .locals 3
    .param p0, "ringtoneTitle"    # Ljava/lang/String;

    .line 2118
    const/4 v0, -0x1

    .line 2119
    .local v0, "ringtoneWaveFormEffect":I
    sget-object v1, Lcom/oplus/os/WaveformEffect;->RINGTONE_TITLE_EFFECTS:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2120
    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2122
    :cond_0
    return v0
.end method

.method public static whitelist getWaveFormIndex(I)I
    .locals 3
    .param p0, "effectType"    # I

    .line 1962
    const/4 v0, -0x1

    .line 1963
    .local v0, "waveFormindex":I
    sget-object v1, Lcom/oplus/os/WaveformEffect;->WAVEFORMINDEX_EFFECTS:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_0

    .line 1964
    invoke-virtual {v1, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    goto :goto_0

    .line 1965
    :cond_0
    sget-object v1, Lcom/oplus/os/WaveformEffect;->RTPINDEX_EFFECTS:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_1

    .line 1966
    invoke-virtual {v1, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    goto :goto_0

    .line 1968
    :cond_1
    const/4 v0, -0x1

    .line 1970
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWaveFormDurationArray effectType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " waveFormIndexArray="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WaveformEffect"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    return v0
.end method

.method public static whitelist getWaveFormIndexDurationArray(I)[J
    .locals 4
    .param p0, "effectType"    # I

    .line 1996
    const-wide/16 v0, 0x0

    .line 1997
    .local v0, "duration":J
    sget-object v2, Lcom/oplus/os/WaveformEffect;->WAVEFORM_INDEX_DURATION:Landroid/util/SparseLongArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_0

    .line 1998
    invoke-virtual {v2, p0}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v0

    .line 2000
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWaveFormIndexDurationArray effectType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " duration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WaveformEffect"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2001
    const/4 v2, 0x1

    new-array v2, v2, [J

    const/4 v3, 0x0

    aput-wide v0, v2, v3

    .line 2002
    .local v2, "durationArray":[J
    return-object v2
.end method

.method public static whitelist isRtpIndexTouchWaveFormEffect(I)Z
    .locals 1
    .param p0, "type"    # I

    .line 2102
    sparse-switch p0, :sswitch_data_0

    .line 2113
    const/4 v0, 0x0

    return v0

    .line 2111
    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x6e -> :sswitch_0
        0x6f -> :sswitch_0
        0x70 -> :sswitch_0
        0x12e -> :sswitch_0
        0x12f -> :sswitch_0
        0x130 -> :sswitch_0
        0x131 -> :sswitch_0
    .end sparse-switch
.end method

.method public static whitelist isRtpTouchWaveFormEffect(I)Z
    .locals 1
    .param p0, "type"    # I

    .line 2061
    sparse-switch p0, :sswitch_data_0

    .line 2097
    const/4 v0, 0x0

    return v0

    .line 2095
    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x98 -> :sswitch_0
        0x99 -> :sswitch_0
        0x9a -> :sswitch_0
        0x9c -> :sswitch_0
        0x9d -> :sswitch_0
        0x9e -> :sswitch_0
        0x9f -> :sswitch_0
        0xa5 -> :sswitch_0
        0xa6 -> :sswitch_0
        0xa7 -> :sswitch_0
        0x10e -> :sswitch_0
        0x10f -> :sswitch_0
        0x110 -> :sswitch_0
        0x111 -> :sswitch_0
        0x112 -> :sswitch_0
        0x113 -> :sswitch_0
        0x114 -> :sswitch_0
        0x115 -> :sswitch_0
        0x116 -> :sswitch_0
        0x117 -> :sswitch_0
        0x118 -> :sswitch_0
        0x119 -> :sswitch_0
        0x11a -> :sswitch_0
        0x11b -> :sswitch_0
        0x11c -> :sswitch_0
        0x11d -> :sswitch_0
        0x11e -> :sswitch_0
        0x11f -> :sswitch_0
        0x12e -> :sswitch_0
        0x12f -> :sswitch_0
        0x130 -> :sswitch_0
        0x131 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 2539
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 2584
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 2585
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2586
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/oplus/os/WaveformEffect;

    .line 2587
    .local v2, "that":Lcom/oplus/os/WaveformEffect;
    iget v3, p0, Lcom/oplus/os/WaveformEffect;->mEffectType:I

    invoke-virtual {v2}, Lcom/oplus/os/WaveformEffect;->getEffectType()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/oplus/os/WaveformEffect;->mEffectStrength:I

    .line 2588
    invoke-virtual {v2}, Lcom/oplus/os/WaveformEffect;->getEffectStrength()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/oplus/os/WaveformEffect;->mEffectLoop:Z

    .line 2589
    invoke-virtual {v2}, Lcom/oplus/os/WaveformEffect;->getEffectLoop()Z

    move-result v4

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/oplus/os/WaveformEffect;->mRingtoneVibrateType:I

    .line 2590
    invoke-virtual {v2}, Lcom/oplus/os/WaveformEffect;->getRingtoneVibrateType()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/oplus/os/WaveformEffect;->mIsRingtoneCustomized:Z

    .line 2591
    invoke-virtual {v2}, Lcom/oplus/os/WaveformEffect;->getIsRingtoneCustomized()Z

    move-result v4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/oplus/os/WaveformEffect;->mRingtoneFilePath:Ljava/lang/String;

    .line 2592
    invoke-virtual {v2}, Lcom/oplus/os/WaveformEffect;->getRingtoneFilePath()Ljava/lang/String;

    move-result-object v4

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/oplus/os/WaveformEffect;->mStrengthSettingEnabled:Z

    .line 2593
    invoke-virtual {v2}, Lcom/oplus/os/WaveformEffect;->getStrengthSettingEnabled()Z

    move-result v4

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/oplus/os/WaveformEffect;->mAsynchronous:Z

    .line 2594
    invoke-virtual {v2}, Lcom/oplus/os/WaveformEffect;->getAsynchronous()Z

    move-result v4

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/oplus/os/WaveformEffect;->mUsageHint:I

    .line 2595
    invoke-virtual {v2}, Lcom/oplus/os/WaveformEffect;->getUsageHint()I

    move-result v4

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 2587
    :goto_0
    return v0

    .line 2585
    .end local v2    # "that":Lcom/oplus/os/WaveformEffect;
    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getAsynchronous()Z
    .locals 1

    .line 2030
    iget-boolean v0, p0, Lcom/oplus/os/WaveformEffect;->mAsynchronous:Z

    return v0
.end method

.method public whitelist getEffectLoop()Z
    .locals 1

    .line 2010
    iget-boolean v0, p0, Lcom/oplus/os/WaveformEffect;->mEffectLoop:Z

    return v0
.end method

.method public whitelist getEffectStrength()I
    .locals 1

    .line 2006
    iget v0, p0, Lcom/oplus/os/WaveformEffect;->mEffectStrength:I

    return v0
.end method

.method public whitelist getEffectType()I
    .locals 1

    .line 1931
    iget v0, p0, Lcom/oplus/os/WaveformEffect;->mEffectType:I

    return v0
.end method

.method public whitelist getIsRingtoneCustomized()Z
    .locals 1

    .line 2018
    iget-boolean v0, p0, Lcom/oplus/os/WaveformEffect;->mIsRingtoneCustomized:Z

    return v0
.end method

.method public whitelist getRingtoneFilePath()Ljava/lang/String;
    .locals 1

    .line 2022
    iget-object v0, p0, Lcom/oplus/os/WaveformEffect;->mRingtoneFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRingtoneVibrateType()I
    .locals 1

    .line 2014
    iget v0, p0, Lcom/oplus/os/WaveformEffect;->mRingtoneVibrateType:I

    return v0
.end method

.method public whitelist getStrengthSettingEnabled()Z
    .locals 1

    .line 2026
    iget-boolean v0, p0, Lcom/oplus/os/WaveformEffect;->mStrengthSettingEnabled:Z

    return v0
.end method

.method public whitelist getUsageHint()I
    .locals 1

    .line 2034
    iget v0, p0, Lcom/oplus/os/WaveformEffect;->mUsageHint:I

    return v0
.end method

.method public whitelist getWaveFormDurationArray()[J
    .locals 6

    .line 1975
    const-wide/16 v0, 0x0

    .line 1976
    .local v0, "duration":J
    sget-object v2, Lcom/oplus/os/WaveformEffect;->WAVEFORM_EFFECT_DURATION:Landroid/util/SparseLongArray;

    iget v3, p0, Lcom/oplus/os/WaveformEffect;->mEffectType:I

    invoke-virtual {v2, v3}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_0

    .line 1977
    iget v3, p0, Lcom/oplus/os/WaveformEffect;->mEffectType:I

    invoke-virtual {v2, v3}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v0

    .line 1979
    :cond_0
    const/4 v3, 0x1

    new-array v3, v3, [J

    const/4 v4, 0x0

    aput-wide v0, v3, v4

    .line 1980
    .local v3, "durationArray":[J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getWaveFormDurationArray mEffectType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/oplus/os/WaveformEffect;->mEffectType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " duration="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " indexOfKey="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/oplus/os/WaveformEffect;->mEffectType:I

    .line 1981
    invoke-virtual {v2, v5}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1980
    const-string v4, "WaveformEffect"

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    return-object v3
.end method

.method public whitelist getWaveFormDurationArray(I)[J
    .locals 4
    .param p1, "effectType"    # I

    .line 1986
    const-wide/16 v0, 0x0

    .line 1987
    .local v0, "duration":J
    sget-object v2, Lcom/oplus/os/WaveformEffect;->WAVEFORM_EFFECT_DURATION:Landroid/util/SparseLongArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_0

    .line 1988
    invoke-virtual {v2, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v0

    .line 1990
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWaveFormDurationArray effectType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " duration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WaveformEffect"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    const/4 v2, 0x1

    new-array v2, v2, [J

    const/4 v3, 0x0

    aput-wide v0, v2, v3

    .line 1992
    .local v2, "durationArray":[J
    return-object v2
.end method

.method public whitelist getWaveFormIndexArray()[I
    .locals 3

    .line 1935
    const/4 v0, -0x1

    .line 1936
    .local v0, "waveFormindex":I
    sget-object v1, Lcom/oplus/os/WaveformEffect;->WAVEFORMINDEX_EFFECTS:Landroid/util/SparseIntArray;

    iget v2, p0, Lcom/oplus/os/WaveformEffect;->mEffectType:I

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_0

    .line 1937
    iget v2, p0, Lcom/oplus/os/WaveformEffect;->mEffectType:I

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    goto :goto_0

    .line 1938
    :cond_0
    sget-object v1, Lcom/oplus/os/WaveformEffect;->RTPINDEX_EFFECTS:Landroid/util/SparseIntArray;

    iget v2, p0, Lcom/oplus/os/WaveformEffect;->mEffectType:I

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_1

    .line 1939
    iget v2, p0, Lcom/oplus/os/WaveformEffect;->mEffectType:I

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    goto :goto_0

    .line 1941
    :cond_1
    const/4 v0, -0x1

    .line 1943
    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 1944
    .local v1, "waveFormIndexArray":[I
    return-object v1
.end method

.method public whitelist getWaveFormIndexArray(I)[I
    .locals 4
    .param p1, "effectType"    # I

    .line 1948
    const/4 v0, -0x1

    .line 1949
    .local v0, "waveFormindex":I
    sget-object v1, Lcom/oplus/os/WaveformEffect;->WAVEFORMINDEX_EFFECTS:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_0

    .line 1950
    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    goto :goto_0

    .line 1951
    :cond_0
    sget-object v1, Lcom/oplus/os/WaveformEffect;->RTPINDEX_EFFECTS:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_1

    .line 1952
    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    goto :goto_0

    .line 1954
    :cond_1
    const/4 v0, -0x1

    .line 1956
    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 1957
    .local v1, "waveFormIndexArray":[I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWaveFormDurationArray effectType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " waveFormIndexArray="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WaveformEffect"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1958
    return-object v1
.end method

.method public whitelist getWaveFormNodeType()I
    .locals 3

    .line 2038
    iget v0, p0, Lcom/oplus/os/WaveformEffect;->mRingtoneVibrateType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 2039
    sget-object v0, Lcom/oplus/os/WaveformEffect;->WAVEFORMINDEX_EFFECTS:Landroid/util/SparseIntArray;

    iget v2, p0, Lcom/oplus/os/WaveformEffect;->mEffectType:I

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 2040
    const/4 v0, 0x1

    return v0

    .line 2041
    :cond_0
    sget-object v0, Lcom/oplus/os/WaveformEffect;->RTPINDEX_EFFECTS:Landroid/util/SparseIntArray;

    iget v2, p0, Lcom/oplus/os/WaveformEffect;->mEffectType:I

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 2042
    const/4 v0, 0x2

    return v0

    .line 2044
    :cond_1
    return v1

    .line 2048
    :cond_2
    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 2600
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 2605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2606
    .local v0, "msg":Ljava/lang/StringBuilder;
    const-string v1, "WaveformEffect { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2607
    const-string v1, ", effectType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oplus/os/WaveformEffect;->mEffectType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2608
    const-string v1, ", effectStrength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oplus/os/WaveformEffect;->mEffectStrength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2609
    const-string v1, ", effectLoop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oplus/os/WaveformEffect;->mEffectLoop:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2610
    const-string v1, ", ringtoneVibrateType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oplus/os/WaveformEffect;->mRingtoneVibrateType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2611
    const-string v1, ", isRingtoneCustomized="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oplus/os/WaveformEffect;->mIsRingtoneCustomized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2612
    const-string v1, ", ringtoneFilePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/os/WaveformEffect;->mRingtoneFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2613
    const-string v1, ", strengthSettingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oplus/os/WaveformEffect;->mStrengthSettingEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2614
    const-string v1, ", asynchronous="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oplus/os/WaveformEffect;->mAsynchronous:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2615
    const-string v1, ", usageHint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oplus/os/WaveformEffect;->mUsageHint:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2616
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2617
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2544
    iget v0, p0, Lcom/oplus/os/WaveformEffect;->mEffectType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2545
    iget v0, p0, Lcom/oplus/os/WaveformEffect;->mEffectStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2546
    iget-boolean v0, p0, Lcom/oplus/os/WaveformEffect;->mEffectLoop:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2547
    iget v0, p0, Lcom/oplus/os/WaveformEffect;->mRingtoneVibrateType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2548
    iget-boolean v0, p0, Lcom/oplus/os/WaveformEffect;->mIsRingtoneCustomized:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2549
    iget-object v0, p0, Lcom/oplus/os/WaveformEffect;->mRingtoneFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2550
    iget-boolean v0, p0, Lcom/oplus/os/WaveformEffect;->mStrengthSettingEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2551
    iget-boolean v0, p0, Lcom/oplus/os/WaveformEffect;->mAsynchronous:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2552
    iget v0, p0, Lcom/oplus/os/WaveformEffect;->mUsageHint:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2553
    return-void
.end method
