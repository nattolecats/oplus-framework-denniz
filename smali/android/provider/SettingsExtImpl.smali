.class public Landroid/provider/SettingsExtImpl;
.super Ljava/lang/Object;
.source "SettingsExtImpl.java"

# interfaces
.implements Landroid/provider/ISettingsExt;


# static fields
.field private static final blacklist INITIAL_VALUE:I = 0x0

.field public static blacklist TAG:Ljava/lang/String; = null

.field private static final blacklist USER_MULTI_APP:I = 0x3e7

.field private static final blacklist USER_SYSTEM:I

.field private static blacklist sACTUALMAXBRIGHTNESS:I

.field private static blacklist sACTUALMINBRIGHTNESS:I

.field private static volatile blacklist sInstance:Landroid/provider/SettingsExtImpl;

.field private static blacklist sMAXBRIGHTNESS:I

.field private static blacklist sTALKBACKMAX:I

.field private static blacklist sTALKBACKMIN:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 48
    const-string v0, "SettingsExtImpl"

    sput-object v0, Landroid/provider/SettingsExtImpl;->TAG:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    sput v0, Landroid/provider/SettingsExtImpl;->sMAXBRIGHTNESS:I

    .line 60
    sput v0, Landroid/provider/SettingsExtImpl;->sACTUALMAXBRIGHTNESS:I

    .line 61
    sput v0, Landroid/provider/SettingsExtImpl;->sACTUALMINBRIGHTNESS:I

    .line 62
    sput v0, Landroid/provider/SettingsExtImpl;->sTALKBACKMAX:I

    .line 63
    sput v0, Landroid/provider/SettingsExtImpl;->sTALKBACKMIN:I

    .line 66
    const/4 v0, 0x0

    sput-object v0, Landroid/provider/SettingsExtImpl;->sInstance:Landroid/provider/SettingsExtImpl;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "base"    # Ljava/lang/Object;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method private blacklist getBrightnessFortalkback(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 8
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # I

    .line 170
    sget v0, Landroid/provider/SettingsExtImpl;->sTALKBACKMAX:I

    if-eqz v0, :cond_0

    sget v0, Landroid/provider/SettingsExtImpl;->sTALKBACKMIN:I

    if-nez v0, :cond_1

    .line 171
    :cond_0
    const/16 v0, 0xff

    const-string v1, "sys.internal.screen_brightness_talkback_max"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/provider/SettingsExtImpl;->sTALKBACKMAX:I

    .line 172
    const-string v0, "sys.internal.screen_brightness_talkback_min"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/provider/SettingsExtImpl;->sTALKBACKMIN:I

    .line 175
    :cond_1
    sget v0, Landroid/provider/SettingsExtImpl;->sACTUALMINBRIGHTNESS:I

    if-eqz v0, :cond_2

    sget v0, Landroid/provider/SettingsExtImpl;->sACTUALMAXBRIGHTNESS:I

    if-nez v0, :cond_3

    .line 176
    :cond_2
    sget v0, Landroid/provider/SettingsExtImpl;->sTALKBACKMAX:I

    const-string v1, "sys.oplus.multibrightness"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/provider/SettingsExtImpl;->sACTUALMAXBRIGHTNESS:I

    .line 177
    sget v0, Landroid/provider/SettingsExtImpl;->sTALKBACKMIN:I

    const-string v1, "sys.oplus.multibrightness.min"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/provider/SettingsExtImpl;->sACTUALMINBRIGHTNESS:I

    .line 180
    :cond_3
    sget v0, Landroid/provider/SettingsExtImpl;->sACTUALMAXBRIGHTNESS:I

    sget v1, Landroid/provider/SettingsExtImpl;->sACTUALMINBRIGHTNESS:I

    sub-int/2addr v0, v1

    int-to-double v2, v0

    sget v0, Landroid/provider/SettingsExtImpl;->sTALKBACKMAX:I

    sget v4, Landroid/provider/SettingsExtImpl;->sTALKBACKMIN:I

    sub-int/2addr v0, v4

    int-to-double v4, v0

    div-double/2addr v2, v4

    .line 181
    .local v2, "brightnessStep":D
    invoke-static {p3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 182
    .local v0, "val":I
    sget v1, Landroid/provider/SettingsExtImpl;->sACTUALMINBRIGHTNESS:I

    sub-int v1, v0, v1

    int-to-double v4, v1

    div-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v1, v4

    sget v4, Landroid/provider/SettingsExtImpl;->sTALKBACKMIN:I

    add-int/2addr v1, v4

    .line 183
    .local v1, "result":I
    if-ne v1, v4, :cond_4

    .line 184
    add-int/lit8 v1, v1, 0x1

    .line 186
    :cond_4
    sget-object v4, Landroid/provider/SettingsExtImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBrightnessFortalkback: ( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "); brightnessStep = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Talkback Range ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Landroid/provider/SettingsExtImpl;->sTALKBACKMIN:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ~ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v7, Landroid/provider/SettingsExtImpl;->sTALKBACKMAX:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "); Actual Range ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v7, Landroid/provider/SettingsExtImpl;->sACTUALMINBRIGHTNESS:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Landroid/provider/SettingsExtImpl;->sACTUALMAXBRIGHTNESS:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    return v1
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Landroid/provider/SettingsExtImpl;
    .locals 2
    .param p0, "base"    # Ljava/lang/Object;

    .line 72
    sget-object v0, Landroid/provider/SettingsExtImpl;->sInstance:Landroid/provider/SettingsExtImpl;

    if-nez v0, :cond_1

    .line 73
    const-class v0, Landroid/provider/SettingsExtImpl;

    monitor-enter v0

    .line 74
    :try_start_0
    sget-object v1, Landroid/provider/SettingsExtImpl;->sInstance:Landroid/provider/SettingsExtImpl;

    if-nez v1, :cond_0

    .line 75
    new-instance v1, Landroid/provider/SettingsExtImpl;

    invoke-direct {v1, p0}, Landroid/provider/SettingsExtImpl;-><init>(Ljava/lang/Object;)V

    sput-object v1, Landroid/provider/SettingsExtImpl;->sInstance:Landroid/provider/SettingsExtImpl;

    .line 77
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 80
    :cond_1
    :goto_0
    sget-object v0, Landroid/provider/SettingsExtImpl;->sInstance:Landroid/provider/SettingsExtImpl;

    return-object v0
.end method

.method private blacklist isTalkback(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 2
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;

    .line 225
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.marvin.talkback"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 226
    const-string v0, "screen_brightness"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    const/4 v0, 0x1

    return v0

    .line 229
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist putBrightnessFortalkback(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 8
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # I

    .line 194
    sget v0, Landroid/provider/SettingsExtImpl;->sTALKBACKMAX:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget v0, Landroid/provider/SettingsExtImpl;->sTALKBACKMIN:I

    if-nez v0, :cond_1

    .line 195
    :cond_0
    const/16 v0, 0xff

    const-string v2, "sys.internal.screen_brightness_talkback_max"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/provider/SettingsExtImpl;->sTALKBACKMAX:I

    .line 196
    const-string v0, "sys.internal.screen_brightness_talkback_min"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/provider/SettingsExtImpl;->sTALKBACKMIN:I

    .line 199
    :cond_1
    sget v0, Landroid/provider/SettingsExtImpl;->sACTUALMINBRIGHTNESS:I

    if-eqz v0, :cond_2

    sget v0, Landroid/provider/SettingsExtImpl;->sACTUALMAXBRIGHTNESS:I

    if-nez v0, :cond_3

    .line 200
    :cond_2
    sget v0, Landroid/provider/SettingsExtImpl;->sTALKBACKMAX:I

    const-string v2, "sys.oplus.multibrightness"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/provider/SettingsExtImpl;->sACTUALMAXBRIGHTNESS:I

    .line 201
    sget v0, Landroid/provider/SettingsExtImpl;->sTALKBACKMIN:I

    const-string v2, "sys.oplus.multibrightness.min"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/provider/SettingsExtImpl;->sACTUALMINBRIGHTNESS:I

    .line 204
    :cond_3
    sget v0, Landroid/provider/SettingsExtImpl;->sACTUALMAXBRIGHTNESS:I

    sget v2, Landroid/provider/SettingsExtImpl;->sACTUALMINBRIGHTNESS:I

    sub-int/2addr v0, v2

    int-to-double v2, v0

    sget v0, Landroid/provider/SettingsExtImpl;->sTALKBACKMAX:I

    sget v4, Landroid/provider/SettingsExtImpl;->sTALKBACKMIN:I

    sub-int/2addr v0, v4

    int-to-double v5, v0

    div-double/2addr v2, v5

    .line 205
    .local v2, "brightnessStep":D
    sub-int v0, p3, v4

    int-to-double v4, v0

    mul-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v0, v4

    sget v4, Landroid/provider/SettingsExtImpl;->sACTUALMINBRIGHTNESS:I

    add-int/2addr v0, v4

    .line 206
    .local v0, "result":I
    const/4 v4, 0x0

    const-string v5, "screen_brightness_mode"

    invoke-static {p1, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 207
    .local v4, "mode":I
    if-ne v1, v4, :cond_5

    .line 210
    if-gez v0, :cond_4

    .line 211
    sget-object v1, Landroid/provider/SettingsExtImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "putBrightnessFortalkback input wrong value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_4
    sget v1, Landroid/provider/SettingsExtImpl;->sTALKBACKMIN:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 215
    const-string v1, "screen_auto_brightness_adj_talkback"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 217
    :cond_5
    sget-object v1, Landroid/provider/SettingsExtImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "putBrightnessFortalkback: ( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "); brightnessStep = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Talkback Range ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Landroid/provider/SettingsExtImpl;->sTALKBACKMIN:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ~ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v7, Landroid/provider/SettingsExtImpl;->sTALKBACKMAX:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "); Actual Range ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v7, Landroid/provider/SettingsExtImpl;->sACTUALMINBRIGHTNESS:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Landroid/provider/SettingsExtImpl;->sACTUALMAXBRIGHTNESS:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    return v0
.end method


# virtual methods
.method public blacklist addKeyToPublicSettings(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 162
    .local p1, "publicSettings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, "screen_auto_brightness_adj_talkback"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 164
    return-void
.end method

.method public blacklist getAutoBrightnessValueForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 111
    const/high16 v0, -0x80000000

    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/provider/SettingsExtImpl;->isTalkback(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Landroid/provider/SettingsExtImpl;->getBrightnessFortalkback(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 118
    :cond_0
    sget v1, Landroid/provider/SettingsExtImpl;->sMAXBRIGHTNESS:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "screen_auto_brightness_adj"

    const-string v3, "screen_brightness"

    if-nez v1, :cond_2

    :try_start_1
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 119
    :cond_1
    const-string v1, "sys.oplus.multibrightness"

    const/4 v4, 0x0

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Landroid/provider/SettingsExtImpl;->sMAXBRIGHTNESS:I

    .line 122
    :cond_2
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_3
    sget v1, Landroid/provider/SettingsExtImpl;->sMAXBRIGHTNESS:I

    const/16 v2, 0xff

    if-le v1, v2, :cond_6

    .line 123
    if-eqz p3, :cond_4

    .line 124
    invoke-static {p3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v1, v3

    sget v3, Landroid/provider/SettingsExtImpl;->sMAXBRIGHTNESS:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 125
    :cond_4
    nop

    :goto_0
    nop

    .line 126
    .local v0, "valueChanged":I
    if-le v0, v2, :cond_5

    goto :goto_1

    :cond_5
    move v2, v0

    :goto_1
    return v2

    .line 128
    .end local v0    # "valueChanged":I
    :cond_6
    return v0

    .line 130
    :catch_0
    move-exception v1

    .line 131
    .local v1, "e":Ljava/lang/NumberFormatException;
    sget-object v2, Landroid/provider/SettingsExtImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NumberFormatException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return v0
.end method

.method public blacklist getAutoBrightnessValueForUserWithDef(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "def"    # I

    .line 88
    :try_start_0
    sget v0, Landroid/provider/SettingsExtImpl;->sMAXBRIGHTNESS:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "screen_brightness"

    if-nez v0, :cond_0

    :try_start_1
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const-string v0, "sys.oplus.multibrightness"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/provider/SettingsExtImpl;->sMAXBRIGHTNESS:I

    .line 91
    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Landroid/provider/SettingsExtImpl;->sMAXBRIGHTNESS:I

    const/16 v1, 0xff

    if-le v0, v1, :cond_3

    .line 92
    move v0, p3

    .line 93
    .local v0, "valueChanged":I
    if-eqz p2, :cond_1

    .line 94
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x100

    .line 95
    .local v2, "brightnessValue":I
    int-to-float v3, v2

    sget v4, Landroid/provider/SettingsExtImpl;->sMAXBRIGHTNESS:I

    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v3

    .line 97
    .end local v2    # "brightnessValue":I
    :cond_1
    if-le v0, v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    return v1

    .line 99
    .end local v0    # "valueChanged":I
    :cond_3
    const/high16 v0, -0x80000000

    return v0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p3
.end method

.method public blacklist putAutoBrightnessValueForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "value"    # I

    .line 140
    invoke-direct {p0, p1, p3}, Landroid/provider/SettingsExtImpl;->isTalkback(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-direct {p0, p1, p3, p4}, Landroid/provider/SettingsExtImpl;->putBrightnessFortalkback(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 147
    :cond_0
    sget v0, Landroid/provider/SettingsExtImpl;->sMAXBRIGHTNESS:I

    const-string v1, "screen_brightness"

    if-nez v0, :cond_1

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    const/4 v0, 0x0

    const-string v2, "sys.oplus.multibrightness"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/provider/SettingsExtImpl;->sMAXBRIGHTNESS:I

    .line 150
    :cond_1
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Landroid/provider/SettingsExtImpl;->sMAXBRIGHTNESS:I

    const/16 v1, 0xff

    if-le v0, v1, :cond_2

    .line 151
    mul-int/2addr v0, p4

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 152
    .local v0, "brightnessValue":I
    return v0

    .line 154
    .end local v0    # "brightnessValue":I
    :cond_2
    return p4
.end method

.method public blacklist redirectUserIfNeeded(ILjava/lang/String;)I
    .locals 1
    .param p1, "userHandle"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 242
    const/16 v0, 0x3e7

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    const-string v0, "default_input_method"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    const/4 v0, 0x0

    return v0

    .line 245
    :cond_0
    return p1
.end method
