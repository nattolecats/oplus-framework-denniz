.class public interface abstract Landroid/view/IOplusDirectWindowManager;
.super Ljava/lang/Object;
.source "IOplusDirectWindowManager.java"

# interfaces
.implements Landroid/view/IOplusBaseWindowManager;


# static fields
.field public static final blacklist DIRECT_FIND_CMD:I = 0x28a2

.field public static final blacklist IOPLUSDIRECTWINDOWMANAGER_INDEX:I = 0x28a1

.field public static final blacklist SECTION_INDEX:I = 0xc8


# virtual methods
.method public abstract blacklist directFindCmd(Lcom/oplus/direct/OplusDirectFindCmd;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
