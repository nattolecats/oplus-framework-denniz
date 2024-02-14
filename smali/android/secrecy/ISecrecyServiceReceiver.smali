.class public interface abstract Landroid/secrecy/ISecrecyServiceReceiver;
.super Ljava/lang/Object;
.source "ISecrecyServiceReceiver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/secrecy/ISecrecyServiceReceiver$Stub;,
        Landroid/secrecy/ISecrecyServiceReceiver$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.secrecy.ISecrecyServiceReceiver"


# virtual methods
.method public abstract blacklist onSecrecyStateChanged(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
