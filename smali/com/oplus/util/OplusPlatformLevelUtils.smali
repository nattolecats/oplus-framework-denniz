.class public Lcom/oplus/util/OplusPlatformLevelUtils;
.super Ljava/lang/Object;
.source "OplusPlatformLevelUtils.java"


# static fields
.field private static final blacklist ANIMATION_LEVEL:I

.field private static final blacklist GAUSSIAN_LEVEL:I

.field private static final blacklist GB:J = 0x40000000L

.field public static final whitelist IS_LIGHT_OS:Z

.field public static final whitelist LEVEL_HIGH:I = 0x3

.field public static final whitelist LEVEL_LOW:I = 0x1

.field public static final whitelist LEVEL_MIDDLE:I = 0x2

.field public static final whitelist LEVEL_TYPE_FOR_CPU:I = 0x2

.field public static final whitelist LEVEL_TYPE_FOR_GPU:I = 0x3

.field public static final whitelist LEVEL_TYPE_FOR_RAM:I = 0x1

.field public static final whitelist LEVEL_UNDEF:I = -0x1

.field private static final blacklist PLATFORM_INFO:Ljava/lang/String;

.field private static final blacklist PLATFORM_INFO_LENGTH:I = 0x6

.field private static final blacklist REGEX:Ljava/lang/String; = "^(c\\:[1-3]\\,g\\:[1-3]){1}$"

.field private static final blacklist TAG:Ljava/lang/String; = "OplusPlatformLevelUtils"

.field private static final blacklist THRESHOLD_HIGH_RAM:I = 0xc

.field private static final blacklist THRESHOLD_LOW_RAM:I = 0x4

.field public static final whitelist TOTAL_RAM:I

.field private static blacklist sCpuLevel:I

.field private static blacklist sGpuLevel:I

.field private static volatile blacklist sInstance:Lcom/oplus/util/OplusPlatformLevelUtils;

.field private static blacklist sRamLevel:I


# instance fields
.field private blacklist mContext:Landroid/content/Context;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 49
    const-string v0, "ro.oplus.lightos"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/util/OplusPlatformLevelUtils;->IS_LIGHT_OS:Z

    .line 56
    invoke-static {}, Lcom/oplus/util/OplusPlatformLevelUtils;->obtainRam()I

    move-result v0

    sput v0, Lcom/oplus/util/OplusPlatformLevelUtils;->TOTAL_RAM:I

    .line 116
    const-string v0, "ro.soc.model"

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/util/OplusPlatformLevelUtils;->PLATFORM_INFO:Ljava/lang/String;

    .line 117
    const-string v0, "ro.oplus.animationlevel"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/oplus/util/OplusPlatformLevelUtils;->ANIMATION_LEVEL:I

    .line 118
    const-string v0, "ro.oplus.gaussianlevel"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/oplus/util/OplusPlatformLevelUtils;->GAUSSIAN_LEVEL:I

    .line 120
    const/4 v0, -0x1

    sput v0, Lcom/oplus/util/OplusPlatformLevelUtils;->sRamLevel:I

    .line 121
    sput v0, Lcom/oplus/util/OplusPlatformLevelUtils;->sCpuLevel:I

    .line 122
    sput v0, Lcom/oplus/util/OplusPlatformLevelUtils;->sGpuLevel:I

    .line 124
    const/4 v0, 0x0

    sput-object v0, Lcom/oplus/util/OplusPlatformLevelUtils;->sInstance:Lcom/oplus/util/OplusPlatformLevelUtils;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Lcom/oplus/util/OplusPlatformLevelUtils;->mContext:Landroid/content/Context;

    .line 137
    if-nez p1, :cond_0

    .line 138
    const-string v0, "OplusPlatformLevelUtils"

    const-string v1, "OplusPlatformLevelUtils mContext is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    sget v0, Lcom/oplus/util/OplusPlatformLevelUtils;->sRamLevel:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    sget v0, Lcom/oplus/util/OplusPlatformLevelUtils;->sCpuLevel:I

    if-eq v0, v1, :cond_1

    sget v0, Lcom/oplus/util/OplusPlatformLevelUtils;->sGpuLevel:I

    if-ne v0, v1, :cond_2

    .line 142
    :cond_1
    invoke-direct {p0}, Lcom/oplus/util/OplusPlatformLevelUtils;->initPlatformLevel()V

    .line 144
    :cond_2
    return-void
