.class public Landroid/os/HapticPlayer;
.super Ljava/lang/Object;
.source "HapticPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/HapticPlayer$Pattern;,
        Landroid/os/HapticPlayer$ContinuousEvent;,
        Landroid/os/HapticPlayer$Point;,
        Landroid/os/HapticPlayer$TransientEvent;,
        Landroid/os/HapticPlayer$Event;
    }
.end annotation


# static fields
.field public static final whitelist ANDROID_VERSIONCODE_O:I = 0x1a

.field public static final whitelist CONTINUOUS_EVENT:I = 0x1000

.field public static final whitelist EVENT_KEY_DURATION:Ljava/lang/String; = "Duration"

.field public static final whitelist EVENT_KEY_EVENT:Ljava/lang/String; = "Event"

.field public static final whitelist EVENT_KEY_HE_CURVE:Ljava/lang/String; = "Curve"

.field public static final whitelist EVENT_KEY_HE_CURVE_POINT_TIME:Ljava/lang/String; = "Time"

.field public static final whitelist EVENT_KEY_HE_FREQUENCY:Ljava/lang/String; = "Frequency"

.field public static final whitelist EVENT_KEY_HE_INTENSITY:Ljava/lang/String; = "Intensity"

.field public static final whitelist EVENT_KEY_HE_PARAMETERS:Ljava/lang/String; = "Parameters"

.field public static final whitelist EVENT_KEY_HE_TYPE:Ljava/lang/String; = "Type"

.field public static final whitelist EVENT_KEY_RELATIVE_TIME:Ljava/lang/String; = "RelativeTime"

.field public static final whitelist EVENT_TYPE_HE_CONTINUOUS_NAME:Ljava/lang/String; = "continuous"

.field public static final whitelist EVENT_TYPE_HE_TRANSIENT_NAME:Ljava/lang/String; = "transient"

.field public static final whitelist FORMAT_VERSION:I = 0x2

.field public static final whitelist HE2_0_PATTERN_WRAP_NUM:I = 0xa

.field public static final whitelist HE_CURVE_POINT_0_FREQUENCY:I = 0x9

.field public static final whitelist HE_CURVE_POINT_0_INTENSITY:I = 0x8

.field public static final whitelist HE_CURVE_POINT_0_TIME:I = 0x7

.field public static final whitelist HE_DEFAULT_DURATION:I = 0x0

.field public static final whitelist HE_DEFAULT_RELATIVE_TIME:I = 0x190

.field public static final whitelist HE_DURATION:I = 0x4

.field public static final whitelist HE_FREQUENCY:I = 0x3

.field public static final whitelist HE_INTENSITY:I = 0x2

.field private static final blacklist HE_META_DATA_KEY:Ljava/lang/String; = "Metadata"

.field public static final whitelist HE_POINT_COUNT:I = 0x6

.field public static final whitelist HE_RELATIVE_TIME:I = 0x1

.field public static final whitelist HE_TYPE:I = 0x0

.field public static final whitelist HE_VALUE_LENGTH:I = 0x37

.field private static final blacklist HE_VERSION_KEY:Ljava/lang/String; = "Version"

.field public static final whitelist HE_VIB_INDEX:I = 0x5

.field private static final blacklist MAX_EVENT_COUNT:I = 0x10

.field private static final blacklist MAX_FREQ:I = 0x64

.field private static final blacklist MAX_INTENSITY:I = 0x64

.field private static final blacklist MAX_PATERN_EVENT_LAST_TIME:I = 0x1388

.field private static final blacklist MAX_PATERN_LAST_TIME:I = 0xc350

.field private static final blacklist MAX_POINT_COUNT:I = 0x10

.field public static final whitelist PATTERN_KEY_EVENT_VIB_ID:Ljava/lang/String; = "Index"

.field public static final whitelist PATTERN_KEY_PATTERN:Ljava/lang/String; = "Pattern"

.field public static final whitelist PATTERN_KEY_PATTERN_ABS_TIME:Ljava/lang/String; = "AbsoluteTime"

.field private static final blacklist PATTERN_KEY_PATTERN_LIST:Ljava/lang/String; = "PatternList"

.field private static final blacklist TAG:Ljava/lang/String; = "HapticPlayer"

.field public static final whitelist TRANSIENT_EVENT:I = 0x1001

.field private static final blacklist VIBRATION_EFFECT_SUPPORT_NO:I = 0x2

.field private static blacklist mAvailable:Z

.field private static blacklist mExcutor:Ljava/util/concurrent/ExecutorService;

.field private static blacklist mRichtapMajorVersion:I

.field private static blacklist mSeq:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final blacklist DEBUG:Z

.field private blacklist mEffect:Landroid/os/DynamicEffect;

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mService:Landroid/os/IVibratorManagerService;

.field private blacklist mStarted:Z

