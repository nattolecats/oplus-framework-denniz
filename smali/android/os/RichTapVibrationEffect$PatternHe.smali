.class public final Landroid/os/RichTapVibrationEffect$PatternHe;
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
    name = "PatternHe"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/RichTapVibrationEffect$PatternHe;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAmplitude:I

.field private blacklist mDuration:J

.field private blacklist mEventCount:I

.field private blacklist mFreq:I

.field private blacklist mInterval:I

.field private blacklist mLooper:I

.field private blacklist mPatternInfo:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 740
    new-instance v0, Landroid/os/RichTapVibrationEffect$PatternHe$1;

    invoke-direct {v0}, Landroid/os/RichTapVibrationEffect$PatternHe$1;-><init>()V

    sput-object v0, Landroid/os/RichTapVibrationEffect$PatternHe;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 633
    invoke-direct {p0}, Landroid/os/VibrationEffect;-><init>()V

    .line 630
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Landroid/os/RichTapVibrationEffect$PatternHe;->mDuration:J

    .line 634
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/RichTapVibrationEffect$PatternHe;->mPatternInfo:[I

    .line 635
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/RichTapVibrationEffect$PatternHe;->mLooper:I

    .line 636
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/RichTapVibrationEffect$PatternHe;->mInterval:I

    .line 637
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/RichTapVibrationEffect$PatternHe;->mAmplitude:I

    .line 638
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/RichTapVibrationEffect$PatternHe;->mFreq:I

    .line 639
    return-void
.end method

.method public constructor blacklist <init>([IIIII)V
    .locals 2
    .param p1, "patternInfo"    # [I
    .param p2, "looper"    # I
    .param p3, "interval"    # I
    .param p4, "amplitude"    # I
    .param p5, "freq"    # I

    .line 647
    invoke-direct {p0}, Landroid/os/VibrationEffect;-><init>()V

    .line 630
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Landroid/os/RichTapVibrationEffect$PatternHe;->mDuration:J

    .line 648
    iput-object p1, p0, Landroid/os/RichTapVibrationEffect$PatternHe;->mPatternInfo:[I

    .line 649
    iput p2, p0, Landroid/os/RichTapVibrationEffect$PatternHe;->mLooper:I

    .line 650
    iput p3, p0, Landroid/os/RichTapVibrationEffect$PatternHe;->mInterval:I

    .line 651
    iput p5, p0, Landroid/os/RichTapVibrationEffect$PatternHe;->mFreq:I

    .line 652
    iput p4, p0, Landroid/os/RichTapVibrationEffect$PatternHe;->mAmplitude:I

    .line 653
    iput-wide v0, p0, Landroid/os/RichTapVibrationEffect$PatternHe;->mDuration:J

    .line 654
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/RichTapVibrationEffect$PatternHe;->mEventCount:I

    .line 655
    return-void
.end method

.method public constructor blacklist <init>([IJI)V
    .locals 2
    .param p1, "patternInfo"    # [I
    .param p2, "duration"    # J
    .param p4, "eventCount"    # I

    .line 641
    invoke-direct {p0}, Landroid/os/VibrationEffect;-><init>()V

    .line 630
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Landroid/os/RichTapVibrationEffect$PatternHe;->mDuration:J

    .line 642
    iput-object p1, p0, Landroid/os/RichTapVibrationEffect$PatternHe;->mPatternInfo:[I

    .line 643
    iput-wide p2, p0, Landroid/os/RichTapVibrationEffect$PatternHe;->mDuration:J

    .line 644
    iput p4, p0, Landroid/os/RichTapVibrationEffect$PatternHe;->mEventCount:I

    .line 645
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 678
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 710
    instance-of v0, p1, Landroid/os/RichTapVibrationEffect$PatternHe;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 711
    return v1

    .line 713
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/os/RichTapVibrationEffect$PatternHe;

    .line 714
    .local v0, "other":Landroid/os/RichTapVibrationEffect$PatternHe;
    iget-wide v2, v0, Landroid/os/RichTapVibrationEffect$PatternHe;->mDuration:J

    iget-wide v4, p0, Landroid/os/RichTapVibrationEffect$PatternHe;->mDuration:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget-object v2, v0, Landroid/os/RichTapVibrationEffect$PatternHe;->mPatternInfo:[I

    iget-object v3, p0, Landroid/os/RichTapVibrationEffect$PatternHe;->mPatternInfo:[I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public blacklist getAmplitude()I
    .locals 1

    .line 693
    iget v0, p0, Landroid/os/RichTapVibrationEffect$PatternHe;->mAmplitude:I

    return v0
.end method

.method public blacklist getDuration()J
    .locals 2

    .line 659
    iget-wide v0, p0, Landroid/os/RichTapVibrationEffect$PatternHe;->mDuration:J

    return-wide v0
.end method

.method public blacklist getEventCount()I
    .locals 1

    .line 673
    iget v0, p0, Landroid/os/RichTapVibrationEffect$PatternHe;->mEventCount:I

    return v0
.end method

.method public blacklist getFreq()I
    .locals 1

    .line 697
    iget v0, p0, Landroid/os/RichTapVibrationEffect$PatternHe;->mFreq:I

    return v0
.end method

.method public blacklist getInterval()I
    .locals 1

    .line 689
    iget v0, p0, Landroid/os/RichTapVibrationEffect$PatternHe;->mInterval:I

    return v0
.end method

.method public blacklist getLooper()I
    .locals 1

    .line 685
    iget v0, p0, Landroid/os/RichTapVibrationEffect$PatternHe;->mLooper:I

    return v0
.end method

.method public blacklist getPatternInfo()[I
    .locals 1

    .line 681
    iget-object v0, p0, Landroid/os/RichTapVibrationEffect$PatternHe;->mPatternInfo:[I

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 719
    const/16 v0, 0x11

    .line 720
    .local v0, "result":I
    iget-wide v1, p0, Landroid/os/RichTapVibrationEffect$PatternHe;->mDuration:J

    long-to-int v1, v1

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    .line 721
    iget v1, p0, Landroid/os/RichTapVibrationEffect$PatternHe;->mEventCount:I

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    .line 722
    return v0
.end method

.method public blacklist resolve(I)Landroid/os/RichTapVibrationEffect$PatternHe;
    .locals 0
    .param p1, "defaultAmplitude"    # I

    .line 664
    return-object p0
.end method

.method public bridge synthetic blacklist resolve(I)Landroid/os/VibrationEffect;
    .locals 0

    .line 624
    invoke-virtual {p0, p1}, Landroid/os/RichTapVibrationEffect$PatternHe;->resolve(I)Landroid/os/RichTapVibrationEffect$PatternHe;

    move-result-object p1

    return-object p1
.end method

.method public blacklist scale(F)Landroid/os/RichTapVibrationEffect$PatternHe;
    .locals 0
    .param p1, "scaleFactor"    # F

    .line 669
    return-object p0
.end method

.method public bridge synthetic blacklist scale(F)Landroid/os/VibrationEffect;
    .locals 0

    .line 624
    invoke-virtual {p0, p1}, Landroid/os/RichTapVibrationEffect$PatternHe;->scale(F)Landroid/os/RichTapVibrationEffect$PatternHe;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PatternHe{mLooper="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/RichTapVibrationEffect$PatternHe;->mLooper:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/RichTapVibrationEffect$PatternHe;->mInterval:I

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
    .locals 4

    .line 702
    iget-wide v0, p0, Landroid/os/RichTapVibrationEffect$PatternHe;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 706
    return-void

    .line 703
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duration must be positive (duration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/os/RichTapVibrationEffect$PatternHe;->mDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

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

    .line 732
    const/16 v0, 0x7f1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 733
    iget-object v0, p0, Landroid/os/RichTapVibrationEffect$PatternHe;->mPatternInfo:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 734
    iget v0, p0, Landroid/os/RichTapVibrationEffect$PatternHe;->mLooper:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 735
    iget v0, p0, Landroid/os/RichTapVibrationEffect$PatternHe;->mInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 736
    iget v0, p0, Landroid/os/RichTapVibrationEffect$PatternHe;->mAmplitude:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 737
    iget v0, p0, Landroid/os/RichTapVibrationEffect$PatternHe;->mFreq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 738
    return-void
.end method
