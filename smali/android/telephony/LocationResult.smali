.class public Landroid/telephony/LocationResult;
.super Ljava/lang/Object;
.source "LocationResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/LocationResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist UNAVAILABLE:I = -0x1

.field public static final blacklist UNAVAILABLE_LONG:J = -0x1L

.field public static final blacklist UNAVAILABLE_STRING:Ljava/lang/String; = ""


# instance fields
.field public blacklist city:Ljava/lang/String;

.field public blacklist confidence:I

.field public blacklist direction:I

.field public blacklist dwellTime:I

.field public blacklist endStationId:I

.field public blacklist endStationName:Ljava/lang/String;

.field public blacklist error:I

.field public blacklist hasDirection:Z

.field public blacklist isInSubway:Z

.field public blacklist line:Ljava/lang/String;

.field public blacklist nxtSectionId:I

.field public blacklist orderId:I

.field public blacklist preStationName:Ljava/lang/String;

.field public blacklist sectionDir:Ljava/lang/String;

.field public blacklist sectionId:I

.field public blacklist startSectionId:I

.field public blacklist startStationId:I

.field public blacklist station:Ljava/lang/String;

.field public blacklist stationId:I

.field public blacklist timestamp:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Landroid/telephony/LocationResult$1;

    invoke-direct {v0}, Landroid/telephony/LocationResult$1;-><init>()V

    sput-object v0, Landroid/telephony/LocationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 3

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/telephony/LocationResult;->timestamp:J

    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/LocationResult;->isInSubway:Z

    .line 192
    const-string v1, ""

    iput-object v1, p0, Landroid/telephony/LocationResult;->city:Ljava/lang/String;

    .line 193
    iput-object v1, p0, Landroid/telephony/LocationResult;->line:Ljava/lang/String;

    .line 194
    iput-object v1, p0, Landroid/telephony/LocationResult;->station:Ljava/lang/String;

    .line 195
    const/4 v2, -0x1

    iput v2, p0, Landroid/telephony/LocationResult;->stationId:I

    .line 196
    iput v2, p0, Landroid/telephony/LocationResult;->direction:I

    .line 197
    iput v2, p0, Landroid/telephony/LocationResult;->dwellTime:I

    .line 198
    iput v2, p0, Landroid/telephony/LocationResult;->confidence:I

    .line 199
    iput v2, p0, Landroid/telephony/LocationResult;->error:I

    .line 200
    iput v2, p0, Landroid/telephony/LocationResult;->sectionId:I

    .line 201
    iput v2, p0, Landroid/telephony/LocationResult;->orderId:I

    .line 202
    iput-boolean v0, p0, Landroid/telephony/LocationResult;->hasDirection:Z

    .line 203
    iput v2, p0, Landroid/telephony/LocationResult;->startStationId:I

    .line 204
    iput v2, p0, Landroid/telephony/LocationResult;->endStationId:I

    .line 205
    iput v2, p0, Landroid/telephony/LocationResult;->startSectionId:I

    .line 206
    iput v2, p0, Landroid/telephony/LocationResult;->nxtSectionId:I

    .line 207
    iput-object v1, p0, Landroid/telephony/LocationResult;->preStationName:Ljava/lang/String;

    .line 208
    iput-object v1, p0, Landroid/telephony/LocationResult;->endStationName:Ljava/lang/String;

    .line 209
    iput-object v1, p0, Landroid/telephony/LocationResult;->sectionDir:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/LocationResult;->timestamp:J

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/LocationResult;->isInSubway:Z

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/LocationResult;->city:Ljava/lang/String;

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/LocationResult;->line:Ljava/lang/String;

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/LocationResult;->station:Ljava/lang/String;

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/LocationResult;->stationId:I

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/LocationResult;->direction:I

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/LocationResult;->dwellTime:I

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/LocationResult;->confidence:I

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/LocationResult;->error:I

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/LocationResult;->sectionId:I

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/LocationResult;->orderId:I

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/LocationResult;->hasDirection:Z

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/LocationResult;->startStationId:I

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/LocationResult;->endStationId:I

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/LocationResult;->startSectionId:I

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/LocationResult;->nxtSectionId:I

    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/LocationResult;->preStationName:Ljava/lang/String;

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/LocationResult;->endStationName:Ljava/lang/String;

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/LocationResult;->sectionDir:Ljava/lang/String;

    .line 240
    return-void
