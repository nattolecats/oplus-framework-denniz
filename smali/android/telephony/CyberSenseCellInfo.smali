.class public Landroid/telephony/CyberSenseCellInfo;
.super Ljava/lang/Object;
.source "CyberSenseCellInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CyberSenseCellInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist RAT_LTE:I = 0x1

.field public static final blacklist RAT_NR:I = 0x2

.field public static final blacklist RAT_UNKNOWN:I = 0x0

.field public static final blacklist RAT_WIFI:I = 0x3

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist UNAVAILABLE:I = -0x1

.field private static final blacklist UNAVAILABLE_LONG:J = -0x1L


# instance fields
.field private blacklist mArfcn:I

.field private blacklist mBandWidth:I

.field private blacklist mBeamInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/telephony/CyberSenseCellBeamInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCa:I

.field private blacklist mCid:J

.field private blacklist mDoppler:I

.field private blacklist mMcc:I

.field private blacklist mMnc:I

.field private blacklist mNsa:I

.field private blacklist mPci:I

.field private blacklist mRat:I

.field private blacklist mRsrp:I

.field private blacklist mRsrq:I

.field private blacklist mRssi:I

.field private blacklist mSsbIndex:I

.field private blacklist mTac:I

.field private blacklist mTimeStamp:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 59
    const-class v0, Landroid/telephony/CyberSenseCellInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/CyberSenseCellInfo;->TAG:Ljava/lang/String;

    .line 280
    new-instance v0, Landroid/telephony/CyberSenseCellInfo$1;

    invoke-direct {v0}, Landroid/telephony/CyberSenseCellInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/CyberSenseCellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/CyberSenseCellInfo;->mRat:I

    .line 183
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/telephony/CyberSenseCellInfo;->mTimeStamp:J

    .line 184
    iput-wide v0, p0, Landroid/telephony/CyberSenseCellInfo;->mCid:J

    .line 185
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/CyberSenseCellInfo;->mPci:I

    .line 186
    iput v0, p0, Landroid/telephony/CyberSenseCellInfo;->mMcc:I

    .line 187
    iput v0, p0, Landroid/telephony/CyberSenseCellInfo;->mMnc:I

    .line 188
    iput v0, p0, Landroid/telephony/CyberSenseCellInfo;->mTac:I

    .line 189
    iput v0, p0, Landroid/telephony/CyberSenseCellInfo;->mArfcn:I

    .line 190
    iput v0, p0, Landroid/telephony/CyberSenseCellInfo;->mBandWidth:I

    .line 191
    iput v0, p0, Landroid/telephony/CyberSenseCellInfo;->mRsrp:I

    .line 192
    iput v0, p0, Landroid/telephony/CyberSenseCellInfo;->mRsrq:I

    .line 193
    iput v0, p0, Landroid/telephony/CyberSenseCellInfo;->mRssi:I

    .line 194
    iput v0, p0, Landroid/telephony/CyberSenseCellInfo;->mSsbIndex:I

    .line 195
    iput v0, p0, Landroid/telephony/CyberSenseCellInfo;->mCa:I

    .line 196
    iput v0, p0, Landroid/telephony/CyberSenseCellInfo;->mNsa:I

    .line 197
    iput v0, p0, Landroid/telephony/CyberSenseCellInfo;->mDoppler:I

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/CyberSenseCellInfo;->mBeamInfo:Ljava/util/ArrayList;

    .line 200
    return-void
.end method

