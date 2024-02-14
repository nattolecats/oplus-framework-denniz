.class public interface abstract Landroid/hardware/fingerprint/IOplusFingerprintManagerEx;
.super Ljava/lang/Object;
.source "IOplusFingerprintManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/fingerprint/IOplusFingerprintManagerEx$OpticalFingerprintListener;
    }
.end annotation


# virtual methods
.method public whitelist getFailedAttempts()I
    .locals 1

    .line 38
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getLockoutAttemptDeadline()J
    .locals 2

    .line 32
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public whitelist hideFingerprintIcon()V
    .locals 0

    .line 35
    return-void
.end method

.method public whitelist regsiterOpticalFingerprintListener(Landroid/hardware/fingerprint/IOplusFingerprintManagerEx$OpticalFingerprintListener;)I
    .locals 1
    .param p1, "listener"    # Landroid/hardware/fingerprint/IOplusFingerprintManagerEx$OpticalFingerprintListener;

    .line 26
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist showFingerprintIcon()V
    .locals 0

    .line 29
    return-void
.end method