.end method

.method public static whitelist getInstance(Landroid/content/Context;)Lcom/oplus/util/OplusPlatformLevelUtils;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 155
    sget-object v0, Lcom/oplus/util/OplusPlatformLevelUtils;->sInstance:Lcom/oplus/util/OplusPlatformLevelUtils;

    if-nez v0, :cond_1

    .line 156
    const-class v0, Lcom/oplus/util/OplusPlatformLevelUtils;

    monitor-enter v0

    .line 157
    :try_start_0
    sget-object v1, Lcom/oplus/util/OplusPlatformLevelUtils;->sInstance:Lcom/oplus/util/OplusPlatformLevelUtils;

    if-nez v1, :cond_0

    .line 158
    new-instance v1, Lcom/oplus/util/OplusPlatformLevelUtils;

    invoke-direct {v1, p0}, Lcom/oplus/util/OplusPlatformLevelUtils;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/oplus/util/OplusPlatformLevelUtils;->sInstance:Lcom/oplus/util/OplusPlatformLevelUtils;

    .line 160
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 162
    :cond_1
    :goto_0
    sget-object v0, Lcom/oplus/util/OplusPlatformLevelUtils;->sInstance:Lcom/oplus/util/OplusPlatformLevelUtils;

    return-object v0
.end method

.method private blacklist getPlatformCpuLevel()I
    .locals 2

    .line 276
    sget v0, Lcom/oplus/util/OplusPlatformLevelUtils;->sCpuLevel:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 277
    const-string v0, "OplusPlatformLevelUtils"

    const-string v1, "cpu level not set!!please set in res file first!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_0
    sget v0, Lcom/oplus/util/OplusPlatformLevelUtils;->sCpuLevel:I

    return v0
.end method

.method private blacklist getPlatformGpuLevel()I
    .locals 2

    .line 287
    sget v0, Lcom/oplus/util/OplusPlatformLevelUtils;->sGpuLevel:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 288
    const-string v0, "OplusPlatformLevelUtils"

    const-string v1, "gpu level not set!!please set in res file first!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_0
    sget v0, Lcom/oplus/util/OplusPlatformLevelUtils;->sGpuLevel:I

    return v0
.end method

