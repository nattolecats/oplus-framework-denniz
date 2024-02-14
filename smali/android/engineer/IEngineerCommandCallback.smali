.class public interface abstract Landroid/engineer/IEngineerCommandCallback;
.super Ljava/lang/Object;
.source "IEngineerCommandCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/engineer/IEngineerCommandCallback$Stub;,
        Landroid/engineer/IEngineerCommandCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.engineer.IEngineerCommandCallback"


# virtual methods
.method public abstract blacklist onCommandHandled(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
