.class Lcom/oplus/wrapper/app/IActivityManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IActivityManager.java"

# interfaces
.implements Lcom/oplus/wrapper/app/IActivityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/wrapper/app/IActivityManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private final blacklist mTarget:Landroid/app/IActivityManager;


# direct methods
.method constructor blacklist <init>(Landroid/app/IActivityManager;)V
    .locals 0
    .param p1, "target"    # Landroid/app/IActivityManager;

    .line 1241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1242
    iput-object p1, p0, Lcom/oplus/wrapper/app/IActivityManager$Stub$Proxy;->mTarget:Landroid/app/IActivityManager;

    .line 1243
    return-void
.end method


# virtual methods
.method public whitelist getConfiguration()Landroid/content/res/OplusBaseConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1247
    iget-object v0, p0, Lcom/oplus/wrapper/app/IActivityManager$Stub$Proxy;->mTarget:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/OplusBaseConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist removeTask(I)Z
    .locals 1
    .param p1, "taskId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1252
    iget-object v0, p0, Lcom/oplus/wrapper/app/IActivityManager$Stub$Proxy;->mTarget:Landroid/app/IActivityManager;

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->removeTask(I)Z

    move-result v0

    return v0
.end method
