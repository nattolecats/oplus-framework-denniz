.class public final Landroid/os/BatteryStatsExtImpl$ThermalItem;
.super Ljava/lang/Object;
.source "BatteryStatsExtImpl.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStatsExtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ThermalItem"
.end annotation


# static fields
.field public static final blacklist CMD_AUDIOONOFF:B = 0xbt

.field public static final blacklist CMD_BACKLIGHTINFO:B = 0x3t

.field public static final blacklist CMD_BAT_INFO:B = 0x1t

.field public static final blacklist CMD_CAMEARAONOFF:B = 0xat

.field public static final blacklist CMD_COMMON_UPDATE:B = 0x1at

.field public static final blacklist CMD_CONNECTNETTYPE:B = 0x9t

.field public static final blacklist CMD_ENVITEMP:B = 0x18t

.field public static final blacklist CMD_FLASHLIGHTONOFF:B = 0xet

.field public static final blacklist CMD_FOREPRCINFO:B = 0x11t

.field public static final blacklist CMD_GPSONOFF:B = 0xdt

.field public static final blacklist CMD_JOBINFO:B = 0xft

.field public static final blacklist CMD_NETSTATE:B = 0x8t

.field public static final blacklist CMD_NETSYNCINFO:B = 0x10t

.field public static final blacklist CMD_NULL:B = 0x0t

.field public static final blacklist CMD_PHONE_ONFF:B = 0x5t

.field public static final blacklist CMD_PHONE_SIGNAL:B = 0x7t

.field public static final blacklist CMD_PHONE_STATE:B = 0x6t

.field public static final blacklist CMD_RESET:B = 0x13t

.field public static final blacklist CMD_TEMPINFO:B = 0x2t

.field public static final blacklist CMD_THERMALRATIO:B = 0x14t

.field public static final blacklist CMD_THERMALRATIO1:B = 0x15t

.field public static final blacklist CMD_THERMALRATIO2:B = 0x16t

.field public static final blacklist CMD_THERMALRATIO3:B = 0x17t

.field public static final blacklist CMD_TOPPROCINFO:B = 0x12t

.field public static final blacklist CMD_UPDATE_TIME:B = 0x19t

.field public static final blacklist CMD_VIDEOONOFF:B = 0xct

.field public static final blacklist CMD_WIFIINFO:B = 0x4t

.field public static final blacklist CONNECT_MOBILE:I = 0x0

.field public static final blacklist CONNECT_NONE:I = -0x1

.field public static final blacklist CONNECT_WIFI:I = 0x1

.field public static final blacklist INVALID_DATA:I = -0x3ff

.field public static final blacklist NETWORK_CLASS_2_G:B = 0x2t

.field public static final blacklist NETWORK_CLASS_3_G:B = 0x3t

.field public static final blacklist NETWORK_CLASS_4_G:B = 0x4t

.field public static final blacklist NETWORK_CLASS_UNKNOWN:B = 0x0t

.field public static final blacklist NETWORK_CLASS_WIFI:B = 0x1t

.field public static final blacklist WIFI_OFF:I = 0x0

.field public static final blacklist WIFI_ON:I = 0x1

.field public static final blacklist WIFI_RUN:I = 0x2

.field public static final blacklist WIFI_STOP:I = 0x3


# instance fields
.field public blacklist audioOn:Z

.field public blacklist backlight:I

.field public blacklist baseElapsedRealtime:J

.field public blacklist batPercent:I

.field public blacklist batRm:I

.field public blacklist batTemp:I

.field public blacklist cameraOn:Z

.field public blacklist chargePlug:I

.field public blacklist cmd:B

.field public blacklist connectNetType:B

.field public blacklist cpuLoading:I

.field public blacklist currentTime:J

.field public blacklist dataNetStatus:Z

.field public blacklist elapsedRealtime:J

.field public blacklist enviTemp:I

.field public blacklist flashlightOn:Z

.field public blacklist foreProc:Ljava/lang/String;

.field public blacklist gpsOn:Z

.field public blacklist isAutoBrightness:Z

.field public blacklist jobSchedule:Ljava/lang/String;

.field public blacklist netSync:Ljava/lang/String;

.field public blacklist next:Landroid/os/BatteryStatsExtImpl$ThermalItem;

.field public blacklist numReadInts:I

.field public blacklist phoneOnff:Z

.field public blacklist phoneSignal:B

.field public blacklist phoneState:B

.field public blacklist phoneTemp:I

.field public blacklist phoneTemp1:I

.field public blacklist phoneTemp2:I

.field public blacklist phoneTemp3:I

.field public blacklist thermalRatio:B

.field public blacklist thermalRatio1:B

.field public blacklist thermalRatio2:B

.field public blacklist thermalRatio3:B

