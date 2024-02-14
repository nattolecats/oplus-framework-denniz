.class public interface abstract Lcom/android/internal/telephony/IPlmnCarrierConfigLoader;
.super Ljava/lang/Object;
.source "IPlmnCarrierConfigLoader.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IPlmnCarrierConfigLoader$Stub;,
        Lcom/android/internal/telephony/IPlmnCarrierConfigLoader$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.IPlmnCarrierConfigLoader"


# virtual methods
.method public abstract blacklist getConfigForSlotId(ILjava/lang/String;)Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