.method public constructor blacklist <init>(IJJIIIIIIIIIIIIILjava/util/ArrayList;)V
    .locals 16
    .param p1, "rat"    # I
    .param p2, "timeStamp"    # J
    .param p4, "cid"    # J
    .param p6, "pci"    # I
    .param p7, "mcc"    # I
    .param p8, "mnc"    # I
    .param p9, "tac"    # I
    .param p10, "arfcn"    # I
    .param p11, "bw"    # I
    .param p12, "rsrp"    # I
    .param p13, "rsrq"    # I
    .param p14, "rssi"    # I
    .param p15, "ssbIndex"    # I
    .param p16, "isCa"    # I
    .param p17, "isNsa"    # I
    .param p18, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJIIIIIIIIIIIII",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/CyberSenseCellBeamInfo;",
            ">;)V"
        }
    .end annotation

    .line 255
    .local p19, "beamInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CyberSenseCellBeamInfo;>;"
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 256
    move/from16 v1, p1

    iput v1, v0, Landroid/telephony/CyberSenseCellInfo;->mRat:I

    .line 257
    move-wide/from16 v2, p2

    iput-wide v2, v0, Landroid/telephony/CyberSenseCellInfo;->mTimeStamp:J

    .line 258
    move-wide/from16 v4, p4

    iput-wide v4, v0, Landroid/telephony/CyberSenseCellInfo;->mCid:J

    .line 259
    move/from16 v6, p6

    iput v6, v0, Landroid/telephony/CyberSenseCellInfo;->mPci:I

    .line 260
    move/from16 v7, p7

    iput v7, v0, Landroid/telephony/CyberSenseCellInfo;->mMcc:I

    .line 261
    move/from16 v8, p8

    iput v8, v0, Landroid/telephony/CyberSenseCellInfo;->mMnc:I

    .line 262
    move/from16 v9, p9

    iput v9, v0, Landroid/telephony/CyberSenseCellInfo;->mTac:I

    .line 263
    move/from16 v10, p10

    iput v10, v0, Landroid/telephony/CyberSenseCellInfo;->mArfcn:I

    .line 264
    move/from16 v11, p11

    iput v11, v0, Landroid/telephony/CyberSenseCellInfo;->mBandWidth:I

    .line 265
    move/from16 v12, p12

    iput v12, v0, Landroid/telephony/CyberSenseCellInfo;->mRsrp:I

    .line 266
    move/from16 v13, p13

    iput v13, v0, Landroid/telephony/CyberSenseCellInfo;->mRsrq:I

    .line 267
    move/from16 v14, p14

    iput v14, v0, Landroid/telephony/CyberSenseCellInfo;->mRssi:I

    .line 268
    move/from16 v15, p15

    iput v15, v0, Landroid/telephony/CyberSenseCellInfo;->mSsbIndex:I

    .line 269
    move/from16 v1, p16

    iput v1, v0, Landroid/telephony/CyberSenseCellInfo;->mCa:I

    .line 270
    move/from16 v1, p17

    iput v1, v0, Landroid/telephony/CyberSenseCellInfo;->mNsa:I

    .line 271
    move/from16 v1, p18

    iput v1, v0, Landroid/telephony/CyberSenseCellInfo;->mDoppler:I

    .line 272
    move-object/from16 v1, p19

    iput-object v1, v0, Landroid/telephony/CyberSenseCellInfo;->mBeamInfo:Ljava/util/ArrayList;

    .line 273
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CyberSenseCellInfo;->mRat:I

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/CyberSenseCellInfo;->mTimeStamp:J

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/CyberSenseCellInfo;->mCid:J

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CyberSenseCellInfo;->mPci:I

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CyberSenseCellInfo;->mMcc:I

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CyberSenseCellInfo;->mMnc:I

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CyberSenseCellInfo;->mTac:I

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CyberSenseCellInfo;->mArfcn:I

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CyberSenseCellInfo;->mBandWidth:I

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CyberSenseCellInfo;->mRsrp:I

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CyberSenseCellInfo;->mRsrq:I

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CyberSenseCellInfo;->mRssi:I

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CyberSenseCellInfo;->mSsbIndex:I

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CyberSenseCellInfo;->mCa:I

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CyberSenseCellInfo;->mNsa:I

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CyberSenseCellInfo;->mDoppler:I

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/CyberSenseCellInfo;->mBeamInfo:Ljava/util/ArrayList;

    .line 225
    sget-object v1, Landroid/telephony/CyberSenseCellBeamInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 228
    return-void
.end method

