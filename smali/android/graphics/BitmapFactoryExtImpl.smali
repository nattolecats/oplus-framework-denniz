.class public Landroid/graphics/BitmapFactoryExtImpl;
.super Ljava/lang/Object;
.source "BitmapFactoryExtImpl.java"

# interfaces
.implements Landroid/graphics/IBitmapFactoryExt;


# static fields
.field private static final blacklist BENCH_MARK_LIST:[Ljava/lang/String;

.field private static final blacklist BITMAP_CACHE_TIMEOUT:J = 0x3e8L

.field private static final blacklist HEX_ARRAY:[C

.field private static final blacklist TAG:Ljava/lang/String; = "BitmapFactoryExtImpl"

.field private static final blacklist mLock:Ljava/lang/Object;

.field private static blacklist sBitmapCache:Landroid/graphics/Bitmap;

.field private static blacklist sLastResId:I

.field private static blacklist sLastResStr:Ljava/lang/String;

.field private static blacklist sLastTimestamp:J

.field private static blacklist sOsenseClient:Lcom/oplus/osense/OsenseResClient;


# instance fields
.field private blacklist mBitmapFactory:Landroid/graphics/BitmapFactory;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/graphics/BitmapFactoryExtImpl;->mLock:Ljava/lang/Object;

    .line 39
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Landroid/graphics/BitmapFactoryExtImpl;->HEX_ARRAY:[C

    .line 40
    const-string v0, "474a940e575d59bde1b202c323c7bbb9246693f8b3aece41c54755ae1acb949c"

    const-string v1, "0d918d3e84cd3e144ee3a0675406e94b8bd1fe8a05f36b9a0cd716625b08c63a"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/graphics/BitmapFactoryExtImpl;->BENCH_MARK_LIST:[Ljava/lang/String;

    .line 45
    const-string v0, ""

    sput-object v0, Landroid/graphics/BitmapFactoryExtImpl;->sLastResStr:Ljava/lang/String;

    .line 46
    const/16 v0, -0x3e7

    sput v0, Landroid/graphics/BitmapFactoryExtImpl;->sLastResId:I

    .line 47
    const-wide/16 v0, -0x3e7

    sput-wide v0, Landroid/graphics/BitmapFactoryExtImpl;->sLastTimestamp:J

    .line 48
    const/4 v0, 0x0

    sput-object v0, Landroid/graphics/BitmapFactoryExtImpl;->sBitmapCache:Landroid/graphics/Bitmap;

    .line 49
    sput-object v0, Landroid/graphics/BitmapFactoryExtImpl;->sOsenseClient:Lcom/oplus/osense/OsenseResClient;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "base"    # Ljava/lang/Object;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    move-object v0, p1

    check-cast v0, Landroid/graphics/BitmapFactory;

    iput-object v0, p0, Landroid/graphics/BitmapFactoryExtImpl;->mBitmapFactory:Landroid/graphics/BitmapFactory;

    .line 54
    return-void
.end method

.method private static blacklist bytesToHex([B)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B

    .line 64
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    .line 65
    .local v0, "hexChars":[C
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 66
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    .line 67
    .local v2, "v":I
    mul-int/lit8 v3, v1, 0x2

    sget-object v4, Landroid/graphics/BitmapFactoryExtImpl;->HEX_ARRAY:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v5, v4, v5

    aput-char v5, v0, v3

    .line 68
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v5, v2, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 65
    .end local v2    # "v":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    .end local v1    # "j":I
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method private static blacklist encodePackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "appName"    # Ljava/lang/String;

    .line 74
    if-eqz p0, :cond_2

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 77
    :cond_0
    const-string v1, "ro.build.version.release"

    const-string v2, "null"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "androidVer":Ljava/lang/String;
    :try_start_0
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 80
    .local v2, "digest":Ljava/security/MessageDigest;
    if-eqz v2, :cond_1

    .line 81
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 82
    .local v3, "hashVersion":[B
    if-eqz v3, :cond_1

    array-length v4, v3

    if-lez v4, :cond_1

    .line 83
    invoke-static {v3}, Landroid/graphics/BitmapFactoryExtImpl;->bytesToHex([B)Ljava/lang/String;

    move-result-object v4

    .line 84
    .local v4, "versionStrHash":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 85
    .local v5, "temp":Ljava/lang/String;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v6

    .line 86
    .local v6, "hash":[B
    if-eqz v6, :cond_1

    array-length v7, v6

    if-lez v7, :cond_1

    .line 87
    invoke-static {v6}, Landroid/graphics/BitmapFactoryExtImpl;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 93
    .end local v2    # "digest":Ljava/security/MessageDigest;
    .end local v3    # "hashVersion":[B
    .end local v4    # "versionStrHash":Ljava/lang/String;
    .end local v5    # "temp":Ljava/lang/String;
    .end local v6    # "hash":[B
    :cond_1
    goto :goto_0

    .line 91
    :catch_0
    move-exception v2

    .line 92
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get package hash error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BitmapFactoryExtImpl"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0

    .line 75
    .end local v1    # "androidVer":Ljava/lang/String;
    :cond_2
    :goto_1
    return-object p0
.end method


# virtual methods
.method public blacklist getBitmapCache(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "id"    # I
    .param p3, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 113
    invoke-virtual {p0}, Landroid/graphics/BitmapFactoryExtImpl;->isEnableBitmapCache()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 114
    return-object v1

    .line 117
    :cond_0
    sget-object v0, Landroid/graphics/BitmapFactoryExtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    if-nez p3, :cond_1

    :try_start_0
    sget v2, Landroid/graphics/BitmapFactoryExtImpl;->sLastResId:I

    if-ne v2, p2, :cond_1

    sget-object v2, Landroid/graphics/BitmapFactoryExtImpl;->sLastResStr:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Landroid/graphics/BitmapFactoryExtImpl;->sBitmapCache:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Landroid/graphics/BitmapFactoryExtImpl;->sLastTimestamp:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Landroid/graphics/BitmapFactoryExtImpl;->sLastTimestamp:J

    .line 124
    sget-object v1, Landroid/graphics/BitmapFactoryExtImpl;->sBitmapCache:Landroid/graphics/Bitmap;

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 126
    :cond_1
    monitor-exit v0

    return-object v1

    .line 128
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist isEnableBitmapCache()Z
    .locals 7

    .line 98
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactoryExtImpl;->encodePackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "appName":Ljava/lang/String;
    sget-object v1, Landroid/graphics/BitmapFactoryExtImpl;->BENCH_MARK_LIST:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 100
    .local v5, "t":Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 101
    const/4 v1, 0x1

    return v1

    .line 99
    .end local v5    # "t":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 104
    :cond_1
    sget-object v1, Landroid/graphics/BitmapFactoryExtImpl;->sBitmapCache:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 105
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 106
    const/4 v1, 0x0

    sput-object v1, Landroid/graphics/BitmapFactoryExtImpl;->sBitmapCache:Landroid/graphics/Bitmap;

    .line 108
    :cond_2
    return v3
.end method

.method public blacklist osenseSetSceneAction(I)V
    .locals 4
    .param p1, "timeout"    # I

    .line 58
    sget-object v0, Landroid/graphics/BitmapFactoryExtImpl;->sOsenseClient:Lcom/oplus/osense/OsenseResClient;

    if-nez v0, :cond_0

    const-class v0, Landroid/graphics/BitmapFactoryExtImpl;

    invoke-static {v0}, Lcom/oplus/osense/OsenseResClient;->get(Ljava/lang/Class;)Lcom/oplus/osense/OsenseResClient;

    move-result-object v0

    sput-object v0, Landroid/graphics/BitmapFactoryExtImpl;->sOsenseClient:Lcom/oplus/osense/OsenseResClient;

    if-eqz v0, :cond_1

    .line 59
    :cond_0
    sget-object v0, Landroid/graphics/BitmapFactoryExtImpl;->sOsenseClient:Lcom/oplus/osense/OsenseResClient;

    new-instance v1, Lcom/oplus/osense/info/OsenseSaRequest;

    const-string v2, "OSENSE_SYSTEM_SCENE_BITMAP"

    const-string v3, "OSENSE_ACTION_DECODE"

    invoke-direct {v1, v2, v3, p1}, Lcom/oplus/osense/info/OsenseSaRequest;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/oplus/osense/OsenseResClient;->osenseSetSceneAction(Lcom/oplus/osense/info/OsenseSaRequest;)J

    .line 60
    const-string v0, "BitmapFactoryExtImpl"

    const-string v1, "OSENSE_ACTION_DECODE is set"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_1
    return-void
.end method

.method public blacklist setBitmapCache(Landroid/graphics/Bitmap;Landroid/content/res/Resources;I)V
    .locals 3
    .param p1, "cache"    # Landroid/graphics/Bitmap;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "id"    # I

    .line 133
    invoke-virtual {p0}, Landroid/graphics/BitmapFactoryExtImpl;->isEnableBitmapCache()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    return-void

    .line 137
    :cond_0
    sget-object v0, Landroid/graphics/BitmapFactoryExtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 138
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/graphics/BitmapFactoryExtImpl;->sLastResStr:Ljava/lang/String;

    .line 139
    sput p3, Landroid/graphics/BitmapFactoryExtImpl;->sLastResId:I

    .line 140
    sput-object p1, Landroid/graphics/BitmapFactoryExtImpl;->sBitmapCache:Landroid/graphics/Bitmap;

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Landroid/graphics/BitmapFactoryExtImpl;->sLastTimestamp:J

    .line 142
    monitor-exit v0

    .line 143
    return-void

    .line 142
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