.end method


# virtual methods
.method public blacklist copy()Landroid/telephony/LocationResult;
    .locals 3

    .line 290
    new-instance v0, Landroid/telephony/LocationResult;

    invoke-direct {v0}, Landroid/telephony/LocationResult;-><init>()V

    .line 291
    .local v0, "copy":Landroid/telephony/LocationResult;
    iget-wide v1, p0, Landroid/telephony/LocationResult;->timestamp:J

    iput-wide v1, v0, Landroid/telephony/LocationResult;->timestamp:J

    .line 292
    iget-boolean v1, p0, Landroid/telephony/LocationResult;->isInSubway:Z

    iput-boolean v1, v0, Landroid/telephony/LocationResult;->isInSubway:Z

    .line 293
    iget-object v1, p0, Landroid/telephony/LocationResult;->city:Ljava/lang/String;

    iput-object v1, v0, Landroid/telephony/LocationResult;->city:Ljava/lang/String;

    .line 294
    iget-object v1, p0, Landroid/telephony/LocationResult;->line:Ljava/lang/String;

    iput-object v1, v0, Landroid/telephony/LocationResult;->line:Ljava/lang/String;

    .line 295
    iget-object v1, p0, Landroid/telephony/LocationResult;->station:Ljava/lang/String;

    iput-object v1, v0, Landroid/telephony/LocationResult;->station:Ljava/lang/String;

    .line 296
    iget v1, p0, Landroid/telephony/LocationResult;->stationId:I

    iput v1, v0, Landroid/telephony/LocationResult;->stationId:I

    .line 297
    iget v1, p0, Landroid/telephony/LocationResult;->direction:I

    iput v1, v0, Landroid/telephony/LocationResult;->direction:I

    .line 298
    iget v1, p0, Landroid/telephony/LocationResult;->dwellTime:I

    iput v1, v0, Landroid/telephony/LocationResult;->dwellTime:I

    .line 299
    iget v1, p0, Landroid/telephony/LocationResult;->confidence:I

    iput v1, v0, Landroid/telephony/LocationResult;->confidence:I

    .line 300
    iget v1, p0, Landroid/telephony/LocationResult;->error:I

    iput v1, v0, Landroid/telephony/LocationResult;->error:I

    .line 301
    iget v1, p0, Landroid/telephony/LocationResult;->sectionId:I

    iput v1, v0, Landroid/telephony/LocationResult;->sectionId:I

    .line 302
    iget v1, p0, Landroid/telephony/LocationResult;->orderId:I

    iput v1, v0, Landroid/telephony/LocationResult;->orderId:I

    .line 303
    iget-boolean v1, p0, Landroid/telephony/LocationResult;->hasDirection:Z

    iput-boolean v1, v0, Landroid/telephony/LocationResult;->hasDirection:Z

    .line 304
    iget v1, p0, Landroid/telephony/LocationResult;->startStationId:I

    iput v1, v0, Landroid/telephony/LocationResult;->startStationId:I

    .line 305
    iget v1, p0, Landroid/telephony/LocationResult;->endStationId:I

    iput v1, v0, Landroid/telephony/LocationResult;->endStationId:I

    .line 306
    iget v1, p0, Landroid/telephony/LocationResult;->startSectionId:I

    iput v1, v0, Landroid/telephony/LocationResult;->startSectionId:I

    .line 307
    iget v1, p0, Landroid/telephony/LocationResult;->nxtSectionId:I

    iput v1, v0, Landroid/telephony/LocationResult;->nxtSectionId:I

    .line 308
    iget-object v1, p0, Landroid/telephony/LocationResult;->preStationName:Ljava/lang/String;

    iput-object v1, v0, Landroid/telephony/LocationResult;->preStationName:Ljava/lang/String;

    .line 309
    iget-object v1, p0, Landroid/telephony/LocationResult;->endStationName:Ljava/lang/String;

    iput-object v1, v0, Landroid/telephony/LocationResult;->endStationName:Ljava/lang/String;

    .line 310
    iget-object v1, p0, Landroid/telephony/LocationResult;->sectionDir:Ljava/lang/String;

    iput-object v1, v0, Landroid/telephony/LocationResult;->sectionDir:Ljava/lang/String;

    .line 311
    return-object v0
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 249
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCity()Ljava/lang/String;
    .locals 1

    .line 387
    iget-object v0, p0, Landroid/telephony/LocationResult;->city:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getConfidence()I
    .locals 1

    .line 459
    iget v0, p0, Landroid/telephony/LocationResult;->confidence:I

    return v0
