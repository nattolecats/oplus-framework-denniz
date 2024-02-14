.class public interface abstract Lcom/android/internal/telephony/IPhoneStateListenerExt;
.super Ljava/lang/Object;
.source "IPhoneStateListenerExt.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IPhoneStateListenerExt$Stub;,
        Lcom/android/internal/telephony/IPhoneStateListenerExt$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.IPhoneStateListenerExt"


# virtual methods
.method public abstract blacklist onImsRemainTimeReported(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onPlmnCarrierConfigChanged(ILandroid/os/PersistableBundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