.field public blacklist topCpu:I

.field public blacklist topProc:Ljava/lang/String;

.field public blacklist upTime:J

.field public blacklist versionName:Ljava/lang/String;

.field public blacklist videoOn:Z

.field public blacklist volume:I

.field public blacklist wifiSignal:I

.field public blacklist wifiStats:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->cmd:B

    .line 187
    const/16 v0, -0x3ff

    iput v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp:I

    .line 188
    iput v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp1:I

    .line 189
    iput v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp2:I

    .line 190
    iput v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp3:I

    .line 195
    iput v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->enviTemp:I

    .line 213
    const-string v0, "null"

    iput-object v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->jobSchedule:Ljava/lang/String;

    .line 214
    iput-object v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->netSync:Ljava/lang/String;

    .line 215
    iput-object v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    .line 216
    iput-object v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->topProc:Ljava/lang/String;

    return-void
.end method

.method private blacklist setToCommon(Landroid/os/BatteryStatsExtImpl$ThermalItem;)V
    .locals 2
    .param p1, "o"    # Landroid/os/BatteryStatsExtImpl$ThermalItem;

    .line 352
    iget-byte v0, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->cmd:B

    iput-byte v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->cmd:B

    .line 353
    iget-wide v0, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->currentTime:J

    iput-wide v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->currentTime:J

    .line 354
    iget-wide v0, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->elapsedRealtime:J

    iput-wide v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->elapsedRealtime:J

    .line 355
    iget-wide v0, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->upTime:J

    iput-wide v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->upTime:J

    .line 356
    iget-wide v0, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->baseElapsedRealtime:J

    iput-wide v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->baseElapsedRealtime:J

    .line 357
    iget v0, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batRm:I

    iput v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batRm:I

    .line 358
    iget v0, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batTemp:I

    iput v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batTemp:I

    .line 359
    iget v0, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp:I

    iput v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp:I

    .line 360
    iget v0, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp1:I

    iput v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp1:I

    .line 361
    iget v0, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp2:I

    iput v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp2:I

    .line 362
    iget v0, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp3:I

    iput v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp3:I

    .line 363
    iget-byte v0, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->thermalRatio:B

    iput-byte v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->thermalRatio:B

    .line 364
    iget-byte v0, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->thermalRatio1:B

    iput-byte v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->thermalRatio1:B

    .line 365
    iget-byte v0, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->thermalRatio2:B

    iput-byte v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->thermalRatio2:B

    .line 366
    iget-byte v0, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->thermalRatio3:B

    iput-byte v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->thermalRatio3:B

    .line 367
    iget v0, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->enviTemp:I

    iput v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->enviTemp:I

    .line 368
    iget v0, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batPercent:I

    iput v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batPercent:I

    .line 369
    iget v0, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->chargePlug:I

    iput v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->chargePlug:I

    .line 370
    iget v0, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->backlight:I

    iput v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->backlight:I

    .line 371
    iget v0, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->volume:I

    iput v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->volume:I

    .line 372
    iget v0, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->wifiStats:I

    iput v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->wifiStats:I

    .line 373
    iget v0, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->wifiSignal:I

    iput v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->wifiSignal:I

    .line 374
    iget-boolean v0, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneOnff:Z

    iput-boolean v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneOnff:Z

    .line 375
    iget-byte v0, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneState:B

    iput-byte v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneState:B

    .line 376
    iget-byte v0, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneSignal:B

    iput-byte v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneSignal:B

    .line 377
    iget-boolean v0, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->dataNetStatus:Z

    iput-boolean v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->dataNetStatus:Z

    .line 378
    iget-byte v0, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->connectNetType:B

    iput-byte v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->connectNetType:B

    .line 379
    iget-boolean v0, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->cameraOn:Z

    iput-boolean v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->cameraOn:Z

    .line 380
    iget-boolean v0, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->audioOn:Z

    iput-boolean v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->audioOn:Z

    .line 381
    iget-boolean v0, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->videoOn:Z

    iput-boolean v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->videoOn:Z

    .line 382
    iget-boolean v0, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->gpsOn:Z

    iput-boolean v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->gpsOn:Z

    .line 383
    iget-boolean v0, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->flashlightOn:Z

    iput-boolean v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->flashlightOn:Z

    .line 384
    iget-object v0, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->jobSchedule:Ljava/lang/String;

    iput-object v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->jobSchedule:Ljava/lang/String;

    .line 385
    iget-object v0, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->netSync:Ljava/lang/String;

    iput-object v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->netSync:Ljava/lang/String;

    .line 386
    iget-object v0, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    iput-object v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    .line 387
    iget-object v0, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->versionName:Ljava/lang/String;

    iput-object v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->versionName:Ljava/lang/String;

    .line 388
    iget-object v0, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->topProc:Ljava/lang/String;

    iput-object v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->topProc:Ljava/lang/String;

    .line 389
    iget v0, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->cpuLoading:I

    iput v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->cpuLoading:I

    .line 390
    iget v0, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->topCpu:I

    iput v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->topCpu:I

    .line 391
    iget-boolean v0, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->isAutoBrightness:Z

    iput-boolean v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->isAutoBrightness:Z

    .line 392
    return-void
