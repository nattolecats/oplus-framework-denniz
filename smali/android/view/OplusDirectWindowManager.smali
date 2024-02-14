.class public Landroid/view/OplusDirectWindowManager;
.super Ljava/lang/Object;
.source "OplusDirectWindowManager.java"

# interfaces
.implements Landroid/view/IOplusDirectWindowManager;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "OplusDirectWindowManager"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist directFindCmd(Lcom/oplus/direct/OplusDirectFindCmd;)V
    .locals 1
    .param p1, "findCmd"    # Lcom/oplus/direct/OplusDirectFindCmd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    invoke-static {}, Landroid/view/OplusWindowManager;->getInstance()Landroid/view/OplusWindowManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/OplusWindowManager;->directFindCmd(Lcom/oplus/direct/OplusDirectFindCmd;)V

    .line 32
    return-void
.end method
