.class public interface abstract Lcom/oplus/nec/IOnNecEventListener;
.super Ljava/lang/Object;
.source "IOnNecEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/nec/IOnNecEventListener$Stub;,
        Lcom/oplus/nec/IOnNecEventListener$Default;
    }
.end annotation


# static fields
.field public static final whitelist DESCRIPTOR:Ljava/lang/String; = "com.oplus.nec.IOnNecEventListener"


# virtual methods
.method public abstract whitelist onCollectPwrStatistic(Z)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist onNecEventReport(IILandroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist onStandbyStart(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
