.class public interface abstract Lcom/oplus/app/IOplusPermissionRecordController;
.super Ljava/lang/Object;
.source "IOplusPermissionRecordController.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/app/IOplusPermissionRecordController$Stub;,
        Lcom/oplus/app/IOplusPermissionRecordController$Default;
    }
.end annotation


# static fields
.field public static final whitelist DESCRIPTOR:Ljava/lang/String; = "com.oplus.app.IOplusPermissionRecordController"


# virtual methods
.method public abstract whitelist notifyPermissionRecordInfo([Ljava/lang/String;[Ljava/lang/String;[J[I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
