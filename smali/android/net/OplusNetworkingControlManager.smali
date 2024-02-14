.class public Landroid/net/OplusNetworkingControlManager;
.super Ljava/lang/Object;
.source "OplusNetworkingControlManager.java"


# static fields
.field public static final whitelist ACTION_APP_NETWORK_NOT_ALLOWED:Ljava/lang/String; = "oplus.intent.action.APP_NETWORK_NOT_ALLOWED"

.field public static final whitelist ALLOW:I = 0x1

.field public static final whitelist DENY:I = 0x2

.field public static final whitelist EXTRA_NETWORK_TYPE:Ljava/lang/String; = "networkType"

.field public static final whitelist EXTRA_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final whitelist INVALID_UID:I = -0x1

.field public static final whitelist POLICY_AllOW_MOBILEDATA_REJECT_WIFI:I = 0x2

.field public static final whitelist POLICY_NONE:I = 0x0

.field public static final whitelist POLICY_REJECT_ALL:I = 0x4

.field public static final whitelist POLICY_REJECT_MOBILEDATA_AllOW_WIFI:I = 0x1

.field public static final whitelist REJECT_MOBILEDATA:I = 0x5

.field public static final whitelist REJECT_WIFI:I = 0x6

.field public static final whitelist TYPE_MOBILEDATA:I = 0x0

.field public static final whitelist TYPE_MOBILEDATA_MTK:I = 0x1

.field public static final whitelist TYPE_MOBILEDATA_QCOM:I = 0x2

.field public static final whitelist TYPE_WIFI:I = 0x3

.field private static blacklist mInstance:Landroid/net/OplusNetworkingControlManager;


# instance fields
.field private blacklist mService:Landroid/net/IOplusNetworkingControlManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 53
    const/4 v0, 0x0

    sput-object v0, Landroid/net/OplusNetworkingControlManager;->mInstance:Landroid/net/OplusNetworkingControlManager;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, "networking_control"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IOplusNetworkingControlManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IOplusNetworkingControlManager;

    move-result-object v0

    iput-object v0, p0, Landroid/net/OplusNetworkingControlManager;->mService:Landroid/net/IOplusNetworkingControlManager;

    .line 57
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/net/IOplusNetworkingControlManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/IOplusNetworkingControlManager;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    if-eqz p2, :cond_0

    .line 70
    iput-object p2, p0, Landroid/net/OplusNetworkingControlManager;->mService:Landroid/net/IOplusNetworkingControlManager;

    .line 71
    return-void

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "missing IOplusNetworkingControlManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist from(Landroid/content/Context;)Landroid/net/OplusNetworkingControlManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 74
    const-string v0, "networking_control"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/OplusNetworkingControlManager;

    return-object v0
.end method

.method public static whitelist getOplusNetworkingControlManager()Landroid/net/OplusNetworkingControlManager;
    .locals 1

    .line 60
    sget-object v0, Landroid/net/OplusNetworkingControlManager;->mInstance:Landroid/net/OplusNetworkingControlManager;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Landroid/net/OplusNetworkingControlManager;

    invoke-direct {v0}, Landroid/net/OplusNetworkingControlManager;-><init>()V

    sput-object v0, Landroid/net/OplusNetworkingControlManager;->mInstance:Landroid/net/OplusNetworkingControlManager;

    .line 63
    :cond_0
    sget-object v0, Landroid/net/OplusNetworkingControlManager;->mInstance:Landroid/net/OplusNetworkingControlManager;

    return-object v0
.end method

.method public static whitelist uidPoliciesToString(I)Ljava/lang/String;
    .locals 5
    .param p0, "uidPolicies"    # I

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 123
    .local v0, "string":Ljava/lang/StringBuilder;
    if-nez p0, :cond_0

    .line 124
    const-string v1, "NONE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 126
    :cond_0
    const-class v1, Landroid/net/OplusNetworkingControlManager;

    int-to-long v2, p0

    const-string v4, "POLICY_"

    invoke-static {v1, v4, v2, v3}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    :goto_0
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public whitelist factoryReset()V
    .locals 2

    .line 134
    iget-object v0, p0, Landroid/net/OplusNetworkingControlManager;->mService:Landroid/net/IOplusNetworkingControlManager;

    if-nez v0, :cond_0

    .line 135
    return-void

    .line 138
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/net/IOplusNetworkingControlManager;->factoryReset()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    nop

    .line 142
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getPolicyList()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Landroid/net/OplusNetworkingControlManager;->mService:Landroid/net/IOplusNetworkingControlManager;

    if-nez v0, :cond_0

    .line 112
    const/4 v0, 0x0

    return-object v0

    .line 115
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/net/IOplusNetworkingControlManager;->getPolicyList()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getUidPolicy(I)I
    .locals 2
    .param p1, "uid"    # I

    .line 89
    iget-object v0, p0, Landroid/net/OplusNetworkingControlManager;->mService:Landroid/net/IOplusNetworkingControlManager;

    if-nez v0, :cond_0

    .line 90
    const/4 v0, 0x0

    return v0

    .line 93
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Landroid/net/IOplusNetworkingControlManager;->getUidPolicy(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getUidsWithPolicy(I)[I
    .locals 2
    .param p1, "policy"    # I

    .line 100
    iget-object v0, p0, Landroid/net/OplusNetworkingControlManager;->mService:Landroid/net/IOplusNetworkingControlManager;

    if-nez v0, :cond_0

    .line 101
    const/4 v0, 0x0

    return-object v0

    .line 104
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Landroid/net/IOplusNetworkingControlManager;->getUidsWithPolicy(I)[I

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setUidPolicy(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .line 78
    iget-object v0, p0, Landroid/net/OplusNetworkingControlManager;->mService:Landroid/net/IOplusNetworkingControlManager;

    if-nez v0, :cond_0

    .line 79
    return-void

    .line 82
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/net/IOplusNetworkingControlManager;->setUidPolicy(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    nop

    .line 86
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
