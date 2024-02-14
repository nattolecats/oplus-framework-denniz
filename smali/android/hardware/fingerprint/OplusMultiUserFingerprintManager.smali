.class public Landroid/hardware/fingerprint/OplusMultiUserFingerprintManager;
.super Ljava/lang/Object;
.source "OplusMultiUserFingerprintManager.java"


# static fields
.field public static final whitelist FLAG_FINGERPRINT_SECOND_SYSTEM:I = 0x10000000

.field private static final blacklist IOplusFingerprintManagerSingleton:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Landroid/hardware/fingerprint/IOplusFingerprintManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sOplusMultiUserSingleton:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Landroid/hardware/fingerprint/OplusMultiUserFingerprintManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Landroid/hardware/fingerprint/OplusMultiUserFingerprintManager$1;

    invoke-direct {v0}, Landroid/hardware/fingerprint/OplusMultiUserFingerprintManager$1;-><init>()V

    sput-object v0, Landroid/hardware/fingerprint/OplusMultiUserFingerprintManager;->IOplusFingerprintManagerSingleton:Landroid/util/Singleton;

    .line 70
    new-instance v0, Landroid/hardware/fingerprint/OplusMultiUserFingerprintManager$2;

    invoke-direct {v0}, Landroid/hardware/fingerprint/OplusMultiUserFingerprintManager$2;-><init>()V

    sput-object v0, Landroid/hardware/fingerprint/OplusMultiUserFingerprintManager;->sOplusMultiUserSingleton:Landroid/util/Singleton;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getInstance()Landroid/hardware/fingerprint/OplusMultiUserFingerprintManager;
    .locals 1

    .line 84
    sget-object v0, Landroid/hardware/fingerprint/OplusMultiUserFingerprintManager;->sOplusMultiUserSingleton:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/OplusMultiUserFingerprintManager;

    return-object v0
.end method

.method public static whitelist getService()Landroid/hardware/fingerprint/IOplusFingerprintManager;
    .locals 1

    .line 46
    sget-object v0, Landroid/hardware/fingerprint/OplusMultiUserFingerprintManager;->IOplusFingerprintManagerSingleton:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/IOplusFingerprintManager;

    return-object v0
.end method


# virtual methods
.method public whitelist getEnrolledFingerprints(II)Ljava/util/List;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "sensorId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/OplusFingerprint;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/OplusFingerprint;>;"
    invoke-static {}, Landroid/hardware/fingerprint/OplusMultiUserFingerprintManager;->getService()Landroid/hardware/fingerprint/IOplusFingerprintManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/hardware/fingerprint/IOplusFingerprintManager;->getEnrolledFingerprints(II)Ljava/util/List;

    move-result-object v0

    .line 116
    return-object v0
.end method

.method public whitelist setFingerprintFlags(IIIII)I
    .locals 6
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .param p5, "sensorId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 135
    invoke-static {}, Landroid/hardware/fingerprint/OplusMultiUserFingerprintManager;->getService()Landroid/hardware/fingerprint/IOplusFingerprintManager;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/hardware/fingerprint/IOplusFingerprintManager;->setFingerprintFlags(IIIII)I

    move-result v0

    .line 153
    .local v0, "ret":I
    return v0
.end method
