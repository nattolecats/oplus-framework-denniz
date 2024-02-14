.class public interface abstract Lcom/oplus/commscene/ICommScene;
.super Ljava/lang/Object;
.source "ICommScene.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/commscene/ICommScene$Stub;,
        Lcom/oplus/commscene/ICommScene$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.oplus.commscene.ICommScene"


# virtual methods
.method public abstract blacklist listen(Ljava/lang/String;Lcom/oplus/commscene/ICommSceneListener;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
