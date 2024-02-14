.class public interface abstract Lcom/oplus/network/IOlkEventChange;
.super Ljava/lang/Object;
.source "IOlkEventChange.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/network/IOlkEventChange$Stub;,
        Lcom/oplus/network/IOlkEventChange$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.oplus.network.IOlkEventChange"


# virtual methods
.method public abstract blacklist onChanged(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
