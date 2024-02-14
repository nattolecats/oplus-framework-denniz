.class public Landroid/content/pm/PackageInstallerExtImpl;
.super Ljava/lang/Object;
.source "PackageInstallerExtImpl.java"


# static fields
.field private static final blacklist ERROR_MSG_CHILDREN_MODE:Ljava/lang/String; = "prevent createSession in children mode"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist interceptCreateSession(I)Ljava/lang/String;
    .locals 2
    .param p0, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    new-instance v0, Landroid/content/pm/OplusPackageManager;

    invoke-direct {v0}, Landroid/content/pm/OplusPackageManager;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/OplusPackageManager;->prohibitChildInstallation(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    const-string v0, "prevent createSession in children mode"

    return-object v0

    .line 32
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