.method protected static blacklist createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CyberSenseCellInfo;
    .locals 1
    .param p0, "in"    # Landroid/os/Parcel;

    .line 298
    new-instance v0, Landroid/telephony/CyberSenseCellInfo;

    invoke-direct {v0, p0}, Landroid/telephony/CyberSenseCellInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 335
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 357
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 358
    return v0

    .line 360
    :cond_0
    instance-of v1, p1, Landroid/telephony/CyberSenseCellInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 361
    return v2

    .line 363
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/telephony/CyberSenseCellInfo;

    .line 364
    .local v1, "cellInfo":Landroid/telephony/CyberSenseCellInfo;
    iget v3, p0, Landroid/telephony/CyberSenseCellInfo;->mRat:I

    iget v4, v1, Landroid/telephony/CyberSenseCellInfo;->mRat:I

    if-ne v3, v4, :cond_2

    iget-wide v3, p0, Landroid/telephony/CyberSenseCellInfo;->mTimeStamp:J

    iget-wide v5, v1, Landroid/telephony/CyberSenseCellInfo;->mTimeStamp:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroid/telephony/CyberSenseCellInfo;->mCid:J

    iget-wide v5, v1, Landroid/telephony/CyberSenseCellInfo;->mCid:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget v3, p0, Landroid/telephony/CyberSenseCellInfo;->mPci:I

    iget v4, v1, Landroid/telephony/CyberSenseCellInfo;->mPci:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/CyberSenseCellInfo;->mMcc:I

    iget v4, v1, Landroid/telephony/CyberSenseCellInfo;->mMcc:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/CyberSenseCellInfo;->mMnc:I

    iget v4, v1, Landroid/telephony/CyberSenseCellInfo;->mMnc:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/CyberSenseCellInfo;->mTac:I

    iget v4, v1, Landroid/telephony/CyberSenseCellInfo;->mTac:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/CyberSenseCellInfo;->mArfcn:I

    iget v4, v1, Landroid/telephony/CyberSenseCellInfo;->mArfcn:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/CyberSenseCellInfo;->mBandWidth:I

    iget v4, v1, Landroid/telephony/CyberSenseCellInfo;->mBandWidth:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/CyberSenseCellInfo;->mRsrp:I

    iget v4, v1, Landroid/telephony/CyberSenseCellInfo;->mRsrp:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/CyberSenseCellInfo;->mRsrq:I

    iget v4, v1, Landroid/telephony/CyberSenseCellInfo;->mRsrq:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/CyberSenseCellInfo;->mRssi:I

    iget v4, v1, Landroid/telephony/CyberSenseCellInfo;->mRssi:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/CyberSenseCellInfo;->mSsbIndex:I

    iget v4, v1, Landroid/telephony/CyberSenseCellInfo;->mSsbIndex:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/CyberSenseCellInfo;->mCa:I

    iget v4, v1, Landroid/telephony/CyberSenseCellInfo;->mCa:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/CyberSenseCellInfo;->mNsa:I

    iget v4, v1, Landroid/telephony/CyberSenseCellInfo;->mNsa:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/CyberSenseCellInfo;->mDoppler:I

    iget v4, v1, Landroid/telephony/CyberSenseCellInfo;->mDoppler:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/telephony/CyberSenseCellInfo;->mBeamInfo:Ljava/util/ArrayList;

    iget-object v4, v1, Landroid/telephony/CyberSenseCellInfo;->mBeamInfo:Ljava/util/ArrayList;

    .line 380
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 364
    :goto_0
    return v0
.end method

.method public blacklist getArfcn()I
    .locals 1

    .line 485
    iget v0, p0, Landroid/telephony/CyberSenseCellInfo;->mArfcn:I

    return v0
.end method

.method public blacklist getBandWidth()I
    .locals 1

    .line 503
    iget v0, p0, Landroid/telephony/CyberSenseCellInfo;->mBandWidth:I

    return v0
.end method

.method public blacklist getBeamInfo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/CyberSenseCellBeamInfo;",
            ">;"
        }
    .end annotation

    .line 684
    iget-object v0, p0, Landroid/telephony/CyberSenseCellInfo;->mBeamInfo:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getCid()J
    .locals 2

    .line 390
    iget-wide v0, p0, Landroid/telephony/CyberSenseCellInfo;->mCid:J

    return-wide v0
.end method

.method public blacklist getDopplerOffset()I
    .locals 1

    .line 611
    iget v0, p0, Landroid/telephony/CyberSenseCellInfo;->mDoppler:I

    return v0
.end method

.method public blacklist getIsCA()I
    .locals 1

    .line 575
    iget v0, p0, Landroid/telephony/CyberSenseCellInfo;->mCa:I

    return v0
.end method

.method public blacklist getIsNsa()I
    .locals 1

    .line 593
    iget v0, p0, Landroid/telephony/CyberSenseCellInfo;->mNsa:I

    return v0
.end method

.method public blacklist getMcc()I
    .locals 1

    .line 430
    iget v0, p0, Landroid/telephony/CyberSenseCellInfo;->mMcc:I

    return v0
.end method

.method public blacklist getMnc()I
    .locals 1

    .line 449
    iget v0, p0, Landroid/telephony/CyberSenseCellInfo;->mMnc:I

    return v0
.end method

.method public blacklist getPci()I
    .locals 1

    .line 410
    iget v0, p0, Landroid/telephony/CyberSenseCellInfo;->mPci:I

    return v0
.end method

.method public blacklist getRat()I
    .locals 1

    .line 630
    iget v0, p0, Landroid/telephony/CyberSenseCellInfo;->mRat:I

    return v0
.end method

.method public blacklist getRsrp()I
    .locals 1

    .line 521
    iget v0, p0, Landroid/telephony/CyberSenseCellInfo;->mRsrp:I

    return v0
.end method

