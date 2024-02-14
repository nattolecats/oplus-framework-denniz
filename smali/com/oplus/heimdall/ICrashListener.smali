.class public interface abstract Lcom/oplus/heimdall/ICrashListener;
.super Ljava/lang/Object;
.source "ICrashListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/heimdall/ICrashListener$Stub;,
        Lcom/oplus/heimdall/ICrashListener$Default;
    }
.end annotation


# static fields
.field public static final whitelist DESCRIPTOR:Ljava/lang/String; = "com.oplus.heimdall.ICrashListener"


# virtual methods
.method public abstract whitelist onNotify(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
