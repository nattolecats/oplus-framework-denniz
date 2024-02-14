.class public Landroid/media/AudioRecordExtImpl;
.super Ljava/lang/Object;
.source "AudioRecordExtImpl.java"

# interfaces
.implements Landroid/media/IAudioRecordExt;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "android.media.AudioRecord"


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method public blacklist permInterceptInStartRecording()Z
    .locals 7

    .line 41
    const-string v0, "android.media.AudioRecord"

    const-string v1, "persist.sys.permission.enable"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    :try_start_0
    const-string v1, "security_permission"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 44
    .local v1, "binder":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/os/ISecurityPermissionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISecurityPermissionService;

    move-result-object v3

    .line 45
    .local v3, "controller":Landroid/os/ISecurityPermissionService;
    if-eqz v3, :cond_0

    const-string v4, "android.permission.RECORD_AUDIO"

    .line 46
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    invoke-interface {v3, v4, v5, v6}, Landroid/os/ISecurityPermissionService;->checkOplusPermission(Ljava/lang/String;II)Z

    move-result v4

    if-nez v4, :cond_0

    .line 47
    const-string v4, "permission denied : RECORD_AUDIO"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    const/4 v0, 0x1

    return v0

    .line 52
    .end local v1    # "binder":Landroid/os/IBinder;
    .end local v3    # "controller":Landroid/os/ISecurityPermissionService;
    :cond_0
    goto :goto_0

    .line 50
    :catch_0
    move-exception v1

    .line 51
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v3, "check error."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return v2
.end method

.method public blacklist permInterceptInStartRecordingWithEvent()Z
    .locals 7

    .line 62
    const-string v0, "android.media.AudioRecord"

    const-string v1, "persist.sys.permission.enable"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    :try_start_0
    const-string v1, "security_permission"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 65
    .local v1, "binder":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/os/ISecurityPermissionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISecurityPermissionService;

    move-result-object v3

    .line 66
    .local v3, "controller":Landroid/os/ISecurityPermissionService;
    if-eqz v3, :cond_0

    const-string v4, "android.permission.RECORD_AUDIO"

    .line 67
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    invoke-interface {v3, v4, v5, v6}, Landroid/os/ISecurityPermissionService;->checkOplusPermission(Ljava/lang/String;II)Z

    move-result v4

    if-nez v4, :cond_0

    .line 68
    const-string v4, "permission denied : RECORD_AUDIO"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    const/4 v0, 0x1

    return v0

    .line 73
    .end local v1    # "binder":Landroid/os/IBinder;
    .end local v3    # "controller":Landroid/os/ISecurityPermissionService;
    :cond_0
    goto :goto_0

    .line 71
    :catch_0
    move-exception v1

    .line 72
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v3, "check error."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return v2
.end method
