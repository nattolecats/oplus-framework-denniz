.class public Landroid/app/OplusApplicationThreadHelper;
.super Ljava/lang/Object;
.source "OplusApplicationThreadHelper.java"

# interfaces
.implements Landroid/app/IOplusApplicationThread;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "OplusApplicationThreadH"


# instance fields
.field private blacklist mOplusApplicationThread:Landroid/app/OplusBaseApplicationThread;


# direct methods
.method constructor blacklist <init>(Landroid/app/OplusBaseApplicationThread;)V
    .locals 0
    .param p1, "oplusApplicationThread"    # Landroid/app/OplusBaseApplicationThread;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Landroid/app/OplusApplicationThreadHelper;->mOplusApplicationThread:Landroid/app/OplusBaseApplicationThread;

    .line 54
    return-void
.end method


# virtual methods
.method public blacklist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I

    .line 57
    const/4 v0, 0x0

    const-string v1, "android.app.IApplicationThread"

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 84
    return v0

    .line 76
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    const-class v0, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 78
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 79
    .local v1, "updateFrameworkRes":I
    invoke-virtual {p0, v0, v1}, Landroid/app/OplusApplicationThreadHelper;->scheduleApplicationInfoChangedForSwitchUser(Landroid/content/pm/ApplicationInfo;I)V

    .line 80
    return v2

    .line 65
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "updateFrameworkRes":I
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v0, "configs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 70
    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/OplusApplicationThreadHelper;->setDynamicalLogConfig(Ljava/util/List;)V

    .line 71
    return v2

    .line 59
    .end local v0    # "configs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v2, v1, :cond_1

    move v0, v2

    .line 61
    .local v0, "on":Z
    :cond_1
    invoke-virtual {p0, v0}, Landroid/app/OplusApplicationThreadHelper;->setDynamicalLogEnable(Z)V

    .line 62
    return v2

    :pswitch_data_0
    .packed-switch 0x2712
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist scheduleApplicationInfoChangedForSwitchUser(Landroid/content/pm/ApplicationInfo;I)V
    .locals 2
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "updateFrameworkRes"    # I

    .line 108
    iget-object v0, p0, Landroid/app/OplusApplicationThreadHelper;->mOplusApplicationThread:Landroid/app/OplusBaseApplicationThread;

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0, p1, p2}, Landroid/app/OplusBaseApplicationThread;->scheduleApplicationInfoChangedForSwitchUser(Landroid/content/pm/ApplicationInfo;I)V

    goto :goto_0

    .line 111
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applicationInfoChangedForSwitchUser  thread was NULL ai="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusApplicationThreadH"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :goto_0
    return-void
.end method

.method public blacklist sendGfxTrim(I)V
    .locals 2
    .param p1, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 126
    const-string v0, "OplusApplicationThreadH"

    const-string v1, "sendGfxTrim in OplusApplicationThreadHelper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void
.end method

.method public blacklist setDynamicalLogConfig(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 99
    .local p1, "configs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDynamicalLogConfig: server: on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusApplicationThreadH"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-static {}, Landroid/app/AppDynamicalLogEnabler;->getInstance()Landroid/app/AppDynamicalLogEnabler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AppDynamicalLogEnabler;->setDynamicalLogConfig(Ljava/util/List;)V

    .line 101
    return-void
.end method

.method public blacklist setDynamicalLogEnable(Z)V
    .locals 2
    .param p1, "on"    # Z

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDynamicalLogEnable on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusApplicationThreadH"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-static {p1}, Landroid/app/ActivityDynamicLogHelper;->setDynamicalLogEnable(Z)V

    .line 95
    return-void
.end method

.method public blacklist setZoomSensorState(Z)V
    .locals 0
    .param p1, "isZoom"    # Z

    .line 120
    sput-boolean p1, Landroid/hardware/SystemSensorManager;->mInMirage:Z

    .line 121
    return-void
.end method
