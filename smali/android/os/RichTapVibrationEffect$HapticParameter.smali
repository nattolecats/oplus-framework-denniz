.class public final Landroid/os/RichTapVibrationEffect$HapticParameter;
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
    name = "HapticParameter"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/RichTapVibrationEffect$HapticParameter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist TAG:Ljava/lang/String;

.field private blacklist mLength:I

.field private blacklist mParam:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 607
    new-instance v0, Landroid/os/RichTapVibrationEffect$HapticParameter$1;

    invoke-direct {v0}, Landroid/os/RichTapVibrationEffect$HapticParameter$1;-><init>()V

    sput-object v0, Landroid/os/RichTapVibrationEffect$HapticParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 529
    invoke-direct {p0}, Landroid/os/VibrationEffect;-><init>()V

    .line 524
    const-string v0, "HapticParameter"

    iput-object v0, p0, Landroid/os/RichTapVibrationEffect$HapticParameter;->TAG:Ljava/lang/String;

    .line 530
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    iput-object v1, p0, Landroid/os/RichTapVibrationEffect$HapticParameter;->mParam:[I

    .line 531
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/RichTapVibrationEffect$HapticParameter;->mLength:I

    .line 532
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parcel mLength:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/os/RichTapVibrationEffect$HapticParameter;->mLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    return-void
.end method

.method public constructor blacklist <init>([II)V
    .locals 3
    .param p1, "param"    # [I
    .param p2, "length"    # I

    .line 535
    invoke-direct {p0}, Landroid/os/VibrationEffect;-><init>()V

    .line 524
    const-string v0, "HapticParameter"

    iput-object v0, p0, Landroid/os/RichTapVibrationEffect$HapticParameter;->TAG:Ljava/lang/String;

    .line 536
    iput-object p1, p0, Landroid/os/RichTapVibrationEffect$HapticParameter;->mParam:[I

    .line 537
    iput p2, p0, Landroid/os/RichTapVibrationEffect$HapticParameter;->mLength:I

    .line 538
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parcel mLength:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/os/RichTapVibrationEffect$HapticParameter;->mLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 559
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 576
    instance-of v0, p1, Landroid/os/RichTapVibrationEffect$HapticParameter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 577
    return v1

    .line 579
    :cond_0
    invoke-virtual {p0}, Landroid/os/RichTapVibrationEffect$HapticParameter;->getLength()I

    move-result v0

    move-object v2, p1

    check-cast v2, Landroid/os/RichTapVibrationEffect$HapticParameter;

    invoke-virtual {v2}, Landroid/os/RichTapVibrationEffect$HapticParameter;->getLength()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 580
    return v1

    .line 582
    :cond_1
    invoke-virtual {p0}, Landroid/os/RichTapVibrationEffect$HapticParameter;->getParam()[I

    move-result-object v0

    move-object v2, p1

    check-cast v2, Landroid/os/RichTapVibrationEffect$HapticParameter;

    invoke-virtual {v2}, Landroid/os/RichTapVibrationEffect$HapticParameter;->getParam()[I

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 583
    return v1

    .line 585
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getDuration()J
    .locals 2

    .line 564
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public blacklist getLength()I
    .locals 1

    .line 546
    iget v0, p0, Landroid/os/RichTapVibrationEffect$HapticParameter;->mLength:I

    return v0
.end method

.method public blacklist getParam()[I
    .locals 1

    .line 542
    iget-object v0, p0, Landroid/os/RichTapVibrationEffect$HapticParameter;->mParam:[I

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 590
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/os/RichTapVibrationEffect$HapticParameter;->mParam:[I

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/os/RichTapVibrationEffect$HapticParameter;->mLength:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist resolve(I)Landroid/os/RichTapVibrationEffect$HapticParameter;
    .locals 0
    .param p1, "defaultAmplitude"    # I

    .line 550
    return-object p0
.end method

.method public bridge synthetic blacklist resolve(I)Landroid/os/VibrationEffect;
    .locals 0

    .line 523
    invoke-virtual {p0, p1}, Landroid/os/RichTapVibrationEffect$HapticParameter;->resolve(I)Landroid/os/RichTapVibrationEffect$HapticParameter;

    move-result-object p1

    return-object p1
.end method

.method public blacklist scale(F)Landroid/os/RichTapVibrationEffect$HapticParameter;
    .locals 0
    .param p1, "scaleFactor"    # F

    .line 554
    return-object p0
.end method

.method public bridge synthetic blacklist scale(F)Landroid/os/VibrationEffect;
    .locals 0

    .line 523
    invoke-virtual {p0, p1}, Landroid/os/RichTapVibrationEffect$HapticParameter;->scale(F)Landroid/os/RichTapVibrationEffect$HapticParameter;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HapticParameter: {mLength ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/RichTapVibrationEffect$HapticParameter;->mLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mParam:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/RichTapVibrationEffect$HapticParameter;->mParam:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist validate()V
    .locals 2

    .line 569
    iget-object v0, p0, Landroid/os/RichTapVibrationEffect$HapticParameter;->mParam:[I

    if-eqz v0, :cond_0

    array-length v1, v0

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/os/RichTapVibrationEffect$HapticParameter;->mLength:I

    array-length v0, v0

    if-ne v1, v0, :cond_0

    .line 572
    return-void

    .line 570
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "empty param"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 601
    const/16 v0, 0x7f3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 602
    iget-object v0, p0, Landroid/os/RichTapVibrationEffect$HapticParameter;->mParam:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 603
    iget v0, p0, Landroid/os/RichTapVibrationEffect$HapticParameter;->mLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "writeToParcel, mLength:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/RichTapVibrationEffect$HapticParameter;->mLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HapticParameter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    return-void
.end method
