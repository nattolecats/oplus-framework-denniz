.class public Lcom/oplus/osense/OsenseResManager;
.super Ljava/lang/Object;
.source "OsenseResManager.java"


# static fields
.field private static final blacklist OSENSE_SERVICE:Ljava/lang/String; = "osensemanager"

.field private static final blacklist TAG:Ljava/lang/String;

.field private static volatile blacklist sInstance:Lcom/oplus/osense/OsenseResManager;


# instance fields
.field private blacklist mService:Lcom/oplus/osense/IOsenseResManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lcom/oplus/osense/OsenseResManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/osense/OsenseResManager;->TAG:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/oplus/osense/OsenseResManager;->sInstance:Lcom/oplus/osense/OsenseResManager;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Lcom/oplus/osense/OsenseResManager;
    .locals 2

    .line 47
    sget-object v0, Lcom/oplus/osense/OsenseResManager;->sInstance:Lcom/oplus/osense/OsenseResManager;

    if-nez v0, :cond_1

    .line 48
    const-class v0, Lcom/oplus/osense/OsenseResManager;

    monitor-enter v0

    .line 49
    :try_start_0
    sget-object v1, Lcom/oplus/osense/OsenseResManager;->sInstance:Lcom/oplus/osense/OsenseResManager;

    if-nez v1, :cond_0

    .line 50
    new-instance v1, Lcom/oplus/osense/OsenseResManager;

    invoke-direct {v1}, Lcom/oplus/osense/OsenseResManager;-><init>()V

    sput-object v1, Lcom/oplus/osense/OsenseResManager;->sInstance:Lcom/oplus/osense/OsenseResManager;

    .line 52
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 54
    :cond_1
    :goto_0
    sget-object v0, Lcom/oplus/osense/OsenseResManager;->sInstance:Lcom/oplus/osense/OsenseResManager;

    return-object v0
.end method

.method private blacklist getService()Lcom/oplus/osense/IOsenseResManager;
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/oplus/osense/OsenseResManager;->mService:Lcom/oplus/osense/IOsenseResManager;

    .line 59
    .local v0, "oSenseResMgr":Lcom/oplus/osense/IOsenseResManager;
    if-eqz v0, :cond_0

    .line 60
    return-object v0

    .line 62
    :cond_0
    const-string v1, "osensemanager"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/osense/IOsenseResManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/osense/IOsenseResManager;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/osense/OsenseResManager;->mService:Lcom/oplus/osense/IOsenseResManager;

    .line 63
    return-object v1
.end method

