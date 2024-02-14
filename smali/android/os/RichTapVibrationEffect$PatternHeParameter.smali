.class public final Landroid/os/RichTapVibrationEffect$PatternHeParameter;
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
    name = "PatternHeParameter"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/RichTapVibrationEffect$PatternHeParameter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist TAG:Ljava/lang/String;

.field private blacklist mAmplitude:I

.field private blacklist mFreq:I

.field private blacklist mInterval:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 506
    new-instance v0, Landroid/os/RichTapVibrationEffect$PatternHeParameter$1;

    invoke-direct {v0}, Landroid/os/RichTapVibrationEffect$PatternHeParameter$1;-><init>()V

    sput-object v0, Landroid/os/RichTapVibrationEffect$PatternHeParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(III)V
    .locals 3
    .param p1, "interval"    # I
    .param p2, "amplitude"    # I
    .param p3, "freq"    # I

    .line 417
    invoke-direct {p0}, Landroid/os/VibrationEffect;-><init>()V

    .line 405
    const-string v0, "PatternHeParameter"

    iput-object v0, p0, Landroid/os/RichTapVibrationEffect$PatternHeParameter;->TAG:Ljava/lang/String;

    .line 418
    iput p1, p0, Landroid/os/RichTapVibrationEffect$PatternHeParameter;->mInterval:I

    .line 419
    iput p2, p0, Landroid/os/RichTapVibrationEffect$PatternHeParameter;->mAmplitude:I

    .line 420
    iput p3, p0, Landroid/os/RichTapVibrationEffect$PatternHeParameter;->mFreq:I

    .line 421
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mInterval:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/os/RichTapVibrationEffect$PatternHeParameter;->mInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mAmplitude:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/os/RichTapVibrationEffect$PatternHeParameter;->mAmplitude:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mFreq:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/os/RichTapVibrationEffect$PatternHeParameter;->mFreq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 410
    invoke-direct {p0}, Landroid/os/VibrationEffect;-><init>()V

    .line 405
    const-string v0, "PatternHeParameter"

    iput-object v0, p0, Landroid/os/RichTapVibrationEffect$PatternHeParameter;->TAG:Ljava/lang/String;

    .line 411
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/RichTapVibrationEffect$PatternHeParameter;->mInterval:I

    .line 412
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/RichTapVibrationEffect$PatternHeParameter;->mAmplitude:I

    .line 413
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/RichTapVibrationEffect$PatternHeParameter;->mFreq:I

    .line 414
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parcel mInterval:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/os/RichTapVibrationEffect$PatternHeParameter;->mInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mAmplitude:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/os/RichTapVibrationEffect$PatternHeParameter;->mAmplitude:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mFreq:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/os/RichTapVibrationEffect$PatternHeParameter;->mFreq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 438
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 469
    instance-of v0, p1, Landroid/os/RichTapVibrationEffect$PatternHeParameter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 470
    return v1

    .line 472
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/os/RichTapVibrationEffect$PatternHeParameter;

    .line 473
    .local v0, "other":Landroid/os/RichTapVibrationEffect$PatternHeParameter;
    invoke-virtual {v0}, Landroid/os/RichTapVibrationEffect$PatternHeParameter;->getInterval()I

    move-result v2

    .line 474
    .local v2, "interval":I
    invoke-virtual {v0}, Landroid/os/RichTapVibrationEffect$PatternHeParameter;->getAmplitude()I

    move-result v3

    .line 475
    .local v3, "amplitude":I
    invoke-virtual {v0}, Landroid/os/RichTapVibrationEffect$PatternHeParameter;->getFreq()I

    move-result v4

    .line 476
    .local v4, "freq":I
    iget v5, p0, Landroid/os/RichTapVibrationEffect$PatternHeParameter;->mInterval:I

    if-ne v2, v5, :cond_2

    iget v5, p0, Landroid/os/RichTapVibrationEffect$PatternHeParameter;->mAmplitude:I

    if-ne v3, v5, :cond_2

    iget v5, p0, Landroid/os/RichTapVibrationEffect$PatternHeParameter;->mFreq:I

    if-eq v4, v5, :cond_1

    goto :goto_0

    .line 480
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 478
    :cond_2
    :goto_0
    return v1
