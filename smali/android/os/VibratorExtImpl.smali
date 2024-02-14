.class public Landroid/os/VibratorExtImpl;
.super Ljava/lang/Object;
.source "VibratorExtImpl.java"

# interfaces
.implements Landroid/os/IVibratorExt;


# static fields
.field private static final blacklist MAX_HAPTIC_FEEDBACK_DURATION:J = 0x1388L

.field private static final blacklist TAG:Ljava/lang/String; = "VibratorExtImpl"


# instance fields
.field private blacklist mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "base"    # Ljava/lang/Object;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    move-object v0, p1

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Landroid/os/VibratorExtImpl;->mVibrator:Landroid/os/Vibrator;

    .line 29
    return-void
.end method


# virtual methods
.method public blacklist vibrate(Landroid/os/VibrationEffect;)Z
    .locals 1
    .param p1, "vibe"    # Landroid/os/VibrationEffect;

    .line 33
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/VibratorExtImpl;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)Z

    move-result v0

    return v0
.end method

.method public blacklist vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)Z
    .locals 5
    .param p1, "vibe"    # Landroid/os/VibrationEffect;
    .param p2, "attributes"    # Landroid/media/AudioAttributes;

    .line 38
    if-eqz p1, :cond_1

    .line 39
    invoke-virtual {p1}, Landroid/os/VibrationEffect;->getDuration()J

    move-result-wide v0

    .line 40
    .local v0, "duration":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    const-wide/16 v2, 0x1388

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 41
    if-nez p2, :cond_0

    .line 42
    new-instance v2, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v2}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v2

    goto :goto_0

    .line 43
    :cond_0
    new-instance v2, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v2, p2}, Landroid/os/VibrationAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    invoke-virtual {v2}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v2

    :goto_0
    nop

    .line 44
    .local v2, "temp":Landroid/os/VibrationAttributes;
    invoke-virtual {v2}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v3

    if-nez v3, :cond_1

    .line 45
    new-instance v3, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v3, v2}, Landroid/os/VibrationAttributes$Builder;-><init>(Landroid/os/VibrationAttributes;)V

    const/16 v4, 0x12

    .line 46
    invoke-virtual {v3, v4}, Landroid/os/VibrationAttributes$Builder;->setUsage(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v3

    .line 47
    .local v3, "vibrationAttributes":Landroid/os/VibrationAttributes;
    iget-object v4, p0, Landroid/os/VibratorExtImpl;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v4, p1, v3}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)V

    .line 48
    const/4 v4, 0x1

    return v4

    .line 52
    .end local v0    # "duration":J
    .end local v2    # "temp":Landroid/os/VibrationAttributes;
    .end local v3    # "vibrationAttributes":Landroid/os/VibrationAttributes;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