.end method

.method public blacklist getDirection()I
    .locals 1

    .line 423
    iget v0, p0, Landroid/telephony/LocationResult;->direction:I

    return v0
.end method

.method public blacklist getDwellTime()I
    .locals 1

    .line 441
    iget v0, p0, Landroid/telephony/LocationResult;->dwellTime:I

    return v0
.end method

.method public blacklist getEndStationId()I
    .locals 1

    .line 603
    iget v0, p0, Landroid/telephony/LocationResult;->endStationId:I

    return v0
.end method

.method public blacklist getEndStationName()Ljava/lang/String;
    .locals 1

    .line 675
    iget-object v0, p0, Landroid/telephony/LocationResult;->endStationName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getError()I
    .locals 1

    .line 477
    iget v0, p0, Landroid/telephony/LocationResult;->error:I

    return v0
.end method

.method public blacklist getLine()Ljava/lang/String;
    .locals 1

    .line 513
    iget-object v0, p0, Landroid/telephony/LocationResult;->line:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getNxtSectionId()I
    .locals 1

    .line 639
    iget v0, p0, Landroid/telephony/LocationResult;->nxtSectionId:I

    return v0
.end method

.method public blacklist getOrderId()I
    .locals 1

    .line 549
    iget v0, p0, Landroid/telephony/LocationResult;->orderId:I

    return v0
.end method

.method public blacklist getPreStationName()Ljava/lang/String;
    .locals 1

    .line 657
    iget-object v0, p0, Landroid/telephony/LocationResult;->preStationName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSectionDir()Ljava/lang/String;
    .locals 1

    .line 693
    iget-object v0, p0, Landroid/telephony/LocationResult;->sectionDir:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSectionId()I
    .locals 1

    .line 531
    iget v0, p0, Landroid/telephony/LocationResult;->sectionId:I

    return v0
.end method

.method public blacklist getStartSectionId()I
    .locals 1

    .line 621
    iget v0, p0, Landroid/telephony/LocationResult;->startSectionId:I

    return v0
.end method

.method public blacklist getStartStationId()I
    .locals 1

    .line 585
    iget v0, p0, Landroid/telephony/LocationResult;->startStationId:I

    return v0
.end method

.method public blacklist getStation()Ljava/lang/String;
    .locals 1

    .line 405
    iget-object v0, p0, Landroid/telephony/LocationResult;->station:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getStationId()I
    .locals 1

    .line 495
    iget v0, p0, Landroid/telephony/LocationResult;->stationId:I

    return v0
.end method

.method public blacklist getTimestamp()J
    .locals 2

    .line 351
    iget-wide v0, p0, Landroid/telephony/LocationResult;->timestamp:J

    return-wide v0
.end method

.method public blacklist isHasDirection()Z
    .locals 1

    .line 567
    iget-boolean v0, p0, Landroid/telephony/LocationResult;->hasDirection:Z

    return v0
.end method

