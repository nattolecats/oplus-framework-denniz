.class public interface abstract Lcom/oplus/datasync/ISysStateChangeCallback;
.super Ljava/lang/Object;
.source "ISysStateChangeCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/datasync/ISysStateChangeCallback$Stub;,
        Lcom/oplus/datasync/ISysStateChangeCallback$Default;
    }
.end annotation


# static fields
.field public static final whitelist DESCRIPTOR:Ljava/lang/String; = "com.oplus.datasync.ISysStateChangeCallback"


# virtual methods
.method public abstract whitelist onSysStateChanged(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
