.class public interface abstract Lcom/oplus/exfunction/IOplusExFunction;
.super Ljava/lang/Object;
.source "IOplusExFunction.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/exfunction/IOplusExFunction$Stub;,
        Lcom/oplus/exfunction/IOplusExFunction$Default;
    }
.end annotation


# static fields
.field public static final whitelist DESCRIPTOR:Ljava/lang/String; = "com.oplus.exfunction.IOplusExFunction"


# virtual methods
.method public abstract whitelist endRepairMode()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist startRepairMode()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