.method public blacklist isInSubway()Z
    .locals 1

    .line 369
    iget-boolean v0, p0, Landroid/telephony/LocationResult;->isInSubway:Z

    return v0
.end method

.method public blacklist setCity(Ljava/lang/String;)V
    .locals 0
    .param p1, "city"    # Ljava/lang/String;

    .line 396
    iput-object p1, p0, Landroid/telephony/LocationResult;->city:Ljava/lang/String;

    .line 397
    return-void
.end method

.method public blacklist setConfidence(I)V
    .locals 0
    .param p1, "confidence"    # I

    .line 468
    iput p1, p0, Landroid/telephony/LocationResult;->confidence:I

    .line 469
    return-void
.end method

.method public blacklist setDirection(I)V
    .locals 0
    .param p1, "direction"    # I

    .line 432
    iput p1, p0, Landroid/telephony/LocationResult;->direction:I

    .line 433
    return-void
.end method

.method public blacklist setDwellTime(I)V
    .locals 0
    .param p1, "dwellTime"    # I

    .line 450
    iput p1, p0, Landroid/telephony/LocationResult;->dwellTime:I

    .line 451
    return-void
.end method

.method public blacklist setEndStationId(I)V
    .locals 0
    .param p1, "endStationId"    # I

    .line 612
    iput p1, p0, Landroid/telephony/LocationResult;->endStationId:I

    .line 613
    return-void
.end method

.method public blacklist setEndStationName(Ljava/lang/String;)V
    .locals 0
    .param p1, "endStationName"    # Ljava/lang/String;

    .line 684
    iput-object p1, p0, Landroid/telephony/LocationResult;->endStationName:Ljava/lang/String;

    .line 685
    return-void
.end method

.method public blacklist setError(I)V
    .locals 0
    .param p1, "error"    # I

    .line 486
    iput p1, p0, Landroid/telephony/LocationResult;->error:I

    .line 487
    return-void
.end method

.method public blacklist setHasDirection(Z)V
    .locals 0
    .param p1, "hasDirection"    # Z

    .line 576
    iput-boolean p1, p0, Landroid/telephony/LocationResult;->hasDirection:Z

    .line 577
    return-void
.end method

.method public blacklist setInSubway(Z)V
    .locals 0
    .param p1, "inSubway"    # Z

    .line 378
    iput-boolean p1, p0, Landroid/telephony/LocationResult;->isInSubway:Z

    .line 379
    return-void
.end method

.method public blacklist setLine(Ljava/lang/String;)V
    .locals 0
    .param p1, "line"    # Ljava/lang/String;

    .line 522
    iput-object p1, p0, Landroid/telephony/LocationResult;->line:Ljava/lang/String;

    .line 523
    return-void
.end method

.method public blacklist setNxtSectionId(I)V
    .locals 0
    .param p1, "nxtSectionId"    # I

    .line 648
    iput p1, p0, Landroid/telephony/LocationResult;->nxtSectionId:I

    .line 649
    return-void
.end method

.method public blacklist setOrderId(I)V
    .locals 0
    .param p1, "orderId"    # I

    .line 558
    iput p1, p0, Landroid/telephony/LocationResult;->orderId:I

    .line 559
    return-void
.end method

.method public blacklist setPreStationName(Ljava/lang/String;)V
    .locals 0
    .param p1, "preStationName"    # Ljava/lang/String;

    .line 666
    iput-object p1, p0, Landroid/telephony/LocationResult;->preStationName:Ljava/lang/String;

    .line 667
    return-void
.end method

.method public blacklist setSectionDir(Ljava/lang/String;)V
    .locals 0
    .param p1, "sectionDir"    # Ljava/lang/String;

    .line 702
    iput-object p1, p0, Landroid/telephony/LocationResult;->sectionDir:Ljava/lang/String;

    .line 703
    return-void
.end method

.method public blacklist setSectionId(I)V
    .locals 0
    .param p1, "sectionId"    # I

    .line 540
    iput p1, p0, Landroid/telephony/LocationResult;->sectionId:I

    .line 541
    return-void
