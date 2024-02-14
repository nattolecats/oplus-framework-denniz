.class public interface abstract Lcom/oplus/atlas/IOplusAtlasServiceCallback;
.super Ljava/lang/Object;
.source "IOplusAtlasServiceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/atlas/IOplusAtlasServiceCallback$Stub;,
        Lcom/oplus/atlas/IOplusAtlasServiceCallback$Default;
    }
.end annotation


# static fields
.field public static final whitelist DESCRIPTOR:Ljava/lang/String; = "com.oplus.atlas.IOplusAtlasServiceCallback"


# virtual methods
.method public abstract whitelist notifyEvent(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