.field private final blacklist mToken:Landroid/os/Binder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmEffect(Landroid/os/HapticPlayer;)Landroid/os/DynamicEffect;
    .locals 0

    iget-object p0, p0, Landroid/os/HapticPlayer;->mEffect:Landroid/os/DynamicEffect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPackageName(Landroid/os/HapticPlayer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/os/HapticPlayer;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmService(Landroid/os/HapticPlayer;)Landroid/os/IVibratorManagerService;
    .locals 0

    iget-object p0, p0, Landroid/os/HapticPlayer;->mService:Landroid/os/IVibratorManagerService;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmToken(Landroid/os/HapticPlayer;)Landroid/os/Binder;
    .locals 0

    iget-object p0, p0, Landroid/os/HapticPlayer;->mToken:Landroid/os/Binder;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmStarted(Landroid/os/HapticPlayer;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/os/HapticPlayer;->mStarted:Z

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 36
    invoke-static {}, Landroid/os/HapticPlayer;->isSupportRichtap()Z

    move-result v0

    sput-boolean v0, Landroid/os/HapticPlayer;->mAvailable:Z

    .line 37
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Landroid/os/HapticPlayer;->mExcutor:Ljava/util/concurrent/ExecutorService;

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Landroid/os/HapticPlayer;->mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 41
    const/4 v0, 0x0

    sput v0, Landroid/os/HapticPlayer;->mRichtapMajorVersion:I

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/HapticPlayer;->DEBUG:Z

    .line 97
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/os/HapticPlayer;->mToken:Landroid/os/Binder;

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/HapticPlayer;->mStarted:Z

    .line 99
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HapticPlayer;->mPackageName:Ljava/lang/String;

    .line 100
    const-string v0, "vibrator_manager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IVibratorManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVibratorManagerService;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HapticPlayer;->mService:Landroid/os/IVibratorManagerService;

    .line 101
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/DynamicEffect;)V
    .locals 0
    .param p1, "effect"    # Landroid/os/DynamicEffect;

    .line 104
    invoke-direct {p0}, Landroid/os/HapticPlayer;-><init>()V

    .line 105
    iput-object p1, p0, Landroid/os/HapticPlayer;->mEffect:Landroid/os/DynamicEffect;

    .line 106
    return-void
.end method

.method private blacklist checkParam(III)Z
    .locals 3
    .param p1, "interval"    # I
    .param p2, "amplitude"    # I
    .param p3, "freq"    # I

    .line 783
    const/4 v0, 0x0

    const-string v1, "HapticPlayer"

    const/4 v2, -0x1

    if-gez p1, :cond_0

    if-eq p1, v2, :cond_0

    .line 784
    const-string v2, "wrong interval param"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    return v0

    .line 788
    :cond_0
    if-gez p3, :cond_1

    if-eq p3, v2, :cond_1

    .line 789
    const-string v2, "wrong freq param"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    return v0

    .line 793
    :cond_1
    if-gez p2, :cond_2

    if-ne p2, v2, :cond_3

    :cond_2
    const/16 v2, 0xff

    if-le p2, v2, :cond_4

    .line 794
    :cond_3
    const-string v2, "wrong amplitude param"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    return v0

    .line 797
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method private static blacklist checkSdkSupport(III)Z
    .locals 6
    .param p0, "richTapMajorVersion"    # I
    .param p1, "richTapMinorVersion"    # I
    .param p2, "heVersion"    # I

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "check richtap richTapMajorVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " heVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HapticPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const-string v0, "%x"

    const/16 v2, 0x16

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge p0, v2, :cond_0

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can not support he in richtap version:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return v3

    .line 176
    :cond_0
    if-ne p0, v2, :cond_1

    .line 177
    if-eq p2, v4, :cond_2

    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RichTap version is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-array v4, v4, [Ljava/lang/Object;

    .line 179
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " can not support he version: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return v3

    .line 182
    :cond_1
    const/16 v0, 0x17

    if-ne p0, v0, :cond_2

    .line 183
    if-eq p2, v4, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    .line 184
    return v3

    .line 187
    :cond_2
    return v4
.end method

.method public static whitelist getMajorVersion()I
    .locals 6

    .line 134
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_0

    .line 135
    return v1

    .line 137
    :cond_0
    invoke-static {}, Landroid/os/RichTapVibrationEffect;->checkIfRichTapSupport()I

    move-result v0

    .line 138
    .local v0, "support":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 139
    return v1

    .line 141
    :cond_1
    const/high16 v2, 0xff0000

    and-int/2addr v2, v0

    shr-int/lit8 v2, v2, 0x10

    .line 142
    .local v2, "clientCode":I
    const v3, 0xff00

    and-int/2addr v3, v0

    shr-int/lit8 v3, v3, 0x8

    .line 143
    .local v3, "majorVersion":I
    and-int/lit16 v4, v0, 0xff

    shr-int/lit8 v1, v4, 0x0

    .line 145
    .local v1, "minorVersion":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clientCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " majorVersion:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " minorVersion:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "HapticPlayer"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return v3
.end method

.method public static whitelist getMinorVersion()I
    .locals 6

    .line 153
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_0

    .line 154
    return v1

    .line 156
    :cond_0
    invoke-static {}, Landroid/os/RichTapVibrationEffect;->checkIfRichTapSupport()I

    move-result v0

    .line 157
    .local v0, "support":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 158
    return v1

    .line 160
    :cond_1
    const/high16 v2, 0xff0000

    and-int/2addr v2, v0

    shr-int/lit8 v2, v2, 0x10

    .line 161
    .local v2, "clientCode":I
    const v3, 0xff00

    and-int/2addr v3, v0

    shr-int/lit8 v3, v3, 0x8

    .line 162
    .local v3, "majorVersion":I
    and-int/lit16 v4, v0, 0xff

    shr-int/lit8 v1, v4, 0x0

    .line 164
    .local v1, "minorVersion":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clientCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " majorVersion:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " minorVersion:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "HapticPlayer"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return v1
.end method

.method private blacklist getSerializationDataHe_1_0(Ljava/lang/String;)[I
    .locals 37
    .param p1, "patternString"    # Ljava/lang/String;

    .line 192
    move-object/from16 v1, p0

    const-string v0, "Duration"

    const-string v2, "Frequency"

    const-string v3, "Intensity"

    const-string v4, "RelativeTime"

    const/4 v5, 0x0

    .line 193
    .local v5, "relativeTimeLast":I
    const/4 v6, 0x0

    .line 194
    .local v6, "durationLast":I
    const/4 v7, 0x0

    .line 196
    .local v7, "patternHeInfo":[I
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    move-object/from16 v9, p1

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 197
    .local v8, "hapticObject":Lorg/json/JSONObject;
    const-string v10, "Pattern"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 198
    .local v10, "pattern":Lorg/json/JSONArray;
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v11

    const/16 v12, 0x10

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 199
    .local v11, "eventNumberTmp":I
    mul-int/lit8 v13, v11, 0x37

    .line 200
    .local v13, "len":I
    new-array v14, v13, [I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    move-object v7, v14

    .line 202
    const/4 v14, 0x1

    .line 204
    .local v14, "isCompliance":Z
    const/4 v15, 0x0

    .local v15, "ind":I
    :goto_0
    const-string v12, "HapticPlayer"

    move/from16 v18, v5

    .end local v5    # "relativeTimeLast":I
    .local v18, "relativeTimeLast":I
    if-ge v15, v11, :cond_14

    .line 205
    :try_start_1
    invoke-virtual {v10, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    move-object/from16 v20, v19

    .line 206
    .local v20, "patternObject":Lorg/json/JSONObject;
    const-string v5, "Event"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    move/from16 v21, v6

    move-object/from16 v6, v20

    .end local v20    # "patternObject":Lorg/json/JSONObject;
    .local v6, "patternObject":Lorg/json/JSONObject;
    .local v21, "durationLast":I
    :try_start_2
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 209
    .local v5, "eventObject":Lorg/json/JSONObject;
    move-object/from16 v20, v6

    .end local v6    # "patternObject":Lorg/json/JSONObject;
    .restart local v20    # "patternObject":Lorg/json/JSONObject;
    const-string v6, "Type"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 211
    .local v6, "name":Ljava/lang/String;
    move-object/from16 v22, v8

    .end local v8    # "hapticObject":Lorg/json/JSONObject;
    .local v22, "hapticObject":Lorg/json/JSONObject;
    const-string v8, "continuous"

    invoke-static {v8, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 212
    const/16 v8, 0x1000

    .local v8, "type":I
    goto :goto_1

    .line 213
    .end local v8    # "type":I
    :cond_0
    const-string v8, "transient"

    invoke-static {v8, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 214
    const/16 v8, 0x1001

    .line 222
    .restart local v8    # "type":I
    :goto_1
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    move-object/from16 v24, v6

    .end local v6    # "name":Ljava/lang/String;
    .local v24, "name":Ljava/lang/String;
    const-string v6, "event:"

    if-nez v23, :cond_1

    .line 223
    :try_start_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v23, v10

    .end local v10    # "pattern":Lorg/json/JSONArray;
    .local v23, "pattern":Lorg/json/JSONArray;
    const-string v10, " don\'t have relativeTime parameters,set default:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    mul-int/lit16 v10, v15, 0x190

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    mul-int/lit16 v9, v15, 0x190

    .end local v18    # "relativeTimeLast":I
    .local v9, "relativeTimeLast":I
    goto :goto_2

    .line 226
    .end local v9    # "relativeTimeLast":I
    .end local v23    # "pattern":Lorg/json/JSONArray;
    .restart local v10    # "pattern":Lorg/json/JSONArray;
    .restart local v18    # "relativeTimeLast":I
    :cond_1
    move-object/from16 v23, v10

    .end local v10    # "pattern":Lorg/json/JSONArray;
    .restart local v23    # "pattern":Lorg/json/JSONArray;
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .line 228
    .end local v18    # "relativeTimeLast":I
    .restart local v9    # "relativeTimeLast":I
    :goto_2
    const v10, 0xc350

    move-object/from16 v25, v4

    const/4 v4, 0x0

    :try_start_4
    invoke-direct {v1, v9, v4, v10}, Landroid/os/HapticPlayer;->isInTheInterval(III)Z

    move-result v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    if-nez v10, :cond_2

    .line 229
    :try_start_5
    const-string v0, "relativeTime must between 0 and 50000"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 230
    const/4 v14, 0x0

    .line 231
    move v5, v9

    move/from16 v29, v11

    move/from16 v27, v13

    move/from16 v6, v21

    goto/16 :goto_9

    .line 317
    .end local v5    # "eventObject":Lorg/json/JSONObject;
    .end local v8    # "type":I
    .end local v11    # "eventNumberTmp":I
    .end local v13    # "len":I
    .end local v14    # "isCompliance":Z
    .end local v15    # "ind":I
    .end local v20    # "patternObject":Lorg/json/JSONObject;
    .end local v22    # "hapticObject":Lorg/json/JSONObject;
    .end local v23    # "pattern":Lorg/json/JSONArray;
    .end local v24    # "name":Ljava/lang/String;
    :catch_0
    move-exception v0

    move v5, v9

    move/from16 v6, v21

    goto/16 :goto_b

    .line 234
    .restart local v5    # "eventObject":Lorg/json/JSONObject;
    .restart local v8    # "type":I
    .restart local v11    # "eventNumberTmp":I
    .restart local v13    # "len":I
    .restart local v14    # "isCompliance":Z
    .restart local v15    # "ind":I
    .restart local v20    # "patternObject":Lorg/json/JSONObject;
    .restart local v22    # "hapticObject":Lorg/json/JSONObject;
    .restart local v23    # "pattern":Lorg/json/JSONArray;
    .restart local v24    # "name":Ljava/lang/String;
    :cond_2
    :try_start_6
    const-string v4, "Parameters"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 235
    .local v4, "parametersObject":Lorg/json/JSONObject;
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 236
    .local v10, "intensity":I
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v26, v18

    .line 237
    .local v26, "frequency":I
    move/from16 v27, v13

    .end local v13    # "len":I
    .local v27, "len":I
    const/16 v13, 0x64

    move/from16 v28, v14

    const/4 v14, 0x0

    .end local v14    # "isCompliance":Z
    .local v28, "isCompliance":Z
    invoke-direct {v1, v10, v14, v13}, Landroid/os/HapticPlayer;->isInTheInterval(III)Z

    move-result v17

    if-eqz v17, :cond_12

    move/from16 v29, v11

    move/from16 v11, v26

    .end local v26    # "frequency":I
    .local v11, "frequency":I
    .local v29, "eventNumberTmp":I
    invoke-direct {v1, v11, v14, v13}, Landroid/os/HapticPlayer;->isInTheInterval(III)Z

    move-result v17

    if-nez v17, :cond_3

    move-object/from16 v16, v4

    move-object/from16 v31, v5

    move/from16 v30, v8

    move/from16 v36, v9

    goto/16 :goto_8

    .line 242
    :cond_3
    mul-int/lit8 v17, v15, 0x37

    add-int/lit8 v18, v17, 0x0

    aput v8, v7, v18

    .line 243
    mul-int/lit8 v14, v15, 0x37

    add-int/lit8 v14, v14, 0x1

    aput v9, v7, v14

    .line 244
    mul-int/lit8 v14, v15, 0x37

    add-int/lit8 v14, v14, 0x2

    aput v10, v7, v14

    .line 245
    mul-int/lit8 v14, v15, 0x37

    add-int/lit8 v14, v14, 0x3

    aput v11, v7, v14

    .line 247
    const/16 v14, 0x1000

    if-ne v14, v8, :cond_f

    .line 249
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    if-nez v14, :cond_4

    .line 250
    :try_start_7
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v14, " don\'t have duration parameters,set default:"

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 251
    const/4 v6, 0x0

    .end local v21    # "durationLast":I
    .local v6, "durationLast":I
    goto :goto_3

    .line 253
    .end local v6    # "durationLast":I
    .restart local v21    # "durationLast":I
    :cond_4
    :try_start_8
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 255
    .end local v21    # "durationLast":I
    .restart local v6    # "durationLast":I
    :goto_3
    const/16 v14, 0x1388

    const/4 v13, 0x0

    :try_start_9
    invoke-direct {v1, v6, v13, v14}, Landroid/os/HapticPlayer;->isInTheInterval(III)Z

    move-result v21
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    if-nez v21, :cond_5

    .line 256
    :try_start_a
    const-string v0, "duration must be less than 5000"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    .line 257
    const/4 v14, 0x0

    .line 258
    .end local v28    # "isCompliance":Z
    .restart local v14    # "isCompliance":Z
    move v5, v9

    goto/16 :goto_9

    .line 317
    .end local v4    # "parametersObject":Lorg/json/JSONObject;
    .end local v5    # "eventObject":Lorg/json/JSONObject;
    .end local v8    # "type":I
    .end local v10    # "intensity":I
    .end local v11    # "frequency":I
    .end local v14    # "isCompliance":Z
    .end local v15    # "ind":I
    .end local v20    # "patternObject":Lorg/json/JSONObject;
    .end local v22    # "hapticObject":Lorg/json/JSONObject;
    .end local v23    # "pattern":Lorg/json/JSONArray;
    .end local v24    # "name":Ljava/lang/String;
    .end local v27    # "len":I
    .end local v29    # "eventNumberTmp":I
    :catch_1
    move-exception v0

    move v5, v9

    goto/16 :goto_b

    .line 260
    .restart local v4    # "parametersObject":Lorg/json/JSONObject;
    .restart local v5    # "eventObject":Lorg/json/JSONObject;
    .restart local v8    # "type":I
    .restart local v10    # "intensity":I
    .restart local v11    # "frequency":I
    .restart local v15    # "ind":I
    .restart local v20    # "patternObject":Lorg/json/JSONObject;
    .restart local v22    # "hapticObject":Lorg/json/JSONObject;
    .restart local v23    # "pattern":Lorg/json/JSONArray;
    .restart local v24    # "name":Ljava/lang/String;
    .restart local v27    # "len":I
    .restart local v28    # "isCompliance":Z
    .restart local v29    # "eventNumberTmp":I
    :cond_5
    mul-int/lit8 v13, v15, 0x37

    add-int/lit8 v13, v13, 0x4

    :try_start_b
    aput v6, v7, v13

    .line 262
    mul-int/lit8 v13, v15, 0x37

    add-int/lit8 v13, v13, 0x5

    const/16 v17, 0x0

    aput v17, v7, v13

    .line 264
    const-string v13, "Curve"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 265
    .local v13, "curve":Lorg/json/JSONArray;
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v14

    move-object/from16 v26, v0

    const/16 v0, 0x10

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 266
    .local v14, "pointCount":I
    mul-int/lit8 v16, v15, 0x37

    add-int/lit8 v16, v16, 0x6

    aput v14, v7, v16

    .line 269
    const/16 v16, 0x0

    move/from16 v0, v16

    .local v0, "i":I
    :goto_4
    if-ge v0, v14, :cond_e

    .line 270
    invoke-virtual {v13, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    move-object/from16 v30, v16

    .line 272
    .local v30, "curveObject":Lorg/json/JSONObject;
    move-object/from16 v16, v4

    .end local v4    # "parametersObject":Lorg/json/JSONObject;
    .local v16, "parametersObject":Lorg/json/JSONObject;
    const-string v4, "Time"

    move-object/from16 v31, v5

    move-object/from16 v5, v30

    .end local v30    # "curveObject":Lorg/json/JSONObject;
    .local v5, "curveObject":Lorg/json/JSONObject;
    .local v31, "eventObject":Lorg/json/JSONObject;
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 273
    .local v4, "pointTime":I
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v32
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    const-wide/high16 v34, 0x4059000000000000L    # 100.0

    move/from16 v30, v8

    move/from16 v36, v9

    .end local v8    # "type":I
    .end local v9    # "relativeTimeLast":I
    .local v30, "type":I
    .local v36, "relativeTimeLast":I
    mul-double v8, v32, v34

    double-to-int v8, v8

    .line 274
    .local v8, "pointIntensity":I
    :try_start_c
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 275
    .local v9, "pointFrequency":I
    move-object/from16 v32, v2

    const/16 v2, -0x64

    if-nez v0, :cond_7

    if-nez v4, :cond_6

    if-nez v8, :cond_6

    move-object/from16 v33, v3

    const/16 v3, 0x64

    invoke-direct {v1, v9, v2, v3}, Landroid/os/HapticPlayer;->isInTheInterval(III)Z

    move-result v34

    if-nez v34, :cond_8

    goto :goto_5

    :cond_6
    move-object/from16 v33, v3

    .line 276
    :goto_5
    const-string v2, "first point\'s time,  intensity must be 0, frequency must between -100 and 100"

    invoke-static {v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const/4 v2, 0x0

    .line 278
    .end local v28    # "isCompliance":Z
    .local v2, "isCompliance":Z
    move v14, v2

    goto/16 :goto_6

    .line 275
    .end local v2    # "isCompliance":Z
    .restart local v28    # "isCompliance":Z
    :cond_7
    move-object/from16 v33, v3

    .line 279
    :cond_8
    if-lez v0, :cond_a

    add-int/lit8 v3, v14, -0x1

    if-ge v0, v3, :cond_a

    const/4 v2, 0x0

    const/16 v3, 0x1388

    invoke-direct {v1, v4, v2, v3}, Landroid/os/HapticPlayer;->isInTheInterval(III)Z

    move-result v17

    if-eqz v17, :cond_9

    const/16 v3, 0x64

    invoke-direct {v1, v8, v2, v3}, Landroid/os/HapticPlayer;->isInTheInterval(III)Z

    move-result v18

    if-eqz v18, :cond_9

    const/16 v2, -0x64

    invoke-direct {v1, v9, v2, v3}, Landroid/os/HapticPlayer;->isInTheInterval(III)Z

    move-result v35

    if-nez v35, :cond_a

    .line 281
    :cond_9
    const-string v2, "point\'s time must be less than 5000, intensity must between 0~1, frequency must between -100 and 100"

    invoke-static {v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const/4 v2, 0x0

    .line 283
    .end local v28    # "isCompliance":Z
    .restart local v2    # "isCompliance":Z
    move v14, v2

    goto/16 :goto_6

    .line 284
    .end local v2    # "isCompliance":Z
    .restart local v28    # "isCompliance":Z
    :cond_a
    add-int/lit8 v2, v14, -0x1

    if-ne v2, v0, :cond_c

    if-ne v4, v6, :cond_b

    if-nez v8, :cond_b

    const/16 v2, -0x64

    const/16 v3, 0x64

    invoke-direct {v1, v9, v2, v3}, Landroid/os/HapticPlayer;->isInTheInterval(III)Z

    move-result v2

    if-nez v2, :cond_d

    .line 285
    :cond_b
    const-string v2, "last point\'s time must equal with duration, and intensity must be 0, frequency must between -100 and 100"

    invoke-static {v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const/4 v2, 0x0

    .line 287
    .end local v28    # "isCompliance":Z
    .restart local v2    # "isCompliance":Z
    move v14, v2

    goto :goto_6

    .line 284
    .end local v2    # "isCompliance":Z
    .restart local v28    # "isCompliance":Z
    :cond_c
    const/16 v3, 0x64

    .line 290
    :cond_d
    mul-int/lit8 v2, v15, 0x37

    mul-int/lit8 v18, v0, 0x3

    add-int/lit8 v18, v18, 0x7

    add-int v2, v2, v18

    aput v4, v7, v2

    .line 291
    mul-int/lit8 v2, v15, 0x37

    mul-int/lit8 v18, v0, 0x3

    add-int/lit8 v18, v18, 0x8

    add-int v2, v2, v18

    aput v8, v7, v2

    .line 292
    mul-int/lit8 v2, v15, 0x37

    mul-int/lit8 v18, v0, 0x3

    add-int/lit8 v18, v18, 0x9

    add-int v2, v2, v18

    aput v9, v7, v2

    .line 269
    .end local v4    # "pointTime":I
    .end local v5    # "curveObject":Lorg/json/JSONObject;
    .end local v8    # "pointIntensity":I
    .end local v9    # "pointFrequency":I
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v4, v16

    move/from16 v8, v30

    move-object/from16 v5, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    move/from16 v9, v36

    goto/16 :goto_4

    .end local v16    # "parametersObject":Lorg/json/JSONObject;
    .end local v30    # "type":I
    .end local v31    # "eventObject":Lorg/json/JSONObject;
    .end local v36    # "relativeTimeLast":I
    .local v4, "parametersObject":Lorg/json/JSONObject;
    .local v5, "eventObject":Lorg/json/JSONObject;
    .local v8, "type":I
    .local v9, "relativeTimeLast":I
    :cond_e
    move-object/from16 v32, v2

    move-object/from16 v33, v3

    move-object/from16 v16, v4

    move-object/from16 v31, v5

    move/from16 v30, v8

    move/from16 v36, v9

    .end local v4    # "parametersObject":Lorg/json/JSONObject;
    .end local v5    # "eventObject":Lorg/json/JSONObject;
    .end local v8    # "type":I
    .end local v9    # "relativeTimeLast":I
    .restart local v16    # "parametersObject":Lorg/json/JSONObject;
    .restart local v30    # "type":I
    .restart local v31    # "eventObject":Lorg/json/JSONObject;
    .restart local v36    # "relativeTimeLast":I
    move/from16 v14, v28

    goto :goto_6

    .line 317
    .end local v0    # "i":I
    .end local v10    # "intensity":I
    .end local v11    # "frequency":I
    .end local v13    # "curve":Lorg/json/JSONArray;
    .end local v14    # "pointCount":I
    .end local v15    # "ind":I
    .end local v16    # "parametersObject":Lorg/json/JSONObject;
    .end local v20    # "patternObject":Lorg/json/JSONObject;
    .end local v22    # "hapticObject":Lorg/json/JSONObject;
    .end local v23    # "pattern":Lorg/json/JSONArray;
    .end local v24    # "name":Ljava/lang/String;
    .end local v27    # "len":I
    .end local v28    # "isCompliance":Z
    .end local v29    # "eventNumberTmp":I
    .end local v30    # "type":I
    .end local v31    # "eventObject":Lorg/json/JSONObject;
    .end local v36    # "relativeTimeLast":I
    .restart local v9    # "relativeTimeLast":I
    :catch_2
    move-exception v0

    move/from16 v36, v9

    move/from16 v5, v36

    .end local v9    # "relativeTimeLast":I
    .restart local v36    # "relativeTimeLast":I
    goto/16 :goto_b

    .line 247
    .end local v6    # "durationLast":I
    .end local v36    # "relativeTimeLast":I
    .restart local v4    # "parametersObject":Lorg/json/JSONObject;
    .restart local v5    # "eventObject":Lorg/json/JSONObject;
    .restart local v8    # "type":I
    .restart local v9    # "relativeTimeLast":I
    .restart local v10    # "intensity":I
    .restart local v11    # "frequency":I
    .restart local v15    # "ind":I
    .restart local v20    # "patternObject":Lorg/json/JSONObject;
    .restart local v21    # "durationLast":I
    .restart local v22    # "hapticObject":Lorg/json/JSONObject;
    .restart local v23    # "pattern":Lorg/json/JSONArray;
    .restart local v24    # "name":Ljava/lang/String;
    .restart local v27    # "len":I
    .restart local v28    # "isCompliance":Z
    .restart local v29    # "eventNumberTmp":I
    :cond_f
    move-object/from16 v26, v0

    move-object/from16 v32, v2

    move-object/from16 v33, v3

    move-object/from16 v16, v4

    move-object/from16 v31, v5

    move/from16 v30, v8

    move/from16 v36, v9

    .end local v4    # "parametersObject":Lorg/json/JSONObject;
    .end local v5    # "eventObject":Lorg/json/JSONObject;
    .end local v8    # "type":I
    .end local v9    # "relativeTimeLast":I
    .restart local v16    # "parametersObject":Lorg/json/JSONObject;
    .restart local v30    # "type":I
    .restart local v31    # "eventObject":Lorg/json/JSONObject;
    .restart local v36    # "relativeTimeLast":I
    move/from16 v6, v21

    move/from16 v14, v28

    .line 295
    .end local v21    # "durationLast":I
    .end local v28    # "isCompliance":Z
    .restart local v6    # "durationLast":I
    .local v14, "isCompliance":Z
    :goto_6
    if-nez v14, :cond_10

    move/from16 v5, v36

    goto/16 :goto_9

    .line 298
    :cond_10
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_7
    const/16 v2, 0x37

    if-ge v0, v2, :cond_11

    .line 299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "patternHeInfo["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    mul-int/lit8 v3, v15, 0x37

    add-int/2addr v3, v0

    aget v3, v7, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    .line 298
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 317
    .end local v0    # "i":I
    .end local v10    # "intensity":I
    .end local v11    # "frequency":I
    .end local v14    # "isCompliance":Z
    .end local v15    # "ind":I
    .end local v16    # "parametersObject":Lorg/json/JSONObject;
    .end local v20    # "patternObject":Lorg/json/JSONObject;
    .end local v22    # "hapticObject":Lorg/json/JSONObject;
    .end local v23    # "pattern":Lorg/json/JSONArray;
    .end local v24    # "name":Ljava/lang/String;
    .end local v27    # "len":I
    .end local v29    # "eventNumberTmp":I
    .end local v30    # "type":I
    .end local v31    # "eventObject":Lorg/json/JSONObject;
    :catch_3
    move-exception v0

    move/from16 v5, v36

    goto/16 :goto_b

    .line 204
    .restart local v14    # "isCompliance":Z
    .restart local v15    # "ind":I
    .restart local v22    # "hapticObject":Lorg/json/JSONObject;
    .restart local v23    # "pattern":Lorg/json/JSONArray;
    .restart local v27    # "len":I
    .restart local v29    # "eventNumberTmp":I
    :cond_11
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v9, p1

    move-object/from16 v8, v22

    move-object/from16 v10, v23

    move-object/from16 v4, v25

    move-object/from16 v0, v26

    move/from16 v13, v27

    move/from16 v11, v29

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    move/from16 v5, v36

    const/16 v12, 0x10

    goto/16 :goto_0

    .line 237
    .end local v6    # "durationLast":I
    .end local v14    # "isCompliance":Z
    .end local v29    # "eventNumberTmp":I
    .end local v36    # "relativeTimeLast":I
    .restart local v4    # "parametersObject":Lorg/json/JSONObject;
    .restart local v5    # "eventObject":Lorg/json/JSONObject;
    .restart local v8    # "type":I
    .restart local v9    # "relativeTimeLast":I
    .restart local v10    # "intensity":I
    .local v11, "eventNumberTmp":I
    .restart local v20    # "patternObject":Lorg/json/JSONObject;
    .restart local v21    # "durationLast":I
    .restart local v24    # "name":Ljava/lang/String;
    .restart local v26    # "frequency":I
    .restart local v28    # "isCompliance":Z
    :cond_12
    move-object/from16 v16, v4

    move-object/from16 v31, v5

    move/from16 v30, v8

    move/from16 v36, v9

    move/from16 v29, v11

    move/from16 v11, v26

    .line 238
    .end local v4    # "parametersObject":Lorg/json/JSONObject;
    .end local v5    # "eventObject":Lorg/json/JSONObject;
    .end local v8    # "type":I
    .end local v9    # "relativeTimeLast":I
    .end local v26    # "frequency":I
    .local v11, "frequency":I
    .restart local v16    # "parametersObject":Lorg/json/JSONObject;
    .restart local v29    # "eventNumberTmp":I
    .restart local v30    # "type":I
    .restart local v31    # "eventObject":Lorg/json/JSONObject;
    .restart local v36    # "relativeTimeLast":I
    :goto_8
    :try_start_d
    const-string v0, "intensity or frequency must between 0 and 100"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    .line 239
    const/4 v14, 0x0

    .line 240
    .end local v28    # "isCompliance":Z
    .restart local v14    # "isCompliance":Z
    move/from16 v6, v21

    move/from16 v5, v36

    goto :goto_9

    .line 317
    .end local v10    # "intensity":I
    .end local v11    # "frequency":I
    .end local v14    # "isCompliance":Z
    .end local v15    # "ind":I
    .end local v16    # "parametersObject":Lorg/json/JSONObject;
    .end local v20    # "patternObject":Lorg/json/JSONObject;
    .end local v22    # "hapticObject":Lorg/json/JSONObject;
    .end local v23    # "pattern":Lorg/json/JSONArray;
    .end local v24    # "name":Ljava/lang/String;
    .end local v27    # "len":I
    .end local v29    # "eventNumberTmp":I
    .end local v30    # "type":I
    .end local v31    # "eventObject":Lorg/json/JSONObject;
    :catch_4
    move-exception v0

    move/from16 v6, v21

    move/from16 v5, v36

    goto/16 :goto_b

    .end local v36    # "relativeTimeLast":I
    .restart local v9    # "relativeTimeLast":I
    :catch_5
    move-exception v0

    move/from16 v36, v9

    move/from16 v6, v21

    move/from16 v5, v36

    .end local v9    # "relativeTimeLast":I
    .restart local v36    # "relativeTimeLast":I
    goto/16 :goto_b

    .line 217
    .end local v36    # "relativeTimeLast":I
    .restart local v5    # "eventObject":Lorg/json/JSONObject;
    .local v6, "name":Ljava/lang/String;
    .local v10, "pattern":Lorg/json/JSONArray;
    .local v11, "eventNumberTmp":I
    .local v13, "len":I
    .restart local v14    # "isCompliance":Z
    .restart local v15    # "ind":I
    .restart local v18    # "relativeTimeLast":I
    .restart local v20    # "patternObject":Lorg/json/JSONObject;
    .restart local v22    # "hapticObject":Lorg/json/JSONObject;
    :cond_13
    move-object/from16 v31, v5

    move-object/from16 v24, v6

    move-object/from16 v23, v10

    move/from16 v29, v11

    move/from16 v27, v13

    move/from16 v28, v14

    .end local v5    # "eventObject":Lorg/json/JSONObject;
    .end local v6    # "name":Ljava/lang/String;
    .end local v10    # "pattern":Lorg/json/JSONArray;
    .end local v11    # "eventNumberTmp":I
    .end local v13    # "len":I
    .end local v14    # "isCompliance":Z
    .restart local v23    # "pattern":Lorg/json/JSONArray;
    .restart local v24    # "name":Ljava/lang/String;
    .restart local v27    # "len":I
    .restart local v28    # "isCompliance":Z
    .restart local v29    # "eventNumberTmp":I
    .restart local v31    # "eventObject":Lorg/json/JSONObject;
    :try_start_e
    const-string v0, "haven\'t get type value"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    .line 218
    const/4 v14, 0x0

    .line 219
    .end local v28    # "isCompliance":Z
    .restart local v14    # "isCompliance":Z
    move/from16 v5, v18

    move/from16 v6, v21

    goto :goto_9

    .line 317
    .end local v14    # "isCompliance":Z
    .end local v15    # "ind":I
    .end local v20    # "patternObject":Lorg/json/JSONObject;
    .end local v22    # "hapticObject":Lorg/json/JSONObject;
    .end local v23    # "pattern":Lorg/json/JSONArray;
    .end local v24    # "name":Ljava/lang/String;
    .end local v27    # "len":I
    .end local v29    # "eventNumberTmp":I
    .end local v31    # "eventObject":Lorg/json/JSONObject;
    :catch_6
    move-exception v0

    move/from16 v5, v18

    move/from16 v6, v21

    goto :goto_b

    .end local v21    # "durationLast":I
    .local v6, "durationLast":I
    :catch_7
    move-exception v0

    move/from16 v21, v6

    move/from16 v5, v18

    .end local v6    # "durationLast":I
    .restart local v21    # "durationLast":I
    goto :goto_b

    .line 204
    .end local v21    # "durationLast":I
    .restart local v6    # "durationLast":I
    .local v8, "hapticObject":Lorg/json/JSONObject;
    .restart local v10    # "pattern":Lorg/json/JSONArray;
    .restart local v11    # "eventNumberTmp":I
    .restart local v13    # "len":I
    .restart local v14    # "isCompliance":Z
    .restart local v15    # "ind":I
    :cond_14
    move/from16 v21, v6

    move-object/from16 v22, v8

    move-object/from16 v23, v10

    move/from16 v29, v11

    move/from16 v27, v13

    move/from16 v28, v14

    .end local v6    # "durationLast":I
    .end local v8    # "hapticObject":Lorg/json/JSONObject;
    .end local v10    # "pattern":Lorg/json/JSONArray;
    .end local v11    # "eventNumberTmp":I
    .end local v13    # "len":I
    .end local v14    # "isCompliance":Z
    .restart local v21    # "durationLast":I
    .restart local v22    # "hapticObject":Lorg/json/JSONObject;
    .restart local v23    # "pattern":Lorg/json/JSONArray;
    .restart local v27    # "len":I
    .restart local v28    # "isCompliance":Z
    .restart local v29    # "eventNumberTmp":I
    move/from16 v5, v18

    .line 304
    .end local v15    # "ind":I
    .end local v18    # "relativeTimeLast":I
    .end local v21    # "durationLast":I
    .end local v28    # "isCompliance":Z
    .local v5, "relativeTimeLast":I
    .restart local v6    # "durationLast":I
    .restart local v14    # "isCompliance":Z
    :goto_9
    if-nez v14, :cond_15

    .line 305
    :try_start_f
    const-string v0, "current he file data, isn\'t compliance!!!!!!!"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const/4 v0, 0x0

    return-object v0

    .line 309
    :cond_15
    add-int/lit8 v11, v29, -0x1

    const/16 v0, 0x37

    mul-int/2addr v11, v0

    const/4 v0, 0x0

    add-int/2addr v11, v0

    .line 310
    .local v11, "lastEventIndex":I
    aget v0, v7, v11

    const/16 v2, 0x1000

    if-ne v2, v0, :cond_16

    .line 311
    add-int v0, v5, v6

    .line 312
    .local v0, "totalDuration":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "last event type is continuous, totalDuration:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 314
    .end local v0    # "totalDuration":I
    :cond_16
    add-int/lit8 v0, v5, 0x50

    .line 315
    .restart local v0    # "totalDuration":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "last event type is transient, totalDuration:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8

    .line 319
    .end local v11    # "lastEventIndex":I
    .end local v14    # "isCompliance":Z
    .end local v22    # "hapticObject":Lorg/json/JSONObject;
    .end local v23    # "pattern":Lorg/json/JSONArray;
    .end local v27    # "len":I
    .end local v29    # "eventNumberTmp":I
    :goto_a
    goto :goto_c

    .line 317
    .end local v0    # "totalDuration":I
    :catch_8
    move-exception v0

    .line 318
    .local v0, "e":Ljava/lang/Exception;
    :goto_b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 320
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_c
    return-object v7
.end method

.method public static whitelist isAvailable()Z
    .locals 1

    .line 130
    sget-boolean v0, Landroid/os/HapticPlayer;->mAvailable:Z

    return v0
.end method

.method private blacklist isInTheInterval(III)Z
    .locals 1
    .param p1, "data"    # I
    .param p2, "a"    # I
    .param p3, "b"    # I

    .line 112
    if-lt p1, p2, :cond_0

    if-gt p1, p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static blacklist isSupportRichtap()Z
    .locals 4

    .line 115
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const-string v2, "HapticPlayer"

    const/16 v3, 0x1a

    if-ge v0, v3, :cond_0

    .line 116
    const-string v0, "no SupportRichtap when sdk version < android O"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return v1

    .line 120
    :cond_0
    invoke-static {}, Landroid/os/RichTapVibrationEffect;->checkIfRichTapSupport()I

    move-result v0

    .line 121
    .local v0, "support":I
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 122
    return v1

    .line 124
    :cond_1
    const-string v1, "Support Richtap"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist parseAndSendDataHe_2_0(IIIIIIILjava/lang/String;)V
    .locals 46
    .param p1, "seq"    # I
    .param p2, "pid"    # I
    .param p3, "heVersion"    # I
    .param p4, "loop"    # I
    .param p5, "interval"    # I
    .param p6, "amplitude"    # I
    .param p7, "freq"    # I
    .param p8, "patternString"    # Ljava/lang/String;

    .line 375
    move-object/from16 v12, p0

    const-string v0, "Duration"

    const-string v13, "Frequency"

    const-string v14, "Intensity"

    const-string v15, "RelativeTime"

    const/4 v1, 0x0

    .line 376
    .local v1, "relativeTimeLast":I
    const/4 v2, 0x0

    .line 377
    .local v2, "durationLast":I
    const/4 v3, 0x0

    .line 378
    .local v3, "patternHeInfo":[B
    const/4 v4, 0x0

    .line 380
    .local v4, "patternList":[Landroid/os/HapticPlayer$Pattern;
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    move-object/from16 v11, p8

    invoke-direct {v5, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v10, v5

    .line 381
    .local v10, "hapticObject":Lorg/json/JSONObject;
    const-string v5, "PatternList"

    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    move-object v9, v5

    .line 382
    .local v9, "patternArray":Lorg/json/JSONArray;
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v5

    move v8, v5

    .line 383
    .local v8, "patternNum":I
    mul-int/lit8 v5, v8, 0x40

    new-array v5, v5, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_10

    move-object/from16 v16, v5

    .line 385
    .end local v3    # "patternHeInfo":[B
    .local v16, "patternHeInfo":[B
    const/4 v3, 0x1

    .line 386
    .local v3, "isCompliance":Z
    :try_start_1
    new-array v5, v8, [Landroid/os/HapticPlayer$Pattern;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_f

    move-object v7, v5

    .line 387
    .end local v4    # "patternList":[Landroid/os/HapticPlayer$Pattern;
    .local v7, "patternList":[Landroid/os/HapticPlayer$Pattern;
    const/4 v4, 0x0

    .local v4, "wrapperOffset":I
    const/4 v5, 0x0

    .line 388
    .local v5, "wrapperIndex":I
    const/4 v6, 0x0

    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v5

    move v1, v6

    move v6, v4

    .end local v2    # "durationLast":I
    .end local v3    # "isCompliance":Z
    .end local v4    # "wrapperOffset":I
    .end local v5    # "wrapperIndex":I
    .local v1, "ind":I
    .local v6, "wrapperOffset":I
    .local v17, "relativeTimeLast":I
    .local v18, "durationLast":I
    .local v19, "isCompliance":Z
    .local v20, "wrapperIndex":I
    :goto_0
    if-ge v1, v8, :cond_16

    .line 389
    :try_start_2
    new-instance v2, Landroid/os/HapticPlayer$Pattern;

    invoke-direct {v2, v12}, Landroid/os/HapticPlayer$Pattern;-><init>(Landroid/os/HapticPlayer;)V

    move-object v5, v2

    .line 390
    .local v5, "pattern":Landroid/os/HapticPlayer$Pattern;
    invoke-virtual {v9, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    move-object v4, v2

    .line 391
    .local v4, "patternObject":Lorg/json/JSONObject;
    const-string v2, "AbsoluteTime"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    move v3, v2

    .line 392
    .local v3, "patternRelativeTime":I
    iput v3, v5, Landroid/os/HapticPlayer$Pattern;->mRelativeTime:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_d

    .line 394
    add-int v2, v17, v18

    .line 395
    .local v2, "patternDurationTime":I
    move/from16 v21, v8

    .end local v8    # "patternNum":I
    .local v21, "patternNum":I
    const-string v8, "HapticPlayer"

    if-lez v1, :cond_0

    if-ge v3, v2, :cond_0

    .line 396
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Bad pattern relative time in int:"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 397
    return-void

    .line 555
    .end local v1    # "ind":I
    .end local v2    # "patternDurationTime":I
    .end local v3    # "patternRelativeTime":I
    .end local v4    # "patternObject":Lorg/json/JSONObject;
    .end local v5    # "pattern":Landroid/os/HapticPlayer$Pattern;
    .end local v6    # "wrapperOffset":I
    .end local v9    # "patternArray":Lorg/json/JSONArray;
    .end local v10    # "hapticObject":Lorg/json/JSONObject;
    .end local v19    # "isCompliance":Z
    .end local v20    # "wrapperIndex":I
    .end local v21    # "patternNum":I
    :catch_0
    move-exception v0

    move-object v4, v7

    move-object/from16 v3, v16

    move/from16 v1, v17

    move/from16 v2, v18

    goto/16 :goto_b

    .line 400
    .restart local v1    # "ind":I
    .restart local v2    # "patternDurationTime":I
    .restart local v3    # "patternRelativeTime":I
    .restart local v4    # "patternObject":Lorg/json/JSONObject;
    .restart local v5    # "pattern":Landroid/os/HapticPlayer$Pattern;
    .restart local v6    # "wrapperOffset":I
    .restart local v9    # "patternArray":Lorg/json/JSONArray;
    .restart local v10    # "hapticObject":Lorg/json/JSONObject;
    .restart local v19    # "isCompliance":Z
    .restart local v20    # "wrapperIndex":I
    .restart local v21    # "patternNum":I
    :cond_0
    move/from16 v22, v2

    .end local v2    # "patternDurationTime":I
    .local v22, "patternDurationTime":I
    :try_start_4
    const-string v2, "Pattern"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 401
    .local v2, "eventArray":Lorg/json/JSONArray;
    move/from16 v23, v3

    .end local v3    # "patternRelativeTime":I
    .local v23, "patternRelativeTime":I
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v3, v3, [Landroid/os/HapticPlayer$Event;

    iput-object v3, v5, Landroid/os/HapticPlayer$Pattern;->mEvent:[Landroid/os/HapticPlayer$Event;

    .line 403
    const/4 v3, -0x1

    .line 404
    .local v3, "eventRelativeTime":I
    const/16 v24, 0x0

    move/from16 v45, v24

    move-object/from16 v24, v4

    move/from16 v4, v45

    .local v4, "event":I
    .local v24, "patternObject":Lorg/json/JSONObject;
    :goto_1
    move-object/from16 v25, v9

    .end local v9    # "patternArray":Lorg/json/JSONArray;
    .local v25, "patternArray":Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v9
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_d

    if-ge v4, v9, :cond_12

    .line 405
    :try_start_5
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 407
    .local v9, "eventObject":Lorg/json/JSONObject;
    move-object/from16 v26, v2

    .end local v2    # "eventArray":Lorg/json/JSONArray;
    .local v26, "eventArray":Lorg/json/JSONArray;
    const-string v2, "Event"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 409
    .local v2, "eventTemp":Lorg/json/JSONObject;
    move-object/from16 v27, v9

    .end local v9    # "eventObject":Lorg/json/JSONObject;
    .local v27, "eventObject":Lorg/json/JSONObject;
    const-string v9, "Type"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 411
    .local v9, "name":Ljava/lang/String;
    move-object/from16 v28, v10

    .end local v10    # "hapticObject":Lorg/json/JSONObject;
    .local v28, "hapticObject":Lorg/json/JSONObject;
    const-string v10, "continuous"

    invoke-static {v10, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9

    if-eqz v10, :cond_1

    .line 412
    const/16 v10, 0x1000

    .line 413
    .local v10, "type":I
    move/from16 v29, v10

    .end local v10    # "type":I
    .local v29, "type":I
    :try_start_6
    iget-object v10, v5, Landroid/os/HapticPlayer$Pattern;->mEvent:[Landroid/os/HapticPlayer$Event;

    new-instance v11, Landroid/os/HapticPlayer$ContinuousEvent;

    invoke-direct {v11, v12}, Landroid/os/HapticPlayer$ContinuousEvent;-><init>(Landroid/os/HapticPlayer;)V

    aput-object v11, v10, v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move/from16 v10, v29

    move-object/from16 v29, v9

    goto :goto_2

    .line 414
    .end local v29    # "type":I
    :cond_1
    :try_start_7
    const-string v10, "transient"

    invoke-static {v10, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 415
    const/16 v10, 0x1001

    .line 416
    .restart local v10    # "type":I
    iget-object v11, v5, Landroid/os/HapticPlayer$Pattern;->mEvent:[Landroid/os/HapticPlayer$Event;

    move-object/from16 v29, v9

    .end local v9    # "name":Ljava/lang/String;
    .local v29, "name":Ljava/lang/String;
    new-instance v9, Landroid/os/HapticPlayer$TransientEvent;

    invoke-direct {v9, v12}, Landroid/os/HapticPlayer$TransientEvent;-><init>(Landroid/os/HapticPlayer;)V

    aput-object v9, v11, v4

    .line 424
    :goto_2
    const-string v9, "Index"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 425
    .local v9, "vibId":I
    iget-object v11, v5, Landroid/os/HapticPlayer$Pattern;->mEvent:[Landroid/os/HapticPlayer$Event;

    aget-object v11, v11, v4

    move/from16 v30, v6

    .end local v6    # "wrapperOffset":I
    .local v30, "wrapperOffset":I
    int-to-byte v6, v9

    iput v6, v11, Landroid/os/HapticPlayer$Event;->mVibId:I

    .line 427
    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9

    const-string v11, "event:"

    if-nez v6, :cond_2

    .line 428
    :try_start_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " don\'t have relativeTime parameters,BAD he!"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 430
    return-void

    .line 432
    :cond_2
    :try_start_9
    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 434
    .end local v17    # "relativeTimeLast":I
    .local v6, "relativeTimeLast":I
    if-lez v4, :cond_3

    if-ge v6, v3, :cond_3

    .line 435
    :try_start_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pattern ind:"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, " event:"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, " relative time is not right!"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    .line 436
    return-void

    .line 555
    .end local v1    # "ind":I
    .end local v2    # "eventTemp":Lorg/json/JSONObject;
    .end local v3    # "eventRelativeTime":I
    .end local v4    # "event":I
    .end local v5    # "pattern":Landroid/os/HapticPlayer$Pattern;
    .end local v9    # "vibId":I
    .end local v10    # "type":I
    .end local v19    # "isCompliance":Z
    .end local v20    # "wrapperIndex":I
    .end local v21    # "patternNum":I
    .end local v22    # "patternDurationTime":I
    .end local v23    # "patternRelativeTime":I
    .end local v24    # "patternObject":Lorg/json/JSONObject;
    .end local v25    # "patternArray":Lorg/json/JSONArray;
    .end local v26    # "eventArray":Lorg/json/JSONArray;
    .end local v27    # "eventObject":Lorg/json/JSONObject;
    .end local v28    # "hapticObject":Lorg/json/JSONObject;
    .end local v29    # "name":Ljava/lang/String;
    .end local v30    # "wrapperOffset":I
    :catch_1
    move-exception v0

    move v1, v6

    move-object v4, v7

    move-object/from16 v3, v16

    move/from16 v2, v18

    goto/16 :goto_b

    .line 438
    .restart local v1    # "ind":I
    .restart local v2    # "eventTemp":Lorg/json/JSONObject;
    .restart local v3    # "eventRelativeTime":I
    .restart local v4    # "event":I
    .restart local v5    # "pattern":Landroid/os/HapticPlayer$Pattern;
    .restart local v9    # "vibId":I
    .restart local v10    # "type":I
    .restart local v19    # "isCompliance":Z
    .restart local v20    # "wrapperIndex":I
    .restart local v21    # "patternNum":I
    .restart local v22    # "patternDurationTime":I
    .restart local v23    # "patternRelativeTime":I
    .restart local v24    # "patternObject":Lorg/json/JSONObject;
    .restart local v25    # "patternArray":Lorg/json/JSONArray;
    .restart local v26    # "eventArray":Lorg/json/JSONArray;
    .restart local v27    # "eventObject":Lorg/json/JSONObject;
    .restart local v28    # "hapticObject":Lorg/json/JSONObject;
    .restart local v29    # "name":Ljava/lang/String;
    .restart local v30    # "wrapperOffset":I
    :cond_3
    move v3, v6

    .line 440
    move/from16 v17, v3

    .end local v3    # "eventRelativeTime":I
    .local v17, "eventRelativeTime":I
    const v3, 0xc350

    move/from16 v31, v9

    .end local v9    # "vibId":I
    .local v31, "vibId":I
    const/4 v9, 0x0

    :try_start_b
    invoke-direct {v12, v6, v9, v3}, Landroid/os/HapticPlayer;->isInTheInterval(III)Z

    move-result v3
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    if-nez v3, :cond_4

    .line 441
    :try_start_c
    const-string v3, "relativeTime must between 0 and 50000"

    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    .line 442
    const/4 v3, 0x0

    .line 443
    .end local v19    # "isCompliance":Z
    .local v3, "isCompliance":Z
    move-object/from16 v34, v0

    move/from16 v19, v3

    move/from16 v38, v6

    move-object/from16 v35, v7

    move-object/from16 v32, v15

    goto/16 :goto_7

    .line 446
    .end local v3    # "isCompliance":Z
    .restart local v19    # "isCompliance":Z
    :cond_4
    :try_start_d
    const-string v3, "Parameters"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 447
    .local v3, "parametersObject":Lorg/json/JSONObject;
    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v32

    move/from16 v33, v32

    .line 448
    .local v33, "intensity":I
    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v32
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    move/from16 v34, v32

    .line 449
    .local v34, "frequency":I
    move-object/from16 v32, v15

    const/16 v15, 0x64

    move-object/from16 v35, v7

    move/from16 v7, v33

    .end local v33    # "intensity":I
    .local v7, "intensity":I
    .local v35, "patternList":[Landroid/os/HapticPlayer$Pattern;
    :try_start_e
    invoke-direct {v12, v7, v9, v15}, Landroid/os/HapticPlayer;->isInTheInterval(III)Z

    move-result v33

    if-eqz v33, :cond_10

    move-object/from16 v33, v13

    move/from16 v13, v34

    .end local v34    # "frequency":I
    .local v13, "frequency":I
    invoke-direct {v12, v13, v9, v15}, Landroid/os/HapticPlayer;->isInTheInterval(III)Z

    move-result v15

    if-nez v15, :cond_5

    move-object/from16 v34, v0

    move-object/from16 v36, v2

    move-object/from16 v37, v3

    move/from16 v38, v6

    move/from16 v39, v7

    move/from16 v44, v13

    move-object/from16 v13, v33

    goto/16 :goto_6

    .line 454
    :cond_5
    iget-object v15, v5, Landroid/os/HapticPlayer$Pattern;->mEvent:[Landroid/os/HapticPlayer$Event;

    aget-object v15, v15, v4

    iput v10, v15, Landroid/os/HapticPlayer$Event;->mType:I

    .line 455
    iget-object v15, v5, Landroid/os/HapticPlayer$Pattern;->mEvent:[Landroid/os/HapticPlayer$Event;

    aget-object v15, v15, v4

    iput v6, v15, Landroid/os/HapticPlayer$Event;->mRelativeTime:I

    .line 456
    iget-object v15, v5, Landroid/os/HapticPlayer$Pattern;->mEvent:[Landroid/os/HapticPlayer$Event;

    aget-object v15, v15, v4

    iput v7, v15, Landroid/os/HapticPlayer$Event;->mIntensity:I

    .line 457
    iget-object v15, v5, Landroid/os/HapticPlayer$Pattern;->mEvent:[Landroid/os/HapticPlayer$Event;

    aget-object v15, v15, v4

    iput v13, v15, Landroid/os/HapticPlayer$Event;->mFreq:I

    .line 459
    const/16 v15, 0x1000

    if-ne v15, v10, :cond_d

    .line 461
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    if-nez v15, :cond_6

    .line 462
    :try_start_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " don\'t have duration parameters"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2

    .line 464
    return-void

    .line 555
    .end local v1    # "ind":I
    .end local v2    # "eventTemp":Lorg/json/JSONObject;
    .end local v3    # "parametersObject":Lorg/json/JSONObject;
    .end local v4    # "event":I
    .end local v5    # "pattern":Landroid/os/HapticPlayer$Pattern;
    .end local v7    # "intensity":I
    .end local v10    # "type":I
    .end local v13    # "frequency":I
    .end local v17    # "eventRelativeTime":I
    .end local v19    # "isCompliance":Z
    .end local v20    # "wrapperIndex":I
    .end local v21    # "patternNum":I
    .end local v22    # "patternDurationTime":I
    .end local v23    # "patternRelativeTime":I
    .end local v24    # "patternObject":Lorg/json/JSONObject;
    .end local v25    # "patternArray":Lorg/json/JSONArray;
    .end local v26    # "eventArray":Lorg/json/JSONArray;
    .end local v27    # "eventObject":Lorg/json/JSONObject;
    .end local v28    # "hapticObject":Lorg/json/JSONObject;
    .end local v29    # "name":Ljava/lang/String;
    .end local v30    # "wrapperOffset":I
    .end local v31    # "vibId":I
    :catch_2
    move-exception v0

    move v1, v6

    move-object/from16 v3, v16

    move/from16 v2, v18

    move-object/from16 v4, v35

    goto/16 :goto_b

    .line 466
    .restart local v1    # "ind":I
    .restart local v2    # "eventTemp":Lorg/json/JSONObject;
    .restart local v3    # "parametersObject":Lorg/json/JSONObject;
    .restart local v4    # "event":I
    .restart local v5    # "pattern":Landroid/os/HapticPlayer$Pattern;
    .restart local v7    # "intensity":I
    .restart local v10    # "type":I
    .restart local v13    # "frequency":I
    .restart local v17    # "eventRelativeTime":I
    .restart local v19    # "isCompliance":Z
    .restart local v20    # "wrapperIndex":I
    .restart local v21    # "patternNum":I
    .restart local v22    # "patternDurationTime":I
    .restart local v23    # "patternRelativeTime":I
    .restart local v24    # "patternObject":Lorg/json/JSONObject;
    .restart local v25    # "patternArray":Lorg/json/JSONArray;
    .restart local v26    # "eventArray":Lorg/json/JSONArray;
    .restart local v27    # "eventObject":Lorg/json/JSONObject;
    .restart local v28    # "hapticObject":Lorg/json/JSONObject;
    .restart local v29    # "name":Ljava/lang/String;
    .restart local v30    # "wrapperOffset":I
    .restart local v31    # "vibId":I
    :cond_6
    :try_start_10
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6

    .line 468
    .end local v18    # "durationLast":I
    .local v15, "durationLast":I
    move-object/from16 v34, v0

    const/16 v0, 0x1388

    :try_start_11
    invoke-direct {v12, v15, v9, v0}, Landroid/os/HapticPlayer;->isInTheInterval(III)Z

    move-result v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5

    if-nez v0, :cond_7

    .line 469
    :try_start_12
    const-string v0, "duration must be less than 5000"

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3

    .line 470
    const/4 v0, 0x0

    .line 471
    .end local v19    # "isCompliance":Z
    .local v0, "isCompliance":Z
    move/from16 v19, v0

    move/from16 v38, v6

    move/from16 v18, v15

    move-object/from16 v13, v33

    goto/16 :goto_7

    .line 555
    .end local v0    # "isCompliance":Z
    .end local v1    # "ind":I
    .end local v2    # "eventTemp":Lorg/json/JSONObject;
    .end local v3    # "parametersObject":Lorg/json/JSONObject;
    .end local v4    # "event":I
    .end local v5    # "pattern":Landroid/os/HapticPlayer$Pattern;
    .end local v7    # "intensity":I
    .end local v10    # "type":I
    .end local v13    # "frequency":I
    .end local v17    # "eventRelativeTime":I
    .end local v20    # "wrapperIndex":I
    .end local v21    # "patternNum":I
    .end local v22    # "patternDurationTime":I
    .end local v23    # "patternRelativeTime":I
    .end local v24    # "patternObject":Lorg/json/JSONObject;
    .end local v25    # "patternArray":Lorg/json/JSONArray;
    .end local v26    # "eventArray":Lorg/json/JSONArray;
    .end local v27    # "eventObject":Lorg/json/JSONObject;
    .end local v28    # "hapticObject":Lorg/json/JSONObject;
    .end local v29    # "name":Ljava/lang/String;
    .end local v30    # "wrapperOffset":I
    .end local v31    # "vibId":I
    :catch_3
    move-exception v0

    move v1, v6

    move v2, v15

    move-object/from16 v3, v16

    move-object/from16 v4, v35

    goto/16 :goto_b

    .line 474
    .restart local v1    # "ind":I
    .restart local v2    # "eventTemp":Lorg/json/JSONObject;
    .restart local v3    # "parametersObject":Lorg/json/JSONObject;
    .restart local v4    # "event":I
    .restart local v5    # "pattern":Landroid/os/HapticPlayer$Pattern;
    .restart local v7    # "intensity":I
    .restart local v10    # "type":I
    .restart local v13    # "frequency":I
    .restart local v17    # "eventRelativeTime":I
    .restart local v19    # "isCompliance":Z
    .restart local v20    # "wrapperIndex":I
    .restart local v21    # "patternNum":I
    .restart local v22    # "patternDurationTime":I
    .restart local v23    # "patternRelativeTime":I
    .restart local v24    # "patternObject":Lorg/json/JSONObject;
    .restart local v25    # "patternArray":Lorg/json/JSONArray;
    .restart local v26    # "eventArray":Lorg/json/JSONArray;
    .restart local v27    # "eventObject":Lorg/json/JSONObject;
    .restart local v28    # "hapticObject":Lorg/json/JSONObject;
    .restart local v29    # "name":Ljava/lang/String;
    .restart local v30    # "wrapperOffset":I
    .restart local v31    # "vibId":I
    :cond_7
    :try_start_13
    iget-object v0, v5, Landroid/os/HapticPlayer$Pattern;->mEvent:[Landroid/os/HapticPlayer$Event;

    aget-object v0, v0, v4

    iput v15, v0, Landroid/os/HapticPlayer$Event;->mDuration:I

    .line 476
    const-string v0, "Curve"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 477
    .local v0, "curve":Lorg/json/JSONArray;
    iget-object v9, v5, Landroid/os/HapticPlayer$Pattern;->mEvent:[Landroid/os/HapticPlayer$Event;

    aget-object v9, v9, v4

    check-cast v9, Landroid/os/HapticPlayer$ContinuousEvent;

    move-object/from16 v36, v2

    .end local v2    # "eventTemp":Lorg/json/JSONObject;
    .local v36, "eventTemp":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    int-to-byte v2, v2

    iput v2, v9, Landroid/os/HapticPlayer$ContinuousEvent;->mPointNum:I

    .line 478
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [Landroid/os/HapticPlayer$Point;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_5

    .line 481
    .local v2, "piontArray":[Landroid/os/HapticPlayer$Point;
    const/4 v9, -0x1

    .line 482
    .local v9, "prevPointTime":I
    const/16 v18, 0x0

    .line 483
    .local v18, "i":I
    const/16 v37, 0x0

    move/from16 v38, v6

    move/from16 v6, v37

    move-object/from16 v37, v3

    move/from16 v3, v18

    .line 484
    .end local v18    # "i":I
    .local v3, "i":I
    .local v6, "pointLastTime":I
    .local v37, "parametersObject":Lorg/json/JSONObject;
    .local v38, "relativeTimeLast":I
    :goto_3
    move/from16 v39, v7

    .end local v7    # "intensity":I
    .local v39, "intensity":I
    :try_start_14
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v3, v7, :cond_a

    .line 485
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 486
    .local v7, "curveObject":Lorg/json/JSONObject;
    move-object/from16 v18, v0

    .end local v0    # "curve":Lorg/json/JSONArray;
    .local v18, "curve":Lorg/json/JSONArray;
    new-instance v0, Landroid/os/HapticPlayer$Point;

    invoke-direct {v0, v12}, Landroid/os/HapticPlayer$Point;-><init>(Landroid/os/HapticPlayer;)V

    aput-object v0, v2, v3

    .line 488
    const-string v0, "Time"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 489
    .local v0, "pointTime":I
    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v40

    const-wide/high16 v42, 0x4059000000000000L    # 100.0

    move/from16 v44, v13

    .end local v13    # "frequency":I
    .local v44, "frequency":I
    mul-double v12, v40, v42

    double-to-int v12, v12

    .line 490
    .local v12, "pointIntensity":I
    move-object/from16 v13, v33

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v33

    move/from16 v40, v33

    .line 492
    .local v40, "pointFrequency":I
    if-nez v3, :cond_8

    if-eqz v0, :cond_8

    .line 493
    const-string v11, "time of first point is not 0,bad he!"

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    return-void

    .line 497
    :cond_8
    if-lez v3, :cond_9

    if-ge v0, v9, :cond_9

    .line 498
    const-string v11, "point times did not arrange in order,bad he!"

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    return-void

    .line 501
    :cond_9
    move v9, v0

    .line 503
    move-object/from16 v33, v7

    .end local v7    # "curveObject":Lorg/json/JSONObject;
    .local v33, "curveObject":Lorg/json/JSONObject;
    aget-object v7, v2, v3

    iput v0, v7, Landroid/os/HapticPlayer$Point;->mTime:I

    .line 504
    aget-object v7, v2, v3

    iput v12, v7, Landroid/os/HapticPlayer$Point;->mIntensity:I

    .line 505
    aget-object v7, v2, v3

    move/from16 v41, v9

    move/from16 v9, v40

    .end local v40    # "pointFrequency":I
    .local v9, "pointFrequency":I
    .local v41, "prevPointTime":I
    iput v9, v7, Landroid/os/HapticPlayer$Point;->mFreq:I

    .line 506
    move v6, v0

    .line 484
    .end local v0    # "pointTime":I
    .end local v9    # "pointFrequency":I
    .end local v12    # "pointIntensity":I
    .end local v33    # "curveObject":Lorg/json/JSONObject;
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v12, p0

    move-object/from16 v33, v13

    move-object/from16 v0, v18

    move/from16 v7, v39

    move/from16 v9, v41

    move/from16 v13, v44

    goto :goto_3

    .line 508
    .end local v18    # "curve":Lorg/json/JSONArray;
    .end local v41    # "prevPointTime":I
    .end local v44    # "frequency":I
    .local v0, "curve":Lorg/json/JSONArray;
    .local v9, "prevPointTime":I
    .restart local v13    # "frequency":I
    :cond_a
    move-object/from16 v18, v0

    move/from16 v44, v13

    move-object/from16 v13, v33

    .end local v0    # "curve":Lorg/json/JSONArray;
    .end local v13    # "frequency":I
    .restart local v18    # "curve":Lorg/json/JSONArray;
    .restart local v44    # "frequency":I
    if-eq v6, v15, :cond_b

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " point last time do not match duration parameter"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    return-void

    .line 512
    :cond_b
    array-length v0, v2

    if-lez v0, :cond_c

    .line 513
    iget-object v0, v5, Landroid/os/HapticPlayer$Pattern;->mEvent:[Landroid/os/HapticPlayer$Event;

    aget-object v0, v0, v4

    check-cast v0, Landroid/os/HapticPlayer$ContinuousEvent;

    iput-object v2, v0, Landroid/os/HapticPlayer$ContinuousEvent;->mPoint:[Landroid/os/HapticPlayer$Point;

    move/from16 v18, v15

    goto :goto_4

    .line 515
    :cond_c
    const-string v0, "continuous event has nothing in point"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_4

    .line 516
    const/4 v0, 0x0

    move/from16 v19, v0

    move/from16 v18, v15

    .end local v19    # "isCompliance":Z
    .local v0, "isCompliance":Z
    goto :goto_4

    .line 555
    .end local v0    # "isCompliance":Z
    .end local v1    # "ind":I
    .end local v2    # "piontArray":[Landroid/os/HapticPlayer$Point;
    .end local v3    # "i":I
    .end local v4    # "event":I
    .end local v5    # "pattern":Landroid/os/HapticPlayer$Pattern;
    .end local v6    # "pointLastTime":I
    .end local v9    # "prevPointTime":I
    .end local v10    # "type":I
    .end local v17    # "eventRelativeTime":I
    .end local v18    # "curve":Lorg/json/JSONArray;
    .end local v20    # "wrapperIndex":I
    .end local v21    # "patternNum":I
    .end local v22    # "patternDurationTime":I
    .end local v23    # "patternRelativeTime":I
    .end local v24    # "patternObject":Lorg/json/JSONObject;
    .end local v25    # "patternArray":Lorg/json/JSONArray;
    .end local v26    # "eventArray":Lorg/json/JSONArray;
    .end local v27    # "eventObject":Lorg/json/JSONObject;
    .end local v28    # "hapticObject":Lorg/json/JSONObject;
    .end local v29    # "name":Ljava/lang/String;
    .end local v30    # "wrapperOffset":I
    .end local v31    # "vibId":I
    .end local v36    # "eventTemp":Lorg/json/JSONObject;
    .end local v37    # "parametersObject":Lorg/json/JSONObject;
    .end local v39    # "intensity":I
    .end local v44    # "frequency":I
    :catch_4
    move-exception v0

    move v2, v15

    move-object/from16 v3, v16

    move-object/from16 v4, v35

    move/from16 v1, v38

    goto/16 :goto_b

    .end local v38    # "relativeTimeLast":I
    .local v6, "relativeTimeLast":I
    :catch_5
    move-exception v0

    move/from16 v38, v6

    move v2, v15

    move-object/from16 v3, v16

    move-object/from16 v4, v35

    move/from16 v1, v38

    .end local v6    # "relativeTimeLast":I
    .restart local v38    # "relativeTimeLast":I
    goto/16 :goto_b

    .line 459
    .end local v15    # "durationLast":I
    .end local v38    # "relativeTimeLast":I
    .restart local v1    # "ind":I
    .local v2, "eventTemp":Lorg/json/JSONObject;
    .local v3, "parametersObject":Lorg/json/JSONObject;
    .restart local v4    # "event":I
    .restart local v5    # "pattern":Landroid/os/HapticPlayer$Pattern;
    .restart local v6    # "relativeTimeLast":I
    .local v7, "intensity":I
    .restart local v10    # "type":I
    .restart local v13    # "frequency":I
    .restart local v17    # "eventRelativeTime":I
    .local v18, "durationLast":I
    .restart local v19    # "isCompliance":Z
    .restart local v20    # "wrapperIndex":I
    .restart local v21    # "patternNum":I
    .restart local v22    # "patternDurationTime":I
    .restart local v23    # "patternRelativeTime":I
    .restart local v24    # "patternObject":Lorg/json/JSONObject;
    .restart local v25    # "patternArray":Lorg/json/JSONArray;
    .restart local v26    # "eventArray":Lorg/json/JSONArray;
    .restart local v27    # "eventObject":Lorg/json/JSONObject;
    .restart local v28    # "hapticObject":Lorg/json/JSONObject;
    .restart local v29    # "name":Ljava/lang/String;
    .restart local v30    # "wrapperOffset":I
    .restart local v31    # "vibId":I
    :cond_d
    move-object/from16 v34, v0

    move-object/from16 v36, v2

    move-object/from16 v37, v3

    move/from16 v38, v6

    move/from16 v39, v7

    move/from16 v44, v13

    move-object/from16 v13, v33

    .line 519
    .end local v2    # "eventTemp":Lorg/json/JSONObject;
    .end local v3    # "parametersObject":Lorg/json/JSONObject;
    .end local v6    # "relativeTimeLast":I
    .end local v7    # "intensity":I
    .end local v13    # "frequency":I
    .restart local v36    # "eventTemp":Lorg/json/JSONObject;
    .restart local v37    # "parametersObject":Lorg/json/JSONObject;
    .restart local v38    # "relativeTimeLast":I
    .restart local v39    # "intensity":I
    .restart local v44    # "frequency":I
    :goto_4
    if-nez v19, :cond_e

    goto/16 :goto_7

    .line 522
    :cond_e
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    const/16 v2, 0x37

    if-ge v0, v2, :cond_f

    .line 523
    :try_start_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "patternHeInfo["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    mul-int/lit8 v3, v1, 0x37

    add-int/2addr v3, v0

    aget-byte v3, v16, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 404
    .end local v0    # "i":I
    .end local v10    # "type":I
    .end local v27    # "eventObject":Lorg/json/JSONObject;
    .end local v29    # "name":Ljava/lang/String;
    .end local v31    # "vibId":I
    .end local v36    # "eventTemp":Lorg/json/JSONObject;
    .end local v37    # "parametersObject":Lorg/json/JSONObject;
    .end local v39    # "intensity":I
    .end local v44    # "frequency":I
    :cond_f
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v12, p0

    move-object/from16 v11, p8

    move/from16 v3, v17

    move-object/from16 v9, v25

    move-object/from16 v2, v26

    move-object/from16 v10, v28

    move/from16 v6, v30

    move-object/from16 v15, v32

    move-object/from16 v0, v34

    move-object/from16 v7, v35

    move/from16 v17, v38

    goto/16 :goto_1

    .line 449
    .end local v38    # "relativeTimeLast":I
    .restart local v2    # "eventTemp":Lorg/json/JSONObject;
    .restart local v3    # "parametersObject":Lorg/json/JSONObject;
    .restart local v6    # "relativeTimeLast":I
    .restart local v7    # "intensity":I
    .restart local v10    # "type":I
    .restart local v27    # "eventObject":Lorg/json/JSONObject;
    .restart local v29    # "name":Ljava/lang/String;
    .restart local v31    # "vibId":I
    .restart local v34    # "frequency":I
    :cond_10
    move-object/from16 v36, v2

    move-object/from16 v37, v3

    move/from16 v38, v6

    move/from16 v39, v7

    move/from16 v44, v34

    move-object/from16 v34, v0

    .line 450
    .end local v2    # "eventTemp":Lorg/json/JSONObject;
    .end local v3    # "parametersObject":Lorg/json/JSONObject;
    .end local v6    # "relativeTimeLast":I
    .end local v7    # "intensity":I
    .end local v34    # "frequency":I
    .restart local v36    # "eventTemp":Lorg/json/JSONObject;
    .restart local v37    # "parametersObject":Lorg/json/JSONObject;
    .restart local v38    # "relativeTimeLast":I
    .restart local v39    # "intensity":I
    .restart local v44    # "frequency":I
    :goto_6
    const-string v0, "intensity or frequency must between 0 and 100"

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_a

    .line 451
    const/4 v0, 0x0

    .line 452
    .end local v19    # "isCompliance":Z
    .local v0, "isCompliance":Z
    move/from16 v19, v0

    goto/16 :goto_7

    .line 555
    .end local v0    # "isCompliance":Z
    .end local v1    # "ind":I
    .end local v4    # "event":I
    .end local v5    # "pattern":Landroid/os/HapticPlayer$Pattern;
    .end local v10    # "type":I
    .end local v17    # "eventRelativeTime":I
    .end local v20    # "wrapperIndex":I
    .end local v21    # "patternNum":I
    .end local v22    # "patternDurationTime":I
    .end local v23    # "patternRelativeTime":I
    .end local v24    # "patternObject":Lorg/json/JSONObject;
    .end local v25    # "patternArray":Lorg/json/JSONArray;
    .end local v26    # "eventArray":Lorg/json/JSONArray;
    .end local v27    # "eventObject":Lorg/json/JSONObject;
    .end local v28    # "hapticObject":Lorg/json/JSONObject;
    .end local v29    # "name":Ljava/lang/String;
    .end local v30    # "wrapperOffset":I
    .end local v31    # "vibId":I
    .end local v36    # "eventTemp":Lorg/json/JSONObject;
    .end local v37    # "parametersObject":Lorg/json/JSONObject;
    .end local v38    # "relativeTimeLast":I
    .end local v39    # "intensity":I
    .end local v44    # "frequency":I
    .restart local v6    # "relativeTimeLast":I
    :catch_6
    move-exception v0

    move/from16 v38, v6

    move-object/from16 v3, v16

    move/from16 v2, v18

    move-object/from16 v4, v35

    move/from16 v1, v38

    .end local v6    # "relativeTimeLast":I
    .restart local v38    # "relativeTimeLast":I
    goto/16 :goto_b

    .end local v35    # "patternList":[Landroid/os/HapticPlayer$Pattern;
    .end local v38    # "relativeTimeLast":I
    .restart local v6    # "relativeTimeLast":I
    .local v7, "patternList":[Landroid/os/HapticPlayer$Pattern;
    :catch_7
    move-exception v0

    move/from16 v38, v6

    move-object/from16 v35, v7

    move-object/from16 v3, v16

    move/from16 v2, v18

    move-object/from16 v4, v35

    move/from16 v1, v38

    .end local v6    # "relativeTimeLast":I
    .end local v7    # "patternList":[Landroid/os/HapticPlayer$Pattern;
    .restart local v35    # "patternList":[Landroid/os/HapticPlayer$Pattern;
    .restart local v38    # "relativeTimeLast":I
    goto/16 :goto_b

    .line 419
    .end local v35    # "patternList":[Landroid/os/HapticPlayer$Pattern;
    .end local v38    # "relativeTimeLast":I
    .restart local v1    # "ind":I
    .restart local v2    # "eventTemp":Lorg/json/JSONObject;
    .local v3, "eventRelativeTime":I
    .restart local v4    # "event":I
    .restart local v5    # "pattern":Landroid/os/HapticPlayer$Pattern;
    .local v6, "wrapperOffset":I
    .restart local v7    # "patternList":[Landroid/os/HapticPlayer$Pattern;
    .local v9, "name":Ljava/lang/String;
    .local v17, "relativeTimeLast":I
    .restart local v19    # "isCompliance":Z
    .restart local v20    # "wrapperIndex":I
    .restart local v21    # "patternNum":I
    .restart local v22    # "patternDurationTime":I
    .restart local v23    # "patternRelativeTime":I
    .restart local v24    # "patternObject":Lorg/json/JSONObject;
    .restart local v25    # "patternArray":Lorg/json/JSONArray;
    .restart local v26    # "eventArray":Lorg/json/JSONArray;
    .restart local v27    # "eventObject":Lorg/json/JSONObject;
    .restart local v28    # "hapticObject":Lorg/json/JSONObject;
    :cond_11
    move-object/from16 v34, v0

    move-object/from16 v36, v2

    move/from16 v30, v6

    move-object/from16 v35, v7

    move-object/from16 v29, v9

    move-object/from16 v32, v15

    .end local v2    # "eventTemp":Lorg/json/JSONObject;
    .end local v6    # "wrapperOffset":I
    .end local v7    # "patternList":[Landroid/os/HapticPlayer$Pattern;
    .end local v9    # "name":Ljava/lang/String;
    .restart local v29    # "name":Ljava/lang/String;
    .restart local v30    # "wrapperOffset":I
    .restart local v35    # "patternList":[Landroid/os/HapticPlayer$Pattern;
    .restart local v36    # "eventTemp":Lorg/json/JSONObject;
    :try_start_16
    const-string v0, "haven\'t get type value"

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_8

    .line 420
    const/4 v0, 0x0

    .line 421
    .end local v19    # "isCompliance":Z
    .restart local v0    # "isCompliance":Z
    move/from16 v19, v0

    move/from16 v38, v17

    move/from16 v17, v3

    goto :goto_7

    .line 555
    .end local v0    # "isCompliance":Z
    .end local v1    # "ind":I
    .end local v3    # "eventRelativeTime":I
    .end local v4    # "event":I
    .end local v5    # "pattern":Landroid/os/HapticPlayer$Pattern;
    .end local v20    # "wrapperIndex":I
    .end local v21    # "patternNum":I
    .end local v22    # "patternDurationTime":I
    .end local v23    # "patternRelativeTime":I
    .end local v24    # "patternObject":Lorg/json/JSONObject;
    .end local v25    # "patternArray":Lorg/json/JSONArray;
    .end local v26    # "eventArray":Lorg/json/JSONArray;
    .end local v27    # "eventObject":Lorg/json/JSONObject;
    .end local v28    # "hapticObject":Lorg/json/JSONObject;
    .end local v29    # "name":Ljava/lang/String;
    .end local v30    # "wrapperOffset":I
    .end local v36    # "eventTemp":Lorg/json/JSONObject;
    :catch_8
    move-exception v0

    move-object/from16 v3, v16

    move/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v4, v35

    goto/16 :goto_b

    .end local v35    # "patternList":[Landroid/os/HapticPlayer$Pattern;
    .restart local v7    # "patternList":[Landroid/os/HapticPlayer$Pattern;
    :catch_9
    move-exception v0

    move-object/from16 v35, v7

    move-object/from16 v3, v16

    move/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v4, v35

    .end local v7    # "patternList":[Landroid/os/HapticPlayer$Pattern;
    .restart local v35    # "patternList":[Landroid/os/HapticPlayer$Pattern;
    goto/16 :goto_b

    .line 404
    .end local v35    # "patternList":[Landroid/os/HapticPlayer$Pattern;
    .restart local v1    # "ind":I
    .local v2, "eventArray":Lorg/json/JSONArray;
    .restart local v3    # "eventRelativeTime":I
    .restart local v4    # "event":I
    .restart local v5    # "pattern":Landroid/os/HapticPlayer$Pattern;
    .restart local v6    # "wrapperOffset":I
    .restart local v7    # "patternList":[Landroid/os/HapticPlayer$Pattern;
    .local v10, "hapticObject":Lorg/json/JSONObject;
    .restart local v19    # "isCompliance":Z
    .restart local v20    # "wrapperIndex":I
    .restart local v21    # "patternNum":I
    .restart local v22    # "patternDurationTime":I
    .restart local v23    # "patternRelativeTime":I
    .restart local v24    # "patternObject":Lorg/json/JSONObject;
    .restart local v25    # "patternArray":Lorg/json/JSONArray;
    :cond_12
    move-object/from16 v34, v0

    move-object/from16 v26, v2

    move/from16 v30, v6

    move-object/from16 v35, v7

    move-object/from16 v28, v10

    move-object/from16 v32, v15

    .end local v2    # "eventArray":Lorg/json/JSONArray;
    .end local v6    # "wrapperOffset":I
    .end local v7    # "patternList":[Landroid/os/HapticPlayer$Pattern;
    .end local v10    # "hapticObject":Lorg/json/JSONObject;
    .restart local v26    # "eventArray":Lorg/json/JSONArray;
    .restart local v28    # "hapticObject":Lorg/json/JSONObject;
    .restart local v30    # "wrapperOffset":I
    .restart local v35    # "patternList":[Landroid/os/HapticPlayer$Pattern;
    move/from16 v38, v17

    move/from16 v17, v3

    .line 528
    .end local v3    # "eventRelativeTime":I
    .end local v4    # "event":I
    .local v17, "eventRelativeTime":I
    .restart local v38    # "relativeTimeLast":I
    :goto_7
    if-nez v19, :cond_13

    .line 529
    :try_start_17
    const-string v0, "current he file data, isn\'t compliance!!!!!!!"

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_a

    .line 530
    return-void

    .line 555
    .end local v1    # "ind":I
    .end local v5    # "pattern":Landroid/os/HapticPlayer$Pattern;
    .end local v17    # "eventRelativeTime":I
    .end local v19    # "isCompliance":Z
    .end local v20    # "wrapperIndex":I
    .end local v21    # "patternNum":I
    .end local v22    # "patternDurationTime":I
    .end local v23    # "patternRelativeTime":I
    .end local v24    # "patternObject":Lorg/json/JSONObject;
    .end local v25    # "patternArray":Lorg/json/JSONArray;
    .end local v26    # "eventArray":Lorg/json/JSONArray;
    .end local v28    # "hapticObject":Lorg/json/JSONObject;
    .end local v30    # "wrapperOffset":I
    :catch_a
    move-exception v0

    move-object/from16 v3, v16

    move/from16 v2, v18

    move-object/from16 v4, v35

    move/from16 v1, v38

    goto/16 :goto_b

    .line 532
    .restart local v1    # "ind":I
    .restart local v5    # "pattern":Landroid/os/HapticPlayer$Pattern;
    .restart local v17    # "eventRelativeTime":I
    .restart local v19    # "isCompliance":Z
    .restart local v20    # "wrapperIndex":I
    .restart local v21    # "patternNum":I
    .restart local v22    # "patternDurationTime":I
    .restart local v23    # "patternRelativeTime":I
    .restart local v24    # "patternObject":Lorg/json/JSONObject;
    .restart local v25    # "patternArray":Lorg/json/JSONArray;
    .restart local v26    # "eventArray":Lorg/json/JSONArray;
    .restart local v28    # "hapticObject":Lorg/json/JSONObject;
    .restart local v30    # "wrapperOffset":I
    :cond_13
    :try_start_18
    aput-object v5, v35, v1

    .line 533
    add-int/lit8 v0, v1, 0x1

    .line 534
    .end local v1    # "ind":I
    .local v0, "ind":I
    add-int/lit8 v1, v20, 0x1

    const/16 v2, 0xa

    mul-int/2addr v1, v2

    if-lt v0, v1, :cond_15

    .line 535
    new-array v1, v2, [Landroid/os/HapticPlayer$Pattern;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_c

    move-object v12, v1

    .line 536
    .local v12, "patternWrapper":[Landroid/os/HapticPlayer$Pattern;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v2, :cond_14

    .line 537
    add-int v6, v30, v1

    :try_start_19
    aget-object v3, v35, v6

    aput-object v3, v12, v1
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_a

    .line 536
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 539
    .end local v1    # "i":I
    :cond_14
    move-object/from16 v1, p0

    move/from16 v15, v22

    move-object/from16 v22, v26

    .end local v26    # "eventArray":Lorg/json/JSONArray;
    .local v15, "patternDurationTime":I
    .local v22, "eventArray":Lorg/json/JSONArray;
    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v26, v5

    .end local v5    # "pattern":Landroid/os/HapticPlayer$Pattern;
    .local v26, "pattern":Landroid/os/HapticPlayer$Pattern;
    move/from16 v5, p4

    move/from16 v11, v30

    .end local v30    # "wrapperOffset":I
    .local v11, "wrapperOffset":I
    move/from16 v6, p5

    move-object/from16 v10, v35

    .end local v35    # "patternList":[Landroid/os/HapticPlayer$Pattern;
    .local v10, "patternList":[Landroid/os/HapticPlayer$Pattern;
    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, v21

    move-object/from16 v33, v13

    move-object/from16 v27, v28

    move-object v13, v10

    .end local v10    # "patternList":[Landroid/os/HapticPlayer$Pattern;
    .end local v28    # "hapticObject":Lorg/json/JSONObject;
    .local v13, "patternList":[Landroid/os/HapticPlayer$Pattern;
    .local v27, "hapticObject":Lorg/json/JSONObject;
    move v10, v11

    move/from16 v28, v0

    move v0, v11

    .end local v11    # "wrapperOffset":I
    .local v0, "wrapperOffset":I
    .local v28, "ind":I
    move-object v11, v12

    :try_start_1a
    invoke-virtual/range {v1 .. v11}, Landroid/os/HapticPlayer;->sendPatternWrapper(IIIIIIIII[Landroid/os/HapticPlayer$Pattern;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_b

    .line 541
    add-int/lit8 v20, v20, 0x1

    .line 542
    mul-int/lit8 v0, v20, 0xa

    move v6, v0

    goto :goto_9

    .line 555
    .end local v0    # "wrapperOffset":I
    .end local v12    # "patternWrapper":[Landroid/os/HapticPlayer$Pattern;
    .end local v15    # "patternDurationTime":I
    .end local v17    # "eventRelativeTime":I
    .end local v19    # "isCompliance":Z
    .end local v20    # "wrapperIndex":I
    .end local v21    # "patternNum":I
    .end local v22    # "eventArray":Lorg/json/JSONArray;
    .end local v23    # "patternRelativeTime":I
    .end local v24    # "patternObject":Lorg/json/JSONObject;
    .end local v25    # "patternArray":Lorg/json/JSONArray;
    .end local v26    # "pattern":Landroid/os/HapticPlayer$Pattern;
    .end local v27    # "hapticObject":Lorg/json/JSONObject;
    .end local v28    # "ind":I
    :catch_b
    move-exception v0

    move-object v4, v13

    move-object/from16 v3, v16

    move/from16 v2, v18

    move/from16 v1, v38

    goto/16 :goto_b

    .line 534
    .end local v13    # "patternList":[Landroid/os/HapticPlayer$Pattern;
    .local v0, "ind":I
    .restart local v5    # "pattern":Landroid/os/HapticPlayer$Pattern;
    .restart local v17    # "eventRelativeTime":I
    .restart local v19    # "isCompliance":Z
    .restart local v20    # "wrapperIndex":I
    .restart local v21    # "patternNum":I
    .local v22, "patternDurationTime":I
    .restart local v23    # "patternRelativeTime":I
    .restart local v24    # "patternObject":Lorg/json/JSONObject;
    .restart local v25    # "patternArray":Lorg/json/JSONArray;
    .local v26, "eventArray":Lorg/json/JSONArray;
    .local v28, "hapticObject":Lorg/json/JSONObject;
    .restart local v30    # "wrapperOffset":I
    .restart local v35    # "patternList":[Landroid/os/HapticPlayer$Pattern;
    :cond_15
    move-object/from16 v33, v13

    move/from16 v15, v22

    move-object/from16 v22, v26

    move-object/from16 v27, v28

    move-object/from16 v13, v35

    move/from16 v28, v0

    move-object/from16 v26, v5

    move/from16 v0, v30

    .end local v5    # "pattern":Landroid/os/HapticPlayer$Pattern;
    .end local v30    # "wrapperOffset":I
    .end local v35    # "patternList":[Landroid/os/HapticPlayer$Pattern;
    .local v0, "wrapperOffset":I
    .restart local v13    # "patternList":[Landroid/os/HapticPlayer$Pattern;
    .restart local v15    # "patternDurationTime":I
    .local v22, "eventArray":Lorg/json/JSONArray;
    .local v26, "pattern":Landroid/os/HapticPlayer$Pattern;
    .restart local v27    # "hapticObject":Lorg/json/JSONObject;
    .local v28, "ind":I
    move v6, v0

    .line 545
    .end local v0    # "wrapperOffset":I
    .end local v15    # "patternDurationTime":I
    .end local v17    # "eventRelativeTime":I
    .end local v22    # "eventArray":Lorg/json/JSONArray;
    .end local v23    # "patternRelativeTime":I
    .end local v24    # "patternObject":Lorg/json/JSONObject;
    .end local v26    # "pattern":Landroid/os/HapticPlayer$Pattern;
    .restart local v6    # "wrapperOffset":I
    :goto_9
    move-object/from16 v12, p0

    move-object/from16 v11, p8

    move-object v7, v13

    move/from16 v8, v21

    move-object/from16 v9, v25

    move-object/from16 v10, v27

    move/from16 v1, v28

    move-object/from16 v15, v32

    move-object/from16 v13, v33

    move-object/from16 v0, v34

    move/from16 v17, v38

    goto/16 :goto_0

    .line 555
    .end local v6    # "wrapperOffset":I
    .end local v13    # "patternList":[Landroid/os/HapticPlayer$Pattern;
    .end local v19    # "isCompliance":Z
    .end local v20    # "wrapperIndex":I
    .end local v21    # "patternNum":I
    .end local v25    # "patternArray":Lorg/json/JSONArray;
    .end local v27    # "hapticObject":Lorg/json/JSONObject;
    .end local v28    # "ind":I
    .restart local v35    # "patternList":[Landroid/os/HapticPlayer$Pattern;
    :catch_c
    move-exception v0

    move-object/from16 v13, v35

    move-object v4, v13

    move-object/from16 v3, v16

    move/from16 v2, v18

    move/from16 v1, v38

    .end local v35    # "patternList":[Landroid/os/HapticPlayer$Pattern;
    .restart local v13    # "patternList":[Landroid/os/HapticPlayer$Pattern;
    goto/16 :goto_b

    .end local v13    # "patternList":[Landroid/os/HapticPlayer$Pattern;
    .end local v38    # "relativeTimeLast":I
    .restart local v7    # "patternList":[Landroid/os/HapticPlayer$Pattern;
    .local v17, "relativeTimeLast":I
    :catch_d
    move-exception v0

    move-object v13, v7

    move-object v4, v13

    move-object/from16 v3, v16

    move/from16 v1, v17

    move/from16 v2, v18

    .end local v7    # "patternList":[Landroid/os/HapticPlayer$Pattern;
    .restart local v13    # "patternList":[Landroid/os/HapticPlayer$Pattern;
    goto :goto_b

    .line 388
    .end local v13    # "patternList":[Landroid/os/HapticPlayer$Pattern;
    .local v1, "ind":I
    .restart local v6    # "wrapperOffset":I
    .restart local v7    # "patternList":[Landroid/os/HapticPlayer$Pattern;
    .restart local v8    # "patternNum":I
    .local v9, "patternArray":Lorg/json/JSONArray;
    .local v10, "hapticObject":Lorg/json/JSONObject;
    .restart local v19    # "isCompliance":Z
    .restart local v20    # "wrapperIndex":I
    :cond_16
    move v0, v6

    move-object v13, v7

    move/from16 v21, v8

    move-object/from16 v25, v9

    move-object/from16 v27, v10

    .line 546
    .end local v1    # "ind":I
    .end local v6    # "wrapperOffset":I
    .end local v7    # "patternList":[Landroid/os/HapticPlayer$Pattern;
    .end local v8    # "patternNum":I
    .end local v9    # "patternArray":Lorg/json/JSONArray;
    .end local v10    # "hapticObject":Lorg/json/JSONObject;
    .restart local v0    # "wrapperOffset":I
    .restart local v13    # "patternList":[Landroid/os/HapticPlayer$Pattern;
    .restart local v21    # "patternNum":I
    .restart local v25    # "patternArray":Lorg/json/JSONArray;
    .restart local v27    # "hapticObject":Lorg/json/JSONObject;
    :try_start_1b
    array-length v1, v13

    if-ge v0, v1, :cond_18

    .line 547
    array-length v1, v13

    sub-int v12, v1, v0

    .line 548
    .local v12, "endWapperNum":I
    new-array v1, v12, [Landroid/os/HapticPlayer$Pattern;

    move-object v14, v1

    .line 549
    .local v14, "patternWrapper":[Landroid/os/HapticPlayer$Pattern;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    array-length v2, v14

    if-ge v1, v2, :cond_17

    .line 550
    add-int v6, v0, v1

    aget-object v2, v13, v6

    aput-object v2, v14, v1

    .line 549
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 552
    .end local v1    # "i":I
    :cond_17
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, v21

    move v10, v0

    move-object v11, v14

    invoke-virtual/range {v1 .. v11}, Landroid/os/HapticPlayer;->sendPatternWrapper(IIIIIIIII[Landroid/os/HapticPlayer$Pattern;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_e

    .line 557
    .end local v0    # "wrapperOffset":I
    .end local v12    # "endWapperNum":I
    .end local v14    # "patternWrapper":[Landroid/os/HapticPlayer$Pattern;
    .end local v19    # "isCompliance":Z
    .end local v20    # "wrapperIndex":I
    .end local v21    # "patternNum":I
    .end local v25    # "patternArray":Lorg/json/JSONArray;
    .end local v27    # "hapticObject":Lorg/json/JSONObject;
    :cond_18
    move-object v7, v13

    goto :goto_c

    .line 555
    :catch_e
    move-exception v0

    move-object v4, v13

    move-object/from16 v3, v16

    move/from16 v1, v17

    move/from16 v2, v18

    goto :goto_b

    .end local v13    # "patternList":[Landroid/os/HapticPlayer$Pattern;
    .end local v17    # "relativeTimeLast":I
    .end local v18    # "durationLast":I
    .local v1, "relativeTimeLast":I
    .local v2, "durationLast":I
    .local v4, "patternList":[Landroid/os/HapticPlayer$Pattern;
    :catch_f
    move-exception v0

    move-object/from16 v3, v16

    goto :goto_b

    .end local v16    # "patternHeInfo":[B
    .local v3, "patternHeInfo":[B
    :catch_10
    move-exception v0

    .line 556
    .local v0, "e":Ljava/lang/Exception;
    :goto_b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move/from16 v17, v1

    move/from16 v18, v2

    move-object/from16 v16, v3

    move-object v7, v4

    .line 559
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "relativeTimeLast":I
    .end local v2    # "durationLast":I
    .end local v3    # "patternHeInfo":[B
    .end local v4    # "patternList":[Landroid/os/HapticPlayer$Pattern;
    .restart local v7    # "patternList":[Landroid/os/HapticPlayer$Pattern;
    .restart local v16    # "patternHeInfo":[B
    .restart local v17    # "relativeTimeLast":I
    .restart local v18    # "durationLast":I
    :goto_c
    return-void
.end method


# virtual methods
.method public whitelist applyPatternHeParam(III)V
    .locals 4
    .param p1, "interval"    # I
    .param p2, "amplitude"    # I
    .param p3, "freq"    # I

    .line 801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start with  interval:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " amplitude:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " freq:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HapticPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    invoke-direct {p0, p1, p2, p3}, Landroid/os/HapticPlayer;->checkParam(III)Z

    move-result v0

    .line 804
    .local v0, "checkResult":Z
    if-nez v0, :cond_0

    .line 805
    const-string v2, "wrong param!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    return-void

    .line 810
    :cond_0
    :try_start_0
    iget-boolean v2, p0, Landroid/os/HapticPlayer;->mStarted:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 811
    sget-object v2, Landroid/os/HapticPlayer;->mExcutor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Landroid/os/HapticPlayer$4;

    invoke-direct {v3, p0, p1, p2, p3}, Landroid/os/HapticPlayer$4;-><init>(Landroid/os/HapticPlayer;III)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 828
    :cond_1
    const-string v2, "haptic player has not started"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 833
    :goto_0
    goto :goto_1

    .line 830
    :catch_0
    move-exception v2

    .line 831
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 832
    const-string v3, "The system doesn\'t integrate richTap software"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public whitelist applyPatternHeWithString(Ljava/lang/String;IIII)V
    .locals 25
    .param p1, "patternString"    # Ljava/lang/String;
    .param p2, "loop"    # I
    .param p3, "interval"    # I
    .param p4, "amplitude"    # I
    .param p5, "freq"    # I

    .line 561
    move-object/from16 v10, p0

    move/from16 v11, p2

    const-string v1, "HapticPlayer"

    const-string v0, "play new he api"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    const/4 v0, 0x1

    if-ge v11, v0, :cond_0

    .line 563
    const-string v0, "The minimum count of loop pattern is 1"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    return-void

    .line 567
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-object/from16 v12, p1

    :try_start_1
    invoke-direct {v2, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v13, v2

    .line 569
    .local v13, "hapticObject":Lorg/json/JSONObject;
    const/4 v2, 0x0

    .line 570
    .local v2, "heVersion":I
    sget-boolean v3, Landroid/os/HapticPlayer;->mAvailable:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 571
    const-string v3, "Metadata"

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 572
    .local v3, "metaData":Lorg/json/JSONObject;
    const-string v5, "Version"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    move v2, v5

    .line 573
    invoke-static {}, Landroid/os/HapticPlayer;->getMajorVersion()I

    move-result v5

    .line 574
    .local v5, "richTapMajorVersion":I
    invoke-static {}, Landroid/os/HapticPlayer;->getMinorVersion()I

    move-result v6

    .line 575
    .local v6, "richTapMinorVersion":I
    invoke-static {v5, v6, v2}, Landroid/os/HapticPlayer;->checkSdkSupport(III)Z

    move-result v7

    .line 577
    .local v7, "checkPass":Z
    if-nez v7, :cond_1

    .line 578
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "richtap version check failed, richTapMajorVersion:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%x02"

    new-array v0, v0, [Ljava/lang/Object;

    .line 579
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v0, v4

    invoke-static {v9, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " heVersion:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 578
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 580
    return-void

    .line 577
    :cond_1
    move v14, v2

    goto :goto_0

    .line 570
    .end local v3    # "metaData":Lorg/json/JSONObject;
    .end local v5    # "richTapMajorVersion":I
    .end local v6    # "richTapMinorVersion":I
    .end local v7    # "checkPass":Z
    :cond_2
    move v14, v2

    .line 584
    .end local v2    # "heVersion":I
    .local v14, "heVersion":I
    :goto_0
    const/4 v15, 0x0

    .line 585
    .local v15, "patternHeInfo":[I
    const/16 v16, 0x0

    .line 586
    .local v16, "patternList":[Landroid/os/HapticPlayer$Pattern;
    const/16 v17, 0x0

    .line 588
    .local v17, "patternHe":[I
    if-ne v14, v0, :cond_5

    .line 589
    :try_start_2
    invoke-direct/range {p0 .. p1}, Landroid/os/HapticPlayer;->getSerializationDataHe_1_0(Ljava/lang/String;)[I

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 590
    .end local v15    # "patternHeInfo":[I
    .local v2, "patternHeInfo":[I
    if-nez v2, :cond_3

    .line 591
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "serialize he failed!! ,heVersion:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 592
    return-void

    .line 594
    :cond_3
    :try_start_4
    array-length v3, v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 596
    .local v3, "len":I
    :try_start_5
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-lt v5, v6, :cond_4

    .line 597
    const/4 v5, 0x0

    .line 598
    .local v5, "realPatternHeInfo":[I
    add-int/lit8 v6, v3, 0x1

    new-array v6, v6, [I

    move-object v5, v6

    .line 599
    const/4 v6, 0x3

    aput v6, v5, v4

    .line 600
    array-length v6, v2

    invoke-static {v2, v4, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 602
    move/from16 v9, p3

    move/from16 v8, p4

    move/from16 v7, p5

    :try_start_6
    invoke-static {v5, v11, v9, v8, v7}, Landroid/os/RichTapVibrationEffect;->createPatternHeWithParam([IIIII)Landroid/os/VibrationEffect;

    move-result-object v0

    .line 603
    .local v0, "createPatternHe":Landroid/os/VibrationEffect;
    invoke-static {v0}, Landroid/os/CombinedVibration;->createParallel(Landroid/os/VibrationEffect;)Landroid/os/CombinedVibration;

    move-result-object v21

    .line 604
    .local v21, "combined":Landroid/os/CombinedVibration;
    new-instance v4, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v4}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    invoke-virtual {v4}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v22

    .line 605
    .local v22, "atr":Landroid/os/VibrationAttributes;
    iget-object v4, v10, Landroid/os/HapticPlayer;->mService:Landroid/os/IVibratorManagerService;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v19

    iget-object v6, v10, Landroid/os/HapticPlayer;->mPackageName:Ljava/lang/String;

    const-string v23, "DynamicEffect"

    iget-object v15, v10, Landroid/os/HapticPlayer;->mToken:Landroid/os/Binder;

    move-object/from16 v18, v4

    move-object/from16 v20, v6

    move-object/from16 v24, v15

    invoke-interface/range {v18 .. v24}, Landroid/os/IVibratorManagerService;->vibrate(ILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 607
    .end local v0    # "createPatternHe":Landroid/os/VibrationEffect;
    .end local v5    # "realPatternHeInfo":[I
    .end local v21    # "combined":Landroid/os/CombinedVibration;
    .end local v22    # "atr":Landroid/os/VibrationAttributes;
    goto :goto_1

    .line 608
    :cond_4
    move/from16 v9, p3

    move/from16 v8, p4

    move/from16 v7, p5

    const-string v0, "The system is low than 26,does not support richTap!!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 613
    :goto_1
    goto :goto_3

    .line 610
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move/from16 v9, p3

    move/from16 v8, p4

    move/from16 v7, p5

    .line 611
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 612
    const-string v4, "for createPatternHe, The system doesn\'t integrate richTap software"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "len":I
    :goto_3
    goto :goto_4

    .line 621
    .end local v2    # "patternHeInfo":[I
    .end local v13    # "hapticObject":Lorg/json/JSONObject;
    .end local v14    # "heVersion":I
    .end local v16    # "patternList":[Landroid/os/HapticPlayer$Pattern;
    .end local v17    # "patternHe":[I
    :catch_2
    move-exception v0

    move/from16 v9, p3

    move/from16 v8, p4

    move/from16 v7, p5

    goto :goto_5

    .line 614
    .restart local v13    # "hapticObject":Lorg/json/JSONObject;
    .restart local v14    # "heVersion":I
    .restart local v15    # "patternHeInfo":[I
    .restart local v16    # "patternList":[Landroid/os/HapticPlayer$Pattern;
    .restart local v17    # "patternHe":[I
    :cond_5
    move/from16 v9, p3

    move/from16 v8, p4

    move/from16 v7, p5

    const/4 v0, 0x2

    if-ne v14, v0, :cond_6

    .line 615
    sget-object v0, Landroid/os/HapticPlayer;->mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    .line 616
    .local v2, "seq":I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 617
    .local v3, "pid":I
    move-object/from16 v1, p0

    move v4, v14

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p1

    invoke-direct/range {v1 .. v9}, Landroid/os/HapticPlayer;->parseAndSendDataHe_2_0(IIIIIIILjava/lang/String;)V

    .line 618
    .end local v2    # "seq":I
    .end local v3    # "pid":I
    goto :goto_4

    .line 619
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupport he version heVersion:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 623
    .end local v13    # "hapticObject":Lorg/json/JSONObject;
    .end local v14    # "heVersion":I
    .end local v15    # "patternHeInfo":[I
    .end local v16    # "patternList":[Landroid/os/HapticPlayer$Pattern;
    .end local v17    # "patternHe":[I
    :goto_4
    goto :goto_6

    .line 621
    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    move-object/from16 v12, p1

    .line 622
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 624
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6
    return-void
.end method

.method blacklist generateSerializationDataHe_2_0(IIIIII[Landroid/os/HapticPlayer$Pattern;)[I
    .locals 13
    .param p1, "formatVersion"    # I
    .param p2, "heVersion"    # I
    .param p3, "totalPattern"    # I
    .param p4, "pid"    # I
    .param p5, "seq"    # I
    .param p6, "indexBase"    # I
    .param p7, "pattern"    # [Landroid/os/HapticPlayer$Pattern;

    .line 325
    move-object/from16 v0, p7

    const/4 v1, 0x0

    .line 326
    .local v1, "totalPatternLen":I
    const/4 v2, 0x5

    .line 327
    .local v2, "patternOffset":I
    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, v0, v5

    .line 328
    .local v6, "patternTmp":Landroid/os/HapticPlayer$Pattern;
    invoke-virtual {v6}, Landroid/os/HapticPlayer$Pattern;->getPatternDataLen()I

    move-result v7

    add-int/2addr v1, v7

    .line 327
    .end local v6    # "patternTmp":Landroid/os/HapticPlayer$Pattern;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 330
    :cond_0
    add-int v3, v2, v1

    new-array v3, v3, [I

    .line 331
    .local v3, "data":[I
    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([II)V

    .line 333
    aput p1, v3, v4

    .line 334
    const/4 v5, 0x1

    aput p2, v3, v5

    .line 335
    const/4 v5, 0x2

    aput p4, v3, v5

    .line 336
    const/4 v5, 0x3

    aput p5, v3, v5

    .line 337
    const/4 v5, 0x4

    aget v6, v3, v5

    const v7, 0xffff

    and-int v7, p3, v7

    or-int/2addr v6, v7

    aput v6, v3, v5

    .line 338
    array-length v6, v0

    .line 339
    .local v6, "patternNum":I
    aget v7, v3, v5

    shl-int/lit8 v8, v6, 0x10

    const/high16 v9, -0x10000

    and-int/2addr v8, v9

    or-int/2addr v7, v8

    aput v7, v3, v5

    .line 341
    move/from16 v5, p6

    .line 342
    .local v5, "index":I
    const/4 v7, 0x0

    .line 344
    .local v7, "patternData":[I
    array-length v8, v0

    move v10, v4

    move-object v9, v7

    move v7, v2

    move/from16 v2, p6

    .end local p6    # "indexBase":I
    .local v2, "indexBase":I
    .local v7, "patternOffset":I
    .local v9, "patternData":[I
    :goto_1
    if-ge v10, v8, :cond_1

    aget-object v11, v0, v10

    .line 345
    .local v11, "patternTmp":Landroid/os/HapticPlayer$Pattern;
    invoke-virtual {v11, v2}, Landroid/os/HapticPlayer$Pattern;->generateSerializationPatternData(I)[I

    move-result-object v9

    .line 346
    array-length v12, v9

    invoke-static {v9, v4, v3, v7, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 347
    array-length v12, v9

    add-int/2addr v7, v12

    .line 348
    nop

    .end local v11    # "patternTmp":Landroid/os/HapticPlayer$Pattern;
    add-int/lit8 v2, v2, 0x1

    .line 344
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 350
    :cond_1
    return-object v3
.end method

.method public whitelist getRealLooper(I)I
    .locals 1
    .param p1, "looper"    # I

    .line 627
    if-gez p1, :cond_1

    .line 628
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 629
    const v0, 0x7fffffff

    return v0

    .line 631
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 633
    :cond_1
    if-nez p1, :cond_2

    .line 634
    const/4 v0, 0x1

    return v0

    .line 636
    :cond_2
    return p1
.end method

.method blacklist sendPatternWrapper(IIIIIIIII[Landroid/os/HapticPlayer$Pattern;)V
    .locals 18
    .param p1, "seq"    # I
    .param p2, "pid"    # I
    .param p3, "heVersion"    # I
    .param p4, "loop"    # I
    .param p5, "interval"    # I
    .param p6, "amplitude"    # I
    .param p7, "freq"    # I
    .param p8, "totalPatternNum"    # I
    .param p9, "patternIndexOffset"    # I
    .param p10, "list"    # [Landroid/os/HapticPlayer$Pattern;

    .line 355
    move-object/from16 v9, p0

    const-string v10, "HapticPlayer"

    const/4 v2, 0x2

    move-object/from16 v1, p0

    move/from16 v3, p3

    move/from16 v4, p8

    move/from16 v5, p2

    move/from16 v6, p1

    move/from16 v7, p9

    move-object/from16 v8, p10

    invoke-virtual/range {v1 .. v8}, Landroid/os/HapticPlayer;->generateSerializationDataHe_2_0(IIIIII[Landroid/os/HapticPlayer$Pattern;)[I

    move-result-object v1

    .line 358
    .local v1, "patternHe":[I
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_0

    .line 359
    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    :try_start_1
    invoke-static {v1, v2, v3, v4, v5}, Landroid/os/RichTapVibrationEffect;->createPatternHeWithParam([IIIII)Landroid/os/VibrationEffect;

    move-result-object v0

    .line 360
    .local v0, "createPatternHe":Landroid/os/VibrationEffect;
    new-instance v6, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v6}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    invoke-virtual {v6}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v15

    .line 361
    .local v15, "atr":Landroid/os/VibrationAttributes;
    invoke-static {v0}, Landroid/os/CombinedVibration;->createParallel(Landroid/os/VibrationEffect;)Landroid/os/CombinedVibration;

    move-result-object v14

    .line 362
    .local v14, "combined":Landroid/os/CombinedVibration;
    iget-object v11, v9, Landroid/os/HapticPlayer;->mService:Landroid/os/IVibratorManagerService;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v12

    iget-object v13, v9, Landroid/os/HapticPlayer;->mPackageName:Ljava/lang/String;

    const-string v16, "DynamicEffect"

    iget-object v6, v9, Landroid/os/HapticPlayer;->mToken:Landroid/os/Binder;

    move-object/from16 v17, v6

    invoke-interface/range {v11 .. v17}, Landroid/os/IVibratorManagerService;->vibrate(ILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 364
    .end local v0    # "createPatternHe":Landroid/os/VibrationEffect;
    .end local v14    # "combined":Landroid/os/CombinedVibration;
    .end local v15    # "atr":Landroid/os/VibrationAttributes;
    goto :goto_0

    .line 367
    :catch_0
    move-exception v0

    goto :goto_1

    .line 365
    :cond_0
    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    const-string v0, "The system is low than 26,does not support richTap!!"

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 370
    :goto_0
    goto :goto_2

    .line 367
    :catch_1
    move-exception v0

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    .line 368
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 369
    const-string v6, "for createPatternHe, The system doesn\'t integrate richTap software"

    invoke-static {v10, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public whitelist start(I)V
    .locals 4
    .param p1, "loop"    # I

    .line 640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start play pattern loop:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HapticPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget-object v0, p0, Landroid/os/HapticPlayer;->mEffect:Landroid/os/DynamicEffect;

    if-nez v0, :cond_0

    .line 642
    const-string v0, "effect is null,do nothing"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    return-void

    .line 646
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_2

    .line 647
    invoke-virtual {p0, p1}, Landroid/os/HapticPlayer;->getRealLooper(I)I

    move-result v0

    .line 648
    .local v0, "realLooper":I
    if-gez v0, :cond_1

    .line 649
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "looper is not correct realLooper:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    return-void

    .line 652
    :cond_1
    sget-object v1, Landroid/os/HapticPlayer;->mExcutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Landroid/os/HapticPlayer$1;

    invoke-direct {v2, p0, v0}, Landroid/os/HapticPlayer$1;-><init>(Landroid/os/HapticPlayer;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 673
    .end local v0    # "realLooper":I
    goto :goto_0

    .line 674
    :cond_2
    const-string v0, "The system is low than 26,does not support richTap!!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :goto_0
    return-void
.end method

.method public whitelist start(III)V
    .locals 5
    .param p1, "loop"    # I
    .param p2, "interval"    # I
    .param p3, "amplitude"    # I

    .line 684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start with loop:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " interval:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " amplitude:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HapticPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    const/4 v0, -0x1

    invoke-direct {p0, p2, p3, v0}, Landroid/os/HapticPlayer;->checkParam(III)Z

    move-result v0

    .line 687
    .local v0, "checkResult":Z
    if-nez v0, :cond_0

    .line 688
    const-string v2, "wrong start param"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    return-void

    .line 692
    :cond_0
    iget-object v2, p0, Landroid/os/HapticPlayer;->mEffect:Landroid/os/DynamicEffect;

    if-nez v2, :cond_1

    .line 693
    const-string v2, "effect is null,do nothing"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    return-void

    .line 697
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_3

    .line 698
    invoke-virtual {p0, p1}, Landroid/os/HapticPlayer;->getRealLooper(I)I

    move-result v2

    .line 699
    .local v2, "realLooper":I
    if-gez v2, :cond_2

    .line 700
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "looper is not correct realLooper:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    return-void

    .line 703
    :cond_2
    sget-object v1, Landroid/os/HapticPlayer;->mExcutor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Landroid/os/HapticPlayer$2;

    invoke-direct {v3, p0, v2, p2, p3}, Landroid/os/HapticPlayer$2;-><init>(Landroid/os/HapticPlayer;III)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 724
    .end local v2    # "realLooper":I
    goto :goto_0

    .line 725
    :cond_3
    const-string v2, "The system is low than 26,does not support richTap!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :goto_0
    return-void
.end method

.method public whitelist start(IIII)V
    .locals 10
    .param p1, "loop"    # I
    .param p2, "interval"    # I
    .param p3, "amplitude"    # I
    .param p4, "freq"    # I

    .line 737
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start with loop:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " interval:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " amplitude:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " freq:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HapticPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    invoke-direct {p0, p2, p3, p4}, Landroid/os/HapticPlayer;->checkParam(III)Z

    move-result v0

    .line 740
    .local v0, "checkResult":Z
    if-nez v0, :cond_0

    .line 741
    const-string v2, "wrong start param"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    return-void

    .line 745
    :cond_0
    iget-object v2, p0, Landroid/os/HapticPlayer;->mEffect:Landroid/os/DynamicEffect;

    if-nez v2, :cond_1

    .line 746
    const-string v2, "effect is null,do nothing"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    return-void

    .line 750
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_3

    .line 751
    invoke-virtual {p0, p1}, Landroid/os/HapticPlayer;->getRealLooper(I)I

    move-result v2

    .line 752
    .local v2, "realLooper":I
    if-gez v2, :cond_2

    .line 753
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "looper is not correct realLooper:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    return-void

    .line 756
    :cond_2
    sget-object v1, Landroid/os/HapticPlayer;->mExcutor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Landroid/os/HapticPlayer$3;

    move-object v4, v3

    move-object v5, p0

    move v6, v2

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-direct/range {v4 .. v9}, Landroid/os/HapticPlayer$3;-><init>(Landroid/os/HapticPlayer;IIII)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 777
    .end local v2    # "realLooper":I
    goto :goto_0

    .line 778
    :cond_3
    const-string v2, "The system is low than 26,does not support richTap!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    :goto_0
    return-void
.end method

.method public whitelist stop()V
    .locals 3

    .line 874
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "HapticPlayer"

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_1

    .line 875
    iget-boolean v0, p0, Landroid/os/HapticPlayer;->mStarted:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 876
    sget-object v0, Landroid/os/HapticPlayer;->mExcutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Landroid/os/HapticPlayer$5;

    invoke-direct {v1, p0}, Landroid/os/HapticPlayer$5;-><init>(Landroid/os/HapticPlayer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 892
    :cond_0
    const-string v0, "haptic player has not started"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 896
    :cond_1
    const-string v0, "The system is low than 26,does not support richTap!!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    :goto_0
    return-void
.end method

.method public whitelist updateAmplitude(I)V
    .locals 1
    .param p1, "amplitude"    # I

    .line 849
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, v0}, Landroid/os/HapticPlayer;->applyPatternHeParam(III)V

    .line 850
    return-void
.end method

.method public whitelist updateFrequency(I)V
    .locals 1
    .param p1, "freq"    # I

    .line 857
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v0, p1}, Landroid/os/HapticPlayer;->applyPatternHeParam(III)V

    .line 858
    return-void
.end method

.method public whitelist updateInterval(I)V
    .locals 1
    .param p1, "interval"    # I

    .line 841
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, v0}, Landroid/os/HapticPlayer;->applyPatternHeParam(III)V

    .line 842
    return-void
.end method

.method public whitelist updateParameter(III)V
    .locals 0
    .param p1, "interval"    # I
    .param p2, "amplitude"    # I
    .param p3, "freq"    # I

    .line 869
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/HapticPlayer;->applyPatternHeParam(III)V

    .line 870
    return-void
.end method
