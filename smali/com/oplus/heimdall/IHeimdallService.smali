.class public interface abstract Lcom/oplus/heimdall/IHeimdallService;
.super Ljava/lang/Object;
.source "IHeimdallService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/heimdall/IHeimdallService$Stub;,
        Lcom/oplus/heimdall/IHeimdallService$Default;
    }
.end annotation


# static fields
.field public static final whitelist DESCRIPTOR:Ljava/lang/String; = "com.oplus.heimdall.IHeimdallService"


# virtual methods
.method public abstract whitelist getCrashService()Lcom/oplus/heimdall/ICrashService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist getRootService()Lcom/oplus/heimdall/IRootService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist getTraceService()Lcom/oplus/heimdall/ITraceService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
