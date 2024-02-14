.class public interface abstract Lcom/oplus/network/IOplusNetdEventCb;
.super Ljava/lang/Object;
.source "IOplusNetdEventCb.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/network/IOplusNetdEventCb$Stub;,
        Lcom/oplus/network/IOplusNetdEventCb$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.oplus.network.IOplusNetdEventCb"


# virtual methods
.method public abstract blacklist onDnsEvent(IIIILjava/lang/String;[Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
