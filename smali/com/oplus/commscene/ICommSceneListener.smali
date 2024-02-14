.class public interface abstract Lcom/oplus/commscene/ICommSceneListener;
.super Ljava/lang/Object;
.source "ICommSceneListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/commscene/ICommSceneListener$Stub;,
        Lcom/oplus/commscene/ICommSceneListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.oplus.commscene.ICommSceneListener"


# virtual methods
.method public abstract blacklist onEvent(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
