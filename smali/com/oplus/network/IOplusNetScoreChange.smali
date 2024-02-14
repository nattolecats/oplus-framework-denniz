.class public interface abstract Lcom/oplus/network/IOplusNetScoreChange;
.super Ljava/lang/Object;
.source "IOplusNetScoreChange.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/network/IOplusNetScoreChange$Stub;,
        Lcom/oplus/network/IOplusNetScoreChange$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.oplus.network.IOplusNetScoreChange"


# virtual methods
.method public abstract blacklist networkScoreChange(IIIZII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
