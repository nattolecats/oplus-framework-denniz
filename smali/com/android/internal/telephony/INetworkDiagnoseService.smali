.class public interface abstract Lcom/android/internal/telephony/INetworkDiagnoseService;
.super Ljava/lang/Object;
.source "INetworkDiagnoseService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/INetworkDiagnoseService$Stub;,
        Lcom/android/internal/telephony/INetworkDiagnoseService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.INetworkDiagnoseService"


# virtual methods
.method public abstract blacklist getOrigSignalStrength(I)Landroid/telephony/SignalStrength;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