.method private blacklist obtainRandomHandle()J
    .locals 4

    .line 67
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 68
    .local v0, "random":Ljava/security/SecureRandom;
    const/16 v1, 0x14

    new-array v1, v1, [B

    .line 69
    .local v1, "bytes":[B
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 70
    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    return-wide v2
.end method


# virtual methods
.method public blacklist clrCtrlData(Ljava/lang/String;)V
    .locals 5
    .param p1, "identity"    # Ljava/lang/String;

    .line 160
    invoke-direct {p0}, Lcom/oplus/osense/OsenseResManager;->getService()Lcom/oplus/osense/IOsenseResManager;

    move-result-object v0

    .line 161
    .local v0, "service":Lcom/oplus/osense/IOsenseResManager;
    if-nez v0, :cond_0

    .line 162
    sget-object v1, Lcom/oplus/osense/OsenseResManager;->TAG:Ljava/lang/String;

    const-string v2, "clrCtrlData... service is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return-void

    .line 166
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/oplus/osense/IOsenseResManager;->osenseClrCtrlData(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    goto :goto_0

    .line 167
    :catch_0
    move-exception v1

    .line 168
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/oplus/osense/OsenseResManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to call osenseClrCtrlData: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist clrSceneAction(Ljava/lang/String;J)V
    .locals 5
    .param p1, "identity"    # Ljava/lang/String;
    .param p2, "handle"    # J

    .line 121
    invoke-direct {p0}, Lcom/oplus/osense/OsenseResManager;->getService()Lcom/oplus/osense/IOsenseResManager;

    move-result-object v0

    .line 122
    .local v0, "service":Lcom/oplus/osense/IOsenseResManager;
    if-nez v0, :cond_0

    .line 123
    sget-object v1, Lcom/oplus/osense/OsenseResManager;->TAG:Ljava/lang/String;

    const-string v2, "clrSceneAction... service is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void

    .line 127
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/oplus/osense/IOsenseResManager;->osenseClrSceneAction(Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    goto :goto_0

    .line 128
    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/oplus/osense/OsenseResManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to call osenseClrSceneAction: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist getModeStatus(Ljava/lang/String;I)I
    .locals 6
    .param p1, "identity"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .line 173
    const/4 v0, -0x1

    .line 174
    .local v0, "result":I
    invoke-direct {p0}, Lcom/oplus/osense/OsenseResManager;->getService()Lcom/oplus/osense/IOsenseResManager;

    move-result-object v1

    .line 175
    .local v1, "service":Lcom/oplus/osense/IOsenseResManager;
    if-nez v1, :cond_0

    .line 176
    sget-object v2, Lcom/oplus/osense/OsenseResManager;->TAG:Ljava/lang/String;

    const-string v3, "getModeStatus... service is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return v0

    .line 180
    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/oplus/osense/IOsenseResManager;->osenseGetModeStatus(Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 181
    :catch_0
    move-exception v2

    .line 182
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/oplus/osense/OsenseResManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to call osenseGetModeStatus: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .end local v2    # "e":Landroid/os/RemoteException;
    return v0
.end method

.method public blacklist getPerfLimit(Ljava/lang/String;)[[[J
    .locals 20
    .param p1, "identity"    # Ljava/lang/String;

    .line 188
    const/4 v0, 0x0

    new-array v1, v0, [[[J

    .line 189
    .local v1, "result":[[[J
    new-array v2, v0, [J

    .line 190
    .local v2, "temp":[J
    invoke-direct/range {p0 .. p0}, Lcom/oplus/osense/OsenseResManager;->getService()Lcom/oplus/osense/IOsenseResManager;

    move-result-object v3

    .line 191
    .local v3, "service":Lcom/oplus/osense/IOsenseResManager;
    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 192
    sget-object v0, Lcom/oplus/osense/OsenseResManager;->TAG:Ljava/lang/String;

    const-string v5, "getModeStatus... service is null"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    return-object v4

    .line 196
    :cond_0
    move-object/from16 v5, p1

    :try_start_0
    invoke-interface {v3, v5}, Lcom/oplus/osense/IOsenseResManager;->osenseGetPerfLimit(Ljava/lang/String;)[J

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b

    move-object v2, v6

    .line 201
    nop

    .line 203
    const/4 v6, 0x0

    .line 205
    .local v6, "index":I
    const/4 v7, 0x5

    .line 206
    .local v7, "HEAD_INFO_LEN":I
    if-eqz v2, :cond_3

    :try_start_1
    array-length v8, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a

    const/4 v9, 0x5

    if-lt v8, v9, :cond_3

    .line 207
    add-int/lit8 v8, v6, 0x1

    .end local v6    # "index":I
    .local v8, "index":I
    :try_start_2
    aget-wide v10, v2, v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9

    long-to-int v6, v10

    .line 208
    .local v6, "timeLen":I
    add-int/lit8 v10, v8, 0x1

    .end local v8    # "index":I
    .local v10, "index":I
    :try_start_3
    aget-wide v11, v2, v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    long-to-int v8, v11

    .line 209
    .local v8, "cpuLen":I
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "index":I
    .local v11, "index":I
    :try_start_4
    aget-wide v12, v2, v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    long-to-int v10, v12

    .line 210
    .local v10, "gpuLen":I
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "index":I
    .local v12, "index":I
    :try_start_5
    aget-wide v13, v2, v11
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    long-to-int v11, v13

    .line 211
    .local v11, "schedLen":I
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "index":I
    .local v13, "index":I
    :try_start_6
    aget-wide v14, v2, v12

    long-to-int v12, v14

    .line 212
    .local v12, "limitLen":I
    new-array v14, v12, [[[J
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    move-object v1, v14

    .line 213
    const-wide/16 v14, 0x5

    mul-int/lit8 v16, v8, 0x4

    add-int v16, v6, v16

    mul-int/lit8 v17, v10, 0x4

    add-int v16, v16, v17

    mul-int/lit8 v17, v11, 0x2

    add-int v4, v16, v17

    move/from16 v17, v10

    .end local v10    # "gpuLen":I
    .local v17, "gpuLen":I
    int-to-long v9, v4

    move-object/from16 v18, v1

    .end local v1    # "result":[[[J
    .local v18, "result":[[[J
    int-to-long v0, v12

    mul-long/2addr v9, v0

    add-long/2addr v9, v14

    .line 214
    .local v9, "total":J
    :try_start_7
    array-length v0, v2

    int-to-long v0, v0

    cmp-long v0, v0, v9

    if-nez v0, :cond_2

    .line 215
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v12, :cond_1

    .line 216
    const/16 v1, 0xb

    new-array v1, v1, [[J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 217
    .local v1, "limit":[[J
    add-int v14, v13, v6

    move v15, v14

    .end local v13    # "index":I
    .local v15, "index":I
    :try_start_8
    invoke-static {v2, v13, v14}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v13

    const/4 v4, 0x0

    aput-object v13, v1, v4
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 218
    add-int v13, v15, v8

    move v14, v13

    .end local v15    # "index":I
    .local v14, "index":I
    :try_start_9
    invoke-static {v2, v15, v13}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v13

    const/4 v15, 0x1

    aput-object v13, v1, v15
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 219
    add-int v13, v14, v8

    move v15, v13

    .end local v14    # "index":I
    .restart local v15    # "index":I
    :try_start_a
    invoke-static {v2, v14, v13}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v13

    const/4 v14, 0x2

    aput-object v13, v1, v14
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 220
    const/4 v13, 0x3

    add-int v14, v15, v8

    move/from16 v19, v14

    .end local v15    # "index":I
    .local v19, "index":I
    :try_start_b
    invoke-static {v2, v15, v14}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v14

    aput-object v14, v1, v13
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    .line 221
    move/from16 v13, v19

    .end local v19    # "index":I
    .restart local v13    # "index":I
    add-int v14, v13, v8

    move v15, v14

    .end local v13    # "index":I
    .restart local v15    # "index":I
    :try_start_c
    invoke-static {v2, v13, v14}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v13

    const/4 v14, 0x4

    aput-object v13, v1, v14
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    .line 222
    add-int v13, v15, v17

    move v14, v13

    .end local v15    # "index":I
    .restart local v14    # "index":I
    :try_start_d
    invoke-static {v2, v15, v13}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v13

    const/4 v15, 0x5

    aput-object v13, v1, v15
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    .line 223
    const/4 v13, 0x6

    add-int v4, v14, v17

    move/from16 v19, v4

    .end local v14    # "index":I
    .restart local v19    # "index":I
    :try_start_e
    invoke-static {v2, v14, v4}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v4

    aput-object v4, v1, v13

    .line 224
    const/4 v4, 0x7

    move/from16 v13, v19

    .end local v19    # "index":I
    .restart local v13    # "index":I
    add-int v14, v13, v17

    move/from16 v19, v14

    .end local v13    # "index":I
    .restart local v19    # "index":I
    invoke-static {v2, v13, v14}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v13

    aput-object v13, v1, v4

    .line 225
    const/16 v4, 0x8

    move/from16 v13, v19

    .end local v19    # "index":I
    .restart local v13    # "index":I
    add-int v14, v13, v17

    move/from16 v19, v14

    .end local v13    # "index":I
    .restart local v19    # "index":I
    invoke-static {v2, v13, v14}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v13

    aput-object v13, v1, v4

    .line 226
    const/16 v4, 0x9

    move/from16 v13, v19

    .end local v19    # "index":I
    .restart local v13    # "index":I
    add-int v14, v13, v11

    move/from16 v19, v14

    .end local v13    # "index":I
    .restart local v19    # "index":I
    invoke-static {v2, v13, v14}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v13

    aput-object v13, v1, v4
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    .line 227
    const/16 v4, 0xa

    move/from16 v13, v19

    .end local v19    # "index":I
    .restart local v13    # "index":I
    add-int v14, v13, v11

    move/from16 v19, v14

    .end local v13    # "index":I
    .restart local v19    # "index":I
    :try_start_f
    invoke-static {v2, v13, v14}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v13

    aput-object v13, v1, v4

    .line 228
    aput-object v1, v18, v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    .line 215
    .end local v1    # "limit":[[J
    add-int/lit8 v0, v0, 0x1

    move/from16 v13, v19

    goto/16 :goto_0

    .line 232
    .end local v0    # "i":I
    .end local v6    # "timeLen":I
    .end local v7    # "HEAD_INFO_LEN":I
    .end local v8    # "cpuLen":I
    .end local v9    # "total":J
    .end local v11    # "schedLen":I
    .end local v12    # "limitLen":I
    .end local v17    # "gpuLen":I
    :catch_0
    move-exception v0

    move-object/from16 v1, v18

    move/from16 v6, v19

    goto :goto_1

    :catch_1
    move-exception v0

    move/from16 v13, v19

    move v6, v13

    move-object/from16 v1, v18

    .end local v19    # "index":I
    .restart local v13    # "index":I
    goto :goto_1

    .end local v13    # "index":I
    .restart local v14    # "index":I
    :catch_2
    move-exception v0

    move v6, v14

    move-object/from16 v1, v18

    goto :goto_1

    .end local v14    # "index":I
    .restart local v15    # "index":I
    :catch_3
    move-exception v0

    move v6, v15

    move-object/from16 v1, v18

    goto :goto_1

    .line 215
    .end local v15    # "index":I
    .restart local v0    # "i":I
    .restart local v6    # "timeLen":I
    .restart local v7    # "HEAD_INFO_LEN":I
    .restart local v8    # "cpuLen":I
    .restart local v9    # "total":J
    .restart local v11    # "schedLen":I
    .restart local v12    # "limitLen":I
    .restart local v13    # "index":I
    .restart local v17    # "gpuLen":I
    :cond_1
    move v6, v13

    move-object/from16 v1, v18

    goto :goto_2

    .line 214
    .end local v0    # "i":I
    :cond_2
    move v6, v13

    move-object/from16 v1, v18

    goto :goto_2

    .line 232
    .end local v6    # "timeLen":I
    .end local v7    # "HEAD_INFO_LEN":I
    .end local v8    # "cpuLen":I
    .end local v9    # "total":J
    .end local v11    # "schedLen":I
    .end local v12    # "limitLen":I
    .end local v17    # "gpuLen":I
    :catch_4
    move-exception v0

    move v6, v13

    move-object/from16 v1, v18

    goto :goto_1

    .end local v18    # "result":[[[J
    .local v1, "result":[[[J
    :catch_5
    move-exception v0

    move v6, v13

    goto :goto_1

    .end local v13    # "index":I
    .local v12, "index":I
    :catch_6
    move-exception v0

    move v6, v12

    goto :goto_1

    .end local v12    # "index":I
    .local v11, "index":I
    :catch_7
    move-exception v0

    move v6, v11

    goto :goto_1

    .end local v11    # "index":I
    .local v10, "index":I
    :catch_8
    move-exception v0

    move v6, v10

    goto :goto_1

    .end local v10    # "index":I
    .local v8, "index":I
    :catch_9
    move-exception v0

    move v6, v8

    goto :goto_1

    .end local v8    # "index":I
    .local v6, "index":I
    :catch_a
    move-exception v0

    .line 233
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 234
    const/4 v4, 0x0

    return-object v4

    .line 235
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    nop

    .line 236
    return-object v1

    .line 197
    .end local v6    # "index":I
    :catch_b
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 198
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v4, Lcom/oplus/osense/OsenseResManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "try to get performance limit! because "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 200
    const/4 v4, 0x0

    return-object v4
.end method

.method public blacklist setCtrlData(Ljava/lang/String;Lcom/oplus/osense/info/OsenseCtrlDataRequest;)V
    .locals 5
    .param p1, "identity"    # Ljava/lang/String;
    .param p2, "ctrlData"    # Lcom/oplus/osense/info/OsenseCtrlDataRequest;

    .line 147
    invoke-direct {p0}, Lcom/oplus/osense/OsenseResManager;->getService()Lcom/oplus/osense/IOsenseResManager;

    move-result-object v0

    .line 148
    .local v0, "service":Lcom/oplus/osense/IOsenseResManager;
    if-nez v0, :cond_0

    .line 149
    sget-object v1, Lcom/oplus/osense/OsenseResManager;->TAG:Ljava/lang/String;

    const-string v2, "setCtrlData... service is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void

    .line 153
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/oplus/osense/IOsenseResManager;->osenseSetCtrlData(Ljava/lang/String;Lcom/oplus/osense/info/OsenseCtrlDataRequest;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    goto :goto_0

    .line 154
    :catch_0
    move-exception v1

    .line 155
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/oplus/osense/OsenseResManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to call osenseSetCtrlData: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist setNotification(Ljava/lang/String;Lcom/oplus/osense/info/OsenseNotifyRequest;)V
    .locals 5
    .param p1, "identity"    # Ljava/lang/String;
    .param p2, "request"    # Lcom/oplus/osense/info/OsenseNotifyRequest;

    .line 134
    invoke-direct {p0}, Lcom/oplus/osense/OsenseResManager;->getService()Lcom/oplus/osense/IOsenseResManager;

    move-result-object v0

    .line 135
    .local v0, "service":Lcom/oplus/osense/IOsenseResManager;
    if-nez v0, :cond_0

    .line 136
    sget-object v1, Lcom/oplus/osense/OsenseResManager;->TAG:Ljava/lang/String;

    const-string v2, "setNotification... service is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void

    .line 140
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/oplus/osense/IOsenseResManager;->osenseSetNotification(Ljava/lang/String;Lcom/oplus/osense/info/OsenseNotifyRequest;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    goto :goto_0

    .line 141
    :catch_0
    move-exception v1

    .line 142
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/oplus/osense/OsenseResManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to call osenseSetNotification: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist setSceneAction(Ljava/lang/String;Lcom/oplus/osense/info/OsenseSaRequest;)J
    .locals 13
    .param p1, "identity"    # Ljava/lang/String;
    .param p2, "request"    # Lcom/oplus/osense/info/OsenseSaRequest;

    .line 74
    invoke-direct {p0}, Lcom/oplus/osense/OsenseResManager;->getService()Lcom/oplus/osense/IOsenseResManager;

    move-result-object v0

    .line 75
    .local v0, "service":Lcom/oplus/osense/IOsenseResManager;
    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    .line 76
    sget-object v3, Lcom/oplus/osense/OsenseResManager;->TAG:Ljava/lang/String;

    const-string v4, "setSceneAction... service is null "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-wide v1

    .line 79
    :cond_0
    invoke-direct {p0}, Lcom/oplus/osense/OsenseResManager;->obtainRandomHandle()J

    move-result-wide v3

    .line 81
    .local v3, "handle":J
    :try_start_0
    invoke-virtual {p2}, Lcom/oplus/osense/info/OsenseSaRequest;->getScene()Ljava/lang/String;

    move-result-object v5

    .line 82
    .local v5, "scene":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/oplus/osense/info/OsenseSaRequest;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 83
    .local v6, "action":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/oplus/osense/info/OsenseSaRequest;->getTimeout()I

    move-result v7

    .line 84
    .local v7, "timeout":I
    const/4 v8, 0x0

    .line 88
    .local v8, "info":Landroid/os/Bundle;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, "action"

    const-string v11, "identity"

    if-eqz v9, :cond_3

    .line 89
    :try_start_1
    invoke-virtual {p2}, Lcom/oplus/osense/info/OsenseSaRequest;->getInfo()Landroid/os/Bundle;

    move-result-object v9
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v8, v9

    .line 90
    const-string v9, "setSceneAction... the bundle of OsenseSaRequest is null "

    if-nez v8, :cond_1

    .line 91
    :try_start_2
    sget-object v10, Lcom/oplus/osense/OsenseResManager;->TAG:Ljava/lang/String;

    invoke-static {v10, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-wide v1

    .line 95
    :cond_1
    const-string v12, ""

    invoke-virtual {v8, v10, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 96
    .local v10, "act":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 97
    sget-object v11, Lcom/oplus/osense/OsenseResManager;->TAG:Ljava/lang/String;

    invoke-static {v11, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-wide v1

    .line 101
    :cond_2
    invoke-virtual {v8, v11, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .end local v10    # "act":Ljava/lang/String;
    goto :goto_0

    .line 106
    :cond_3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v8, v1

    .line 107
    invoke-virtual {v8, v11, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v1, "scene"

    invoke-virtual {v8, v1, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v8, v10, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v1, "timeout"

    invoke-virtual {v8, v1, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 111
    const-string v1, "handle"

    invoke-virtual {v8, v1, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 113
    :goto_0
    invoke-interface {v0, v8}, Lcom/oplus/osense/IOsenseResManager;->osenseSetSceneAction(Landroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 116
    .end local v5    # "scene":Ljava/lang/String;
    .end local v6    # "action":Ljava/lang/String;
    .end local v7    # "timeout":I
    .end local v8    # "info":Landroid/os/Bundle;
    goto :goto_1

    .line 114
    :catch_0
    move-exception v1

    .line 115
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/oplus/osense/OsenseResManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to call osenseSetSceneAction: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    return-wide v3
.end method
