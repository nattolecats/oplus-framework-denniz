.class public interface abstract Lcom/oplus/confinemode/IOplusConfineModeObserver;
.super Ljava/lang/Object;
.source "IOplusConfineModeObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/confinemode/IOplusConfineModeObserver$Stub;,
        Lcom/oplus/confinemode/IOplusConfineModeObserver$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.oplus.confinemode.IOplusConfineModeObserver"


# virtual methods
.method public abstract blacklist onChange(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
