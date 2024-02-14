.class public interface abstract Landroid/app/IOplusAppOpsResourcesManager;
.super Ljava/lang/Object;
.source "IOplusAppOpsResourcesManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IOplusAppOpsResourcesManager$Stub;,
        Landroid/app/IOplusAppOpsResourcesManager$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.IOplusAppOpsResourcesManager"


# virtual methods
.method public abstract blacklist readCustomizedAppOps(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