.method public blacklist getRsrq()I
    .locals 1

    .line 539
    iget v0, p0, Landroid/telephony/CyberSenseCellInfo;->mRsrq:I

    return v0
.end method

.method public blacklist getRssi()I
    .locals 1

    .line 557
    iget v0, p0, Landroid/telephony/CyberSenseCellInfo;->mRssi:I

    return v0
.end method

.method public blacklist getSsbIndex()I
    .locals 1

    .line 666
    iget v0, p0, Landroid/telephony/CyberSenseCellInfo;->mSsbIndex:I

    return v0
.end method

.method public blacklist getTac()I
    .locals 1

    .line 467
    iget v0, p0, Landroid/telephony/CyberSenseCellInfo;->mTac:I

    return v0
.end method

.method public blacklist getTimeStamp()J
    .locals 2

    .line 648
    iget-wide v0, p0, Landroid/telephony/CyberSenseCellInfo;->mTimeStamp:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 345
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telephony/CyberSenseCellInfo;->mRat:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/telephony/CyberSenseCellInfo;->mTimeStamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/telephony/CyberSenseCellInfo;->mCid:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CyberSenseCellInfo;->mPci:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CyberSenseCellInfo;->mMcc:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CyberSenseCellInfo;->mMnc:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CyberSenseCellInfo;->mTac:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CyberSenseCellInfo;->mArfcn:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CyberSenseCellInfo;->mBandWidth:I

    .line 346
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CyberSenseCellInfo;->mRsrp:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CyberSenseCellInfo;->mRsrq:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CyberSenseCellInfo;->mRssi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CyberSenseCellInfo;->mSsbIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CyberSenseCellInfo;->mCa:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CyberSenseCellInfo;->mNsa:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CyberSenseCellInfo;->mDoppler:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/CyberSenseCellInfo;->mBeamInfo:Ljava/util/ArrayList;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 345
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist setArfcn(I)V
    .locals 0
    .param p1, "mArfcn"    # I

    .line 494
    iput p1, p0, Landroid/telephony/CyberSenseCellInfo;->mArfcn:I

    .line 495
    return-void
.end method

.method public blacklist setBandWidth(I)V
    .locals 0
    .param p1, "mBandWidth"    # I

    .line 512
    iput p1, p0, Landroid/telephony/CyberSenseCellInfo;->mBandWidth:I

    .line 513
    return-void
.end method

.method public blacklist setBeamInfo(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/CyberSenseCellBeamInfo;",
            ">;)V"
        }
    .end annotation

    .line 693
    .local p1, "beamInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CyberSenseCellBeamInfo;>;"
    iput-object p1, p0, Landroid/telephony/CyberSenseCellInfo;->mBeamInfo:Ljava/util/ArrayList;

    .line 694
    return-void
.end method

.method public blacklist setCid(J)V
    .locals 0
    .param p1, "mCid"    # J

    .line 400
    iput-wide p1, p0, Landroid/telephony/CyberSenseCellInfo;->mCid:J

    .line 401
    return-void
.end method

.method public blacklist setDopplerOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .line 620
    iput p1, p0, Landroid/telephony/CyberSenseCellInfo;->mDoppler:I

    .line 621
    return-void
.end method

.method public blacklist setIsCA(I)V
    .locals 0
    .param p1, "isCA"    # I

    .line 584
    iput p1, p0, Landroid/telephony/CyberSenseCellInfo;->mCa:I

    .line 585
    return-void
.end method

.method public blacklist setIsNsa(I)V
    .locals 0
    .param p1, "isNsa"    # I

    .line 602
    iput p1, p0, Landroid/telephony/CyberSenseCellInfo;->mNsa:I

    .line 603
    return-void
.end method

.method public blacklist setMcc(I)V
    .locals 0
    .param p1, "mMcc"    # I

    .line 440
    iput p1, p0, Landroid/telephony/CyberSenseCellInfo;->mMcc:I

    .line 441
    return-void
.end method

.method public blacklist setMnc(I)V
    .locals 0
    .param p1, "mMnc"    # I

    .line 458
    iput p1, p0, Landroid/telephony/CyberSenseCellInfo;->mMnc:I

    .line 459
    return-void
.end method

.method public blacklist setPci(I)V
    .locals 0
    .param p1, "mPci"    # I

    .line 420
    iput p1, p0, Landroid/telephony/CyberSenseCellInfo;->mPci:I

    .line 421
    return-void
.end method

.method public blacklist setRat(I)V
    .locals 0
    .param p1, "mRat"    # I

    .line 639
    iput p1, p0, Landroid/telephony/CyberSenseCellInfo;->mRat:I

    .line 640
    return-void
.end method

