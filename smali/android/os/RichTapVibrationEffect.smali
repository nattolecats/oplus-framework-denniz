.class public Landroid/os/RichTapVibrationEffect;
.super Ljava/lang/Object;
.source "RichTapVibrationEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/RichTapVibrationEffect$PatternHe;,
        Landroid/os/RichTapVibrationEffect$HapticParameter;,
        Landroid/os/RichTapVibrationEffect$PatternHeParameter;,
        Landroid/os/RichTapVibrationEffect$Envelope;,
        Landroid/os/RichTapVibrationEffect$ExtPrebaked;,
        Landroid/os/RichTapVibrationEffect$SenderId;
    }
.end annotation


# static fields
.field private static final blacklist AAC_CLIENT:I = 0xff0000

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/VibrationEffect;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist DEFAULT_EXT_PREBAKED_STRENGTH:Ljava/lang/String; = null

.field private static final blacklist EFFECT_ID_START:I = 0x1000

.field private static final blacklist MAJOR_RICHTAP_VERSION:I = 0x2000

.field private static final blacklist MINOR_RICHTAP_VERSION:I = 0x10

.field private static final blacklist OPLUS_CLIENT:I = 0x10000

.field private static final blacklist PARCEL_TOKEN_ENVELOPE:I = 0x7f0

.field private static final blacklist PARCEL_TOKEN_EXT_PREBAKED:I = 0x7ee

.field private static final blacklist PARCEL_TOKEN_HAPTIC_PARAMETER:I = 0x7f3

.field private static final blacklist PARCEL_TOKEN_PATTERN_HE:I = 0x7f1

.field private static final blacklist PARCEL_TOKEN_PATTERN_HE_LOOP_PARAMETER:I = 0x7f2

.field private static final blacklist PARCEL_TOKEN_RTP_STREAM:I = 0x7ef

.field private static final blacklist TAG:Ljava/lang/String; = "RichTapVibrationEffect"

.field private static final blacklist VIBRATION_EFFECT_SUPPORT_NO:I = 0x2

.field private static final blacklist VIBRATION_EFFECT_SUPPORT_UNKNOWN:I = 0x0

.field private static final blacklist VIBRATION_EFFECT_SUPPORT_YES:I = 0x1

.field private static blacklist commonEffects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist effectStrength:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist mIsSupportRichtap:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 55
    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstacne()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v0

    const-string v1, "oplus.software.vibrator_richctap"

    invoke-virtual {v0, v1}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/os/RichTapVibrationEffect;->mIsSupportRichtap:Z

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/RichTapVibrationEffect;->commonEffects:Ljava/util/Map;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/RichTapVibrationEffect;->effectStrength:Ljava/util/Map;

    .line 61
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "LIGHT"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Landroid/os/RichTapVibrationEffect;->effectStrength:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIUM"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Landroid/os/RichTapVibrationEffect;->effectStrength:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "STRONG"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sput-object v2, Landroid/os/RichTapVibrationEffect;->DEFAULT_EXT_PREBAKED_STRENGTH:Ljava/lang/String;

    .line 777
    new-instance v0, Landroid/os/RichTapVibrationEffect$1;

    invoke-direct {v0}, Landroid/os/RichTapVibrationEffect$1;-><init>()V

    sput-object v0, Landroid/os/RichTapVibrationEffect;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method public static whitelist checkIfRichTapSupport()I
    .locals 3

    .line 126
    sget-boolean v0, Landroid/os/RichTapVibrationEffect;->mIsSupportRichtap:Z

    if-nez v0, :cond_0

    .line 127
    const/4 v0, 0x2

    return v0

    .line 129
    :cond_0
    const v0, 0x12010

    .line 130
    .local v0, "mRichTapSupport":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkIfRichTapSupport mRichTapSupport:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RichTapVibrationEffect"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return v0
.end method