.method private blacklist getPlatformList(I)[Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I

    .line 225
    iget-object v0, p0, Lcom/oplus/util/OplusPlatformLevelUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getPlatformRamLevel()I
    .locals 2

    .line 265
    sget v0, Lcom/oplus/util/OplusPlatformLevelUtils;->sRamLevel:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 266
    const-string v0, "OplusPlatformLevelUtils"

    const-string v1, "ram level not inited"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_0
    sget v0, Lcom/oplus/util/OplusPlatformLevelUtils;->sRamLevel:I

    return v0
.end method

.method private blacklist getUnifiedPlatformInfo()Ljava/lang/String;
    .locals 3

    .line 178
    sget-object v0, Lcom/oplus/util/OplusPlatformLevelUtils;->PLATFORM_INFO:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "platformInfo":Ljava/lang/String;
    const-string v1, "MT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const-string v1, "SM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "SDM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    const-string v1, "MSM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 182
    const/4 v1, 0x7

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 184
    :cond_1
    return-object v0

    .line 180
    :cond_2
    :goto_0
    const/4 v1, 0x6

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist initPlatformLevel()V
    .locals 1

    .line 166
    invoke-direct {p0}, Lcom/oplus/util/OplusPlatformLevelUtils;->initPlatformRamLevel()I

    move-result v0

    sput v0, Lcom/oplus/util/OplusPlatformLevelUtils;->sRamLevel:I

    .line 168
    invoke-direct {p0}, Lcom/oplus/util/OplusPlatformLevelUtils;->parseDefaultPlatformList()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "platformLevelList":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/oplus/util/OplusPlatformLevelUtils;->parsePlatformLevelList(Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method private blacklist initPlatformRamLevel()I
    .locals 2

    .line 251
    sget v0, Lcom/oplus/util/OplusPlatformLevelUtils;->TOTAL_RAM:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 252
    const/4 v0, 0x1

    return v0

    .line 254
    :cond_0
    const/16 v1, 0xc

    if-lt v0, v1, :cond_1

    .line 255
    const/4 v0, 0x3

    return v0

    .line 257
    :cond_1
    const/4 v0, 0x2

    return v0
.end method

.method private blacklist isLegalString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "regex"    # Ljava/lang/String;
    .param p2, "str"    # Ljava/lang/String;

    .line 173
    invoke-static {p1, p2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 174
    .local v0, "isMatch":Z
    return v0
.end method

.method private static blacklist obtainRam()I
    .locals 10

    .line 238
    :try_start_0
    const-string v0, "android.os.Process"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 239
    .local v0, "clazz":Ljava/lang/Class;
    const-string v1, "getTotalMemory"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 240
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 241
    .local v2, "totalMemory":J
    const-wide/32 v4, 0x40000000

    add-long/2addr v4, v2

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    const-wide/32 v6, -0x40000000

    and-long/2addr v4, v6

    .line 242
    .local v4, "totalPhysicalMemory":J
    const-wide/16 v6, 0x400

    div-long v8, v4, v6

    div-long/2addr v8, v6

    div-long/2addr v8, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v6, v8

    .line 243
    .local v6, "ramG":I
    return v6

    .line 244
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "totalMemory":J
    .end local v4    # "totalPhysicalMemory":J
    .end local v6    # "ramG":I
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusPlatformLevelUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const/4 v1, -0x1

    return v1
.end method

.method private blacklist parseDefaultPlatformList()Ljava/lang/String;
    .locals 14

    .line 188
    const v0, 0xc07003e    # 1.0400095E-31f

    invoke-direct {p0, v0}, Lcom/oplus/util/OplusPlatformLevelUtils;->getPlatformList(I)[Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "highCpuList":[Ljava/lang/String;
    const v1, 0xc070040    # 1.0400097E-31f

    invoke-direct {p0, v1}, Lcom/oplus/util/OplusPlatformLevelUtils;->getPlatformList(I)[Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, "middleCpuList":[Ljava/lang/String;
    const v2, 0xc070042    # 1.0400099E-31f

    invoke-direct {p0, v2}, Lcom/oplus/util/OplusPlatformLevelUtils;->getPlatformList(I)[Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, "lowCpuList":[Ljava/lang/String;
    const v3, 0xc07003f    # 1.0400096E-31f

    invoke-direct {p0, v3}, Lcom/oplus/util/OplusPlatformLevelUtils;->getPlatformList(I)[Ljava/lang/String;

    move-result-object v3

    .line 192
    .local v3, "highGpuList":[Ljava/lang/String;
    const v4, 0xc070041    # 1.0400098E-31f

    invoke-direct {p0, v4}, Lcom/oplus/util/OplusPlatformLevelUtils;->getPlatformList(I)[Ljava/lang/String;

    move-result-object v4

    .line 193
    .local v4, "middleGpuList":[Ljava/lang/String;
    const v5, 0xc070043

    invoke-direct {p0, v5}, Lcom/oplus/util/OplusPlatformLevelUtils;->getPlatformList(I)[Ljava/lang/String;

    move-result-object v5

    .line 194
    .local v5, "lowGpuList":[Ljava/lang/String;
    invoke-direct {p0}, Lcom/oplus/util/OplusPlatformLevelUtils;->getUnifiedPlatformInfo()Ljava/lang/String;

    move-result-object v6

    .line 196
    .local v6, "platformInfo":Ljava/lang/String;
    invoke-static {v0, v6}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    const/4 v9, -0x1

    const/4 v10, 0x2

    const/4 v11, 0x3

    const-string v12, "c"

    if-eqz v7, :cond_0

    invoke-direct {p0, v12, v11}, Lcom/oplus/util/OplusPlatformLevelUtils;->platformLevelConcat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 197
    :cond_0
    invoke-static {v1, v6}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {p0, v12, v10}, Lcom/oplus/util/OplusPlatformLevelUtils;->platformLevelConcat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 198
    :cond_1
    invoke-static {v2, v6}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-direct {p0, v12, v8}, Lcom/oplus/util/OplusPlatformLevelUtils;->platformLevelConcat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_2
    invoke-direct {p0, v12, v9}, Lcom/oplus/util/OplusPlatformLevelUtils;->platformLevelConcat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    :goto_0
    nop

    .line 199
    .local v7, "platformInfoForCpu":Ljava/lang/String;
    invoke-static {v3, v6}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    const-string v13, "g"

    if-eqz v12, :cond_3

    invoke-direct {p0, v13, v11}, Lcom/oplus/util/OplusPlatformLevelUtils;->platformLevelConcat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 200
    :cond_3
    invoke-static {v4, v6}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-direct {p0, v13, v10}, Lcom/oplus/util/OplusPlatformLevelUtils;->platformLevelConcat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 201
    :cond_4
    invoke-static {v5, v6}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-direct {p0, v13, v8}, Lcom/oplus/util/OplusPlatformLevelUtils;->platformLevelConcat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_5
    invoke-direct {p0, v13, v9}, Lcom/oplus/util/OplusPlatformLevelUtils;->platformLevelConcat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    :goto_1
    nop

    .line 202
    .local v8, "platformInfoForGpu":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 205
    .local v9, "platformLevelList":Ljava/lang/String;
    :try_start_0
    const-string v10, "persist.sys.oplus.platformlevel"

    invoke-static {v10, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    goto :goto_2

    .line 206
    :catch_0
    move-exception v10

    .line 207
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    const-string v12, "OplusPlatformLevelUtils"

    invoke-static {v12, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .end local v10    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v9
.end method

.method private blacklist parsePlatformLevelList(Ljava/lang/String;)V
    .locals 5
    .param p1, "str"    # Ljava/lang/String;

    .line 217
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 218
    .local v0, "platformLevelList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 219
    .local v1, "cpuLevelList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 220
    .local v2, "gpuLevelList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/oplus/util/OplusPlatformLevelUtils;->sCpuLevel:I

    .line 221
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/oplus/util/OplusPlatformLevelUtils;->sGpuLevel:I

    .line 222
    return-void
.end method

.method private blacklist platformLevelConcat(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "level"    # I

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist getPlatformAnimationLevel()I
    .locals 3

    .line 322
    sget v0, Lcom/oplus/util/OplusPlatformLevelUtils;->ANIMATION_LEVEL:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-lt v0, v1, :cond_0

    if-gt v0, v2, :cond_0

    .line 323
    return v0

    .line 325
    :cond_0
    sget-boolean v0, Lcom/oplus/util/OplusPlatformLevelUtils;->IS_LIGHT_OS:Z

    if-eqz v0, :cond_1

    .line 326
    return v1

    .line 327
    :cond_1
    sget v0, Lcom/oplus/util/OplusPlatformLevelUtils;->sGpuLevel:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    if-ne v0, v2, :cond_2

    goto :goto_0

    .line 330
    :cond_2
    return v2

    .line 328
    :cond_3
    :goto_0
    return v0
.end method

.method public whitelist getPlatformGaussianLevel()I
    .locals 3

    .line 340
    sget v0, Lcom/oplus/util/OplusPlatformLevelUtils;->GAUSSIAN_LEVEL:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-lt v0, v2, :cond_0

    if-gt v0, v1, :cond_0

    .line 341
    return v0

    .line 343
    :cond_0
    sget v0, Lcom/oplus/util/OplusPlatformLevelUtils;->sGpuLevel:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 344
    return v0

    .line 346
    :cond_1
    return v1
.end method

.method public whitelist getPlatformLevel(I)I
    .locals 1
    .param p1, "type"    # I

    .line 301
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 302
    invoke-direct {p0}, Lcom/oplus/util/OplusPlatformLevelUtils;->getPlatformRamLevel()I

    move-result v0

    return v0

    .line 303
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 304
    invoke-direct {p0}, Lcom/oplus/util/OplusPlatformLevelUtils;->getPlatformCpuLevel()I

    move-result v0

    return v0

    .line 305
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 306
    invoke-direct {p0}, Lcom/oplus/util/OplusPlatformLevelUtils;->getPlatformGpuLevel()I

    move-result v0

    return v0

    .line 308
    :cond_2
    const/4 v0, -0x1

    return v0
.end method
