.class public interface abstract Lcom/oplus/app/IAthenaSystemService;
.super Ljava/lang/Object;
.source "IAthenaSystemService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/app/IAthenaSystemService$Stub;,
        Lcom/oplus/app/IAthenaSystemService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.oplus.app.IAthenaSystemService"


# virtual methods
.method public abstract blacklist onBootPhase(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
