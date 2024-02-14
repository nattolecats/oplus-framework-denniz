.class public Landroid/os/VibrationEffectExtImpl;
.super Ljava/lang/Object;
.source "VibrationEffectExtImpl.java"

# interfaces
.implements Landroid/os/IVibrationEffectExt;


# static fields
.field private static final blacklist PARCEL_TOKEN_OPLUS_NATIVE_ONESHOT:I = 0x40c

.field private static final blacklist PARCEL_TOKEN_OPLUS_NATIVE_WAVEFORM:I = 0x40b

.field private static final blacklist TAG:Ljava/lang/String; = "VibrationEffectExtImpl"


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "base"    # Ljava/lang/Object;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method public blacklist createExtendedEffect(Landroid/os/Parcel;)Landroid/os/VibrationEffect;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 40
    .local v0, "token":I
    invoke-static {v0}, Landroid/os/RichTapVibrationEffect;->isExtendedEffect(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    invoke-static {p1}, Landroid/os/RichTapVibrationEffect;->createExtendedEffect(Landroid/os/Parcel;)Landroid/os/VibrationEffect;

    move-result-object v1

    return-object v1

    .line 42
    :cond_0
    const/16 v1, 0x40c

    if-ne v0, v1, :cond_1

    .line 43
    new-instance v1, Landroid/os/OplusNativeOneShotVibrationEffect;

    invoke-direct {v1, p1}, Landroid/os/OplusNativeOneShotVibrationEffect;-><init>(Landroid/os/Parcel;)V

    return-object v1

    .line 44
    :cond_1
    const/16 v1, 0x40b

    if-ne v0, v1, :cond_2

    .line 45
    new-instance v1, Landroid/os/OplusNativeWaveformVibrationEffect;

    invoke-direct {v1, p1}, Landroid/os/OplusNativeWaveformVibrationEffect;-><init>(Landroid/os/Parcel;)V

    return-object v1

    .line 47
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    .line 48
    .local v1, "offset":I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 49
    const/4 v2, 0x0

    return-object v2
.end method

.method public blacklist getVibratorStatus()Z
    .locals 1

    .line 35
    const/4 v0, 0x1

    return v0
.end method
