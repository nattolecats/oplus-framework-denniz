.class public final Lcom/oplus/commscene/CommSceneManager;
.super Ljava/lang/Object;
.source "CommSceneManager.java"


# static fields
.field public static final blacklist COMMSCENEMANAGER_SERVICE:Ljava/lang/String; = "commscene"

.field private static final blacklist TAG:Ljava/lang/String; = "CommSceneManager"

.field private static blacklist sService:Lcom/oplus/commscene/ICommScene;


# instance fields
.field private final blacklist mContext:Landroid/content/Context;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/oplus/commscene/CommSceneManager;->mContext:Landroid/content/Context;

    .line 46
    sget-object v0, Lcom/oplus/commscene/CommSceneManager;->sService:Lcom/oplus/commscene/ICommScene;

    if-nez v0, :cond_0

    .line 48
    :try_start_0
    const-string v0, "commscene"

    .line 49
    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 48
    invoke-static {v0}, Lcom/oplus/commscene/ICommScene$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/commscene/ICommScene;

    move-result-object v0

    sput-object v0, Lcom/oplus/commscene/CommSceneManager;->sService:Lcom/oplus/commscene/ICommScene;
    :try_end_0
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServiceNotFoundException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/ServiceManager$ServiceNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CommSceneManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .end local v0    # "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    :cond_0
    :goto_0
    return-void
.end method

.method private blacklist getPackageName()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/oplus/commscene/CommSceneManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 99
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist listen(Lcom/oplus/commscene/CommSceneListener;I)V
    .locals 3
    .param p1, "listener"    # Lcom/oplus/commscene/CommSceneListener;
    .param p2, "events"    # I

    .line 89
    :try_start_0
    sget-object v0, Lcom/oplus/commscene/CommSceneManager;->sService:Lcom/oplus/commscene/ICommScene;

    invoke-direct {p0}, Lcom/oplus/commscene/CommSceneManager;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/oplus/commscene/CommSceneListener;->mCallback:Lcom/oplus/commscene/ICommSceneListener;

    invoke-interface {v0, v1, v2, p2}, Lcom/oplus/commscene/ICommScene;->listen(Ljava/lang/String;Lcom/oplus/commscene/ICommSceneListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    nop

    .line 93
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
