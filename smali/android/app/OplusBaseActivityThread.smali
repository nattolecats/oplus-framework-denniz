.class public abstract Landroid/app/OplusBaseActivityThread;
.super Landroid/app/ClientTransactionHandler;
.source "OplusBaseActivityThread.java"


# static fields
.field private static final blacklist MAX_INTERVAL:J = 0x1d4c0L

.field private static final blacklist MIN_INTERVAL:J = 0x2710L

.field private static final blacklist TAG:Ljava/lang/String; = "OplusBaseActivityThread"

.field private static blacklist sCurInterval:J

.field private static blacklist sDebugSpecial:Z

.field private static blacklist sIsInitedSkipDoframeEnable:Z

.field private static blacklist sIsShouldDoCheck:Z

.field private static blacklist sIsSkipDoframeEnable:Z

.field public static blacklist sIsWhitelisted:Z

.field private static blacklist sLastCheckTime:J

.field private static blacklist sLastRet:Z

.field public static blacklist sLock:Ljava/lang/Object;

.field private static blacklist sSpecialPkg:Ljava/lang/String;

.field public static blacklist sStateChanged:Z

.field public static blacklist sUidCurProcState:I


# instance fields
.field private blacklist framecallback:Landroid/view/Choreographer$FrameCallback;

.field final greylist mActivities:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field public blacklist mContext:Landroid/content/Context;

.field blacklist mNotiService:Landroid/app/INotificationManager;

.field blacklist mOplusBaseAppWidgetManager:Landroid/appwidget/OplusBaseAppWidgetManager;

.field blacklist mOplusBaseWindowManagerGlobal:Landroid/view/OplusBaseWindowManagerGlobal;

.field public blacklist sC:Landroid/view/Choreographer;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/OplusBaseActivityThread;->sDebugSpecial:Z

    .line 50
    sput-boolean v0, Landroid/app/OplusBaseActivityThread;->sIsInitedSkipDoframeEnable:Z

    .line 51
    sput-boolean v0, Landroid/app/OplusBaseActivityThread;->sIsSkipDoframeEnable:Z

    .line 52
    const/4 v1, 0x1

    sput-boolean v1, Landroid/app/OplusBaseActivityThread;->sLastRet:Z

    .line 53
    sput-boolean v1, Landroid/app/OplusBaseActivityThread;->sIsShouldDoCheck:Z

    .line 54
    const-wide/16 v1, 0x2710

    sput-wide v1, Landroid/app/OplusBaseActivityThread;->sCurInterval:J

    .line 55
    const-wide/16 v1, -0x1

    sput-wide v1, Landroid/app/OplusBaseActivityThread;->sLastCheckTime:J

    .line 56
    const-string v1, "def"

    sput-object v1, Landroid/app/OplusBaseActivityThread;->sSpecialPkg:Ljava/lang/String;

    .line 57
    sput-boolean v0, Landroid/app/OplusBaseActivityThread;->sStateChanged:Z

    .line 58
    sput-boolean v0, Landroid/app/OplusBaseActivityThread;->sIsWhitelisted:Z

    .line 59
    const/4 v0, 0x2

    sput v0, Landroid/app/OplusBaseActivityThread;->sUidCurProcState:I

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/OplusBaseActivityThread;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Landroid/app/ClientTransactionHandler;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/OplusBaseActivityThread;->sC:Landroid/view/Choreographer;

    .line 62
    iput-object v0, p0, Landroid/app/OplusBaseActivityThread;->mContext:Landroid/content/Context;

    .line 64
    iput-object v0, p0, Landroid/app/OplusBaseActivityThread;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 65
    iput-object v0, p0, Landroid/app/OplusBaseActivityThread;->mOplusBaseAppWidgetManager:Landroid/appwidget/OplusBaseAppWidgetManager;

    .line 66
    iput-object v0, p0, Landroid/app/OplusBaseActivityThread;->mOplusBaseWindowManagerGlobal:Landroid/view/OplusBaseWindowManagerGlobal;

    .line 67
    iput-object v0, p0, Landroid/app/OplusBaseActivityThread;->mNotiService:Landroid/app/INotificationManager;

    .line 68
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/OplusBaseActivityThread;->mActivities:Landroid/util/ArrayMap;

    .line 113
    new-instance v0, Landroid/app/OplusBaseActivityThread$1;

    invoke-direct {v0, p0}, Landroid/app/OplusBaseActivityThread$1;-><init>(Landroid/app/OplusBaseActivityThread;)V

    iput-object v0, p0, Landroid/app/OplusBaseActivityThread;->framecallback:Landroid/view/Choreographer$FrameCallback;

    .line 81
    return-void
