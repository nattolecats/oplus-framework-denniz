.class public Landroid/telecom/TelecomManagerExt;
.super Ljava/lang/Object;
.source "TelecomManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/TelecomManagerExt$DeathRecipient;
    }
.end annotation


# static fields
.field private static final blacklist CACHE_LOCK:Ljava/lang/Object;

.field private static final blacklist SERVICE_DEATH:Landroid/telecom/TelecomManagerExt$DeathRecipient;

.field private static final blacklist TAG:Ljava/lang/String; = "TelecomManagerExt"

.field public static final whitelist TELECOM_EXT:Ljava/lang/String; = "telecom_ext"

.field private static blacklist sTelecomServiceExt:Lcom/android/internal/telecom/ITelecomServiceExt;


# instance fields
.field private final blacklist mContext:Landroid/content/Context;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smresetServiceCache()V
    .locals 0

    invoke-static {}, Landroid/telecom/TelecomManagerExt;->resetServiceCache()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/telecom/TelecomManagerExt;->CACHE_LOCK:Ljava/lang/Object;

    .line 65
    new-instance v0, Landroid/telecom/TelecomManagerExt$DeathRecipient;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/telecom/TelecomManagerExt$DeathRecipient;-><init>(Landroid/telecom/TelecomManagerExt$DeathRecipient-IA;)V

    sput-object v0, Landroid/telecom/TelecomManagerExt;->SERVICE_DEATH:Landroid/telecom/TelecomManagerExt$DeathRecipient;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 75
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    iput-object v0, p0, Landroid/telecom/TelecomManagerExt;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 79
    :cond_0
    iput-object p1, p0, Landroid/telecom/TelecomManagerExt;->mContext:Landroid/content/Context;

    .line 81
    :goto_0
    return-void
.end method

.method public static blacklist from(Landroid/content/Context;)Landroid/telecom/TelecomManagerExt;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 88
    const-string v0, "telecom_ext"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManagerExt;

    return-object v0
.end method

.method private blacklist getITelecomServiceExt()Lcom/android/internal/telecom/ITelecomServiceExt;
    .locals 5

    .line 129
    sget-object v0, Landroid/telecom/TelecomManagerExt;->CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 130
    :try_start_0
    sget-object v1, Landroid/telecom/TelecomManagerExt;->sTelecomServiceExt:Lcom/android/internal/telecom/ITelecomServiceExt;

    if-nez v1, :cond_0

    .line 131
    const-string v1, "telecom_ext"

    .line 132
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 131
    invoke-static {v1}, Lcom/android/internal/telecom/ITelecomServiceExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ITelecomServiceExt;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    .local v1, "temp":Lcom/android/internal/telecom/ITelecomServiceExt;
    if-eqz v1, :cond_0

    .line 135
    :try_start_1
    sput-object v1, Landroid/telecom/TelecomManagerExt;->sTelecomServiceExt:Lcom/android/internal/telecom/ITelecomServiceExt;

    .line 136
    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomServiceExt;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    sget-object v3, Landroid/telecom/TelecomManagerExt;->SERVICE_DEATH:Landroid/telecom/TelecomManagerExt$DeathRecipient;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    goto :goto_0

    .line 137
    :catch_0
    move-exception v2

    .line 138
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    :try_start_2
    sput-object v3, Landroid/telecom/TelecomManagerExt;->sTelecomServiceExt:Lcom/android/internal/telecom/ITelecomServiceExt;

    .line 142
    .end local v1    # "temp":Lcom/android/internal/telecom/ITelecomServiceExt;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    sget-object v1, Landroid/telecom/TelecomManagerExt;->sTelecomServiceExt:Lcom/android/internal/telecom/ITelecomServiceExt;

    monitor-exit v0

    return-object v1

    .line 143
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private blacklist isServiceConnected()Z
    .locals 3

    .line 147
    invoke-direct {p0}, Landroid/telecom/TelecomManagerExt;->getITelecomServiceExt()Lcom/android/internal/telecom/ITelecomServiceExt;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 148
    .local v0, "isConnected":Z
    :goto_0
    if-nez v0, :cond_1

    .line 149
    const-string v1, "TelecomManagerExt"

    const-string v2, "TelecomServiceExt not found."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_1
    return v0
.end method

.method private blacklist isSystemProcess()Z
    .locals 2

    .line 125
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static blacklist resetServiceCache()V
    .locals 4

    .line 116
    sget-object v0, Landroid/telecom/TelecomManagerExt;->CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 117
    :try_start_0
    sget-object v1, Landroid/telecom/TelecomManagerExt;->sTelecomServiceExt:Lcom/android/internal/telecom/ITelecomServiceExt;

    if-eqz v1, :cond_0

    .line 118
    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomServiceExt;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    sget-object v2, Landroid/telecom/TelecomManagerExt;->SERVICE_DEATH:Landroid/telecom/TelecomManagerExt$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 119
    const/4 v1, 0x0

    sput-object v1, Landroid/telecom/TelecomManagerExt;->sTelecomServiceExt:Lcom/android/internal/telecom/ITelecomServiceExt;

    .line 121
    :cond_0
    monitor-exit v0

    .line 122
    return-void

    .line 121
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public whitelist cancelMissedCallsNotification(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelMissedCallsNotification intent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelecomManagerExt"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManagerExt;->isServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-direct {p0}, Landroid/telecom/TelecomManagerExt;->getITelecomServiceExt()Lcom/android/internal/telecom/ITelecomServiceExt;

    move-result-object v0

    iget-object v2, p0, Landroid/telecom/TelecomManagerExt;->mContext:Landroid/content/Context;

    .line 108
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 107
    invoke-interface {v0, v2, p1}, Lcom/android/internal/telecom/ITelecomServiceExt;->cancelMissedCallsNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :cond_0
    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Error calling ITelecomServiceExt#cancelMissedCallsNotification"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
