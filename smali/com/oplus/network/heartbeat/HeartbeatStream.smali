.class public final Lcom/oplus/network/heartbeat/HeartbeatStream;
.super Ljava/lang/Object;
.source "HeartbeatStream.java"


# static fields
.field public static final blacklist HBA_ENUM_ERR_DATA_NETWORK_UNAVAILABLE:I = 0x6

.field public static final blacklist HBA_ENUM_ERR_DYNAMIC_CYCLE_UNAVAILABLE:I = 0xb

.field public static final blacklist HBA_ENUM_ERR_INVALID_SOCKET:I = 0x4

.field public static final blacklist HBA_ENUM_ERR_IPC:I = 0x1

.field public static final blacklist HBA_ENUM_ERR_IPV6_NOT_SUPPORT:I = 0x2

.field public static final blacklist HBA_ENUM_ERR_LACK_RESOURCE:I = 0x7

.field public static final blacklist HBA_ENUM_ERR_NON_WHITELIST_APP:I = 0xc

.field public static final blacklist HBA_ENUM_ERR_PROXY_ALREADY_EXIST:I = 0x5

.field public static final blacklist HBA_ENUM_ERR_RCV_TIMEOUT:I = 0xa

.field public static final blacklist HBA_ENUM_ERR_REPEAT_REQUEST:I = 0x3

.field public static final blacklist HBA_ENUM_ERR_RUNTIME:I = 0x8

.field public static final blacklist HBA_ENUM_ERR_SND_TIMEOUT:I = 0x9

.field public static final blacklist HBA_ENUM_ERR_UNKNOWN:I = 0x63

.field public static final blacklist HBA_ENUM_PROCESS_OK:I = 0x0

.field public static final blacklist HBA_IND_PAUSE:I = 0xb

.field public static final blacklist HBA_IND_TIMEOUT:I = 0xc

.field public static final blacklist HBA_REQ_ESTABLISHED:I = 0x1

.field public static final blacklist HBA_REQ_PAUSE:I = 0x2

.field public static final blacklist HBA_REQ_RESUME:I = 0x3

.field public static final blacklist HBA_REQ_STOP:I = 0x4

.field private static final greylist MAX_CYCLE:I = 0xe10

.field private static final greylist MAX_PAYLOAD_LEN:I = 0x80

.field private static final greylist MAX_STEP_CYCLE:I = 0x258

.field private static final greylist MAX_STEP_CYCLE_SUCCESS_NUM:I = 0xa

.field private static final greylist MAX_TCP_RETRIES2:I = 0xf

.field private static final greylist MIN_CYCLE:I = 0xb4

.field private static final greylist MIN_STEP_CYCLE:I = 0x1e

.field private static final greylist MIN_STEP_CYCLE_SUCCESS_NUM:I = 0x1

.field private static final greylist MIN_TCP_RETRIES2:I = 0x3

.field public static final greylist PROXY_KEY_NONE:Ljava/lang/String;

.field private static final greylist TAG:Ljava/lang/String; = "HeartbeatStream"


# instance fields
.field private final greylist mHandler:Landroid/os/Handler;

.field private final greylist mHeartbeatListener:Lcom/oplus/network/heartbeat/HeartbeatListener;

.field private greylist mHeartbeatManager:Lcom/oplus/network/heartbeat/HeartbeatManager;

.field private final greylist mHeartbeatSettings:Lcom/oplus/network/heartbeat/HeartbeatSettings;

