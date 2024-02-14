.class public interface abstract Lcom/oplus/exsystemservice/IOplusExSystemService;
.super Ljava/lang/Object;
.source "IOplusExSystemService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/exsystemservice/IOplusExSystemService$Stub;,
        Lcom/oplus/exsystemservice/IOplusExSystemService$Default;
    }
.end annotation


# static fields
.field public static final whitelist DESCRIPTOR:Ljava/lang/String; = "com.oplus.exsystemservice.IOplusExSystemService"


# virtual methods
.method public abstract whitelist onBootPhase(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
