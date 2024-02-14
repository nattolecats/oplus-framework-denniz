.class public Landroid/os/OplusNativeOneShotVibrationEffect;
.super Landroid/os/VibrationEffect;
.source "OplusNativeOneShotVibrationEffect.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/OplusNativeOneShotVibrationEffect;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist PARCEL_TOKEN_OPLUS_NATIVE_ONESHOT:I = 0x40c

.field private static final blacklist SETTINGS_VALUE_EFFECT_STRONG:I = 0x960


# instance fields
.field private blacklist mEffectStrength:I

.field private final blacklist mTiming:J

.field private final blacklist mWaveformId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 125
    new-instance v0, Landroid/os/OplusNativeOneShotVibrationEffect$1;

    invoke-direct {v0}, Landroid/os/OplusNativeOneShotVibrationEffect$1;-><init>()V

    sput-object v0, Landroid/os/OplusNativeOneShotVibrationEffect;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IJ)V
    .locals 1
    .param p1, "waveformId"    # I
    .param p2, "timing"    # J

    .line 47
    invoke-direct {p0}, Landroid/os/VibrationEffect;-><init>()V

    .line 48
    iput p1, p0, Landroid/os/OplusNativeOneShotVibrationEffect;->mWaveformId:I

    .line 49
    iput-wide p2, p0, Landroid/os/OplusNativeOneShotVibrationEffect;->mTiming:J

    .line 50
    const/4 v0, 0x2

    iput v0, p0, Landroid/os/OplusNativeOneShotVibrationEffect;->mEffectStrength:I

    .line 51
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Landroid/os/OplusNativeOneShotVibrationEffect;-><init>(IJ)V

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/OplusNativeOneShotVibrationEffect;->mEffectStrength:I

    .line 37
    return-void
.end method

.method private static blacklist isValidEffectStrength(I)Z
    .locals 1
    .param p0, "strength"    # I

    .line 74
    const/16 v0, 0x960

    if-gt p0, v0, :cond_0

    .line 75
    const/4 v0, 0x1

    return v0

    .line 77
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 94
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 95
    return v0

    .line 97
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 100
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/os/OplusNativeOneShotVibrationEffect;

    .line 101
    .local v2, "that":Landroid/os/OplusNativeOneShotVibrationEffect;
    iget v3, p0, Landroid/os/OplusNativeOneShotVibrationEffect;->mWaveformId:I

    iget v4, v2, Landroid/os/OplusNativeOneShotVibrationEffect;->mWaveformId:I

    if-ne v3, v4, :cond_2

    iget-wide v3, p0, Landroid/os/OplusNativeOneShotVibrationEffect;->mTiming:J

    iget-wide v5, v2, Landroid/os/OplusNativeOneShotVibrationEffect;->mTiming:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget v3, p0, Landroid/os/OplusNativeOneShotVibrationEffect;->mEffectStrength:I

    iget v4, v2, Landroid/os/OplusNativeOneShotVibrationEffect;->mEffectStrength:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 98
    .end local v2    # "that":Landroid/os/OplusNativeOneShotVibrationEffect;
    :cond_3
    :goto_1
    return v1
.end method

.method public blacklist getDuration()J
    .locals 2

    .line 59
    iget-wide v0, p0, Landroid/os/OplusNativeOneShotVibrationEffect;->mTiming:J

    return-wide v0
.end method

.method public blacklist getEffectStrength()I
    .locals 1

    .line 70
    iget v0, p0, Landroid/os/OplusNativeOneShotVibrationEffect;->mEffectStrength:I

    return v0
.end method

.method public blacklist getId()I
    .locals 1

    .line 54
    iget v0, p0, Landroid/os/OplusNativeOneShotVibrationEffect;->mWaveformId:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 106
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/os/OplusNativeOneShotVibrationEffect;->mWaveformId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/os/OplusNativeOneShotVibrationEffect;->mTiming:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/os/OplusNativeOneShotVibrationEffect;->mEffectStrength:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist resolve(I)Landroid/os/OplusNativeOneShotVibrationEffect;
    .locals 1
    .param p1, "defaultAmplitude"    # I

    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic blacklist resolve(I)Landroid/os/VibrationEffect;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Landroid/os/OplusNativeOneShotVibrationEffect;->resolve(I)Landroid/os/OplusNativeOneShotVibrationEffect;

    move-result-object p1

    return-object p1
.end method

.method public blacklist scale(F)Landroid/os/OplusNativeOneShotVibrationEffect;
    .locals 1
    .param p1, "scaleFactor"    # F

    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic blacklist scale(F)Landroid/os/VibrationEffect;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Landroid/os/OplusNativeOneShotVibrationEffect;->scale(F)Landroid/os/OplusNativeOneShotVibrationEffect;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setEffectStrength(I)V
    .locals 3
    .param p1, "strength"    # I

    .line 63
    invoke-static {p1}, Landroid/os/OplusNativeOneShotVibrationEffect;->isValidEffectStrength(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iput p1, p0, Landroid/os/OplusNativeOneShotVibrationEffect;->mEffectStrength:I

    .line 67
    return-void

    .line 64
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
    .locals 3

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OplusNativeOneShotVibrationEffect{mWaveformId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/OplusNativeOneShotVibrationEffect;->mWaveformId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTiming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/OplusNativeOneShotVibrationEffect;->mTiming:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEffectStrength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/OplusNativeOneShotVibrationEffect;->mEffectStrength:I

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
    .locals 5

    .line 82
    iget-wide v0, p0, Landroid/os/OplusNativeOneShotVibrationEffect;->mTiming:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, ")"

    if-lez v0, :cond_1

    .line 86
    iget v0, p0, Landroid/os/OplusNativeOneShotVibrationEffect;->mEffectStrength:I

    invoke-static {v0}, Landroid/os/OplusNativeOneShotVibrationEffect;->isValidEffectStrength(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    return-void

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown effect strength (value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/os/OplusNativeOneShotVibrationEffect;->mEffectStrength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timing must be non-zero (timing="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Landroid/os/OplusNativeOneShotVibrationEffect;->mTiming:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 119
    const/16 v0, 0x40c

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget v0, p0, Landroid/os/OplusNativeOneShotVibrationEffect;->mWaveformId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget-wide v0, p0, Landroid/os/OplusNativeOneShotVibrationEffect;->mTiming:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 122
    iget v0, p0, Landroid/os/OplusNativeOneShotVibrationEffect;->mEffectStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    return-void
.end method
