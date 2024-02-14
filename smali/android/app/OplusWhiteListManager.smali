.class public Landroid/app/OplusWhiteListManager;
.super Ljava/lang/Object;
.source "OplusWhiteListManager.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist MAX_PROTECT_SELF_TIMEOUT:J = 0xa4cb80L

.field private static final blacklist MIN_PROTECT_SELF_TIMEOUT:J = 0xea60L

.field private static final blacklist REASON_LEGACY:Ljava/lang/String; = "legacy_call"

.field private static final blacklist TAG:Ljava/lang/String; = "OplusWhiteListManager"

.field public static final whitelist TYPE_DEEPSLEEP:I = 0x6

.field public static final whitelist TYPE_FILTER_ALL_SELF_PROTECT_PKG:I = 0xb

.field public static final whitelist TYPE_FILTER_CLEAR:I = 0x1

.field public static final whitelist TYPE_FILTER_PERMISSION:I = 0x2

.field public static final whitelist TYPE_FILTER_SELF_PROTECT_PKG:I = 0xc

.field public static final whitelist TYPE_FILTER_SELF_PROTECT_PROC:I = 0xd

.field public static final whitelist TYPE_FLOATWINDOW:I = 0x5

.field public static final whitelist TYPE_FLOATWINDOW_DEFAULT_GRANT_BUILDIN:I = 0x4

.field public static final whitelist TYPE_MIRAGE_DISPLAY:I = 0x65

.field public static final whitelist TYPE_NO_CLEAR_NOTIFICATION:I = 0xa

.field public static final whitelist TYPE_SCREENOFF_AUDIO_IN:I = 0x9

.field public static final whitelist TYPE_SCREENOFF_AUDIO_OUT:I = 0x7

.field public static final whitelist TYPE_SCREENOFF_POSSIBLE_AUDIO_OUT:I = 0x8

.field public static final whitelist TYPE_SPECIFIG_PKG_PROTECT:I = 0x3


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mOplusActivityManager:Landroid/app/OplusActivityManager;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Landroid/app/OplusActivityManager;

    invoke-direct {v0}, Landroid/app/OplusActivityManager;-><init>()V

    iput-object v0, p0, Landroid/app/OplusWhiteListManager;->mOplusActivityManager:Landroid/app/OplusActivityManager;

    .line 57
    iput-object p1, p0, Landroid/app/OplusWhiteListManager;->mContext:Landroid/content/Context;

    .line 58
    return-void
.end method


# virtual methods
.method public whitelist addStageProtectInfo(Ljava/lang/String;J)V
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "timeout"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 149
    const-string v2, "legacy_call"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/app/OplusWhiteListManager;->addStageProtectInfo(Ljava/lang/String;Ljava/lang/String;JLcom/oplus/app/IOplusProtectConnection;)V

    .line 150
    return-void
.end method

.method public whitelist addStageProtectInfo(Ljava/lang/String;Ljava/lang/String;JLcom/oplus/app/IOplusProtectConnection;)V
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "timeout"    # J
    .param p5, "connection"    # Lcom/oplus/app/IOplusProtectConnection;

    .line 161
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/app/OplusWhiteListManager;->addStageProtectInfo(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JLcom/oplus/app/IOplusProtectConnection;)V

    .line 162
    return-void
.end method

