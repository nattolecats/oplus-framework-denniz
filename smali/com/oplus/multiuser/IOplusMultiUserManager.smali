.class public interface abstract Lcom/oplus/multiuser/IOplusMultiUserManager;
.super Ljava/lang/Object;
.source "IOplusMultiUserManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/multiuser/IOplusMultiUserManager$Stub;,
        Lcom/oplus/multiuser/IOplusMultiUserManager$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.oplus.multiuser.IOplusMultiUserManager"


# virtual methods
.method public abstract blacklist getMultiSystemUserIdNoCheck()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
