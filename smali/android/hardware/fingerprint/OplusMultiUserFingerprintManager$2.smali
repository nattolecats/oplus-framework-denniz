.class Landroid/hardware/fingerprint/OplusMultiUserFingerprintManager$2;
.super Landroid/util/Singleton;
.source "OplusMultiUserFingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/OplusMultiUserFingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Landroid/hardware/fingerprint/OplusMultiUserFingerprintManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist create()Landroid/hardware/fingerprint/OplusMultiUserFingerprintManager;
    .locals 1

    .line 74
    new-instance v0, Landroid/hardware/fingerprint/OplusMultiUserFingerprintManager;

    invoke-direct {v0}, Landroid/hardware/fingerprint/OplusMultiUserFingerprintManager;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic blacklist create()Ljava/lang/Object;
    .locals 1

    .line 71
    invoke-virtual {p0}, Landroid/hardware/fingerprint/OplusMultiUserFingerprintManager$2;->create()Landroid/hardware/fingerprint/OplusMultiUserFingerprintManager;

    move-result-object v0

    return-object v0
.end method
