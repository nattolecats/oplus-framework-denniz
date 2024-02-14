.class public Lcom/oplus/media/OplusHeifConverter;
.super Ljava/lang/Object;
.source "OplusHeifConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/media/OplusHeifConverter$HeifDecodedFrame;
    }
.end annotation


# static fields
.field private static final blacklist DECODE_BUFFER_SIZE:I = 0x4000

.field private static final blacklist TAG:Ljava/lang/String; = "OplusHeifConverter_Java"

.field private static final blacklist ftyp_box:I = 0x66747970

.field private static final blacklist heic_box:I = 0x68656963

.field private static final blacklist mif1_box:I = 0x6d696631


# instance fields
.field private blacklist m10BitObject:J

.field private blacklist mSurface:Landroid/view/Surface;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smnativeRecycle(JJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/oplus/media/OplusHeifConverter;->nativeRecycle(JJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeRender([BIILandroid/view/Surface;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/oplus/media/OplusHeifConverter;->nativeRender([BIILandroid/view/Surface;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeRenderDirectBuffer(JJIILandroid/view/Surface;)Z
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/oplus/media/OplusHeifConverter;->nativeRenderDirectBuffer(JJIILandroid/view/Surface;)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 61
    const-string v0, "OplusHeifConverter_Java"

    const-string v1, "loadLibrary"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const-string v0, "oplus_heifconverter"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist convertHeifToJpegFromPath(Ljava/lang/String;ILjava/io/OutputStream;)Z
    .locals 7
    .param p0, "pathName"    # Ljava/lang/String;
    .param p1, "quality"    # I
    .param p2, "Outstream"    # Ljava/io/OutputStream;

    .line 130
    const/16 v0, 0x4000

    new-array v0, v0, [B

    .line 132
    .local v0, "tempStorage":[B
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ConvertHeif2JPEG start! quality ###"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusHeifConverter_Java"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    if-eqz p2, :cond_3

    .line 136
    if-ltz p1, :cond_2

    const/16 v1, 0x64

    if-gt p1, v1, :cond_2

    .line 140
    const/4 v1, 0x0

    .line 141
    .local v1, "result":Z
    const/4 v3, 0x0

    .line 143
    .local v3, "Instream":Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 144
    const-string v4, " ConvertHeif2JPEG start"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/16 v4, 0x1000

    new-array v4, v4, [B

    invoke-static {v3, v0, p1, p2, v4}, Lcom/oplus/media/OplusHeifConverter;->nativeHeifConvert(Ljava/io/InputStream;[BILjava/io/OutputStream;[B)Z

    move-result v4

    move v1, v4

    .line 147
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ConvertHeif2JPEG result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    nop

    .line 156
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 159
    :goto_0
    goto :goto_1

    .line 157
    :catch_0
    move-exception v2

    goto :goto_0

    .line 154
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 148
    :catch_1
    move-exception v4

    .line 152
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to ConvertHeif2JPEG stream: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 154
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_0

    .line 156
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 162
    :cond_0
    :goto_1
    return v1

    .line 154
    :goto_2
    if-eqz v3, :cond_1

    .line 156
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 159
    goto :goto_3

    .line 157
    :catch_2
    move-exception v4

    .line 161
    :cond_1
    :goto_3
    throw v2

    .line 137
    .end local v1    # "result":Z
    .end local v3    # "Instream":Ljava/io/InputStream;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "quality must be 0..100"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 134
    :cond_3
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1
.end method

.method public static whitelist convertHeifToJpegFromStream(Ljava/io/InputStream;ILjava/io/OutputStream;)Z
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "quality"    # I
    .param p2, "Outstream"    # Ljava/io/OutputStream;

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " convertHeif2JPEGFromStream start! quality ###"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusHeifConverter_Java"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/16 v0, 0x4000

    new-array v0, v0, [B

    .line 171
    .local v0, "tempStorage":[B
    if-eqz p2, :cond_1

    .line 174
    if-ltz p1, :cond_0

    const/16 v2, 0x64

    if-gt p1, v2, :cond_0

    .line 177
    const/4 v2, 0x0

    .line 180
    .local v2, "result":Z
    :try_start_0
    const-string v3, " ConvertHeif2JPEG start"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/16 v3, 0x1000

    new-array v3, v3, [B

    invoke-static {p0, v0, p1, p2, v3}, Lcom/oplus/media/OplusHeifConverter;->nativeHeifConvert(Ljava/io/InputStream;[BILjava/io/OutputStream;[B)Z

    move-result v3

    move v2, v3

    .line 183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ConvertHeif2JPEG result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    goto :goto_0

    .line 184
    :catch_0
    move-exception v3

    .line 188
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to ConvertHeif2JPEG stream: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    return v2

    .line 175
    .end local v2    # "result":Z
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "quality must be 0..100"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 172
    :cond_1
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1
.end method

.method private blacklist getBoxInfo(Ljava/util/HashSet;)I
    .locals 1
    .param p1, "set"    # Ljava/util/HashSet;

    .line 233
    const v0, 0x68656963

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 234
    const v0, 0x6d696631

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 236
    const v0, 0x66747970

    return v0
.end method

.method private static native blacklist nativeCheckPPS([B)Z
.end method

.method private static native blacklist nativeCreateDecoder()J
.end method

.method private static native blacklist nativeDecode(JLjava/io/InputStream;Landroid/view/Surface;I)Z
.end method

.method private static native blacklist nativeDecodeRegion(JLjava/io/InputStream;IIIILandroid/view/Surface;II)Z
.end method

.method private static native blacklist nativeDestroyDecoder(J)V
.end method

.method private static native blacklist nativeGetDecodeFrame(JLjava/io/InputStream;IZ)Lcom/oplus/media/OplusHeifConverter$HeifDecodedFrame;
.end method

.method private static native blacklist nativeGetRegionDecodeFrame(JLjava/io/InputStream;IIIIIZI)Lcom/oplus/media/OplusHeifConverter$HeifDecodedFrame;
.end method

.method private static native blacklist nativeHeifConvert(Ljava/io/InputStream;[BILjava/io/OutputStream;[B)Z
.end method

.method private static native blacklist nativeRecycle(JJ)V
.end method

.method private static native blacklist nativeRender([BIILandroid/view/Surface;)Z
.end method

.method private static native blacklist nativeRenderDirectBuffer(JJIILandroid/view/Surface;)Z
.end method


# virtual methods
.method public whitelist byteArrayToInt([BI)I
    .locals 2
    .param p1, "b"    # [B
    .param p2, "offset"    # I

    .line 194
    add-int/lit8 v0, p2, 0x3

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public whitelist createDecoder()Z
    .locals 2

    .line 470
    invoke-static {}, Lcom/oplus/media/OplusHeifConverter;->nativeCreateDecoder()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/media/OplusHeifConverter;->m10BitObject:J

    .line 471
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist decode(Ljava/io/FileDescriptor;IZ)Lcom/oplus/media/OplusHeifConverter$HeifDecodedFrame;
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "SampleSize"    # I
    .param p3, "isDirectBuffer"    # Z

    .line 575
    const/4 v0, 0x0

    .line 576
    .local v0, "heif_frame":Lcom/oplus/media/OplusHeifConverter$HeifDecodedFrame;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 578
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_0
    iget-wide v2, p0, Lcom/oplus/media/OplusHeifConverter;->m10BitObject:J

    invoke-static {v2, v3, v1, p2, p3}, Lcom/oplus/media/OplusHeifConverter;->nativeGetDecodeFrame(JLjava/io/InputStream;IZ)Lcom/oplus/media/OplusHeifConverter$HeifDecodedFrame;

    move-result-object v2

    move-object v0, v2

    .line 579
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/oplus/media/OplusHeifConverter$HeifDecodedFrame;->m_recycled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 583
    nop

    .line 585
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 588
    :goto_0
    goto :goto_1

    .line 586
    :catch_0
    move-exception v2

    goto :goto_0

    .line 583
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 580
    :catch_1
    move-exception v2

    .line 581
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "OplusHeifConverter_Java"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to nativeGet10BitYUVdata stream: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 583
    nop

    .line 585
    .end local v2    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 591
    :goto_1
    return-object v0

    .line 585
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 588
    goto :goto_3

    .line 586
    :catch_2
    move-exception v3

    .line 590
    :goto_3
    throw v2
.end method

.method public whitelist decode(Ljava/io/InputStream;IZ)Lcom/oplus/media/OplusHeifConverter$HeifDecodedFrame;
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "SampleSize"    # I
    .param p3, "isDirectBuffer"    # Z

    .line 496
    const-string v0, "OplusHeifConverter_Java"

    const/4 v1, 0x0

    .line 499
    .local v1, "heif_frame":Lcom/oplus/media/OplusHeifConverter$HeifDecodedFrame;
    :try_start_0
    iget-wide v2, p0, Lcom/oplus/media/OplusHeifConverter;->m10BitObject:J

    invoke-static {v2, v3, p1, p2, p3}, Lcom/oplus/media/OplusHeifConverter;->nativeGetDecodeFrame(JLjava/io/InputStream;IZ)Lcom/oplus/media/OplusHeifConverter$HeifDecodedFrame;

    move-result-object v2

    move-object v1, v2

    .line 500
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/oplus/media/OplusHeifConverter$HeifDecodedFrame;->m_recycled:Z

    .line 501
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/oplus/media/OplusHeifConverter$HeifDecodedFrame;->m_frame_width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " height:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/oplus/media/OplusHeifConverter$HeifDecodedFrame;->m_frame_height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isDirectBuffer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    goto :goto_0

    .line 503
    :catch_0
    move-exception v2

    .line 504
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to nativeGet10BitYUVdata stream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v1
.end method

.method public whitelist decode(Ljava/io/FileDescriptor;ILandroid/view/Surface;)Z
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "SampleSize"    # I
    .param p3, "sur"    # Landroid/view/Surface;

    .line 551
    const/4 v0, 0x0

    .line 552
    .local v0, "result":Z
    iput-object p3, p0, Lcom/oplus/media/OplusHeifConverter;->mSurface:Landroid/view/Surface;

    .line 553
    const-string v1, "OplusHeifConverter_Java"

    if-nez p3, :cond_0

    .line 554
    const-string v2, "sur is NULL!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :cond_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 558
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    iget-wide v3, p0, Lcom/oplus/media/OplusHeifConverter;->m10BitObject:J

    invoke-static {v3, v4, v2, p3, p2}, Lcom/oplus/media/OplusHeifConverter;->nativeDecode(JLjava/io/InputStream;Landroid/view/Surface;I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 562
    nop

    .line 564
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 567
    :goto_0
    goto :goto_1

    .line 565
    :catch_0
    move-exception v1

    goto :goto_0

    .line 562
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 559
    :catch_1
    move-exception v3

    .line 560
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to nativeShow10BitHEIF stream: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 562
    nop

    .line 564
    .end local v3    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 570
    :goto_1
    return v0

    .line 564
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 567
    goto :goto_3

    .line 565
    :catch_2
    move-exception v3

    .line 569
    :goto_3
    throw v1
.end method

.method public whitelist decode(Ljava/io/InputStream;ILandroid/view/Surface;)Z
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "SampleSize"    # I
    .param p3, "sur"    # Landroid/view/Surface;

    .line 480
    const/4 v0, 0x0

    .line 481
    .local v0, "result":Z
    iput-object p3, p0, Lcom/oplus/media/OplusHeifConverter;->mSurface:Landroid/view/Surface;

    .line 482
    const-string v1, "OplusHeifConverter_Java"

    if-nez p3, :cond_0

    .line 483
    const-string v2, "sur is NULL!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_0
    :try_start_0
    iget-wide v2, p0, Lcom/oplus/media/OplusHeifConverter;->m10BitObject:J

    invoke-static {v2, v3, p1, p3, p2}, Lcom/oplus/media/OplusHeifConverter;->nativeDecode(JLjava/io/InputStream;Landroid/view/Surface;I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 490
    goto :goto_0

    .line 488
    :catch_0
    move-exception v2

    .line 489
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to nativeShow10BitHEIF stream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public whitelist decodeRegion(Ljava/io/FileDescriptor;Landroid/graphics/Rect;IZ)Lcom/oplus/media/OplusHeifConverter$HeifDecodedFrame;
    .locals 17
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "SampleSize"    # I
    .param p4, "isDirectBuffer"    # Z

    .line 623
    const/4 v1, 0x0

    .line 624
    .local v1, "heif_frame":Lcom/oplus/media/OplusHeifConverter$HeifDecodedFrame;
    const/4 v0, 0x0

    .line 625
    .local v0, "flag":I
    new-instance v4, Ljava/io/FileInputStream;

    move-object/from16 v12, p1

    invoke-direct {v4, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 626
    .local v4, "fis":Ljava/io/FileInputStream;
    const-string v13, "OplusHeifConverter_Java"

    const/4 v14, 0x0

    if-nez p2, :cond_0

    .line 627
    const-string v2, "rect is NULL!,decode whole image"

    invoke-static {v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    const/4 v0, 0x1

    .line 629
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v14, v14, v14, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    move/from16 v16, v0

    move-object v15, v2

    .end local p2    # "rect":Landroid/graphics/Rect;
    .local v2, "rect":Landroid/graphics/Rect;
    goto :goto_0

    .line 626
    .end local v2    # "rect":Landroid/graphics/Rect;
    .restart local p2    # "rect":Landroid/graphics/Rect;
    :cond_0
    move-object/from16 v15, p2

    move/from16 v16, v0

    .line 633
    .end local v0    # "flag":I
    .end local p2    # "rect":Landroid/graphics/Rect;
    .local v15, "rect":Landroid/graphics/Rect;
    .local v16, "flag":I
    :goto_0
    move-object/from16 v11, p0

    :try_start_0
    iget-wide v2, v11, Lcom/oplus/media/OplusHeifConverter;->m10BitObject:J

    iget v5, v15, Landroid/graphics/Rect;->left:I

    iget v6, v15, Landroid/graphics/Rect;->top:I

    iget v0, v15, Landroid/graphics/Rect;->right:I

    iget v7, v15, Landroid/graphics/Rect;->left:I

    sub-int v7, v0, v7

    iget v0, v15, Landroid/graphics/Rect;->bottom:I

    iget v8, v15, Landroid/graphics/Rect;->top:I

    sub-int v8, v0, v8

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, v16

    invoke-static/range {v2 .. v11}, Lcom/oplus/media/OplusHeifConverter;->nativeGetRegionDecodeFrame(JLjava/io/InputStream;IIIIIZI)Lcom/oplus/media/OplusHeifConverter$HeifDecodedFrame;

    move-result-object v0

    move-object v1, v0

    .line 635
    iput-boolean v14, v1, Lcom/oplus/media/OplusHeifConverter$HeifDecodedFrame;->m_recycled:Z

    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "width: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v1, Lcom/oplus/media/OplusHeifConverter$HeifDecodedFrame;->m_frame_width:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " height: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v1, Lcom/oplus/media/OplusHeifConverter$HeifDecodedFrame;->m_frame_height:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 640
    nop

    .line 642
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 645
    :goto_1
    goto :goto_2

    .line 643
    :catch_0
    move-exception v0

    goto :goto_1

    .line 640
    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_3

    .line 637
    :catch_1
    move-exception v0

    .line 638
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to nativeGet10BitYUVdata stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 640
    nop

    .line 642
    .end local v0    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 648
    :goto_2
    return-object v1

    .line 642
    :goto_3
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 645
    goto :goto_4

    .line 643
    :catch_2
    move-exception v0

    .line 647
    :goto_4
    throw v2
.end method

.method public whitelist decodeRegion(Ljava/io/InputStream;Landroid/graphics/Rect;IZ)Lcom/oplus/media/OplusHeifConverter$HeifDecodedFrame;
    .locals 16
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "SampleSize"    # I
    .param p4, "isDirectBuffer"    # Z

    .line 530
    const/4 v1, 0x0

    .line 531
    .local v1, "heif_frame":Lcom/oplus/media/OplusHeifConverter$HeifDecodedFrame;
    const/4 v0, 0x0

    .line 532
    .local v0, "flag":I
    const-string v2, "OplusHeifConverter_Java"

    const/4 v3, 0x0

    if-nez p2, :cond_0

    .line 533
    const-string v4, "rect is NULL!,decode whole image"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    const/4 v0, 0x1

    .line 535
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move v15, v0

    .end local p2    # "rect":Landroid/graphics/Rect;
    .local v4, "rect":Landroid/graphics/Rect;
    goto :goto_0

    .line 532
    .end local v4    # "rect":Landroid/graphics/Rect;
    .restart local p2    # "rect":Landroid/graphics/Rect;
    :cond_0
    move-object/from16 v4, p2

    move v15, v0

    .line 539
    .end local v0    # "flag":I
    .end local p2    # "rect":Landroid/graphics/Rect;
    .restart local v4    # "rect":Landroid/graphics/Rect;
    .local v15, "flag":I
    :goto_0
    move-object/from16 v14, p0

    :try_start_0
    iget-wide v5, v14, Lcom/oplus/media/OplusHeifConverter;->m10BitObject:J

    iget v8, v4, Landroid/graphics/Rect;->left:I

    iget v9, v4, Landroid/graphics/Rect;->top:I

    iget v0, v4, Landroid/graphics/Rect;->right:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    sub-int v10, v0, v7

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    iget v7, v4, Landroid/graphics/Rect;->top:I

    sub-int v11, v0, v7

    move-object/from16 v7, p1

    move/from16 v12, p3

    move/from16 v13, p4

    move v14, v15

    invoke-static/range {v5 .. v14}, Lcom/oplus/media/OplusHeifConverter;->nativeGetRegionDecodeFrame(JLjava/io/InputStream;IIIIIZI)Lcom/oplus/media/OplusHeifConverter$HeifDecodedFrame;

    move-result-object v0

    move-object v1, v0

    .line 541
    iput-boolean v3, v1, Lcom/oplus/media/OplusHeifConverter$HeifDecodedFrame;->m_recycled:Z

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "width: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v1, Lcom/oplus/media/OplusHeifConverter$HeifDecodedFrame;->m_frame_width:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " height:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v1, Lcom/oplus/media/OplusHeifConverter$HeifDecodedFrame;->m_frame_height:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    goto :goto_1

    .line 543
    :catch_0
    move-exception v0

    .line 544
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to nativeGet10BitYUVdata stream: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v1
.end method

.method public whitelist decodeRegion(Ljava/io/FileDescriptor;Landroid/graphics/Rect;ILandroid/view/Surface;)Z
    .locals 18
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "SampleSize"    # I
    .param p4, "sur"    # Landroid/view/Surface;

    .line 595
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 596
    .local v2, "result":Z
    move-object/from16 v13, p4

    iput-object v13, v1, Lcom/oplus/media/OplusHeifConverter;->mSurface:Landroid/view/Surface;

    .line 597
    const/4 v0, 0x0

    .line 598
    .local v0, "flag":I
    new-instance v5, Ljava/io/FileInputStream;

    move-object/from16 v14, p1

    invoke-direct {v5, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 599
    .local v5, "fis":Ljava/io/FileInputStream;
    const-string v15, "OplusHeifConverter_Java"

    if-nez p2, :cond_0

    .line 600
    const-string v3, "rect is null!,decode whole image"

    invoke-static {v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    const/4 v0, 0x1

    .line 602
    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move/from16 v16, v0

    move-object v12, v3

    .end local p2    # "rect":Landroid/graphics/Rect;
    .local v3, "rect":Landroid/graphics/Rect;
    goto :goto_0

    .line 599
    .end local v3    # "rect":Landroid/graphics/Rect;
    .restart local p2    # "rect":Landroid/graphics/Rect;
    :cond_0
    move-object/from16 v12, p2

    move/from16 v16, v0

    .line 606
    .end local v0    # "flag":I
    .end local p2    # "rect":Landroid/graphics/Rect;
    .local v12, "rect":Landroid/graphics/Rect;
    .local v16, "flag":I
    :goto_0
    :try_start_0
    iget-wide v3, v1, Lcom/oplus/media/OplusHeifConverter;->m10BitObject:J

    iget v6, v12, Landroid/graphics/Rect;->left:I

    iget v7, v12, Landroid/graphics/Rect;->top:I

    iget v0, v12, Landroid/graphics/Rect;->right:I

    iget v8, v12, Landroid/graphics/Rect;->left:I

    sub-int v8, v0, v8

    iget v0, v12, Landroid/graphics/Rect;->bottom:I

    iget v9, v12, Landroid/graphics/Rect;->top:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int v9, v0, v9

    move-object/from16 v10, p4

    move/from16 v11, p3

    move-object/from16 v17, v12

    .end local v12    # "rect":Landroid/graphics/Rect;
    .local v17, "rect":Landroid/graphics/Rect;
    move/from16 v12, v16

    :try_start_1
    invoke-static/range {v3 .. v12}, Lcom/oplus/media/OplusHeifConverter;->nativeDecodeRegion(JLjava/io/InputStream;IIIILandroid/view/Surface;II)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v2, v0

    .line 611
    nop

    .line 613
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 616
    :goto_1
    goto :goto_3

    .line 614
    :catch_0
    move-exception v0

    goto :goto_1

    .line 608
    :catch_1
    move-exception v0

    goto :goto_2

    .line 611
    .end local v17    # "rect":Landroid/graphics/Rect;
    .restart local v12    # "rect":Landroid/graphics/Rect;
    :catchall_0
    move-exception v0

    move-object/from16 v17, v12

    move-object v3, v0

    .end local v12    # "rect":Landroid/graphics/Rect;
    .restart local v17    # "rect":Landroid/graphics/Rect;
    goto :goto_4

    .line 608
    .end local v17    # "rect":Landroid/graphics/Rect;
    .restart local v12    # "rect":Landroid/graphics/Rect;
    :catch_2
    move-exception v0

    move-object/from16 v17, v12

    .line 609
    .end local v12    # "rect":Landroid/graphics/Rect;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v17    # "rect":Landroid/graphics/Rect;
    :goto_2
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to nativeShow10BitHEIF stream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 611
    nop

    .line 613
    .end local v0    # "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 619
    :goto_3
    return v2

    .line 611
    :catchall_1
    move-exception v0

    move-object v3, v0

    .line 613
    :goto_4
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 616
    goto :goto_5

    .line 614
    :catch_3
    move-exception v0

    .line 618
    :goto_5
    throw v3
.end method

.method public whitelist decodeRegion(Ljava/io/InputStream;Landroid/graphics/Rect;ILandroid/view/Surface;)Z
    .locals 17
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "SampleSize"    # I
    .param p4, "sur"    # Landroid/view/Surface;

    .line 510
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 511
    .local v2, "result":Z
    move-object/from16 v13, p4

    iput-object v13, v1, Lcom/oplus/media/OplusHeifConverter;->mSurface:Landroid/view/Surface;

    .line 512
    const/4 v0, 0x0

    .line 513
    .local v0, "flag":I
    const-string v14, "OplusHeifConverter_Java"

    if-nez p2, :cond_0

    .line 514
    const-string v3, "rect is null,decode whole image!"

    invoke-static {v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    const/4 v0, 0x1

    .line 516
    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move/from16 v16, v0

    move-object v15, v3

    .end local p2    # "rect":Landroid/graphics/Rect;
    .local v3, "rect":Landroid/graphics/Rect;
    goto :goto_0

    .line 513
    .end local v3    # "rect":Landroid/graphics/Rect;
    .restart local p2    # "rect":Landroid/graphics/Rect;
    :cond_0
    move-object/from16 v15, p2

    move/from16 v16, v0

    .line 520
    .end local v0    # "flag":I
    .end local p2    # "rect":Landroid/graphics/Rect;
    .local v15, "rect":Landroid/graphics/Rect;
    .local v16, "flag":I
    :goto_0
    :try_start_0
    iget-wide v3, v1, Lcom/oplus/media/OplusHeifConverter;->m10BitObject:J

    iget v6, v15, Landroid/graphics/Rect;->left:I

    iget v7, v15, Landroid/graphics/Rect;->top:I

    iget v0, v15, Landroid/graphics/Rect;->right:I

    iget v5, v15, Landroid/graphics/Rect;->left:I

    sub-int v8, v0, v5

    iget v0, v15, Landroid/graphics/Rect;->bottom:I

    iget v5, v15, Landroid/graphics/Rect;->top:I

    sub-int v9, v0, v5

    move-object/from16 v5, p1

    move-object/from16 v10, p4

    move/from16 v11, p3

    move/from16 v12, v16

    invoke-static/range {v3 .. v12}, Lcom/oplus/media/OplusHeifConverter;->nativeDecodeRegion(JLjava/io/InputStream;IIIILandroid/view/Surface;II)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    .line 524
    goto :goto_1

    .line 522
    :catch_0
    move-exception v0

    .line 523
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to nativeShow10BitHEIF stream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return v2
.end method

.method public whitelist destroyDecoder()Z
    .locals 2

    .line 475
    iget-wide v0, p0, Lcom/oplus/media/OplusHeifConverter;->m10BitObject:J

    invoke-static {v0, v1}, Lcom/oplus/media/OplusHeifConverter;->nativeDestroyDecoder(J)V

    .line 476
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getFormat(Ljava/io/FileDescriptor;)I
    .locals 22
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 368
    move-object/from16 v0, p0

    new-instance v1, Ljava/io/FileInputStream;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 369
    .local v1, "is":Ljava/io/FileInputStream;
    const v3, 0x6d657461

    .line 370
    .local v3, "meta_box":I
    const v4, 0x69707270

    .line 371
    .local v4, "iprp_box":I
    const v5, 0x6970636f

    .line 372
    .local v5, "ipco_box":I
    const v6, 0x68766343

    .line 373
    .local v6, "hvcC_box":I
    const v7, 0x66747970

    .line 374
    .local v7, "ftyp_box":I
    const v8, 0x6d646174

    .line 376
    .local v8, "mdat_box":I
    const/4 v9, 0x1

    .line 377
    .local v9, "keepParse":Z
    const/4 v10, 0x0

    .line 378
    .local v10, "cur":I
    const/4 v11, 0x0

    .line 380
    .local v11, "type":I
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v12

    .line 381
    .local v12, "len":I
    new-array v13, v12, [B

    .line 382
    .local v13, "data":[B
    new-instance v14, Ljava/io/BufferedInputStream;

    invoke-direct {v14, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 383
    .local v14, "Bis":Ljava/io/BufferedInputStream;
    invoke-virtual {v14, v13}, Ljava/io/BufferedInputStream;->read([B)I

    .line 385
    invoke-virtual {v0, v13, v10}, Lcom/oplus/media/OplusHeifConverter;->byteArrayToInt([BI)I

    move-result v15

    .line 386
    .local v15, "size":I
    add-int/lit8 v10, v10, 0x4

    .line 387
    invoke-virtual {v0, v13, v10}, Lcom/oplus/media/OplusHeifConverter;->byteArrayToInt([BI)I

    move-result v11

    .line 388
    add-int/lit8 v10, v10, 0x4

    .line 390
    const/16 v16, 0x0

    const-string v2, "OplusHeifConverter_Java"

    if-eq v11, v7, :cond_0

    .line 391
    move/from16 v17, v7

    .end local v7    # "ftyp_box":I
    .local v17, "ftyp_box":I
    const-string v7, "not a heif file!"

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    nop

    .line 393
    invoke-virtual {v14}, Ljava/io/BufferedInputStream;->close()V

    .line 396
    nop

    .line 397
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 399
    return v16

    .line 401
    .end local v17    # "ftyp_box":I
    .restart local v7    # "ftyp_box":I
    :cond_0
    move/from16 v17, v7

    .end local v7    # "ftyp_box":I
    .restart local v17    # "ftyp_box":I
    add-int/lit8 v7, v15, -0x8

    add-int/2addr v10, v7

    .line 402
    :goto_0
    const-string v7, "It is 8Bit Heif!"

    if-eqz v9, :cond_9

    .line 403
    invoke-virtual {v0, v13, v10}, Lcom/oplus/media/OplusHeifConverter;->byteArrayToInt([BI)I

    move-result v15

    .line 404
    add-int/lit8 v10, v10, 0x4

    .line 405
    invoke-virtual {v0, v13, v10}, Lcom/oplus/media/OplusHeifConverter;->byteArrayToInt([BI)I

    move-result v11

    .line 406
    add-int/lit8 v10, v10, 0x4

    .line 408
    move/from16 v18, v9

    .end local v9    # "keepParse":Z
    .local v18, "keepParse":Z
    const/4 v9, 0x1

    if-ne v11, v8, :cond_1

    .line 409
    if-ne v15, v9, :cond_4

    .line 410
    invoke-virtual {v0, v13, v10}, Lcom/oplus/media/OplusHeifConverter;->byteArrayToInt([BI)I

    move-result v7

    .line 411
    .local v7, "size_h":I
    add-int/lit8 v10, v10, 0x4

    .line 412
    invoke-virtual {v0, v13, v10}, Lcom/oplus/media/OplusHeifConverter;->byteArrayToInt([BI)I

    move-result v9

    .line 413
    .local v9, "size_l":I
    add-int/lit8 v10, v10, 0x4

    .line 414
    shl-int/lit8 v19, v7, 0x8

    add-int v19, v19, v9

    .line 415
    .end local v15    # "size":I
    .local v19, "size":I
    add-int/lit8 v15, v19, -0x10

    add-int/2addr v10, v15

    .line 416
    .end local v7    # "size_h":I
    .end local v9    # "size_l":I
    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v15, v19

    goto/16 :goto_2

    .line 417
    .end local v19    # "size":I
    .restart local v15    # "size":I
    :cond_1
    if-ne v11, v3, :cond_2

    .line 418
    add-int/lit8 v10, v10, 0x4

    .line 419
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parse meta_box cur "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v20, v3

    move/from16 v21, v4

    goto/16 :goto_2

    .line 420
    :cond_2
    if-ne v11, v4, :cond_3

    .line 421
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parse iprp_box cur  "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 422
    :cond_3
    if-ne v11, v5, :cond_5

    .line 423
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parse ipco_box cur  "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_4
    :goto_1
    move/from16 v20, v3

    move/from16 v21, v4

    goto :goto_2

    .line 424
    :cond_5
    if-ne v11, v6, :cond_7

    .line 425
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cur hvcC_box  "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    add-int/lit8 v10, v10, 0x11

    .line 427
    aget-byte v0, v13, v10

    and-int/lit8 v0, v0, 0x3

    .line 428
    .local v0, "bitDepthLumaMinus8":I
    const/4 v9, 0x1

    add-int/2addr v10, v9

    .line 429
    aget-byte v19, v13, v10

    move/from16 v20, v3

    .end local v3    # "meta_box":I
    .local v20, "meta_box":I
    and-int/lit8 v3, v19, 0x3

    .line 430
    .local v3, "bitDepthChromaMinus8":I
    add-int/2addr v10, v9

    .line 432
    const/4 v9, 0x0

    .line 433
    .end local v18    # "keepParse":Z
    .local v9, "keepParse":Z
    move/from16 v21, v4

    .end local v4    # "iprp_box":I
    .local v21, "iprp_box":I
    const/4 v4, 0x2

    if-ne v0, v4, :cond_6

    if-ne v3, v4, :cond_6

    .line 434
    nop

    .line 435
    invoke-virtual {v14}, Ljava/io/BufferedInputStream;->close()V

    .line 437
    nop

    .line 438
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 440
    const-string v4, "It is 10Bit Heif!"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    const/4 v2, 0x1

    return v2

    .line 443
    :cond_6
    nop

    .line 444
    invoke-virtual {v14}, Ljava/io/BufferedInputStream;->close()V

    .line 446
    nop

    .line 447
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 449
    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    return v16

    .line 453
    .end local v0    # "bitDepthLumaMinus8":I
    .end local v9    # "keepParse":Z
    .end local v20    # "meta_box":I
    .end local v21    # "iprp_box":I
    .local v3, "meta_box":I
    .restart local v4    # "iprp_box":I
    .restart local v18    # "keepParse":Z
    :cond_7
    move/from16 v20, v3

    move/from16 v21, v4

    .end local v3    # "meta_box":I
    .end local v4    # "iprp_box":I
    .restart local v20    # "meta_box":I
    .restart local v21    # "iprp_box":I
    add-int/lit8 v0, v15, -0x8

    add-int/2addr v10, v0

    .line 455
    :goto_2
    if-le v10, v12, :cond_8

    .line 456
    const/4 v9, 0x0

    move-object/from16 v0, p0

    move/from16 v3, v20

    move/from16 v4, v21

    .end local v18    # "keepParse":Z
    .restart local v9    # "keepParse":Z
    goto/16 :goto_0

    .line 455
    .end local v9    # "keepParse":Z
    .restart local v18    # "keepParse":Z
    :cond_8
    move-object/from16 v0, p0

    move/from16 v9, v18

    move/from16 v3, v20

    move/from16 v4, v21

    goto/16 :goto_0

    .line 459
    .end local v18    # "keepParse":Z
    .end local v20    # "meta_box":I
    .end local v21    # "iprp_box":I
    .restart local v3    # "meta_box":I
    .restart local v4    # "iprp_box":I
    .restart local v9    # "keepParse":Z
    :cond_9
    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v18, v9

    .line 460
    .end local v3    # "meta_box":I
    .end local v4    # "iprp_box":I
    .end local v9    # "keepParse":Z
    .restart local v18    # "keepParse":Z
    .restart local v20    # "meta_box":I
    .restart local v21    # "iprp_box":I
    invoke-virtual {v14}, Ljava/io/BufferedInputStream;->close()V

    .line 462
    nop

    .line 463
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 465
    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    return v16
.end method

.method public whitelist getFormat(Ljava/io/InputStream;)I
    .locals 21
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    move-object/from16 v0, p0

    const v1, 0x6d657461

    .line 281
    .local v1, "meta_box":I
    const v2, 0x69707270

    .line 282
    .local v2, "iprp_box":I
    const v3, 0x6970636f

    .line 283
    .local v3, "ipco_box":I
    const v4, 0x68766343

    .line 284
    .local v4, "hvcC_box":I
    const v5, 0x66747970

    .line 285
    .local v5, "ftyp_box":I
    const v6, 0x6d646174

    .line 287
    .local v6, "mdat_box":I
    const/4 v7, 0x1

    .line 288
    .local v7, "keepParse":Z
    const/4 v8, 0x0

    .line 289
    .local v8, "cur":I
    const/4 v9, 0x0

    .line 291
    .local v9, "type":I
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->available()I

    move-result v10

    .line 292
    .local v10, "len":I
    new-array v11, v10, [B

    .line 293
    .local v11, "data":[B
    new-instance v12, Ljava/io/BufferedInputStream;

    move-object/from16 v13, p1

    invoke-direct {v12, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 294
    .local v12, "Bis":Ljava/io/BufferedInputStream;
    invoke-virtual {v12, v11}, Ljava/io/BufferedInputStream;->read([B)I

    .line 296
    invoke-virtual {v0, v11, v8}, Lcom/oplus/media/OplusHeifConverter;->byteArrayToInt([BI)I

    move-result v14

    .line 297
    .local v14, "size":I
    add-int/lit8 v8, v8, 0x4

    .line 298
    invoke-virtual {v0, v11, v8}, Lcom/oplus/media/OplusHeifConverter;->byteArrayToInt([BI)I

    move-result v9

    .line 299
    add-int/lit8 v8, v8, 0x4

    .line 301
    const-string v15, "OplusHeifConverter_Java"

    if-eq v9, v5, :cond_0

    .line 302
    move/from16 v16, v5

    .end local v5    # "ftyp_box":I
    .local v16, "ftyp_box":I
    const-string v5, "not a heif file!"

    invoke-static {v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    nop

    .line 304
    invoke-virtual {v12}, Ljava/io/BufferedInputStream;->close()V

    .line 306
    const/4 v5, 0x0

    return v5

    .line 308
    .end local v16    # "ftyp_box":I
    .restart local v5    # "ftyp_box":I
    :cond_0
    move/from16 v16, v5

    .end local v5    # "ftyp_box":I
    .restart local v16    # "ftyp_box":I
    add-int/lit8 v5, v14, -0x8

    add-int/2addr v8, v5

    .line 309
    :goto_0
    const-string v5, "It is 8Bit Heif!"

    if-eqz v7, :cond_9

    .line 310
    invoke-virtual {v0, v11, v8}, Lcom/oplus/media/OplusHeifConverter;->byteArrayToInt([BI)I

    move-result v14

    .line 311
    add-int/lit8 v8, v8, 0x4

    .line 312
    invoke-virtual {v0, v11, v8}, Lcom/oplus/media/OplusHeifConverter;->byteArrayToInt([BI)I

    move-result v9

    .line 313
    add-int/lit8 v8, v8, 0x4

    .line 315
    move/from16 v17, v7

    .end local v7    # "keepParse":Z
    .local v17, "keepParse":Z
    const/4 v7, 0x1

    if-ne v9, v6, :cond_1

    .line 316
    if-ne v14, v7, :cond_4

    .line 317
    invoke-virtual {v0, v11, v8}, Lcom/oplus/media/OplusHeifConverter;->byteArrayToInt([BI)I

    move-result v5

    .line 318
    .local v5, "size_h":I
    add-int/lit8 v8, v8, 0x4

    .line 319
    invoke-virtual {v0, v11, v8}, Lcom/oplus/media/OplusHeifConverter;->byteArrayToInt([BI)I

    move-result v7

    .line 320
    .local v7, "size_l":I
    add-int/lit8 v8, v8, 0x4

    .line 321
    shl-int/lit8 v18, v5, 0x8

    add-int v18, v18, v7

    .line 322
    .end local v14    # "size":I
    .local v18, "size":I
    add-int/lit8 v14, v18, -0x10

    add-int/2addr v8, v14

    .line 323
    .end local v5    # "size_h":I
    .end local v7    # "size_l":I
    move/from16 v19, v1

    move/from16 v20, v2

    move/from16 v14, v18

    goto/16 :goto_2

    .line 324
    .end local v18    # "size":I
    .restart local v14    # "size":I
    :cond_1
    if-ne v9, v1, :cond_2

    .line 325
    add-int/lit8 v8, v8, 0x4

    .line 326
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parse meta_box cur "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v19, v1

    move/from16 v20, v2

    goto/16 :goto_2

    .line 327
    :cond_2
    if-ne v9, v2, :cond_3

    .line 328
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parse iprp_box cur  "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 329
    :cond_3
    if-ne v9, v3, :cond_5

    .line 330
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parse ipco_box cur  "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_4
    :goto_1
    move/from16 v19, v1

    move/from16 v20, v2

    goto :goto_2

    .line 331
    :cond_5
    if-ne v9, v4, :cond_7

    .line 332
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cur hvcC_box  "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    add-int/lit8 v8, v8, 0x11

    .line 334
    aget-byte v0, v11, v8

    and-int/lit8 v0, v0, 0x3

    .line 335
    .local v0, "bitDepthLumaMinus8":I
    const/4 v7, 0x1

    add-int/2addr v8, v7

    .line 336
    aget-byte v18, v11, v8

    move/from16 v19, v1

    .end local v1    # "meta_box":I
    .local v19, "meta_box":I
    and-int/lit8 v1, v18, 0x3

    .line 337
    .local v1, "bitDepthChromaMinus8":I
    add-int/2addr v8, v7

    .line 339
    const/4 v7, 0x0

    .line 340
    .end local v17    # "keepParse":Z
    .local v7, "keepParse":Z
    move/from16 v20, v2

    .end local v2    # "iprp_box":I
    .local v20, "iprp_box":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    if-ne v1, v2, :cond_6

    .line 341
    nop

    .line 342
    invoke-virtual {v12}, Ljava/io/BufferedInputStream;->close()V

    .line 344
    const-string v2, "It is 10Bit Heif!"

    invoke-static {v15, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const/4 v2, 0x1

    return v2

    .line 347
    :cond_6
    nop

    .line 348
    invoke-virtual {v12}, Ljava/io/BufferedInputStream;->close()V

    .line 350
    invoke-static {v15, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const/4 v2, 0x0

    return v2

    .line 354
    .end local v0    # "bitDepthLumaMinus8":I
    .end local v7    # "keepParse":Z
    .end local v19    # "meta_box":I
    .end local v20    # "iprp_box":I
    .local v1, "meta_box":I
    .restart local v2    # "iprp_box":I
    .restart local v17    # "keepParse":Z
    :cond_7
    move/from16 v19, v1

    move/from16 v20, v2

    .end local v1    # "meta_box":I
    .end local v2    # "iprp_box":I
    .restart local v19    # "meta_box":I
    .restart local v20    # "iprp_box":I
    add-int/lit8 v0, v14, -0x8

    add-int/2addr v8, v0

    .line 356
    :goto_2
    if-le v8, v10, :cond_8

    .line 357
    const/4 v7, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    .end local v17    # "keepParse":Z
    .restart local v7    # "keepParse":Z
    goto/16 :goto_0

    .line 356
    .end local v7    # "keepParse":Z
    .restart local v17    # "keepParse":Z
    :cond_8
    move-object/from16 v0, p0

    move/from16 v7, v17

    move/from16 v1, v19

    move/from16 v2, v20

    goto/16 :goto_0

    .line 360
    .end local v17    # "keepParse":Z
    .end local v19    # "meta_box":I
    .end local v20    # "iprp_box":I
    .restart local v1    # "meta_box":I
    .restart local v2    # "iprp_box":I
    .restart local v7    # "keepParse":Z
    :cond_9
    move/from16 v19, v1

    move/from16 v20, v2

    move/from16 v17, v7

    .line 361
    .end local v1    # "meta_box":I
    .end local v2    # "iprp_box":I
    .end local v7    # "keepParse":Z
    .restart local v17    # "keepParse":Z
    .restart local v19    # "meta_box":I
    .restart local v20    # "iprp_box":I
    invoke-virtual {v12}, Ljava/io/BufferedInputStream;->close()V

    .line 363
    invoke-static {v15, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isHEIFFile(Ljava/io/InputStream;)Z
    .locals 16
    .param p1, "is"    # Ljava/io/InputStream;

    .line 240
    move-object/from16 v1, p0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v2, v0

    .line 241
    .local v2, "set":Ljava/util/HashSet;
    invoke-direct {v1, v2}, Lcom/oplus/media/OplusHeifConverter;->getBoxInfo(Ljava/util/HashSet;)I

    move-result v3

    .line 244
    .local v3, "ftyp":I
    const/4 v4, 0x0

    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v5, p1

    :try_start_1
    invoke-direct {v0, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 245
    .local v0, "data":Ljava/io/DataInputStream;
    const/16 v6, 0x400

    new-array v6, v6, [B

    .line 246
    .local v6, "fileData":[B
    invoke-virtual {v0, v6}, Ljava/io/DataInputStream;->read([B)I

    move-result v7
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 247
    .local v7, "available":I
    const-string v8, "OplusHeifConverter_Java"

    const/16 v9, 0x8

    if-le v7, v9, :cond_4

    const/4 v10, 0x4

    :try_start_2
    invoke-virtual {v1, v6, v10}, Lcom/oplus/media/OplusHeifConverter;->byteArrayToInt([BI)I

    move-result v11

    if-ne v11, v3, :cond_4

    .line 248
    invoke-virtual {v1, v6, v4}, Lcom/oplus/media/OplusHeifConverter;->byteArrayToInt([BI)I

    move-result v11

    .line 249
    .local v11, "size":I
    if-gt v11, v9, :cond_0

    .line 250
    const-string v9, "buffer not enought."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return v4

    .line 253
    :cond_0
    add-int/lit8 v12, v11, -0x8

    div-int/2addr v12, v10

    .line 254
    .local v12, "brandCnt":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "brandCnt "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " size "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v8, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    if-ge v13, v12, :cond_2

    .line 256
    mul-int/lit8 v14, v13, 0x4

    add-int/2addr v14, v9

    add-int/2addr v14, v10

    if-lt v14, v7, :cond_1

    .line 257
    goto :goto_1

    .line 259
    :cond_1
    mul-int/lit8 v14, v13, 0x4

    add-int/2addr v14, v9

    invoke-virtual {v1, v6, v14}, Lcom/oplus/media/OplusHeifConverter;->byteArrayToInt([BI)I

    move-result v14

    .line 260
    .local v14, "box":I
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 261
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "remove box "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    nop

    .end local v14    # "box":I
    add-int/lit8 v13, v13, 0x1

    const/16 v9, 0x8

    goto :goto_0

    .line 263
    .end local v13    # "i":I
    :cond_2
    :goto_1
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 264
    const/4 v4, 0x1

    return v4

    .line 266
    .end local v11    # "size":I
    .end local v12    # "brandCnt":I
    :cond_3
    goto :goto_4

    .line 267
    :cond_4
    const-string v9, "Not mov file."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 268
    return v4

    .line 273
    .end local v0    # "data":Ljava/io/DataInputStream;
    .end local v6    # "fileData":[B
    .end local v7    # "available":I
    :catch_0
    move-exception v0

    goto :goto_2

    .line 271
    :catch_1
    move-exception v0

    goto :goto_3

    .line 273
    :catch_2
    move-exception v0

    move-object/from16 v5, p1

    .line 274
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 271
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    move-object/from16 v5, p1

    .line 272
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 275
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_4
    nop

    .line 276
    :goto_5
    return v4
.end method
