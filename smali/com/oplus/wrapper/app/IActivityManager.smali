.class public interface abstract Lcom/oplus/wrapper/app/IActivityManager;
.super Ljava/lang/Object;
.source "IActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/wrapper/app/IActivityManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract whitelist getConfiguration()Landroid/content/res/OplusBaseConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist removeTask(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
