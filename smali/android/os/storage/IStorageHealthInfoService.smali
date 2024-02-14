.class public interface abstract Landroid/os/storage/IStorageHealthInfoService;
.super Ljava/lang/Object;
.source "IStorageHealthInfoService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/IStorageHealthInfoService$Stub;,
        Landroid/os/storage/IStorageHealthInfoService$Default;
    }
.end annotation


# static fields
.field public static final whitelist DESCRIPTOR:Ljava/lang/String; = "android.os.storage.IStorageHealthInfoService"


# virtual methods
.method public abstract whitelist getStorageHealthInfoItem()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist getStorageOriginalInfo()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getstrStorageHealthInfo()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
