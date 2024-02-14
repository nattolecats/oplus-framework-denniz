.class public Lcom/oplus/oshare/OplusOshareDevice;
.super Ljava/lang/Object;
.source "OplusOshareDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/oshare/OplusOshareDevice;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DEFAULT_VIRTUAL:I = 0x8


# instance fields
.field private blacklist mBleMac:Ljava/lang/String;

.field private blacklist mBluetootchDevice:Landroid/bluetooth/BluetoothDevice;

.field private blacklist mDisplayName:Ljava/lang/String;

.field private blacklist mHeadIcon:Landroid/graphics/Bitmap;

.field private blacklist mHeadIconUrl:Ljava/lang/String;

.field private blacklist mLastFoundTime:J

.field private blacklist mName:Ljava/lang/String;

.field private blacklist mProgress:I

.field private blacklist mRemainTime:Ljava/lang/String;

.field private blacklist mState:Lcom/oplus/oshare/OplusOshareState;

.field private blacklist mSucceedNum:I

.field private blacklist mTotalNum:I

.field private blacklist mVender:I

.field private blacklist mVirtual:I

.field private blacklist mWifiMac:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmBleMac(Lcom/oplus/oshare/OplusOshareDevice;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/oshare/OplusOshareDevice;->mBleMac:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBluetootchDevice(Lcom/oplus/oshare/OplusOshareDevice;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/oshare/OplusOshareDevice;->mBluetootchDevice:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHeadIcon(Lcom/oplus/oshare/OplusOshareDevice;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/oshare/OplusOshareDevice;->mHeadIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHeadIconUrl(Lcom/oplus/oshare/OplusOshareDevice;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/oshare/OplusOshareDevice;->mHeadIconUrl:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastFoundTime(Lcom/oplus/oshare/OplusOshareDevice;J)V
    .locals 0

    iput-wide p1, p0, Lcom/oplus/oshare/OplusOshareDevice;->mLastFoundTime:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmName(Lcom/oplus/oshare/OplusOshareDevice;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/oshare/OplusOshareDevice;->mName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmProgress(Lcom/oplus/oshare/OplusOshareDevice;I)V
    .locals 0

    iput p1, p0, Lcom/oplus/oshare/OplusOshareDevice;->mProgress:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRemainTime(Lcom/oplus/oshare/OplusOshareDevice;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/oshare/OplusOshareDevice;->mRemainTime:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmState(Lcom/oplus/oshare/OplusOshareDevice;Lcom/oplus/oshare/OplusOshareState;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/oshare/OplusOshareDevice;->mState:Lcom/oplus/oshare/OplusOshareState;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSucceedNum(Lcom/oplus/oshare/OplusOshareDevice;I)V
    .locals 0

    iput p1, p0, Lcom/oplus/oshare/OplusOshareDevice;->mSucceedNum:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTotalNum(Lcom/oplus/oshare/OplusOshareDevice;I)V
    .locals 0

    iput p1, p0, Lcom/oplus/oshare/OplusOshareDevice;->mTotalNum:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmVender(Lcom/oplus/oshare/OplusOshareDevice;I)V
    .locals 0

    iput p1, p0, Lcom/oplus/oshare/OplusOshareDevice;->mVender:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmVirtual(Lcom/oplus/oshare/OplusOshareDevice;I)V
    .locals 0

    iput p1, p0, Lcom/oplus/oshare/OplusOshareDevice;->mVirtual:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWifiMac(Lcom/oplus/oshare/OplusOshareDevice;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/oshare/OplusOshareDevice;->mWifiMac:Ljava/lang/String;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 235
    new-instance v0, Lcom/oplus/oshare/OplusOshareDevice$1;

    invoke-direct {v0}, Lcom/oplus/oshare/OplusOshareDevice$1;-><init>()V

    sput-object v0, Lcom/oplus/oshare/OplusOshareDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/oshare/OplusOshareDevice;->mDisplayName:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/oplus/oshare/OplusOshareDevice;->mName:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/oplus/oshare/OplusOshareDevice;->mBleMac:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/oshare/OplusOshareDevice;->mWifiMac:Ljava/lang/String;

    .line 29
    sget-object v0, Lcom/oplus/oshare/OplusOshareState;->IDLE:Lcom/oplus/oshare/OplusOshareState;

    iput-object v0, p0, Lcom/oplus/oshare/OplusOshareDevice;->mState:Lcom/oplus/oshare/OplusOshareState;

    .line 30
    const/16 v0, 0x8

    iput v0, p0, Lcom/oplus/oshare/OplusOshareDevice;->mVirtual:I

    return-void
.end method

.method private blacklist compare(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "aString"    # Ljava/lang/String;
    .param p2, "bString"    # Ljava/lang/String;

    .line 204
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    const/4 v0, 0x1

    return v0

    .line 206
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 207
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 209
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public whitelist copyFrom(Lcom/oplus/oshare/OplusOshareDevice;)V
    .locals 2
    .param p1, "o"    # Lcom/oplus/oshare/OplusOshareDevice;

    .line 278
    iget-object v0, p1, Lcom/oplus/oshare/OplusOshareDevice;->mBleMac:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/oshare/OplusOshareDevice;->mBleMac:Ljava/lang/String;

    .line 279
    iget-object v0, p1, Lcom/oplus/oshare/OplusOshareDevice;->mBluetootchDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lcom/oplus/oshare/OplusOshareDevice;->mBluetootchDevice:Landroid/bluetooth/BluetoothDevice;

    .line 280
    iget-object v0, p1, Lcom/oplus/oshare/OplusOshareDevice;->mDisplayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/oshare/OplusOshareDevice;->mDisplayName:Ljava/lang/String;

    .line 281
    iget-object v0, p1, Lcom/oplus/oshare/OplusOshareDevice;->mHeadIcon:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/oplus/oshare/OplusOshareDevice;->mHeadIcon:Landroid/graphics/Bitmap;

    .line 282
    iget-object v0, p1, Lcom/oplus/oshare/OplusOshareDevice;->mHeadIconUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/oshare/OplusOshareDevice;->mHeadIconUrl:Ljava/lang/String;

    .line 283
    iget-wide v0, p1, Lcom/oplus/oshare/OplusOshareDevice;->mLastFoundTime:J

    iput-wide v0, p0, Lcom/oplus/oshare/OplusOshareDevice;->mLastFoundTime:J

    .line 284
    iget v0, p1, Lcom/oplus/oshare/OplusOshareDevice;->mProgress:I

    iput v0, p0, Lcom/oplus/oshare/OplusOshareDevice;->mProgress:I

    .line 285
    iget-object v0, p1, Lcom/oplus/oshare/OplusOshareDevice;->mRemainTime:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/oshare/OplusOshareDevice;->mRemainTime:Ljava/lang/String;

    .line 286
    iget-object v0, p1, Lcom/oplus/oshare/OplusOshareDevice;->mState:Lcom/oplus/oshare/OplusOshareState;

    iput-object v0, p0, Lcom/oplus/oshare/OplusOshareDevice;->mState:Lcom/oplus/oshare/OplusOshareState;

    .line 287
    iget v0, p1, Lcom/oplus/oshare/OplusOshareDevice;->mSucceedNum:I

    iput v0, p0, Lcom/oplus/oshare/OplusOshareDevice;->mSucceedNum:I

    .line 288
    iget v0, p1, Lcom/oplus/oshare/OplusOshareDevice;->mTotalNum:I

    iput v0, p0, Lcom/oplus/oshare/OplusOshareDevice;->mTotalNum:I

    .line 289
    iget v0, p1, Lcom/oplus/oshare/OplusOshareDevice;->mVender:I

    iput v0, p0, Lcom/oplus/oshare/OplusOshareDevice;->mVender:I

    .line 290
    iget-object v0, p1, Lcom/oplus/oshare/OplusOshareDevice;->mWifiMac:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/oshare/OplusOshareDevice;->mWifiMac:Ljava/lang/String;

    .line 291
    iget-object v0, p1, Lcom/oplus/oshare/OplusOshareDevice;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/oshare/OplusOshareDevice;->mName:Ljava/lang/String;

    .line 292
    iget v0, p1, Lcom/oplus/oshare/OplusOshareDevice;->mVirtual:I

    iput v0, p0, Lcom/oplus/oshare/OplusOshareDevice;->mVirtual:I

    .line 293
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 214
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 195
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    instance-of v1, p1, Lcom/oplus/oshare/OplusOshareDevice;

    if-nez v1, :cond_0

    goto :goto_1

    .line 198
    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/oplus/oshare/OplusOshareDevice;

    .line 199
    .local v1, "other":Lcom/oplus/oshare/OplusOshareDevice;
    iget-object v2, p0, Lcom/oplus/oshare/OplusOshareDevice;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/oplus/oshare/OplusOshareDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/oplus/oshare/OplusOshareDevice;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oplus/oshare/OplusOshareDevice;->mBleMac:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/oplus/oshare/OplusOshareDevice;->getBleMac()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/oplus/oshare/OplusOshareDevice;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oplus/oshare/OplusOshareDevice;->mWifiMac:Ljava/lang/String;

    .line 200
    invoke-virtual {v1}, Lcom/oplus/oshare/OplusOshareDevice;->getWifiMac()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/oplus/oshare/OplusOshareDevice;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 199
    :goto_0
    return v0

    .line 196
    .end local v1    # "other":Lcom/oplus/oshare/OplusOshareDevice;
    :cond_2
    :goto_1
    return v0
.end method

.method public whitelist getBleMac()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/oplus/oshare/OplusOshareDevice;->mBleMac:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/oplus/oshare/OplusOshareDevice;->mBluetootchDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public whitelist getDisplayName()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/oplus/oshare/OplusOshareDevice;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getHeadIcon()Landroid/graphics/Bitmap;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/oplus/oshare/OplusOshareDevice;->mHeadIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public whitelist getHeadIconUrl()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/oplus/oshare/OplusOshareDevice;->mHeadIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getLastFoundTime()J
    .locals 2

    .line 42
    iget-wide v0, p0, Lcom/oplus/oshare/OplusOshareDevice;->mLastFoundTime:J

    return-wide v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/oplus/oshare/OplusOshareDevice;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getProgress()I
    .locals 1

    .line 124
    iget v0, p0, Lcom/oplus/oshare/OplusOshareDevice;->mProgress:I

    return v0
.end method

.method public whitelist getRemainTime()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/oplus/oshare/OplusOshareDevice;->mRemainTime:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getState()Lcom/oplus/oshare/OplusOshareState;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/oplus/oshare/OplusOshareDevice;->mState:Lcom/oplus/oshare/OplusOshareState;

    return-object v0
.end method

.method public whitelist getSucceedNum()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/oplus/oshare/OplusOshareDevice;->mSucceedNum:I

    return v0
.end method

.method public whitelist getTotalNum()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/oplus/oshare/OplusOshareDevice;->mTotalNum:I

    return v0
.end method

.method public whitelist getVender()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/oplus/oshare/OplusOshareDevice;->mVender:I

    return v0
.end method

.method public whitelist getVirtual()I
    .locals 1

    .line 140
    iget v0, p0, Lcom/oplus/oshare/OplusOshareDevice;->mVirtual:I

    return v0
.end method

.method public whitelist getWifiMac()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/oplus/oshare/OplusOshareDevice;->mWifiMac:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist isVirtual()Z
    .locals 1

    .line 132
    iget v0, p0, Lcom/oplus/oshare/OplusOshareDevice;->mVirtual:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist setBleMac(Ljava/lang/String;)V
    .locals 0
    .param p1, "bleMac"    # Ljava/lang/String;

    .line 163
    iput-object p1, p0, Lcom/oplus/oshare/OplusOshareDevice;->mBleMac:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public whitelist setBluetootchDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p1, "bluetootchDevice"    # Landroid/bluetooth/BluetoothDevice;

    .line 144
    iput-object p1, p0, Lcom/oplus/oshare/OplusOshareDevice;->mBluetootchDevice:Landroid/bluetooth/BluetoothDevice;

    .line 145
    return-void
.end method

.method public whitelist setDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayName"    # Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lcom/oplus/oshare/OplusOshareDevice;->mDisplayName:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public whitelist setHeadIcon(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 103
    iput-object p1, p0, Lcom/oplus/oshare/OplusOshareDevice;->mHeadIcon:Landroid/graphics/Bitmap;

    .line 104
    return-void
.end method

.method public whitelist setHeadIconUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "headIconUrl"    # Ljava/lang/String;

    .line 92
    iput-object p1, p0, Lcom/oplus/oshare/OplusOshareDevice;->mHeadIconUrl:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public whitelist setLastFoundTime(J)V
    .locals 0
    .param p1, "lastFoundTime"    # J

    .line 46
    iput-wide p1, p0, Lcom/oplus/oshare/OplusOshareDevice;->mLastFoundTime:J

    .line 47
    return-void
.end method

.method public whitelist setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 155
    iput-object p1, p0, Lcom/oplus/oshare/OplusOshareDevice;->mName:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public whitelist setProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .line 117
    iput p1, p0, Lcom/oplus/oshare/OplusOshareDevice;->mProgress:I

    .line 118
    return-void
.end method

.method public whitelist setRemainTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "remainTime"    # Ljava/lang/String;

    .line 113
    iput-object p1, p0, Lcom/oplus/oshare/OplusOshareDevice;->mRemainTime:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public whitelist setState(Lcom/oplus/oshare/OplusOshareState;)V
    .locals 2
    .param p1, "state"    # Lcom/oplus/oshare/OplusOshareState;

    .line 182
    iget-object v0, p0, Lcom/oplus/oshare/OplusOshareDevice;->mState:Lcom/oplus/oshare/OplusOshareState;

    sget-object v1, Lcom/oplus/oshare/OplusOshareState;->TRANSIT_SUCCESS:Lcom/oplus/oshare/OplusOshareState;

    invoke-virtual {v0, v1}, Lcom/oplus/oshare/OplusOshareState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oplus/oshare/OplusOshareState;->TRANSIT_FAILED:Lcom/oplus/oshare/OplusOshareState;

    invoke-virtual {p1, v0}, Lcom/oplus/oshare/OplusOshareState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    return-void

    .line 185
    :cond_0
    iput-object p1, p0, Lcom/oplus/oshare/OplusOshareDevice;->mState:Lcom/oplus/oshare/OplusOshareState;

    .line 186
    return-void
.end method

.method public whitelist setSucceedNum(I)V
    .locals 0
    .param p1, "succeedNum"    # I

    .line 62
    iput p1, p0, Lcom/oplus/oshare/OplusOshareDevice;->mSucceedNum:I

    .line 63
    return-void
.end method

.method public whitelist setTotalNum(I)V
    .locals 0
    .param p1, "totalNum"    # I

    .line 70
    iput p1, p0, Lcom/oplus/oshare/OplusOshareDevice;->mTotalNum:I

    .line 71
    return-void
.end method

.method public whitelist setVender(I)V
    .locals 0
    .param p1, "vender"    # I

    .line 81
    iput p1, p0, Lcom/oplus/oshare/OplusOshareDevice;->mVender:I

    .line 82
    return-void
.end method

.method public whitelist setVirtual(I)V
    .locals 0
    .param p1, "virtual"    # I

    .line 136
    iput p1, p0, Lcom/oplus/oshare/OplusOshareDevice;->mVirtual:I

    .line 137
    return-void
.end method

.method public whitelist setWifiMac(Ljava/lang/String;)V
    .locals 0
    .param p1, "wifiMac"    # Ljava/lang/String;

    .line 171
    iput-object p1, p0, Lcom/oplus/oshare/OplusOshareDevice;->mWifiMac:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/oshare/OplusOshareDevice;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Virtual:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/oshare/OplusOshareDevice;->mVirtual:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " State:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/oshare/OplusOshareDevice;->mState:Lcom/oplus/oshare/OplusOshareState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 219
    iget-object v0, p0, Lcom/oplus/oshare/OplusOshareDevice;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/oplus/oshare/OplusOshareDevice;->mBleMac:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/oplus/oshare/OplusOshareDevice;->mWifiMac:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/oplus/oshare/OplusOshareDevice;->mState:Lcom/oplus/oshare/OplusOshareState;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 223
    iget v0, p0, Lcom/oplus/oshare/OplusOshareDevice;->mVirtual:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    iget-object v0, p0, Lcom/oplus/oshare/OplusOshareDevice;->mBluetootchDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 225
    iget v0, p0, Lcom/oplus/oshare/OplusOshareDevice;->mProgress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    iget-object v0, p0, Lcom/oplus/oshare/OplusOshareDevice;->mRemainTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/oplus/oshare/OplusOshareDevice;->mHeadIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 228
    iget v0, p0, Lcom/oplus/oshare/OplusOshareDevice;->mSucceedNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    iget v0, p0, Lcom/oplus/oshare/OplusOshareDevice;->mTotalNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    iget-wide v0, p0, Lcom/oplus/oshare/OplusOshareDevice;->mLastFoundTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 231
    iget v0, p0, Lcom/oplus/oshare/OplusOshareDevice;->mVender:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    iget-object v0, p0, Lcom/oplus/oshare/OplusOshareDevice;->mHeadIconUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 233
    return-void
.end method