.method public static whitelist createEnvelope([I[I[IZI)Landroid/os/VibrationEffect;
    .locals 7
    .param p0, "relativeTimeArr"    # [I
    .param p1, "scaleArr"    # [I
    .param p2, "freqArr"    # [I
    .param p3, "steepMode"    # Z
    .param p4, "amplitude"    # I

    .line 87
    new-instance v6, Landroid/os/RichTapVibrationEffect$Envelope;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/os/RichTapVibrationEffect$Envelope;-><init>([I[I[IZI)V

    .line 88
    .local v0, "effect":Landroid/os/VibrationEffect;
    invoke-virtual {v0}, Landroid/os/VibrationEffect;->validate()V

    .line 89
    return-object v0
.end method

.method public static whitelist createExtPreBaked(II)Landroid/os/VibrationEffect;
    .locals 3
    .param p0, "effectId"    # I
    .param p1, "strength"    # I

    .line 78
    sget-object v0, Landroid/os/RichTapVibrationEffect;->effectStrength:Ljava/util/Map;

    sget-object v1, Landroid/os/RichTapVibrationEffect;->DEFAULT_EXT_PREBAKED_STRENGTH:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 80
    .local v0, "strengthValue":I
    new-instance v1, Landroid/os/RichTapVibrationEffect$ExtPrebaked;

    add-int/lit16 v2, p0, 0x1000

    invoke-direct {v1, v2, p1}, Landroid/os/RichTapVibrationEffect$ExtPrebaked;-><init>(II)V

    .line 81
    .local v1, "effect":Landroid/os/VibrationEffect;
    invoke-virtual {v1}, Landroid/os/VibrationEffect;->validate()V

    .line 82
    return-object v1
.end method

.method public static final whitelist createExtendedEffect(Landroid/os/Parcel;)Landroid/os/VibrationEffect;
    .locals 2
    .param p0, "in"    # Landroid/os/Parcel;

    .line 772
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    .line 773
    .local v0, "offset":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 774
    sget-object v1, Landroid/os/RichTapVibrationEffect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/VibrationEffect;

    return-object v1
.end method

.method public static whitelist createHapticParameter([II)Landroid/os/VibrationEffect;
    .locals 1
    .param p0, "param"    # [I
    .param p1, "length"    # I

    .line 102
    new-instance v0, Landroid/os/RichTapVibrationEffect$HapticParameter;

    invoke-direct {v0, p0, p1}, Landroid/os/RichTapVibrationEffect$HapticParameter;-><init>([II)V

    .line 103
    .local v0, "effect":Landroid/os/VibrationEffect;
    invoke-virtual {v0}, Landroid/os/VibrationEffect;->validate()V

    .line 104
    return-object v0
.end method

.method public static whitelist createPatternHeParameter(III)Landroid/os/VibrationEffect;
    .locals 1
    .param p0, "interval"    # I
    .param p1, "amplitude"    # I
    .param p2, "freq"    # I

    .line 95
    new-instance v0, Landroid/os/RichTapVibrationEffect$PatternHeParameter;

    invoke-direct {v0, p0, p1, p2}, Landroid/os/RichTapVibrationEffect$PatternHeParameter;-><init>(III)V

    .line 96
    .local v0, "effect":Landroid/os/VibrationEffect;
    invoke-virtual {v0}, Landroid/os/VibrationEffect;->validate()V

    .line 97
    return-object v0
.end method

.method public static whitelist createPatternHeWithParam([IIIII)Landroid/os/VibrationEffect;
    .locals 7
    .param p0, "patternInfo"    # [I
    .param p1, "looper"    # I
    .param p2, "interval"    # I
    .param p3, "amplitude"    # I
    .param p4, "freq"    # I

    .line 109
    new-instance v6, Landroid/os/RichTapVibrationEffect$PatternHe;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/os/RichTapVibrationEffect$PatternHe;-><init>([IIIII)V

    .line 110
    .local v0, "effect":Landroid/os/VibrationEffect;
    invoke-virtual {v0}, Landroid/os/VibrationEffect;->validate()V

    .line 111
    return-object v0
.end method

.method public static final blacklist isExtendedEffect(I)Z
    .locals 1
    .param p0, "token"    # I

    .line 757
    packed-switch p0, :pswitch_data_0

    .line 766
    const/4 v0, 0x0

    return v0

    .line 764
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x7ee
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
