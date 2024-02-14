.class public final Landroid/os/RichTapVibrationEffect$Envelope;
.super Landroid/os/VibrationEffect;
.source "RichTapVibrationEffect.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/RichTapVibrationEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Envelope"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/RichTapVibrationEffect$Envelope;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist amplitude:I

.field private blacklist freqArr:[I

.field private blacklist relativeTimeArr:[I

.field private blacklist scaleArr:[I

.field private blacklist steepMode:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 389
    new-instance v0, Landroid/os/RichTapVibrationEffect$Envelope$1;

    invoke-direct {v0}, Landroid/os/RichTapVibrationEffect$Envelope$1;-><init>()V

    sput-object v0, Landroid/os/RichTapVibrationEffect$Envelope;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v4, v0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/os/RichTapVibrationEffect$Envelope;-><init>([I[I[IZI)V

    .line 277
    return-void
.end method

.method public constructor blacklist <init>([I[I[IZI)V
    .locals 2
    .param p1, "relativeTimeArr"    # [I
    .param p2, "scaleArr"    # [I
    .param p3, "freqArr"    # [I
    .param p4, "steepMode"    # Z
    .param p5, "amplitude"    # I

    .line 279
    invoke-direct {p0}, Landroid/os/VibrationEffect;-><init>()V

    .line 280
    const/4 v0, 0x4

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/os/RichTapVibrationEffect$Envelope;->relativeTimeArr:[I

    .line 281
    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/os/RichTapVibrationEffect$Envelope;->scaleArr:[I

    .line 282
    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/RichTapVibrationEffect$Envelope;->freqArr:[I

    .line 283
    iput-boolean p4, p0, Landroid/os/RichTapVibrationEffect$Envelope;->steepMode:Z

    .line 284
    iput p5, p0, Landroid/os/RichTapVibrationEffect$Envelope;->amplitude:I

    .line 285
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 309
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 353
    instance-of v0, p1, Landroid/os/RichTapVibrationEffect$Envelope;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 354
    return v1

    .line 356
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/os/RichTapVibrationEffect$Envelope;

    .line 357
    .local v0, "other":Landroid/os/RichTapVibrationEffect$Envelope;
    invoke-virtual {v0}, Landroid/os/RichTapVibrationEffect$Envelope;->getRelativeTimeArr()[I

    move-result-object v2

    .line 358
    .local v2, "timeArr":[I
    invoke-virtual {v0}, Landroid/os/RichTapVibrationEffect$Envelope;->getScaleArr()[I

    move-result-object v3

    .line 359
    .local v3, "scArr":[I
    invoke-virtual {v0}, Landroid/os/RichTapVibrationEffect$Envelope;->getFreqArr()[I

    move-result-object v4

    .line 360
    .local v4, "frArr":[I
    iget v5, p0, Landroid/os/RichTapVibrationEffect$Envelope;->amplitude:I

    invoke-virtual {v0}, Landroid/os/RichTapVibrationEffect$Envelope;->getAmplitude()I

    move-result v6

    if-eq v5, v6, :cond_1

    return v1

    .line 361
    :cond_1
    iget-object v5, p0, Landroid/os/RichTapVibrationEffect$Envelope;->relativeTimeArr:[I

    invoke-static {v2, v5}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v5

    if-nez v5, :cond_2

    return v1

    .line 362
    :cond_2
    iget-object v5, p0, Landroid/os/RichTapVibrationEffect$Envelope;->scaleArr:[I

    invoke-static {v3, v5}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v5

    if-nez v5, :cond_3

    return v1

    .line 363
    :cond_3
    iget-object v5, p0, Landroid/os/RichTapVibrationEffect$Envelope;->freqArr:[I

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v5

    if-nez v5, :cond_4

    return v1

    .line 364
    :cond_4
    invoke-virtual {v0}, Landroid/os/RichTapVibrationEffect$Envelope;->isSteepMode()Z

    move-result v5

    iget-boolean v6, p0, Landroid/os/RichTapVibrationEffect$Envelope;->steepMode:Z

    if-eq v5, v6, :cond_5

    return v1

    .line 365
    :cond_5
    const/4 v1, 0x1

    return v1
.end method

.method public blacklist getAmplitude()I
    .locals 1

    .line 304
    iget v0, p0, Landroid/os/RichTapVibrationEffect$Envelope;->amplitude:I

    return v0
.end method

.method public blacklist getDuration()J
    .locals 2

    .line 315
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public blacklist getFreqArr()[I
    .locals 1

    .line 296
    iget-object v0, p0, Landroid/os/RichTapVibrationEffect$Envelope;->freqArr:[I

    return-object v0
.end method

.method public blacklist getRelativeTimeArr()[I
    .locals 1

    .line 288
    iget-object v0, p0, Landroid/os/RichTapVibrationEffect$Envelope;->relativeTimeArr:[I

    return-object v0
.end method

.method public blacklist getScaleArr()[I
    .locals 1

    .line 292
    iget-object v0, p0, Landroid/os/RichTapVibrationEffect$Envelope;->scaleArr:[I

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 370
    iget-object v0, p0, Landroid/os/RichTapVibrationEffect$Envelope;->relativeTimeArr:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    iget-object v2, p0, Landroid/os/RichTapVibrationEffect$Envelope;->scaleArr:[I

    aget v2, v2, v1

    add-int/2addr v0, v2

    iget-object v2, p0, Landroid/os/RichTapVibrationEffect$Envelope;->freqArr:[I

    aget v1, v2, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public blacklist isSteepMode()Z
    .locals 1

    .line 300
    iget-boolean v0, p0, Landroid/os/RichTapVibrationEffect$Envelope;->steepMode:Z

    return v0
.end method

.method public blacklist resolve(I)Landroid/os/RichTapVibrationEffect$Envelope;
    .locals 0
    .param p1, "defaultAmplitude"    # I

    .line 320
    return-object p0
.end method

.method public bridge synthetic blacklist resolve(I)Landroid/os/VibrationEffect;
    .locals 0

    .line 267
    invoke-virtual {p0, p1}, Landroid/os/RichTapVibrationEffect$Envelope;->resolve(I)Landroid/os/RichTapVibrationEffect$Envelope;

    move-result-object p1

    return-object p1
.end method

.method public blacklist scale(F)Landroid/os/RichTapVibrationEffect$Envelope;
    .locals 0
    .param p1, "scaleFactor"    # F

    .line 325
    return-object p0
.end method

.method public bridge synthetic blacklist scale(F)Landroid/os/VibrationEffect;
    .locals 0

    .line 267
    invoke-virtual {p0, p1}, Landroid/os/RichTapVibrationEffect$Envelope;->scale(F)Landroid/os/RichTapVibrationEffect$Envelope;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Envelope: {relativeTimeArr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/RichTapVibrationEffect$Envelope;->relativeTimeArr:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scaleArr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/RichTapVibrationEffect$Envelope;->scaleArr:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", freqArr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/RichTapVibrationEffect$Envelope;->freqArr:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", SteepMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/os/RichTapVibrationEffect$Envelope;->steepMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Amplitude = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/RichTapVibrationEffect$Envelope;->amplitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist validate()V
    .locals 3

    .line 330
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_3

    .line 331
    iget-object v1, p0, Landroid/os/RichTapVibrationEffect$Envelope;->relativeTimeArr:[I

    aget v1, v1, v0

    if-ltz v1, :cond_2

    .line 335
    iget-object v1, p0, Landroid/os/RichTapVibrationEffect$Envelope;->scaleArr:[I

    aget v1, v1, v0

    if-ltz v1, :cond_1

    .line 339
    iget-object v1, p0, Landroid/os/RichTapVibrationEffect$Envelope;->freqArr:[I

    aget v1, v1, v0

    if-ltz v1, :cond_0

    .line 330
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 340
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "freq must be positive"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 336
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "scale can not be negative"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 332
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "relative time can not be negative"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 344
    .end local v0    # "i":I
    :cond_3
    iget v0, p0, Landroid/os/RichTapVibrationEffect$Envelope;->amplitude:I

    const/4 v1, -0x1

    if-lt v0, v1, :cond_4

    if-eqz v0, :cond_4

    const/16 v1, 0xff

    if-gt v0, v1, :cond_4

    .line 349
    return-void

    .line 345
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "amplitude must either be DEFAULT_AMPLITUDE, or between 1 and 255 inclusive (amplitude="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/os/RichTapVibrationEffect$Envelope;->amplitude:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 381
    const/16 v0, 0x7f0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 382
    iget-object v0, p0, Landroid/os/RichTapVibrationEffect$Envelope;->relativeTimeArr:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 383
    iget-object v0, p0, Landroid/os/RichTapVibrationEffect$Envelope;->scaleArr:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 384
    iget-object v0, p0, Landroid/os/RichTapVibrationEffect$Envelope;->freqArr:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 385
    iget-boolean v0, p0, Landroid/os/RichTapVibrationEffect$Envelope;->steepMode:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 386
    iget v0, p0, Landroid/os/RichTapVibrationEffect$Envelope;->amplitude:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 387
    return-void
.end method