.field private greylist mProxyKey:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/oplus/network/heartbeat/HeartbeatStream;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/oplus/network/heartbeat/HeartbeatStream;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/oplus/network/heartbeat/HeartbeatStream;->PROXY_KEY_NONE:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/oplus/network/heartbeat/HeartbeatSettings;Landroid/os/Handler;)V
    .locals 3
    .param p1, "settings"    # Lcom/oplus/network/heartbeat/HeartbeatSettings;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    sget-object v0, Lcom/oplus/network/heartbeat/HeartbeatStream;->PROXY_KEY_NONE:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/network/heartbeat/HeartbeatStream;->mProxyKey:Ljava/lang/String;

    .line 113
    const-string v0, "heartbeat settings can\'t be null!"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v0, "handler can\'t be null!"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lcom/oplus/network/heartbeat/HeartbeatStream;->mHeartbeatManager:Lcom/oplus/network/heartbeat/HeartbeatManager;

    if-nez v0, :cond_0

    .line 116
    invoke-static {}, Lcom/oplus/network/heartbeat/HeartbeatManager;->getInstance()Lcom/oplus/network/heartbeat/HeartbeatManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/network/heartbeat/HeartbeatStream;->mHeartbeatManager:Lcom/oplus/network/heartbeat/HeartbeatManager;

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/oplus/network/heartbeat/HeartbeatStream;->mHeartbeatManager:Lcom/oplus/network/heartbeat/HeartbeatManager;

    invoke-virtual {v0}, Lcom/oplus/network/heartbeat/HeartbeatManager;->isHeartbeatAvailabel()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 121
    invoke-direct {p0, p1}, Lcom/oplus/network/heartbeat/HeartbeatStream;->checkSettingslegal(Lcom/oplus/network/heartbeat/HeartbeatSettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    iput-object p2, p0, Lcom/oplus/network/heartbeat/HeartbeatStream;->mHandler:Landroid/os/Handler;

    .line 125
    iput-object p1, p0, Lcom/oplus/network/heartbeat/HeartbeatStream;->mHeartbeatSettings:Lcom/oplus/network/heartbeat/HeartbeatSettings;

    .line 127
    :try_start_0
    new-instance v0, Lcom/oplus/network/heartbeat/HeartbeatStream$1;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oplus/network/heartbeat/HeartbeatStream$1;-><init>(Lcom/oplus/network/heartbeat/HeartbeatStream;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oplus/network/heartbeat/HeartbeatStream;->mHeartbeatListener:Lcom/oplus/network/heartbeat/HeartbeatListener;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    nop

    .line 148
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "failed to init HeartbeatStream, this must be done in the looper thread!"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 122
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "heartbeat settings is illegal!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "heartbeat service unavailable!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist checkSettingslegal(Lcom/oplus/network/heartbeat/HeartbeatSettings;)Z
    .locals 12
    .param p1, "settings"    # Lcom/oplus/network/heartbeat/HeartbeatSettings;

    .line 210
    invoke-virtual {p1}, Lcom/oplus/network/heartbeat/HeartbeatSettings;->getSocket()Ljava/net/Socket;

    move-result-object v0

    .line 211
    .local v0, "socket":Ljava/net/Socket;
    const/4 v1, 0x0

    const-string v2, "HeartbeatStream"

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_6

    .line 216
    :cond_0
    invoke-virtual {p1}, Lcom/oplus/network/heartbeat/HeartbeatSettings;->getSendPayload()[B

    move-result-object v3

    .line 217
    .local v3, "send":[B
    if-eqz v3, :cond_10

    array-length v4, v3

    const/16 v5, 0x80

    if-le v4, v5, :cond_1

    goto/16 :goto_5

    .line 222
    :cond_1
    invoke-virtual {p1}, Lcom/oplus/network/heartbeat/HeartbeatSettings;->getReplyPayload()[B

    move-result-object v4

    .line 223
    .local v4, "reply":[B
    if-eqz v4, :cond_f

    array-length v6, v4

    if-le v6, v5, :cond_2

    goto/16 :goto_4

    .line 228
    :cond_2
    invoke-virtual {p1}, Lcom/oplus/network/heartbeat/HeartbeatSettings;->getCycle()I

    move-result v5

    .line 229
    .local v5, "cycle":I
    const/16 v6, 0xb4

    if-lt v5, v6, :cond_e

    const/16 v6, 0xe10

    if-le v5, v6, :cond_3

    goto :goto_3

    .line 234
    :cond_3
    invoke-virtual {p1}, Lcom/oplus/network/heartbeat/HeartbeatSettings;->getIsAllowDynamicCycle()I

    move-result v7

    .line 235
    .local v7, "allowDynamicCycle":I
    const/4 v8, 0x1

    if-ne v7, v8, :cond_b

    .line 236
    iget-object v9, p0, Lcom/oplus/network/heartbeat/HeartbeatStream;->mHeartbeatManager:Lcom/oplus/network/heartbeat/HeartbeatManager;

    if-nez v9, :cond_4

    .line 237
    invoke-static {}, Lcom/oplus/network/heartbeat/HeartbeatManager;->getInstance()Lcom/oplus/network/heartbeat/HeartbeatManager;

    move-result-object v9

    iput-object v9, p0, Lcom/oplus/network/heartbeat/HeartbeatStream;->mHeartbeatManager:Lcom/oplus/network/heartbeat/HeartbeatManager;

    .line 239
    :cond_4
    iget-object v9, p0, Lcom/oplus/network/heartbeat/HeartbeatStream;->mHeartbeatManager:Lcom/oplus/network/heartbeat/HeartbeatManager;

    invoke-virtual {v9}, Lcom/oplus/network/heartbeat/HeartbeatManager;->isHeartbeatDynamicCycleEnabled()Z

    move-result v9

    if-nez v9, :cond_5

    .line 240
    const-string v6, "dynamic cycle disabled!"

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return v1

    .line 243
    :cond_5
    invoke-virtual {p1}, Lcom/oplus/network/heartbeat/HeartbeatSettings;->getMaxCycle()I

    move-result v9

    .line 244
    .local v9, "maxCycle":I
    if-lt v9, v5, :cond_a

    if-le v9, v6, :cond_6

    goto :goto_1

    .line 248
    :cond_6
    invoke-virtual {p1}, Lcom/oplus/network/heartbeat/HeartbeatSettings;->getStepCycle()I

    move-result v6

    .line 249
    .local v6, "stepCycle":I
    const/16 v10, 0x1e

    if-lt v6, v10, :cond_9

    const/16 v10, 0x258

    if-le v6, v10, :cond_7

    goto :goto_0

    .line 253
    :cond_7
    invoke-virtual {p1}, Lcom/oplus/network/heartbeat/HeartbeatSettings;->getStepCycleSuccessNum()I

    move-result v10

    .line 254
    .local v10, "stepCycleSuccessNum":I
    if-lt v10, v8, :cond_8

    const/16 v11, 0xa

    if-le v10, v11, :cond_b

    .line 255
    :cond_8
    const-string v8, "invalid step cycle success num!"

    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    return v1

    .line 250
    .end local v10    # "stepCycleSuccessNum":I
    :cond_9
    :goto_0
    const-string v8, "invalid step cycle!"

    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return v1

    .line 245
    .end local v6    # "stepCycle":I
    :cond_a
    :goto_1
    const-string v6, "invalid max cycle!"

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    return v1

    .line 260
    .end local v9    # "maxCycle":I
    :cond_b
    invoke-virtual {p1}, Lcom/oplus/network/heartbeat/HeartbeatSettings;->getTcpRetries2()I

    move-result v6

    .line 261
    .local v6, "tcpRetries2":I
    const/4 v9, 0x3

    if-lt v6, v9, :cond_d

    const/16 v9, 0xf

    if-le v6, v9, :cond_c

    goto :goto_2

    .line 266
    :cond_c
    return v8

    .line 262
    :cond_d
    :goto_2
    const-string v8, "invalid tcp retries2!"

    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return v1

    .line 230
    .end local v6    # "tcpRetries2":I
    .end local v7    # "allowDynamicCycle":I
    :cond_e
    :goto_3
    const-string v6, "invalid init cycle!"

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return v1

    .line 224
    .end local v5    # "cycle":I
    :cond_f
    :goto_4
    const-string v5, "invalid reply payload!"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    return v1

    .line 218
    .end local v4    # "reply":[B
    :cond_10
    :goto_5
    const-string v4, "invalid send payload!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    return v1

    .line 212
    .end local v3    # "send":[B
    :cond_11
    :goto_6
    const-string v3, "invalid socket!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return v1
.end method

.method private blacklist reportErr(III)V
    .locals 3
    .param p1, "event"    # I
    .param p2, "err"    # I
    .param p3, "destroy"    # I

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "heartbeat state update event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " err="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " destroy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HeartbeatStream"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Lcom/oplus/network/heartbeat/HeartbeatStream;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 199
    .local v0, "message":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 200
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "err"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 201
    const-string v2, "destroy"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 202
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 203
    iget-object v2, p0, Lcom/oplus/network/heartbeat/HeartbeatStream;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 205
    .end local v0    # "message":Landroid/os/Message;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist establishHeartbeat()V
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/oplus/network/heartbeat/HeartbeatStream;->mHeartbeatManager:Lcom/oplus/network/heartbeat/HeartbeatManager;

    if-nez v0, :cond_0

    .line 154
    invoke-static {}, Lcom/oplus/network/heartbeat/HeartbeatManager;->getInstance()Lcom/oplus/network/heartbeat/HeartbeatManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/network/heartbeat/HeartbeatStream;->mHeartbeatManager:Lcom/oplus/network/heartbeat/HeartbeatManager;

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/oplus/network/heartbeat/HeartbeatStream;->mHeartbeatManager:Lcom/oplus/network/heartbeat/HeartbeatManager;

    iget-object v1, p0, Lcom/oplus/network/heartbeat/HeartbeatStream;->mHeartbeatSettings:Lcom/oplus/network/heartbeat/HeartbeatSettings;

    iget-object v2, p0, Lcom/oplus/network/heartbeat/HeartbeatStream;->mHeartbeatListener:Lcom/oplus/network/heartbeat/HeartbeatListener;

    invoke-virtual {v0, v1, v2}, Lcom/oplus/network/heartbeat/HeartbeatManager;->establishHeartbeat(Lcom/oplus/network/heartbeat/HeartbeatSettings;Lcom/oplus/network/heartbeat/HeartbeatListener;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/network/heartbeat/HeartbeatStream;->mProxyKey:Ljava/lang/String;

    .line 157
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v1, v0}, Lcom/oplus/network/heartbeat/HeartbeatStream;->reportErr(III)V

    .line 160
    :cond_1
    return-void
.end method

.method public blacklist pauseHeartbeat()V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/oplus/network/heartbeat/HeartbeatStream;->mHeartbeatManager:Lcom/oplus/network/heartbeat/HeartbeatManager;

    if-nez v0, :cond_0

    .line 177
    invoke-static {}, Lcom/oplus/network/heartbeat/HeartbeatManager;->getInstance()Lcom/oplus/network/heartbeat/HeartbeatManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/network/heartbeat/HeartbeatStream;->mHeartbeatManager:Lcom/oplus/network/heartbeat/HeartbeatManager;

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/oplus/network/heartbeat/HeartbeatStream;->mHeartbeatManager:Lcom/oplus/network/heartbeat/HeartbeatManager;

    iget-object v1, p0, Lcom/oplus/network/heartbeat/HeartbeatStream;->mProxyKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oplus/network/heartbeat/HeartbeatManager;->pauseHeartbeat(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 180
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v1}, Lcom/oplus/network/heartbeat/HeartbeatStream;->reportErr(III)V

    .line 182
    :cond_1
    return-void
.end method

.method public blacklist resumeHeartbeat()V
    .locals 3

    .line 187
    iget-object v0, p0, Lcom/oplus/network/heartbeat/HeartbeatStream;->mHeartbeatManager:Lcom/oplus/network/heartbeat/HeartbeatManager;

    if-nez v0, :cond_0

    .line 188
    invoke-static {}, Lcom/oplus/network/heartbeat/HeartbeatManager;->getInstance()Lcom/oplus/network/heartbeat/HeartbeatManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/network/heartbeat/HeartbeatStream;->mHeartbeatManager:Lcom/oplus/network/heartbeat/HeartbeatManager;

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/oplus/network/heartbeat/HeartbeatStream;->mHeartbeatManager:Lcom/oplus/network/heartbeat/HeartbeatManager;

    iget-object v1, p0, Lcom/oplus/network/heartbeat/HeartbeatStream;->mProxyKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oplus/network/heartbeat/HeartbeatManager;->resumeHeartbeat(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 191
    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/oplus/network/heartbeat/HeartbeatStream;->reportErr(III)V

    .line 193
    :cond_1
    return-void
.end method

.method public blacklist stopHeartbeat()V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/oplus/network/heartbeat/HeartbeatStream;->mHeartbeatManager:Lcom/oplus/network/heartbeat/HeartbeatManager;

    if-nez v0, :cond_0

    .line 166
    invoke-static {}, Lcom/oplus/network/heartbeat/HeartbeatManager;->getInstance()Lcom/oplus/network/heartbeat/HeartbeatManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/network/heartbeat/HeartbeatStream;->mHeartbeatManager:Lcom/oplus/network/heartbeat/HeartbeatManager;

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/oplus/network/heartbeat/HeartbeatStream;->mHeartbeatManager:Lcom/oplus/network/heartbeat/HeartbeatManager;

    iget-object v1, p0, Lcom/oplus/network/heartbeat/HeartbeatStream;->mProxyKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oplus/network/heartbeat/HeartbeatManager;->stopHeartbeat(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 169
    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v1}, Lcom/oplus/network/heartbeat/HeartbeatStream;->reportErr(III)V

    .line 171
    :cond_1
    return-void
.end method
