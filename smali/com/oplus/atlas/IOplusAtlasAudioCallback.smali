.class public interface abstract Lcom/oplus/atlas/IOplusAtlasAudioCallback;
.super Ljava/lang/Object;
.source "IOplusAtlasAudioCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/atlas/IOplusAtlasAudioCallback$Stub;,
        Lcom/oplus/atlas/IOplusAtlasAudioCallback$Default;
    }
.end annotation


# static fields
.field public static final whitelist DESCRIPTOR:Ljava/lang/String; = "com.oplus.atlas.IOplusAtlasAudioCallback"


# virtual methods
.method public abstract whitelist onErrorVoiceChanger(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist onPlaybackStateChanged(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist onRecordingStateChanged(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
