.class public interface abstract Landroid/telephony/ims/aidl/IImsRil;
.super Ljava/lang/Object;
.source "IImsRil.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/IImsRil$Stub;,
        Landroid/telephony/ims/aidl/IImsRil$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.telephony.ims.aidl.IImsRil"


# virtual methods
.method public abstract blacklist commonReqToIms(IILandroid/os/Message;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getIImsExtBinder()Lcom/oplus/ims/IImsExt;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist registerIndication(Landroid/telephony/ims/aidl/IImsRilInd;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist unRegisterIndication(Landroid/telephony/ims/aidl/IImsRilInd;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