.end method

.method private blacklist getAppVisibility()Z
    .locals 3

    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, "isvisibility":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/app/OplusBaseActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 130
    iget-object v2, p0, Landroid/app/OplusBaseActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/OplusBaseActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ActivityClientRecord;

    iget-object v2, v2, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/OplusBaseActivityThread;->mActivities:Landroid/util/ArrayMap;

    .line 131
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ActivityClientRecord;

    iget-object v2, v2, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->isFloating()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    const/4 v0, 0x1

    .line 133
    goto :goto_1

    .line 136
    :cond_0
    iget-object v2, p0, Landroid/app/OplusBaseActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/app/OplusBaseActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ActivityClientRecord;

    iget-object v2, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/app/OplusBaseActivityThread;->mActivities:Landroid/util/ArrayMap;

    .line 137
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ActivityClientRecord;

    iget-object v2, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mStopped:Z

    if-eqz v2, :cond_1

    .line 138
    const/4 v0, 0x0

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    :cond_1
    const/4 v0, 0x1

    .line 145
    .end local v1    # "i":I
    :cond_2
    :goto_1
    return v0
.end method

.method private blacklist getAppWidgetManager()Landroid/appwidget/AppWidgetManager;
    .locals 2

    .line 170
    iget-object v0, p0, Landroid/app/OplusBaseActivityThread;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Landroid/app/OplusBaseActivityThread;->mContext:Landroid/content/Context;

    const-class v1, Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetManager;

    iput-object v0, p0, Landroid/app/OplusBaseActivityThread;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 173
    :cond_0
    iget-object v0, p0, Landroid/app/OplusBaseActivityThread;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    return-object v0
.end method

.method private blacklist getOplusBaseWindowManagerGlobal()V
    .locals 2

    .line 213
    iget-object v0, p0, Landroid/app/OplusBaseActivityThread;->mOplusBaseWindowManagerGlobal:Landroid/view/OplusBaseWindowManagerGlobal;

    if-nez v0, :cond_0

    .line 214
    const-class v0, Landroid/view/OplusBaseWindowManagerGlobal;

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/util/OplusTypeCastingHelper;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/OplusBaseWindowManagerGlobal;

    iput-object v0, p0, Landroid/app/OplusBaseActivityThread;->mOplusBaseWindowManagerGlobal:Landroid/view/OplusBaseWindowManagerGlobal;

    .line 216
    :cond_0
    return-void
.end method

.method private blacklist getProcState()Z
    .locals 3

    .line 333
    sget-object v0, Landroid/app/OplusBaseActivityThread;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 334
    :try_start_0
    sget v1, Landroid/app/OplusBaseActivityThread;->sUidCurProcState:I

    const/4 v2, 0x6

    if-gt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 335
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist getWindowVisibility()I
    .locals 6

    .line 219
    invoke-direct {p0}, Landroid/app/OplusBaseActivityThread;->getOplusBaseWindowManagerGlobal()V

    .line 220
    iget-object v0, p0, Landroid/app/OplusBaseActivityThread;->mOplusBaseWindowManagerGlobal:Landroid/view/OplusBaseWindowManagerGlobal;

    if-nez v0, :cond_0

    .line 221
    const/4 v0, 0x0

    return v0

    .line 224
    :cond_0
    const/4 v1, 0x4

    .line 225
    .local v1, "visibility":I
    invoke-virtual {v0}, Landroid/view/OplusBaseWindowManagerGlobal;->getViews()Ljava/util/ArrayList;

    move-result-object v0

    .line 226
    .local v0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v0, :cond_2

    .line 227
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 228
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 229
    const/4 v4, 0x0

    .line 230
    .local v4, "tempVisibility":I
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWindowVisibility()I

    move-result v4

    .line 231
    if-nez v4, :cond_1

    .line 232
    move v1, v4

    .line 233
    goto :goto_1

    .line 235
    :cond_1
    move v1, v4

    .line 228
    .end local v4    # "tempVisibility":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 239
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_2
    :goto_1
    return v1
.end method

