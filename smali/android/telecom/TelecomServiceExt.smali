.class public Landroid/telecom/TelecomServiceExt;
.super Ljava/lang/Object;
.source "TelecomServiceExt.java"


# static fields
.field private static final blacklist DBG:Z

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mBinder:Landroid/os/IBinder;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 42
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v0

    sput-boolean v0, Landroid/telecom/TelecomServiceExt;->DBG:Z

    .line 43
    const-class v0, Landroid/telecom/TelecomServiceExt;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telecom/TelecomServiceExt;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Landroid/telecom/TelecomServiceExt$1;

    invoke-direct {v0, p0}, Landroid/telecom/TelecomServiceExt$1;-><init>(Landroid/telecom/TelecomServiceExt;)V

    iput-object v0, p0, Landroid/telecom/TelecomServiceExt;->mBinder:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public whitelist cancelMissedCallsNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 54
    sget-object v0, Landroid/telecom/TelecomServiceExt;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelMissedCallsNotification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extras = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void
.end method

.method public final whitelist getBinder()Landroid/os/IBinder;
    .locals 1

    .line 65
    iget-object v0, p0, Landroid/telecom/TelecomServiceExt;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method
