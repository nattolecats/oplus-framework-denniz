.class public interface abstract Landroid/app/IOplusWallpaperManager;
.super Ljava/lang/Object;
.source "IOplusWallpaperManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IOplusWallpaperManager$Stub;,
        Landroid/app/IOplusWallpaperManager$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.IOplusWallpaperManager"


# virtual methods
.method public abstract blacklist getFoldWallpaperInfo(II)Landroid/app/WallpaperInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist rebindWallpaperComponent(Landroid/content/ComponentName;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setFoldWallpaperComponentChecked(Landroid/content/ComponentName;Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