.method private blacklist hasActiveNotifications()Z
    .locals 4

    .line 149
    const/4 v0, 0x1

    .line 150
    .local v0, "hasActiveNotifications":Z
    iget-object v1, p0, Landroid/app/OplusBaseActivityThread;->mNotiService:Landroid/app/INotificationManager;

    if-nez v1, :cond_0

    .line 151
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v1

    iput-object v1, p0, Landroid/app/OplusBaseActivityThread;->mNotiService:Landroid/app/INotificationManager;

    .line 154
    :cond_0
    iget-object v1, p0, Landroid/app/OplusBaseActivityThread;->mNotiService:Landroid/app/INotificationManager;

    if-eqz v1, :cond_3

    iget-object v2, p0, Landroid/app/OplusBaseActivityThread;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_3

    .line 156
    nop

    .line 157
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/app/OplusBaseActivityThread;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/app/INotificationManager;->getAppActiveNotifications(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 158
    .local v1, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/service/notification/StatusBarNotification;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_2

    .line 159
    :cond_1
    const/4 v0, 0x0

    .line 163
    .end local v1    # "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/service/notification/StatusBarNotification;>;"
    :cond_2
    goto :goto_0

    .line 161
    :catch_0
    move-exception v1

    .line 162
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 166
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_0
    return v0
.end method

.method private blacklist hasBoundWidget()Z
    .locals 3

    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, "hasBoundWidget":Z
    const/4 v1, 0x0

    .line 194
    .local v1, "widgetPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/app/OplusBaseActivityThread;->typeCastingAppWidgetManager()Landroid/appwidget/OplusBaseAppWidgetManager;

    move-result-object v2

    iput-object v2, p0, Landroid/app/OplusBaseActivityThread;->mOplusBaseAppWidgetManager:Landroid/appwidget/OplusBaseAppWidgetManager;

    .line 195
    if-eqz v2, :cond_1

    .line 196
    invoke-virtual {v2}, Landroid/appwidget/OplusBaseAppWidgetManager;->getAppWidgetPackageList()Ljava/util/List;

    move-result-object v1

    .line 201
    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/app/OplusBaseActivityThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    const/4 v0, 0x1

    .line 205
    :cond_0
    return v0

    .line 198
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist hasRemoteView()Z
    .locals 1

    .line 209
    invoke-direct {p0}, Landroid/app/OplusBaseActivityThread;->hasBoundWidget()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/app/OplusBaseActivityThread;->hasActiveNotifications()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private blacklist toCheck()Z
    .locals 8

    .line 339
    invoke-direct {p0}, Landroid/app/OplusBaseActivityThread;->getProcState()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/app/OplusBaseActivityThread;->getAppVisibility()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/app/OplusBaseActivityThread;->getWindowVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/app/OplusBaseActivityThread;->hasRemoteView()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    sput-boolean v0, Landroid/app/OplusBaseActivityThread;->sLastRet:Z

    .line 340
    sget-boolean v0, Landroid/app/OplusBaseActivityThread;->sDebugSpecial:Z

    if-eqz v0, :cond_5

    .line 341
    invoke-virtual {p0}, Landroid/app/OplusBaseActivityThread;->getProcessName()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Landroid/app/OplusBaseActivityThread;->sSpecialPkg:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 342
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 343
    .local v0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v3, 0x1

    .line 344
    .local v3, "isHoldWin":Z
    iget-object v4, p0, Landroid/app/OplusBaseActivityThread;->mOplusBaseWindowManagerGlobal:Landroid/view/OplusBaseWindowManagerGlobal;

    if-eqz v4, :cond_2

    .line 345
    invoke-virtual {v4}, Landroid/view/OplusBaseWindowManagerGlobal;->getViews()Ljava/util/ArrayList;

    move-result-object v0

    .line 346
    if-nez v0, :cond_2

    .line 347
    const/4 v3, 0x0

    .line 351
    :cond_2
    sget-object v4, Landroid/app/OplusBaseActivityThread;->sLock:Ljava/lang/Object;

    monitor-enter v4

    .line 352
    :try_start_0
    const-string v5, "OplusBaseActivityThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "shouldDoFrameInBG pkg:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/app/OplusBaseActivityThread;->sSpecialPkg:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " pid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 353
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " tid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 354
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isDoFrameInBG:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Landroid/app/OplusBaseActivityThread;->sLastRet:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " procState:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Landroid/app/OplusBaseActivityThread;->sUidCurProcState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " getAppVisibility:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 357
    invoke-direct {p0}, Landroid/app/OplusBaseActivityThread;->getAppVisibility()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " getWindowVisibility:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 358
    invoke-direct {p0}, Landroid/app/OplusBaseActivityThread;->getWindowVisibility()I

    move-result v7

    if-nez v7, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " hasRemoteView:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 359
    invoke-direct {p0}, Landroid/app/OplusBaseActivityThread;->hasRemoteView()Z

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " mActivities.size:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Landroid/app/OplusBaseActivityThread;->mActivities:Landroid/util/ArrayMap;

    .line 360
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " views.size:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 361
    if-eqz v3, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 352
    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    monitor-exit v4

    goto :goto_3

    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 365
    .end local v0    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3    # "isHoldWin":Z
    :cond_5
    :goto_3
    sget-boolean v0, Landroid/app/OplusBaseActivityThread;->sLastRet:Z

    return v0
.end method

.method private blacklist typeCastingAppWidgetManager()Landroid/appwidget/OplusBaseAppWidgetManager;
    .locals 2

    .line 177
    iget-object v0, p0, Landroid/app/OplusBaseActivityThread;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 178
    invoke-direct {p0}, Landroid/app/OplusBaseActivityThread;->getAppWidgetManager()Landroid/appwidget/AppWidgetManager;

    .line 179
    iget-object v0, p0, Landroid/app/OplusBaseActivityThread;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    if-eqz v0, :cond_1

    .line 180
    iget-object v1, p0, Landroid/app/OplusBaseActivityThread;->mOplusBaseAppWidgetManager:Landroid/appwidget/OplusBaseAppWidgetManager;

    if-nez v1, :cond_0

    .line 181
    const-class v1, Landroid/appwidget/OplusBaseAppWidgetManager;

    invoke-static {v1, v0}, Lcom/oplus/util/OplusTypeCastingHelper;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/OplusBaseAppWidgetManager;

    return-object v0

    .line 183
    :cond_0
    return-object v1

    .line 188
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist dispatchWhiteList(Z)V
    .locals 0
    .param p1, "isWhiteListApp"    # Z

    .line 84
    sput-boolean p1, Landroid/app/OplusBaseActivityThread;->sIsWhitelisted:Z

    .line 85
    return-void
.end method

.method public abstract blacklist getApplication()Landroid/app/Application;
.end method

.method public abstract blacklist getProcessName()Ljava/lang/String;
.end method

.method public blacklist isCare()I
    .locals 3

    .line 274
    const/4 v0, 0x1

    .line 275
    .local v0, "ret":I
    invoke-virtual {p0}, Landroid/app/OplusBaseActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/app/OplusBaseActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 276
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v2, 0x2710

    if-lt v1, v2, :cond_1

    .line 278
    invoke-virtual {p0}, Landroid/app/OplusBaseActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string v2, "systemui"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 279
    invoke-virtual {p0}, Landroid/app/OplusBaseActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string v2, "launcher"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 280
    invoke-virtual {p0}, Landroid/app/OplusBaseActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string v2, "camera"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Landroid/app/OplusBaseActivityThread;->sIsWhitelisted:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 283
    :cond_0
    const/4 v1, 0x2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    move v0, v1

    .line 285
    :cond_2
    return v0
.end method

.method public blacklist isSkipDoFrameInBG()Z
    .locals 4

    .line 250
    sget-boolean v0, Landroid/app/OplusBaseActivityThread;->sIsInitedSkipDoframeEnable:Z

    if-nez v0, :cond_1

    .line 251
    const-string v0, "persist.sys.opsd.enable"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "value":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 253
    sput-boolean v2, Landroid/app/OplusBaseActivityThread;->sIsSkipDoframeEnable:Z

    .line 255
    :cond_0
    sput-boolean v2, Landroid/app/OplusBaseActivityThread;->sIsInitedSkipDoframeEnable:Z

    .line 257
    const-string v1, "persist.sys.skipBGDoFrameSpecialPkg"

    const-string v3, "def"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 258
    .local v1, "special":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 259
    sput-boolean v2, Landroid/app/OplusBaseActivityThread;->sDebugSpecial:Z

    .line 260
    sput-object v1, Landroid/app/OplusBaseActivityThread;->sSpecialPkg:Ljava/lang/String;

    .line 264
    .end local v0    # "value":Ljava/lang/String;
    .end local v1    # "special":Ljava/lang/String;
    :cond_1
    sget-boolean v0, Landroid/app/OplusBaseActivityThread;->sIsSkipDoframeEnable:Z

    return v0
.end method

.method protected blacklist reportBindApplicationFinished(Landroid/app/Application;)V
    .locals 4
    .param p1, "app"    # Landroid/app/Application;

    .line 325
    :try_start_0
    invoke-static {}, Landroid/app/OplusActivityManager;->getInstance()Landroid/app/OplusActivityManager;

    move-result-object v0

    .line 326
    invoke-virtual {p1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Application;->getUserId()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 325
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/OplusActivityManager;->reportBindApplicationFinished(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    goto :goto_0

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusBaseActivityThread"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist shouldDoCheck()V
    .locals 2

    .line 121
    sget-object v0, Landroid/app/OplusBaseActivityThread;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 123
    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Landroid/app/OplusBaseActivityThread;->sIsShouldDoCheck:Z

    .line 124
    monitor-exit v0

    .line 125
    return-void

    .line 124
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist shouldDoFrameInBG()Z
    .locals 4

    .line 292
    sget-boolean v0, Landroid/app/OplusBaseActivityThread;->sLastRet:Z

    .line 293
    .local v0, "ret":Z
    const/4 v1, 0x0

    .line 294
    .local v1, "doCheck":Z
    sget-object v2, Landroid/app/OplusBaseActivityThread;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 295
    :try_start_0
    sget-boolean v3, Landroid/app/OplusBaseActivityThread;->sIsShouldDoCheck:Z

    if-eqz v3, :cond_0

    .line 296
    const/4 v1, 0x1

    .line 297
    const/4 v3, 0x0

    sput-boolean v3, Landroid/app/OplusBaseActivityThread;->sIsShouldDoCheck:Z

    .line 299
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    sget-boolean v2, Landroid/app/OplusBaseActivityThread;->sLastRet:Z

    if-eqz v2, :cond_1

    .line 302
    if-eqz v1, :cond_2

    .line 303
    invoke-direct {p0}, Landroid/app/OplusBaseActivityThread;->toCheck()Z

    move-result v0

    goto :goto_0

    .line 306
    :cond_1
    invoke-direct {p0}, Landroid/app/OplusBaseActivityThread;->toCheck()Z

    move-result v0

    .line 308
    :cond_2
    :goto_0
    return v0

    .line 299
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public blacklist updateUidCurProcState(I)V
    .locals 5
    .param p1, "state"    # I

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "change":Z
    sget-object v1, Landroid/app/OplusBaseActivityThread;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 90
    :try_start_0
    sget v2, Landroid/app/OplusBaseActivityThread;->sUidCurProcState:I

    const/4 v3, 0x6

    if-gt v2, v3, :cond_0

    if-gt p1, v3, :cond_1

    :cond_0
    if-le v2, v3, :cond_2

    if-gt p1, v3, :cond_2

    .line 92
    :cond_1
    const/4 v0, 0x1

    .line 93
    const/4 v4, 0x1

    sput-boolean v4, Landroid/app/OplusBaseActivityThread;->sStateChanged:Z

    .line 96
    :cond_2
    if-eq v2, p1, :cond_3

    .line 97
    sput p1, Landroid/app/OplusBaseActivityThread;->sUidCurProcState:I

    .line 99
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    if-eqz v0, :cond_4

    if-le p1, v3, :cond_4

    .line 102
    invoke-virtual {p0}, Landroid/app/OplusBaseActivityThread;->shouldDoCheck()V

    .line 105
    :cond_4
    if-eqz v0, :cond_5

    if-gt p1, v3, :cond_5

    .line 106
    iget-object v1, p0, Landroid/app/OplusBaseActivityThread;->sC:Landroid/view/Choreographer;

    if-eqz v1, :cond_5

    .line 107
    const-string v1, "OplusBaseActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "post a callback for sC:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/OplusBaseActivityThread;->sC:Landroid/view/Choreographer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " by pid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " tid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v1, p0, Landroid/app/OplusBaseActivityThread;->sC:Landroid/view/Choreographer;

    iget-object v2, p0, Landroid/app/OplusBaseActivityThread;->framecallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v1, v2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 111
    :cond_5
    return-void

    .line 99
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
