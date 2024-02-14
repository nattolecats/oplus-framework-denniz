.class public interface abstract Lcom/oplus/screencast/IOplusScreenCastStateObserver;
.super Ljava/lang/Object;
.source "IOplusScreenCastStateObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/screencast/IOplusScreenCastStateObserver$Stub;,
        Lcom/oplus/screencast/IOplusScreenCastStateObserver$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.oplus.screencast.IOplusScreenCastStateObserver"


# virtual methods
.method public abstract blacklist onContentConfigChanged(Lcom/oplus/screencast/OplusScreenCastInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
