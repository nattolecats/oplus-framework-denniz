.class public interface abstract Lcom/oplus/network/INetworkDiagnosisCb;
.super Ljava/lang/Object;
.source "INetworkDiagnosisCb.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/network/INetworkDiagnosisCb$Stub;,
        Lcom/oplus/network/INetworkDiagnosisCb$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.oplus.network.INetworkDiagnosisCb"


# virtual methods
.method public abstract blacklist onFinish(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
