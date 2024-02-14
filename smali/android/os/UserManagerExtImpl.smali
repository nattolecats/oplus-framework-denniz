.class public Landroid/os/UserManagerExtImpl;
.super Ljava/lang/Object;
.source "UserManagerExtImpl.java"

# interfaces
.implements Landroid/os/IUserManagerExt;


# instance fields
.field private blacklist mBase:Landroid/os/UserManager;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "base"    # Ljava/lang/Object;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    move-object v0, p1

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Landroid/os/UserManagerExtImpl;->mBase:Landroid/os/UserManager;

    .line 29
    return-void
.end method


# virtual methods
.method public blacklist isMultiAppUserId(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 34
    const/16 v0, 0x3e7

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
