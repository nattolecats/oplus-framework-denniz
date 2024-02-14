.class public interface abstract Lcom/oplus/network/heartbeat/IHeartbeatListener;
.super Ljava/lang/Object;
.source "IHeartbeatListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/network/heartbeat/IHeartbeatListener$Stub;,
        Lcom/oplus/network/heartbeat/IHeartbeatListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.oplus.network.heartbeat.IHeartbeatListener"


# virtual methods
.method public abstract blacklist onHeartbeatStateUpdate(III[I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