.end method

.method public blacklist setStartSectionId(I)V
    .locals 0
    .param p1, "startSectionId"    # I

    .line 630
    iput p1, p0, Landroid/telephony/LocationResult;->startSectionId:I

    .line 631
    return-void
.end method

.method public blacklist setStartStationId(I)V
    .locals 0
    .param p1, "startStationId"    # I

    .line 594
    iput p1, p0, Landroid/telephony/LocationResult;->startStationId:I

    .line 595
    return-void
.end method

.method public blacklist setStation(Ljava/lang/String;)V
    .locals 0
    .param p1, "station"    # Ljava/lang/String;

    .line 414
    iput-object p1, p0, Landroid/telephony/LocationResult;->station:Ljava/lang/String;

    .line 415
    return-void
.end method

.method public blacklist setStationId(I)V
    .locals 0
    .param p1, "stationId"    # I

    .line 504
    iput p1, p0, Landroid/telephony/LocationResult;->stationId:I

    .line 505
    return-void
.end method

.method public blacklist setTimestamp(J)V
    .locals 0
    .param p1, "timestamp"    # J

    .line 360
    iput-wide p1, p0, Landroid/telephony/LocationResult;->timestamp:J

    .line 361
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocationResult{timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/telephony/LocationResult;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isInSubway="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/LocationResult;->isInSubway:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", city=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/LocationResult;->city:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", line=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/telephony/LocationResult;->line:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", station=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/telephony/LocationResult;->station:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", stationId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/telephony/LocationResult;->stationId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", direction="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/telephony/LocationResult;->direction:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", dwellTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/telephony/LocationResult;->dwellTime:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", confidence="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/telephony/LocationResult;->confidence:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", error="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/telephony/LocationResult;->error:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", sectionId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/telephony/LocationResult;->sectionId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", orderId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/telephony/LocationResult;->orderId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", hasDirection="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Landroid/telephony/LocationResult;->hasDirection:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", startStationId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/telephony/LocationResult;->startStationId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", endStationId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/telephony/LocationResult;->endStationId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", startSectionId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/telephony/LocationResult;->startSectionId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", nxtSectionId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/telephony/LocationResult;->nxtSectionId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", preStationName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/telephony/LocationResult;->preStationName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", endStationName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/telephony/LocationResult;->endStationName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", sectionDir=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/telephony/LocationResult;->sectionDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 261
    iget-wide v0, p0, Landroid/telephony/LocationResult;->timestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 262
    iget-boolean v0, p0, Landroid/telephony/LocationResult;->isInSubway:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 263
    iget-object v0, p0, Landroid/telephony/LocationResult;->city:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Landroid/telephony/LocationResult;->line:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Landroid/telephony/LocationResult;->station:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 266
    iget v0, p0, Landroid/telephony/LocationResult;->stationId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    iget v0, p0, Landroid/telephony/LocationResult;->direction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    iget v0, p0, Landroid/telephony/LocationResult;->dwellTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    iget v0, p0, Landroid/telephony/LocationResult;->confidence:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    iget v0, p0, Landroid/telephony/LocationResult;->error:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    iget v0, p0, Landroid/telephony/LocationResult;->sectionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    iget v0, p0, Landroid/telephony/LocationResult;->orderId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    iget-boolean v0, p0, Landroid/telephony/LocationResult;->hasDirection:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 274
    iget v0, p0, Landroid/telephony/LocationResult;->startStationId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    iget v0, p0, Landroid/telephony/LocationResult;->endStationId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    iget v0, p0, Landroid/telephony/LocationResult;->startSectionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    iget v0, p0, Landroid/telephony/LocationResult;->nxtSectionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    iget-object v0, p0, Landroid/telephony/LocationResult;->preStationName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Landroid/telephony/LocationResult;->endStationName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Landroid/telephony/LocationResult;->sectionDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 281
    return-void
.end method