.method public whitelist addStageProtectInfo(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JLcom/oplus/app/IOplusProtectConnection;)V
    .locals 12
    .param p1, "pkg"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "timeout"    # J
    .param p6, "connection"    # Lcom/oplus/app/IOplusProtectConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "J",
            "Lcom/oplus/app/IOplusProtectConnection;",
            ")V"
        }
    .end annotation

    .line 176
    .local p2, "processList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v1, p0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 180
    const-wide/16 v2, 0x0

    cmp-long v0, p4, v2

    const-string v2, "OplusWhiteListManager"

    if-gtz v0, :cond_1

    .line 181
    const-string v0, "legacy_call"

    move-object v3, p3

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    const-string v0, "timeout <= 0 "

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-void

    .line 185
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "timeout <= 0"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_1
    move-object v3, p3

    :try_start_0
    iget-object v4, v1, Landroid/app/OplusWhiteListManager;->mOplusActivityManager:Landroid/app/OplusActivityManager;

    iget-object v0, v1, Landroid/app/OplusWhiteListManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-wide/from16 v9, p4

    move-object/from16 v11, p6

    invoke-virtual/range {v4 .. v11}, Landroid/app/OplusActivityManager;->addStageProtectInfo(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JLcom/oplus/app/IOplusProtectConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    goto :goto_0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Error adding stage protect "

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 177
    :cond_2
    move-object v3, p3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "reason is null or length equals 0"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getGlobalProcessWhiteList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v0, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Landroid/app/OplusWhiteListManager;->mOplusActivityManager:Landroid/app/OplusActivityManager;

    invoke-virtual {v1}, Landroid/app/OplusActivityManager;->getGlobalProcessWhiteList()Ljava/util/List;

    move-result-object v1

    .line 134
    .local v1, "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 135
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v1    # "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    goto :goto_0

    .line 137
    :catch_0
    move-exception v1

    .line 140
    :goto_0
    return-object v0
.end method

.method public whitelist getGlobalWhiteList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 62
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/OplusWhiteListManager;->getGlobalWhiteList(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getGlobalWhiteList(I)Ljava/util/ArrayList;
    .locals 3
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v0, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Landroid/app/OplusWhiteListManager;->mOplusActivityManager:Landroid/app/OplusActivityManager;

    invoke-virtual {v1, p1}, Landroid/app/OplusActivityManager;->getGlobalPkgWhiteList(I)Ljava/util/List;

    move-result-object v1

    .line 69
    .local v1, "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 70
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .end local v1    # "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    goto :goto_0

    .line 72
    :catch_0
    move-exception v1

    .line 75
    :goto_0
    return-object v0
.end method

.method public whitelist getStageProtectList(I)Ljava/util/List;
    .locals 3
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v0, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Landroid/app/OplusWhiteListManager;->mOplusActivityManager:Landroid/app/OplusActivityManager;

    invoke-virtual {v1, p1}, Landroid/app/OplusActivityManager;->getStageProtectList(I)Ljava/util/List;

    move-result-object v1

    .line 108
    .local v1, "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 109
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .end local v1    # "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    goto :goto_0

    .line 111
    :catch_0
    move-exception v1

    .line 114
    :goto_0
    return-object v0
.end method

.method public whitelist getStageProtectListAsUser(II)Ljava/util/List;
    .locals 3
    .param p1, "type"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v0, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Landroid/app/OplusWhiteListManager;->mOplusActivityManager:Landroid/app/OplusActivityManager;

    invoke-virtual {v1, p1, p2}, Landroid/app/OplusActivityManager;->getStageProtectListAsUser(II)Ljava/util/List;

    move-result-object v1

    .line 121
    .local v1, "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 122
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .end local v1    # "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    goto :goto_0

    .line 124
    :catch_0
    move-exception v1

    .line 127
    :goto_0
    return-object v0
.end method

.method public whitelist getStageProtectListFromPkg(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 3
    .param p1, "callerPkg"    # Ljava/lang/String;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v0, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Landroid/app/OplusWhiteListManager;->mOplusActivityManager:Landroid/app/OplusActivityManager;

    invoke-virtual {v1, p1, p2}, Landroid/app/OplusActivityManager;->getStageProtectListFromPkg(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 82
    .local v1, "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 83
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v1    # "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    goto :goto_0

    .line 85
    :catch_0
    move-exception v1

    .line 88
    :goto_0
    return-object v0
.end method

.method public whitelist getStageProtectListFromPkgAsUser(Ljava/lang/String;II)Ljava/util/List;
    .locals 3
    .param p1, "callerPkg"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v0, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Landroid/app/OplusWhiteListManager;->mOplusActivityManager:Landroid/app/OplusActivityManager;

    invoke-virtual {v1, p1, p2, p3}, Landroid/app/OplusActivityManager;->getStageProtectListFromPkgAsUser(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1

    .line 95
    .local v1, "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 96
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v1    # "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    goto :goto_0

    .line 98
    :catch_0
    move-exception v1

    .line 101
    :goto_0
    return-object v0
.end method

.method public whitelist removeStageProtectInfo(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 198
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "OplusWhiteListManager"

    if-eqz v0, :cond_0

    .line 199
    const-string v0, "can\'t add empty info to protect info"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return-void

    .line 203
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/app/OplusWhiteListManager;->mOplusActivityManager:Landroid/app/OplusActivityManager;

    iget-object v2, p0, Landroid/app/OplusWhiteListManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/app/OplusActivityManager;->removeStageProtectInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Error remove stage protect "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
