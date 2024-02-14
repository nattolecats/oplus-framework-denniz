.class public Landroid/content/pm/UserInfoExtImpl;
.super Ljava/lang/Object;
.source "UserInfoExtImpl.java"

# interfaces
.implements Landroid/content/pm/IUserInfoExt;


# instance fields
.field private blacklist mUserInfo:Landroid/content/pm/UserInfo;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "base"    # Ljava/lang/Object;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    move-object v0, p1

    check-cast v0, Landroid/content/pm/UserInfo;

    iput-object v0, p0, Landroid/content/pm/UserInfoExtImpl;->mUserInfo:Landroid/content/pm/UserInfo;

    .line 25
    return-void
.end method
