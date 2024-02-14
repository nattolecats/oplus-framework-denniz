.class public final Landroid/os/RichTapVibrationEffect$ExtPrebaked;
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
    name = "ExtPrebaked"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/RichTapVibrationEffect$ExtPrebaked;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mEffectId:I

.field private blacklist mStrength:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 251
    new-instance v0, Landroid/os/RichTapVibrationEffect$ExtPrebaked$1;

    invoke-direct {v0}, Landroid/os/RichTapVibrationEffect$ExtPrebaked$1;-><init>()V

    sput-object v0, Landroid/os/RichTapVibrationEffect$ExtPrebaked;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .locals 0
    .param p1, "effectId"    # I
    .param p2, "strength"    # I

    .line 178
    invoke-direct {p0}, Landroid/os/VibrationEffect;-><init>()V

    .line 179
    iput p1, p0, Landroid/os/RichTapVibrationEffect$ExtPrebaked;->mEffectId:I

    .line 180
    iput p2, p0, Landroid/os/RichTapVibrationEffect$ExtPrebaked;->mStrength:I

    .line 181
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/os/RichTapVibrationEffect$ExtPrebaked;-><init>(II)V

    .line 176
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 227
    instance-of v0, p1, Landroid/os/RichTapVibrationEffect$ExtPrebaked;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 228
    return v1

    .line 230
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/os/RichTapVibrationEffect$ExtPrebaked;

    .line 231
    .local v0, "other":Landroid/os/RichTapVibrationEffect$ExtPrebaked;
    iget v2, p0, Landroid/os/RichTapVibrationEffect$ExtPrebaked;->mEffectId:I

    iget v3, v0, Landroid/os/RichTapVibrationEffect$ExtPrebaked;->mEffectId:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public blacklist getDuration()J
    .locals 2

    .line 199
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public blacklist getId()I
    .locals 1

    .line 184
    iget v0, p0, Landroid/os/RichTapVibrationEffect$ExtPrebaked;->mEffectId:I

    return v0
.end method

.method public blacklist getScale()I
    .locals 1

    .line 188
    iget v0, p0, Landroid/os/RichTapVibrationEffect$ExtPrebaked;->mStrength:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 236
    iget v0, p0, Landroid/os/RichTapVibrationEffect$ExtPrebaked;->mEffectId:I

    return v0
.end method

.method public blacklist resolve(I)Landroid/os/RichTapVibrationEffect$ExtPrebaked;
    .locals 0
    .param p1, "defaultAmplitude"    # I

    .line 204
    return-object p0
.end method

.method public bridge synthetic blacklist resolve(I)Landroid/os/VibrationEffect;
    .locals 0

    .line 169
    invoke-virtual {p0, p1}, Landroid/os/RichTapVibrationEffect$ExtPrebaked;->resolve(I)Landroid/os/RichTapVibrationEffect$ExtPrebaked;

    move-result-object p1

    return-object p1
.end method

.method public blacklist scale(F)Landroid/os/RichTapVibrationEffect$ExtPrebaked;
    .locals 0
    .param p1, "scaleFactor"    # F

    .line 209
    return-object p0
.end method

.method public bridge synthetic blacklist scale(F)Landroid/os/VibrationEffect;
    .locals 0

    .line 169
    invoke-virtual {p0, p1}, Landroid/os/RichTapVibrationEffect$ExtPrebaked;->scale(F)Landroid/os/RichTapVibrationEffect$ExtPrebaked;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExtPrebaked{mEffectId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/RichTapVibrationEffect$ExtPrebaked;->mEffectId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mStrength = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/RichTapVibrationEffect$ExtPrebaked;->mStrength:I

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

    .line 214
    iget v0, p0, Landroid/os/RichTapVibrationEffect$ExtPrebaked;->mEffectId:I

    const-string v1, ")"

    if-ltz v0, :cond_1

    .line 219
    iget v0, p0, Landroid/os/RichTapVibrationEffect$ExtPrebaked;->mStrength:I

    const/4 v2, 0x1

    if-lt v0, v2, :cond_0

    const/16 v2, 0x64

    if-gt v0, v2, :cond_0

    .line 223
    return-void

    .line 220
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mStrength must be between 1 and 100 inclusive (mStrength="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/os/RichTapVibrationEffect$ExtPrebaked;->mStrength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown ExtPrebaked effect type (value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/os/RichTapVibrationEffect$ExtPrebaked;->mEffectId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 246
    const/16 v0, 0x7ee

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    iget v0, p0, Landroid/os/RichTapVibrationEffect$ExtPrebaked;->mEffectId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    iget v0, p0, Landroid/os/RichTapVibrationEffect$ExtPrebaked;->mStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    return-void
.end method
