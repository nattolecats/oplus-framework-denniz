.class public interface abstract Lcom/aiunit/aon/utils/IAONCallback;
.super Ljava/lang/Object;
.source "IAONCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aiunit/aon/utils/IAONCallback$Stub;,
        Lcom/aiunit/aon/utils/IAONCallback$Default;
    }
.end annotation


# static fields
.field public static final whitelist DESCRIPTOR:Ljava/lang/String; = "com.aiunit.aon.utils.IAONCallback"


# virtual methods
.method public abstract whitelist getRequestID()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist onDetectedError(Lcom/aiunit/aon/utils/core/ErrorResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist onDetectedInfo(Lcom/aiunit/aon/utils/core/InfoResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist onDetectedResult(Lcom/aiunit/aon/utils/core/CommentResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