.end method


# virtual methods
.method public blacklist clear()V
    .locals 4

    .line 307
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->cmd:B

    .line 308
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->currentTime:J

    .line 309
    iput-wide v1, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->elapsedRealtime:J

    .line 310
    iput-wide v1, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->upTime:J

    .line 311
    const/4 v1, -0x1

    iput v1, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batRm:I

    .line 312
    iput v1, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batTemp:I

    .line 313
    const/16 v2, -0x3ff

    iput v2, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp:I

    .line 314
    iput v2, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp1:I

    .line 315
    iput v2, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp2:I

    .line 316
    iput v2, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp3:I

    .line 317
    const/16 v3, -0x7f

    iput-byte v3, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->thermalRatio:B

    .line 318
    iput-byte v3, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->thermalRatio1:B

    .line 319
    iput-byte v3, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->thermalRatio2:B

    .line 320
    iput-byte v3, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->thermalRatio3:B

    .line 321
    iput v2, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->enviTemp:I

    .line 322
    iput v1, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batPercent:I

    .line 323
    iput v1, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->chargePlug:I

    .line 324
    iput v1, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->backlight:I

    .line 325
    iput v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->volume:I

    .line 326
    iput v1, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->wifiStats:I

    .line 327
    iput v1, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->wifiSignal:I

    .line 328
    iput-byte v1, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneState:B

    .line 329
    iput-boolean v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneOnff:Z

    .line 330
    iput-byte v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneSignal:B

    .line 331
    iput-boolean v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->dataNetStatus:Z

    .line 332
    iput-byte v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->connectNetType:B

    .line 333
    iput-boolean v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->cameraOn:Z

    .line 334
    iput-boolean v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->audioOn:Z

    .line 335
    iput-boolean v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->videoOn:Z

    .line 336
    iput-boolean v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->gpsOn:Z

    .line 337
    iput-boolean v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->flashlightOn:Z

    .line 338
    const-string v1, "null"

    iput-object v1, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->jobSchedule:Ljava/lang/String;

    .line 339
    iput-object v1, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->netSync:Ljava/lang/String;

    .line 340
    iput-object v1, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    .line 341
    iput-object v1, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->topProc:Ljava/lang/String;

    .line 342
    iput v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->cpuLoading:I

    .line 343
    iput v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->topCpu:I

    .line 344
    iput-boolean v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->isAutoBrightness:Z

    .line 345
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 437
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "src"    # Landroid/os/Parcel;

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 266
    .local v0, "start":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    iput-byte v1, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->cmd:B

    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->currentTime:J

    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->elapsedRealtime:J

    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->upTime:J

    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batRm:I

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batTemp:I

    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp:I

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp1:I

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp2:I

    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp3:I

    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    iput-byte v1, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->thermalRatio:B

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    iput-byte v1, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->thermalRatio1:B

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    iput-byte v1, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->thermalRatio2:B

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    iput-byte v1, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->thermalRatio3:B

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->enviTemp:I

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batPercent:I

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->chargePlug:I

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->backlight:I

    .line 284
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->volume:I

    .line 285
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->wifiStats:I

    .line 286
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->wifiSignal:I

    .line 287
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneOnff:Z

    .line 288
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    iput-byte v1, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneState:B

    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    iput-byte v1, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneSignal:B

    .line 290
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->dataNetStatus:Z

    .line 291
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    iput-byte v1, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->connectNetType:B

    .line 292
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->cameraOn:Z

    .line 293
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->audioOn:Z

    .line 294
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->videoOn:Z

    .line 295
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->gpsOn:Z

    .line 296
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->flashlightOn:Z

    .line 297
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->jobSchedule:Ljava/lang/String;

    .line 298
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->netSync:Ljava/lang/String;

    .line 299
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->topProc:Ljava/lang/String;

    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->cpuLoading:I

    .line 302
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->topCpu:I

    .line 303
    iget v1, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->numReadInts:I

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    iput v1, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->numReadInts:I

    .line 304
    return-void
.end method

