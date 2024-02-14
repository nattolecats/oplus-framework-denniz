.class public interface abstract Lcom/oplus/network/IDataLimitEventCb;
.super Ljava/lang/Object;
.source "IDataLimitEventCb.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/network/IDataLimitEventCb$Stub;,
        Lcom/oplus/network/IDataLimitEventCb$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.oplus.network.IDataLimitEventCb"


# virtual methods
.method public abstract blacklist dataLimitEvent(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist dataLimitStateChange(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
