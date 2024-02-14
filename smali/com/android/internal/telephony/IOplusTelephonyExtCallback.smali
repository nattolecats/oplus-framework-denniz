.class public interface abstract Lcom/android/internal/telephony/IOplusTelephonyExtCallback;
.super Ljava/lang/Object;
.source "IOplusTelephonyExtCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IOplusTelephonyExtCallback$Stub;,
        Lcom/android/internal/telephony/IOplusTelephonyExtCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.IOplusTelephonyExtCallback"


# virtual methods
.method public abstract blacklist onTelephonyEventReport(IILandroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