.end method

.method public blacklist getAmplitude()I
    .locals 1

    .line 429
    iget v0, p0, Landroid/os/RichTapVibrationEffect$PatternHeParameter;->mAmplitude:I

    return v0
.end method

.method public blacklist getDuration()J
    .locals 2

    .line 444
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public blacklist getFreq()I
    .locals 1

    .line 433
    iget v0, p0, Landroid/os/RichTapVibrationEffect$PatternHeParameter;->mFreq:I

    return v0
.end method

.method public blacklist getInterval()I
    .locals 1

    .line 425
    iget v0, p0, Landroid/os/RichTapVibrationEffect$PatternHeParameter;->mInterval:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    .line 485
    const/16 v0, 0xe

    .line 486
    .local v0, "result":I
    iget v1, p0, Landroid/os/RichTapVibrationEffect$PatternHeParameter;->mInterval:I

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    .line 487
    iget v1, p0, Landroid/os/RichTapVibrationEffect$PatternHeParameter;->mAmplitude:I

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    .line 488
    return v0
.end method

.method public blacklist resolve(I)Landroid/os/RichTapVibrationEffect$PatternHeParameter;
    .locals 0
    .param p1, "defaultAmplitude"    # I

    .line 450
    return-object p0
.end method

.method public bridge synthetic blacklist resolve(I)Landroid/os/VibrationEffect;
    .locals 0

    .line 404
    invoke-virtual {p0, p1}, Landroid/os/RichTapVibrationEffect$PatternHeParameter;->resolve(I)Landroid/os/RichTapVibrationEffect$PatternHeParameter;

    move-result-object p1

    return-object p1
.end method

.method public blacklist scale(F)Landroid/os/RichTapVibrationEffect$PatternHeParameter;
    .locals 0
    .param p1, "scaleFactor"    # F

    .line 455
    return-object p0
.end method

.method public bridge synthetic blacklist scale(F)Landroid/os/VibrationEffect;
    .locals 0

    .line 404
    invoke-virtual {p0, p1}, Landroid/os/RichTapVibrationEffect$PatternHeParameter;->scale(F)Landroid/os/RichTapVibrationEffect$PatternHeParameter;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PatternHeParameter: {mAmplitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/RichTapVibrationEffect$PatternHeParameter;->mAmplitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}{mInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/RichTapVibrationEffect$PatternHeParameter;->mInterval:I

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

    .line 460
    iget v0, p0, Landroid/os/RichTapVibrationEffect$PatternHeParameter;->mAmplitude:I

    const/4 v1, -0x1

    if-lt v0, v1, :cond_0

    const/16 v2, 0xff

    if-gt v0, v2, :cond_0

    iget v0, p0, Landroid/os/RichTapVibrationEffect$PatternHeParameter;->mInterval:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Landroid/os/RichTapVibrationEffect$PatternHeParameter;->mFreq:I

    if-lt v0, v1, :cond_0

    .line 464
    return-void

    .line 461
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAmplitude="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/os/RichTapVibrationEffect$PatternHeParameter;->mAmplitude:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mInterval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/os/RichTapVibrationEffect$PatternHeParameter;->mInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mFreq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/os/RichTapVibrationEffect$PatternHeParameter;->mFreq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 499
    const/16 v0, 0x7f2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 500
    iget v0, p0, Landroid/os/RichTapVibrationEffect$PatternHeParameter;->mInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 501
    iget v0, p0, Landroid/os/RichTapVibrationEffect$PatternHeParameter;->mAmplitude:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 502
    iget v0, p0, Landroid/os/RichTapVibrationEffect$PatternHeParameter;->mFreq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "writeToParcel mInterval:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/RichTapVibrationEffect$PatternHeParameter;->mInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAmplitude:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/RichTapVibrationEffect$PatternHeParameter;->mAmplitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mFreq:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/RichTapVibrationEffect$PatternHeParameter;->mFreq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PatternHeParameter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    return-void
.end method
