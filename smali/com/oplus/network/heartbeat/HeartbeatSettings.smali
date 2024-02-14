.class public final Lcom/oplus/network/heartbeat/HeartbeatSettings;
.super Ljava/lang/Object;
.source "HeartbeatSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/network/heartbeat/HeartbeatSettings;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist TAG:Ljava/lang/String; = "HeartbeatSettings"


# instance fields
.field private blacklist mCycle:I

.field private blacklist mDaddr:[B

.field private blacklist mDport:I

.field private greylist mHeartbeatManager:Lcom/oplus/network/heartbeat/HeartbeatManager;

.field private blacklist mIsAllowDynamicCycle:Z

.field private blacklist mIsIPv6:Z

.field private blacklist mMaxCycle:I

.field private blacklist mReply:[B

.field private blacklist mSaddr:[B

.field private blacklist mSend:[B

.field private greylist mSocket:Ljava/net/Socket;

.field private blacklist mSport:I

.field private blacklist mStepCycle:I

.field private blacklist mStepCycleSuccessNum:I

.field private blacklist mTcpRetries2:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lcom/oplus/network/heartbeat/HeartbeatSettings$1;

    invoke-direct {v0}, Lcom/oplus/network/heartbeat/HeartbeatSettings$1;-><init>()V

    sput-object v0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mIsIPv6:Z

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mSaddr:[B

    .line 74
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mDaddr:[B

    .line 76
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mSport:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mDport:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mSend:[B

    .line 80
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mReply:[B

    .line 82
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mIsAllowDynamicCycle:Z

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mCycle:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mMaxCycle:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mStepCycle:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mStepCycleSuccessNum:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mTcpRetries2:I

    .line 89
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/oplus/network/heartbeat/HeartbeatSettings-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/network/heartbeat/HeartbeatSettings;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCycle()I
    .locals 1

    .line 182
    iget v0, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mCycle:I

    return v0
.end method

.method public blacklist getDaddr()[B
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mDaddr:[B

    return-object v0
.end method

.method public blacklist getDport()I
    .locals 1

    .line 174
    iget v0, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mDport:I

    return v0
.end method

.method public blacklist getIsAllowDynamicCycle()I
    .locals 1

    .line 178
    iget-boolean v0, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mIsAllowDynamicCycle:Z

    return v0
.end method

.method public blacklist getIsIPv6()I
    .locals 1

    .line 158
    iget-boolean v0, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mIsIPv6:Z

    return v0
.end method

.method public blacklist getMaxCycle()I
    .locals 1

    .line 186
    iget v0, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mMaxCycle:I

    return v0
.end method

.method public blacklist getReplyPayload()[B
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mReply:[B

    return-object v0
.end method

.method public blacklist getSaddr()[B
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mSaddr:[B

    return-object v0
.end method

.method public blacklist getSendPayload()[B
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mSend:[B

    return-object v0
.end method

.method public blacklist getSocket()Ljava/net/Socket;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mSocket:Ljava/net/Socket;

    return-object v0
.end method

.method public blacklist getSport()I
    .locals 1

    .line 170
    iget v0, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mSport:I

    return v0
.end method

.method public blacklist getStepCycle()I
    .locals 1

    .line 190
    iget v0, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mStepCycle:I

    return v0
.end method

.method public blacklist getStepCycleSuccessNum()I
    .locals 1

    .line 194
    iget v0, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mStepCycleSuccessNum:I

    return v0
.end method

.method public blacklist getTcpRetries2()I
    .locals 1

    .line 198
    iget v0, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mTcpRetries2:I

    return v0
.end method

.method public blacklist isHeartbeatAvailabel()Z
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mHeartbeatManager:Lcom/oplus/network/heartbeat/HeartbeatManager;

    if-nez v0, :cond_0

    .line 98
    invoke-static {}, Lcom/oplus/network/heartbeat/HeartbeatManager;->getInstance()Lcom/oplus/network/heartbeat/HeartbeatManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mHeartbeatManager:Lcom/oplus/network/heartbeat/HeartbeatManager;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mHeartbeatManager:Lcom/oplus/network/heartbeat/HeartbeatManager;

    invoke-virtual {v0}, Lcom/oplus/network/heartbeat/HeartbeatManager;->isHeartbeatAvailabel()Z

    move-result v0

    return v0
.end method

.method public blacklist isHeartbeatDynamicCycleEnabled()Z
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mHeartbeatManager:Lcom/oplus/network/heartbeat/HeartbeatManager;

    if-nez v0, :cond_0

    .line 106
    invoke-static {}, Lcom/oplus/network/heartbeat/HeartbeatManager;->getInstance()Lcom/oplus/network/heartbeat/HeartbeatManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mHeartbeatManager:Lcom/oplus/network/heartbeat/HeartbeatManager;

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mHeartbeatManager:Lcom/oplus/network/heartbeat/HeartbeatManager;

    invoke-virtual {v0}, Lcom/oplus/network/heartbeat/HeartbeatManager;->isHeartbeatDynamicCycleEnabled()Z

    move-result v0

    return v0
.end method

.method public blacklist setCycle(I)V
    .locals 0
    .param p1, "cycle"    # I

    .line 138
    iput p1, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mCycle:I

    .line 139
    return-void
.end method

.method public blacklist setDynamicCycle(IIII)V
    .locals 1
    .param p1, "initCycle"    # I
    .param p2, "maxCycle"    # I
    .param p3, "stepCycle"    # I
    .param p4, "successNum"    # I

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mIsAllowDynamicCycle:Z

    .line 143
    iput p1, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mCycle:I

    .line 144
    iput p2, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mMaxCycle:I

    .line 145
    iput p3, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mStepCycle:I

    .line 146
    iput p4, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mStepCycleSuccessNum:I

    .line 147
    return-void
.end method

.method public blacklist setPayload([B[B)V
    .locals 0
    .param p1, "send"    # [B
    .param p2, "reply"    # [B

    .line 133
    iput-object p1, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mSend:[B

    .line 134
    iput-object p2, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mReply:[B

    .line 135
    return-void
.end method

.method public blacklist setSocket(Ljava/net/Socket;)V
    .locals 3
    .param p1, "socket"    # Ljava/net/Socket;

    .line 112
    iput-object p1, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mSocket:Ljava/net/Socket;

    .line 113
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 114
    invoke-virtual {p1}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 115
    .local v0, "saddr":Ljava/net/InetAddress;
    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mSaddr:[B

    .line 118
    :cond_0
    invoke-virtual {p1}, Ljava/net/Socket;->getLocalPort()I

    move-result v1

    iput v1, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mSport:I

    .line 119
    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 120
    .local v1, "daddr":Ljava/net/InetAddress;
    if-eqz v1, :cond_1

    .line 121
    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    iput-object v2, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mDaddr:[B

    .line 123
    :cond_1
    invoke-virtual {p1}, Ljava/net/Socket;->getPort()I

    move-result v2

    iput v2, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mDport:I

    .line 124
    instance-of v2, v1, Ljava/net/Inet6Address;

    if-eqz v2, :cond_2

    .line 125
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mIsIPv6:Z

    goto :goto_0

    .line 127
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mIsIPv6:Z

    .line 130
    .end local v0    # "saddr":Ljava/net/InetAddress;
    .end local v1    # "daddr":Ljava/net/InetAddress;
    :cond_3
    :goto_0
    return-void
.end method

.method public blacklist setTcpRetries2(I)V
    .locals 0
    .param p1, "count"    # I

    .line 150
    iput p1, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mTcpRetries2:I

    .line 151
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 216
    iget-boolean v0, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mIsIPv6:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 217
    iget-object v0, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mSaddr:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    iget-object v0, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mSaddr:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 219
    iget-object v0, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mDaddr:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    iget-object v0, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mDaddr:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 221
    iget v0, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mSport:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    iget v0, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mDport:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    iget-object v0, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mSend:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    iget-object v0, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mSend:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 225
    iget-object v0, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mReply:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    iget-object v0, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mReply:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 227
    iget-boolean v0, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mIsAllowDynamicCycle:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 228
    iget v0, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mCycle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    iget v0, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mMaxCycle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    iget v0, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mStepCycle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    iget v0, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mStepCycleSuccessNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    iget v0, p0, Lcom/oplus/network/heartbeat/HeartbeatSettings;->mTcpRetries2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    return-void
.end method
