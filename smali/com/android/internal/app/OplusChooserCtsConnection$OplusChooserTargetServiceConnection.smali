.class Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;
.super Ljava/lang/Object;
.source "OplusChooserCtsConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/OplusChooserCtsConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OplusChooserTargetServiceConnection"
.end annotation


# instance fields
.field private final blacklist mChooserTargetResult:Landroid/service/chooser/IChooserTargetResult;

.field private blacklist mConnection:Lcom/android/internal/app/OplusChooserCtsConnection;

.field private blacklist mContext:Landroid/content/Context;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mOriginalTarget:Lcom/android/internal/app/chooser/DisplayResolveInfo;

.field private final blacklist mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmConnection(Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;)Lcom/android/internal/app/OplusChooserCtsConnection;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;->mConnection:Lcom/android/internal/app/OplusChooserCtsConnection;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOriginalTarget(Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;)Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;->mOriginalTarget:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserHandle(Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;)Landroid/os/UserHandle;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;->mUserHandle:Landroid/os/UserHandle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mfilterServiceTargets(Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;->filterServiceTargets(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/app/OplusChooserCtsConnection;Lcom/android/internal/app/chooser/DisplayResolveInfo;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "connetion"    # Lcom/android/internal/app/OplusChooserCtsConnection;
    .param p3, "dri"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .param p4, "userHandle"    # Landroid/os/UserHandle;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;->mLock:Ljava/lang/Object;

    .line 175
    new-instance v0, Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection$1;-><init>(Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;)V

    iput-object v0, p0, Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;->mChooserTargetResult:Landroid/service/chooser/IChooserTargetResult;

    .line 197
    iput-object p1, p0, Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;->mContext:Landroid/content/Context;

    .line 198
    iput-object p2, p0, Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;->mConnection:Lcom/android/internal/app/OplusChooserCtsConnection;

    .line 199
    iput-object p3, p0, Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;->mOriginalTarget:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 200
    iput-object p4, p0, Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;->mUserHandle:Landroid/os/UserHandle;

    .line 201
    return-void
.end method

.method private blacklist filterServiceTargets(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .locals 9
    .param p1, "contextAsUser"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/service/chooser/ChooserTarget;",
            ">;)V"
        }
    .end annotation

    .line 205
    .local p3, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/service/chooser/ChooserTarget;>;"
    if-nez p3, :cond_0

    .line 206
    return-void

    .line 209
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 210
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_5

    .line 211
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/chooser/ChooserTarget;

    .line 212
    .local v3, "target":Landroid/service/chooser/ChooserTarget;
    invoke-virtual {v3}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    .line 213
    .local v4, "targetName":Landroid/content/ComponentName;
    if-eqz p2, :cond_1

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 215
    goto :goto_2

    .line 218
    :cond_1
    const/4 v5, 0x1

    .line 220
    .local v5, "remove":Z
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v0, v4, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    .line 221
    .local v7, "ai":Landroid/content/pm/ActivityInfo;
    iget-boolean v8, v7, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v8, :cond_2

    iget-object v8, v7, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v8, :cond_3

    :cond_2
    move v6, v2

    :cond_3
    move v5, v6

    .line 224
    .end local v7    # "ai":Landroid/content/pm/ActivityInfo;
    goto :goto_1

    .line 222
    :catch_0
    move-exception v6

    .line 223
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v5, 0x1

    .line 226
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    if-eqz v5, :cond_4

    .line 227
    invoke-interface {p3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 210
    .end local v3    # "target":Landroid/service/chooser/ChooserTarget;
    .end local v4    # "targetName":Landroid/content/ComponentName;
    .end local v5    # "remove":Z
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 230
    .end local v1    # "i":I
    :cond_5
    return-void
.end method


# virtual methods
.method public blacklist destroy()V
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 264
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;->mContext:Landroid/content/Context;

    .line 265
    iput-object v1, p0, Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;->mOriginalTarget:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 266
    monitor-exit v0

    .line 267
    return-void

    .line 266
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getComponentName()Landroid/content/ComponentName;
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 271
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;->mOriginalTarget:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 272
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 234
    iget-object v0, p0, Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 235
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 236
    monitor-exit v0

    return-void

    .line 239
    :cond_0
    invoke-static {p2}, Landroid/service/chooser/IChooserTargetService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/chooser/IChooserTargetService;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    .local v1, "icts":Landroid/service/chooser/IChooserTargetService;
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;->mOriginalTarget:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v2}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;->mOriginalTarget:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 242
    invoke-virtual {v3}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    iget-object v4, p0, Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;->mChooserTargetResult:Landroid/service/chooser/IChooserTargetResult;

    .line 241
    invoke-interface {v1, v2, v3, v4}, Landroid/service/chooser/IChooserTargetService;->getChooserTargets(Landroid/content/ComponentName;Landroid/content/IntentFilter;Landroid/service/chooser/IChooserTargetResult;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    goto :goto_0

    .line 243
    :catch_0
    move-exception v2

    .line 244
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 245
    invoke-virtual {p0}, Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;->destroy()V

    .line 247
    .end local v1    # "icts":Landroid/service/chooser/IChooserTargetService;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 248
    return-void

    .line 247
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 252
    iget-object v0, p0, Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 253
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 254
    monitor-exit v0

    return-void

    .line 257
    :cond_0
    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 258
    invoke-virtual {p0}, Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;->destroy()V

    .line 259
    monitor-exit v0

    .line 260
    return-void

    .line 259
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
