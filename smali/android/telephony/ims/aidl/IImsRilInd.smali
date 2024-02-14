.class public interface abstract Landroid/telephony/ims/aidl/IImsRilInd;
.super Ljava/lang/Object;
.source "IImsRilInd.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/IImsRilInd$Stub;,
        Landroid/telephony/ims/aidl/IImsRilInd$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.telephony.ims.aidl.IImsRilInd"


# virtual methods
.method public abstract blacklist onImsRilInd(IILandroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
