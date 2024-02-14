.class public interface abstract Lcom/android/server/test/ICoverageServiceCallBack;
.super Ljava/lang/Object;
.source "ICoverageServiceCallBack.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/test/ICoverageServiceCallBack$Stub;,
        Lcom/android/server/test/ICoverageServiceCallBack$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.server.test.ICoverageServiceCallBack"


# virtual methods
.method public abstract blacklist callToDump(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist callToReset(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
