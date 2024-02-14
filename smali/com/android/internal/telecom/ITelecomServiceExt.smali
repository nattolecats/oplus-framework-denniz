.class public interface abstract Lcom/android/internal/telecom/ITelecomServiceExt;
.super Ljava/lang/Object;
.source "ITelecomServiceExt.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/ITelecomServiceExt$Stub;,
        Lcom/android/internal/telecom/ITelecomServiceExt$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.ITelecomServiceExt"


# virtual methods
.method public abstract blacklist cancelMissedCallsNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
