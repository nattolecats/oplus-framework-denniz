.class public abstract Landroid/app/OplusBaseApplicationThread;
.super Landroid/app/IApplicationThread$Stub;
.source "OplusBaseApplicationThread.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "OplusBaseApplicationThr"


# instance fields
.field private blacklist oplusAppThreadHelper:Landroid/app/OplusApplicationThreadHelper;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/app/IApplicationThread$Stub;-><init>()V

    .line 38
    new-instance v0, Landroid/app/OplusApplicationThreadHelper;

    invoke-direct {v0, p0}, Landroid/app/OplusApplicationThreadHelper;-><init>(Landroid/app/OplusBaseApplicationThread;)V

    iput-object v0, p0, Landroid/app/OplusBaseApplicationThread;->oplusAppThreadHelper:Landroid/app/OplusApplicationThreadHelper;

    .line 39
    return-void
.end method


# virtual methods
.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    iget-object v0, p0, Landroid/app/OplusBaseApplicationThread;->oplusAppThreadHelper:Landroid/app/OplusApplicationThreadHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/OplusApplicationThreadHelper;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    const/4 v0, 0x1

    return v0

    .line 45
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/IApplicationThread$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0
.end method

.method public blacklist scheduleApplicationInfoChangedForSwitchUser(Landroid/content/pm/ApplicationInfo;I)V
    .locals 0
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "updateFrameworkRes"    # I

    .line 52
    return-void
.end method
