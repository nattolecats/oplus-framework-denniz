.class public interface abstract Lcom/oplus/neuron/INeuronSystemEventListener;
.super Ljava/lang/Object;
.source "INeuronSystemEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/neuron/INeuronSystemEventListener$Stub;,
        Lcom/oplus/neuron/INeuronSystemEventListener$Default;
    }
.end annotation


# static fields
.field public static final whitelist DESCRIPTOR:Ljava/lang/String; = "com.oplus.neuron.INeuronSystemEventListener"


# virtual methods
.method public abstract whitelist onEvent(ILandroid/content/ContentValues;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
