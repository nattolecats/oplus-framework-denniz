.class public interface abstract Lcom/oplus/app/IOplusFreezeInfoListener;
.super Ljava/lang/Object;
.source "IOplusFreezeInfoListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/app/IOplusFreezeInfoListener$Stub;,
        Lcom/oplus/app/IOplusFreezeInfoListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.oplus.app.IOplusFreezeInfoListener"


# virtual methods
.method public abstract blacklist notifyFreezeInfo(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/app/OplusFreezeInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