.method public blacklist setRsrp(I)V
    .locals 0
    .param p1, "mRsrp"    # I

    .line 530
    iput p1, p0, Landroid/telephony/CyberSenseCellInfo;->mRsrp:I

    .line 531
    return-void
.end method

.method public blacklist setRsrq(I)V
    .locals 0
    .param p1, "mRsrq"    # I

    .line 548
    iput p1, p0, Landroid/telephony/CyberSenseCellInfo;->mRsrq:I

    .line 549
    return-void
.end method

.method public blacklist setRssi(I)V
    .locals 0
    .param p1, "mRssi"    # I

    .line 566
    iput p1, p0, Landroid/telephony/CyberSenseCellInfo;->mRssi:I

    .line 567
    return-void
.end method

.method public blacklist setSsbIndex(I)V
    .locals 0
    .param p1, "mSsbIndex"    # I

    .line 675
    iput p1, p0, Landroid/telephony/CyberSenseCellInfo;->mSsbIndex:I

    .line 676
    return-void
.end method

.method public blacklist setTac(I)V
    .locals 0
    .param p1, "mTac"    # I

    .line 476
    iput p1, p0, Landroid/telephony/CyberSenseCellInfo;->mTac:I

    .line 477
    return-void
.end method

.method public blacklist setTimeStamp(J)V
    .locals 0
    .param p1, "mTimeStamp"    # J

    .line 657
    iput-wide p1, p0, Landroid/telephony/CyberSenseCellInfo;->mTimeStamp:J

    .line 658
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 703
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Landroid/telephony/CyberSenseCellInfo;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":{mRat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CyberSenseCellInfo;->mRat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 704
    const-string v1, ",timeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/telephony/CyberSenseCellInfo;->mTimeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 705
    const-string v1, ",mCid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/telephony/CyberSenseCellInfo;->mCid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 706
    const-string v1, ",mPci="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CyberSenseCellInfo;->mPci:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 707
    const-string v1, ",mMcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CyberSenseCellInfo;->mMcc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 708
    const-string v1, ",mMnc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CyberSenseCellInfo;->mMnc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 709
    const-string v1, ",mTac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CyberSenseCellInfo;->mTac:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 710
    const-string v1, ",mArfcn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CyberSenseCellInfo;->mArfcn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 711
    const-string v1, ",mBandWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CyberSenseCellInfo;->mBandWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 712
    const-string v1, ",mRsrp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CyberSenseCellInfo;->mRsrp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 713
    const-string v1, ",mRsrq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CyberSenseCellInfo;->mRsrq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 714
    const-string v1, ",mRssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CyberSenseCellInfo;->mRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 715
    const-string v1, ",mSsbIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CyberSenseCellInfo;->mSsbIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 716
    const-string v1, ",isCA="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CyberSenseCellInfo;->mCa:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 717
    const-string v1, ",isNsa="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CyberSenseCellInfo;->mNsa:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 718
    const-string v1, ",dopplerOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CyberSenseCellInfo;->mDoppler:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 719
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 703
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 309
    iget v0, p0, Landroid/telephony/CyberSenseCellInfo;->mRat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    iget-wide v0, p0, Landroid/telephony/CyberSenseCellInfo;->mTimeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 311
    iget-wide v0, p0, Landroid/telephony/CyberSenseCellInfo;->mCid:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 312
    iget v0, p0, Landroid/telephony/CyberSenseCellInfo;->mPci:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 313
    iget v0, p0, Landroid/telephony/CyberSenseCellInfo;->mMcc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    iget v0, p0, Landroid/telephony/CyberSenseCellInfo;->mMnc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    iget v0, p0, Landroid/telephony/CyberSenseCellInfo;->mTac:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 316
    iget v0, p0, Landroid/telephony/CyberSenseCellInfo;->mArfcn:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    iget v0, p0, Landroid/telephony/CyberSenseCellInfo;->mBandWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    iget v0, p0, Landroid/telephony/CyberSenseCellInfo;->mRsrp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    iget v0, p0, Landroid/telephony/CyberSenseCellInfo;->mRsrq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    iget v0, p0, Landroid/telephony/CyberSenseCellInfo;->mRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    iget v0, p0, Landroid/telephony/CyberSenseCellInfo;->mSsbIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    iget v0, p0, Landroid/telephony/CyberSenseCellInfo;->mCa:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    iget v0, p0, Landroid/telephony/CyberSenseCellInfo;->mNsa:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    iget v0, p0, Landroid/telephony/CyberSenseCellInfo;->mDoppler:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    iget-object v0, p0, Landroid/telephony/CyberSenseCellInfo;->mBeamInfo:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 326
    return-void
.end method