.method public blacklist same(Landroid/os/BatteryStatsExtImpl$ThermalItem;)Z
    .locals 4
    .param p1, "o"    # Landroid/os/BatteryStatsExtImpl$ThermalItem;

    .line 395
    iget-wide v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->currentTime:J

    iget-wide v2, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->currentTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->elapsedRealtime:J

    iget-wide v2, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->elapsedRealtime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->upTime:J

    iget-wide v2, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->upTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->baseElapsedRealtime:J

    iget-wide v2, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->baseElapsedRealtime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batRm:I

    iget v1, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batRm:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batTemp:I

    iget v1, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batTemp:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp:I

    iget v1, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp1:I

    iget v1, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp1:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp2:I

    iget v1, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp2:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp3:I

    iget v1, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp3:I

    if-ne v0, v1, :cond_0

    iget-byte v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->thermalRatio:B

    iget-byte v1, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->thermalRatio:B

    if-ne v0, v1, :cond_0

    iget-byte v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->thermalRatio1:B

    iget-byte v1, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->thermalRatio1:B

    if-ne v0, v1, :cond_0

    iget-byte v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->thermalRatio2:B

    iget-byte v1, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->thermalRatio2:B

    if-ne v0, v1, :cond_0

    iget-byte v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->thermalRatio3:B

    iget-byte v1, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->thermalRatio3:B

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->enviTemp:I

    iget v1, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->enviTemp:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batPercent:I

    iget v1, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batPercent:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->chargePlug:I

    iget v1, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->chargePlug:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->backlight:I

    iget v1, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->backlight:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->volume:I

    iget v1, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->volume:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->wifiStats:I

    iget v1, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->wifiStats:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->wifiSignal:I

    iget v1, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->wifiSignal:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneOnff:Z

    iget-boolean v1, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneOnff:Z

    if-ne v0, v1, :cond_0

    iget-byte v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneState:B

    iget-byte v1, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneState:B

    if-ne v0, v1, :cond_0

    iget-byte v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneSignal:B

    iget-byte v1, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneSignal:B

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->dataNetStatus:Z

    iget-boolean v1, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->dataNetStatus:Z

    if-ne v0, v1, :cond_0

    iget-byte v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->connectNetType:B

    iget-byte v1, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->connectNetType:B

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->audioOn:Z

    iget-boolean v1, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->audioOn:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->videoOn:Z

    iget-boolean v1, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->videoOn:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->gpsOn:Z

    iget-boolean v1, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->gpsOn:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->flashlightOn:Z

    iget-boolean v1, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->flashlightOn:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->jobSchedule:Ljava/lang/String;

    iget-object v1, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->jobSchedule:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->netSync:Ljava/lang/String;

    iget-object v1, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->netSync:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    iget-object v1, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->versionName:Ljava/lang/String;

    iget-object v1, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->versionName:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->topProc:Ljava/lang/String;

    iget-object v1, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->topProc:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->cpuLoading:I

    iget v1, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->cpuLoading:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->topCpu:I

    iget v1, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->topCpu:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->isAutoBrightness:Z

    iget-boolean v1, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->isAutoBrightness:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist setTo(Landroid/os/BatteryStatsExtImpl$ThermalItem;)V
    .locals 0
    .param p1, "o"    # Landroid/os/BatteryStatsExtImpl$ThermalItem;

    .line 348
    invoke-direct {p0, p1}, Landroid/os/BatteryStatsExtImpl$ThermalItem;->setToCommon(Landroid/os/BatteryStatsExtImpl$ThermalItem;)V

    .line 349
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 224
    iget-byte v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->cmd:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 225
    iget-wide v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->currentTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 226
    iget-wide v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->elapsedRealtime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 227
    iget-wide v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->upTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 228
    iget-wide v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->baseElapsedRealtime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 229
    iget v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batRm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    iget v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batTemp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    iget v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    iget v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    iget v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    iget v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp3:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    iget-byte v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->thermalRatio:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 236
    iget-byte v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->thermalRatio1:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 237
    iget-byte v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->thermalRatio2:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 238
    iget-byte v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->thermalRatio3:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 239
    iget v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->enviTemp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    iget v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batPercent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    iget v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->chargePlug:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    iget v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->backlight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    iget v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->volume:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    iget v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->wifiStats:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    iget v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->wifiSignal:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    iget-boolean v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneOnff:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 247
    iget-byte v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneState:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 248
    iget-byte v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneSignal:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 249
    iget-boolean v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->dataNetStatus:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 250
    iget-byte v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->connectNetType:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 251
    iget-boolean v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->cameraOn:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 252
    iget-boolean v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->audioOn:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 253
    iget-boolean v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->videoOn:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 254
    iget-boolean v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->gpsOn:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 255
    iget-boolean v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->flashlightOn:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 256
    iget-object v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->jobSchedule:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->netSync:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->topProc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 260
    iget v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->cpuLoading:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    iget v0, p0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->topCpu:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    return-void
.end method
