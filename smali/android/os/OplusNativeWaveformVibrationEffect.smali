.class public Landroid/os/OplusNativeWaveformVibrationEffect;
.super Landroid/os/VibrationEffect;
.source "OplusNativeWaveformVibrationEffect.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/OplusNativeWaveformVibrationEffect;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist HASH_MAGIC_CODE:I = 0x1f

.field private static final blacklist PARCEL_TOKEN_OPLUS_NATIVE_WAVEFORM:I = 0x40b

.field private static final blacklist SETTINGS_VALUE_EFFECT_STRONG:I = 0x960


# instance fields
.field private blacklist mEffectStrength:I

.field private final blacklist mRepeat:I

.field private final blacklist mTimings:[J

.field private final blacklist mWaveformIds:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 175
    new-instance v0, Landroid/os/OplusNativeWaveformVibrationEffect$1;

    invoke-direct {v0}, Landroid/os/OplusNativeWaveformVibrationEffect$1;-><init>()V

    sput-object v0, Landroid/os/OplusNativeWaveformVibrationEffect;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/os/OplusNativeWaveformVibrationEffect;-><init>([J[II)V

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/OplusNativeWaveformVibrationEffect;->mEffectStrength:I

    .line 40
    return-void
.end method

.method public constructor blacklist <init>([J[II)V
    .locals 3
    .param p1, "timings"    # [J
    .param p2, "waveformIds"    # [I
    .param p3, "repeat"    # I

    .line 50
    invoke-direct {p0}, Landroid/os/VibrationEffect;-><init>()V

    .line 51
    array-length v0, p1

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/os/OplusNativeWaveformVibrationEffect;->mTimings:[J

    .line 52
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    array-length v0, p2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/os/OplusNativeWaveformVibrationEffect;->mWaveformIds:[I

    .line 54
    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    iput p3, p0, Landroid/os/OplusNativeWaveformVibrationEffect;->mRepeat:I

    .line 56
    const/4 v0, 0x2

    iput v0, p0, Landroid/os/OplusNativeWaveformVibrationEffect;->mEffectStrength:I

    .line 57
    return-void
.end method

.method private static blacklist hasNonZeroEntry([J)Z
    .locals 7
    .param p0, "vals"    # [J

    .line 167
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-wide v3, p0, v2

    .line 168
    .local v3, "val":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_0

    .line 169
    const/4 v0, 0x1

    return v0

    .line 167
    .end local v3    # "val":J
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 172
    :cond_1
    return v1
.end method

.method private static blacklist isValidEffectStrength(I)Z
    .locals 1
    .param p0, "strength"    # I

    .line 95
    const/16 v0, 0x960

    if-gt p0, v0, :cond_0

    .line 96
    const/4 v0, 0x1

    return v0

    .line 98
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 129
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 130
    return v0

    .line 132
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 135
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/os/OplusNativeWaveformVibrationEffect;

    .line 136
    .local v2, "that":Landroid/os/OplusNativeWaveformVibrationEffect;
    iget v3, p0, Landroid/os/OplusNativeWaveformVibrationEffect;->mEffectStrength:I

    iget v4, v2, Landroid/os/OplusNativeWaveformVibrationEffect;->mEffectStrength:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/os/OplusNativeWaveformVibrationEffect;->mRepeat:I

    iget v4, v2, Landroid/os/OplusNativeWaveformVibrationEffect;->mRepeat:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/os/OplusNativeWaveformVibrationEffect;->mWaveformIds:[I

    iget-object v4, v2, Landroid/os/OplusNativeWaveformVibrationEffect;->mWaveformIds:[I

    .line 137
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/os/OplusNativeWaveformVibrationEffect;->mTimings:[J

    iget-object v4, v2, Landroid/os/OplusNativeWaveformVibrationEffect;->mTimings:[J

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 136
    :goto_0
    return v0

    .line 133
    .end local v2    # "that":Landroid/os/OplusNativeWaveformVibrationEffect;
    :cond_3
    :goto_1
    return v1
.end method

.method public blacklist getDuration()J
    .locals 7

    .line 84
    iget v0, p0, Landroid/os/OplusNativeWaveformVibrationEffect;->mRepeat:I

    if-ltz v0, :cond_0

    .line 85
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    .line 87
    :cond_0
    const-wide/16 v0, 0x0

    .line 88
    .local v0, "duration":J
    iget-object v2, p0, Landroid/os/OplusNativeWaveformVibrationEffect;->mTimings:[J

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-wide v5, v2, v4

    .line 89
    .local v5, "d":J
    add-long/2addr v0, v5

    .line 88
    .end local v5    # "d":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 91
    :cond_1
    return-wide v0
.end method

.method public blacklist getEffectStrength()I
    .locals 1

    .line 79
    iget v0, p0, Landroid/os/OplusNativeWaveformVibrationEffect;->mEffectStrength:I

    return v0
.end method

.method public blacklist getRepeatIndex()I
    .locals 1

    .line 68
    iget v0, p0, Landroid/os/OplusNativeWaveformVibrationEffect;->mRepeat:I

    return v0
.end method

.method public blacklist getTimings()[J
    .locals 1

    .line 60
    iget-object v0, p0, Landroid/os/OplusNativeWaveformVibrationEffect;->mTimings:[J

    return-object v0
.end method

.method public blacklist getWaveformIds()[I
    .locals 1

    .line 64
    iget-object v0, p0, Landroid/os/OplusNativeWaveformVibrationEffect;->mWaveformIds:[I

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 142
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/os/OplusNativeWaveformVibrationEffect;->mEffectStrength:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/os/OplusNativeWaveformVibrationEffect;->mRepeat:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 143
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/os/OplusNativeWaveformVibrationEffect;->mWaveformIds:[I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    add-int/2addr v1, v2

    .line 144
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/os/OplusNativeWaveformVibrationEffect;->mTimings:[J

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([J)I

    move-result v2

    add-int/2addr v0, v2

    .line 145
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public blacklist resolve(I)Landroid/os/OplusNativeWaveformVibrationEffect;
    .locals 1
    .param p1, "defaultAmplitude"    # I

    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic blacklist resolve(I)Landroid/os/VibrationEffect;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Landroid/os/OplusNativeWaveformVibrationEffect;->resolve(I)Landroid/os/OplusNativeWaveformVibrationEffect;

    move-result-object p1

    return-object p1
.end method

.method public blacklist scale(F)Landroid/os/OplusNativeWaveformVibrationEffect;
    .locals 1
    .param p1, "scaleFactor"    # F

    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic blacklist scale(F)Landroid/os/VibrationEffect;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Landroid/os/OplusNativeWaveformVibrationEffect;->scale(F)Landroid/os/OplusNativeWaveformVibrationEffect;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setEffectStrength(I)V
    .locals 3
    .param p1, "strength"    # I

    .line 72
    invoke-static {p1}, Landroid/os/OplusNativeWaveformVibrationEffect;->isValidEffectStrength(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iput p1, p0, Landroid/os/OplusNativeWaveformVibrationEffect;->mEffectStrength:I

    .line 76
    return-void

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid effect strength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OplusNativeWaveformVibrationEffect{mTimings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/OplusNativeWaveformVibrationEffect;->mTimings:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mWaveformIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/OplusNativeWaveformVibrationEffect;->mWaveformIds:[I

    .line 151
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRepeat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/OplusNativeWaveformVibrationEffect;->mRepeat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEffectStrength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/OplusNativeWaveformVibrationEffect;->mEffectStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    return-object v0
.end method

.method public blacklist validate()V
    .locals 8

    .line 103
    iget-object v0, p0, Landroid/os/OplusNativeWaveformVibrationEffect;->mTimings:[J

    array-length v1, v0

    iget-object v2, p0, Landroid/os/OplusNativeWaveformVibrationEffect;->mWaveformIds:[I

    array-length v2, v2

    const-string v3, ")"

    if-ne v1, v2, :cond_4

    .line 109
    invoke-static {v0}, Landroid/os/OplusNativeWaveformVibrationEffect;->hasNonZeroEntry([J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 113
    iget-object v0, p0, Landroid/os/OplusNativeWaveformVibrationEffect;->mTimings:[J

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-wide v4, v0, v2

    .line 114
    .local v4, "timing":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-ltz v6, :cond_0

    .line 113
    .end local v4    # "timing":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 115
    .restart local v4    # "timing":J
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timings must all be >= 0 (timings="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/OplusNativeWaveformVibrationEffect;->mTimings:[J

    .line 116
    invoke-static {v2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    .end local v4    # "timing":J
    :cond_1
    iget v0, p0, Landroid/os/OplusNativeWaveformVibrationEffect;->mRepeat:I

    const/4 v1, -0x1

    if-lt v0, v1, :cond_2

    iget-object v1, p0, Landroid/os/OplusNativeWaveformVibrationEffect;->mTimings:[J

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 125
    return-void

    .line 121
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "repeat index must be within the bounds of the timings array (timings.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/OplusNativeWaveformVibrationEffect;->mTimings:[J

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/os/OplusNativeWaveformVibrationEffect;->mRepeat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "at least one timing must be non-zero (timings="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/OplusNativeWaveformVibrationEffect;->mTimings:[J

    .line 111
    invoke-static {v2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timing and waveform arrays must be of equal length (timings.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/OplusNativeWaveformVibrationEffect;->mTimings:[J

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", waveforms.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/OplusNativeWaveformVibrationEffect;->mWaveformIds:[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 159
    const/16 v0, 0x40b

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    iget-object v0, p0, Landroid/os/OplusNativeWaveformVibrationEffect;->mTimings:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 161
    iget-object v0, p0, Landroid/os/OplusNativeWaveformVibrationEffect;->mWaveformIds:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 162
    iget v0, p0, Landroid/os/OplusNativeWaveformVibrationEffect;->mRepeat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget v0, p0, Landroid/os/OplusNativeWaveformVibrationEffect;->mEffectStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    return-void
.end method
