.class public interface abstract Lcom/android/internal/policy/IOplusOSKeyguardService;
.super Ljava/lang/Object;
.source "IOplusOSKeyguardService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/IOplusOSKeyguardService$Stub;,
        Lcom/android/internal/policy/IOplusOSKeyguardService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.policy.IOplusOSKeyguardService"


# virtual methods
.method public abstract blacklist onKeyguardDoneForOplus(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist sendCommandToApps(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setNotificationListener(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
