.class public Landroid/content/PendingResultExtImpl;
.super Ljava/lang/Object;
.source "PendingResultExtImpl.java"

# interfaces
.implements Landroid/content/IPendingResultExt;


# instance fields
.field blacklist mHasCode:I

.field blacklist mOrderedHint:Z


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "base"    # Ljava/lang/Object;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method


# virtual methods
.method public blacklist finishNotOrderReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;Z)V
    .locals 7
    .param p1, "who"    # Landroid/os/IBinder;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Ljava/lang/String;
    .param p4, "resultExtras"    # Landroid/os/Bundle;
    .param p5, "resultAbort"    # Z

    .line 103
    :try_start_0
    new-instance v0, Landroid/app/OplusActivityManager;

    invoke-direct {v0}, Landroid/app/OplusActivityManager;-><init>()V

    iget v2, p0, Landroid/content/PendingResultExtImpl;->mHasCode:I

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/app/OplusActivityManager;->finishNotOrderReceiver(Landroid/os/IBinder;IILjava/lang/String;Landroid/os/Bundle;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "ActivityThread"

    const-string v2, "sendFinished RemoteException:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist getOrder()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Landroid/content/PendingResultExtImpl;->mOrderedHint:Z

    return v0
.end method

.method public blacklist setBroadcastState(II)V
    .locals 3
    .param p1, "flag"    # I
    .param p2, "state"    # I

    .line 71
    const/high16 v0, 0x80000

    and-int/2addr v0, p1

    const/high16 v1, 0x10000000

    const-string v2, "ActivityThread"

    if-eqz v0, :cond_3

    .line 72
    and-int v0, p1, v1

    if-eqz v0, :cond_1

    .line 73
    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOplusFgBrState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    sput p2, Landroid/app/ActivityThread;->mOplusFgBrState:I

    goto :goto_0

    .line 78
    :cond_1
    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOplusBgBrState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_2
    sput p2, Landroid/app/ActivityThread;->mOplusBgBrState:I

    goto :goto_0

    .line 84
    :cond_3
    and-int v0, p1, v1

    if-eqz v0, :cond_5

    .line 85
    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_4

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mFgBrState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_4
    sput p2, Landroid/app/ActivityThread;->mFgBrState:I

    goto :goto_0

    .line 90
    :cond_5
    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_6

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBgBrState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_6
    sput p2, Landroid/app/ActivityThread;->mBgBrState:I

    .line 96
    :goto_0
    return-void
.end method

.method public blacklist setHascode(I)V
    .locals 0
    .param p1, "hasCode"    # I

    .line 50
    iput p1, p0, Landroid/content/PendingResultExtImpl;->mHasCode:I

    .line 51
    return-void
.end method

.method public blacklist setOrder(Z)V
    .locals 0
    .param p1, "OrderedHint"    # Z

    .line 57
    iput-boolean p1, p0, Landroid/content/PendingResultExtImpl;->mOrderedHint:Z

    .line 58
    return-void
.end method
