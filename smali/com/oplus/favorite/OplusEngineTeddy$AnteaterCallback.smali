.class Lcom/oplus/favorite/OplusEngineTeddy$AnteaterCallback;
.super Ljava/lang/Object;
.source "OplusEngineTeddy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/favorite/OplusEngineTeddy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnteaterCallback"
.end annotation


# instance fields
.field final blacklist mCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/oplus/favorite/OplusFavoriteCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Lcom/oplus/favorite/OplusFavoriteCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/oplus/favorite/OplusFavoriteCallback;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oplus/favorite/OplusEngineTeddy$AnteaterCallback;->mCallback:Ljava/lang/ref/WeakReference;

    .line 124
    return-void
.end method

.method private blacklist getErrorMessage(Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;)Ljava/lang/String;
    .locals 2
    .param p1, "errorCode"    # Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;

    .line 171
    sget-object v0, Lcom/oplus/favorite/OplusEngineTeddy$1;->$SwitchMap$cn$teddymobile$free$anteater$AnteaterClient$ErrorCode:[I

    invoke-virtual {p1}, Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 191
    const/4 v0, 0x0

    return-object v0

    .line 188
    :pswitch_0
    const-string v0, "Save failed"

    return-object v0

    .line 185
    :pswitch_1
    const-string v0, "Setting off"

    return-object v0

    .line 182
    :pswitch_2
    const-string v0, "Unsupported"

    return-object v0

    .line 179
    :pswitch_3
    const-string v0, "Not found"

    return-object v0

    .line 176
    :pswitch_4
    const-string v0, "Not init"

    return-object v0

    .line 173
    :pswitch_5
    const-string v0, "No view"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist getQueryList(Lcn/teddymobile/free/anteater/AnteaterClient$ResultData;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "result"    # Lcn/teddymobile/free/anteater/AnteaterClient$ResultData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/teddymobile/free/anteater/AnteaterClient$ResultData;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/favorite/OplusFavoriteData;",
            ">;"
        }
    .end annotation

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oplus/favorite/OplusFavoriteData;>;"
    invoke-virtual {p1}, Lcn/teddymobile/free/anteater/AnteaterClient$ResultData;->getQueryList()Ljava/util/ArrayList;

    move-result-object v1

    .line 157
    .local v1, "queryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/teddymobile/free/anteater/AnteaterClient$QueryData;>;"
    monitor-enter v1

    .line 158
    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/teddymobile/free/anteater/AnteaterClient$QueryData;

    .line 159
    .local v3, "queryData":Lcn/teddymobile/free/anteater/AnteaterClient$QueryData;
    new-instance v4, Lcom/oplus/favorite/OplusFavoriteData;

    invoke-direct {v4}, Lcom/oplus/favorite/OplusFavoriteData;-><init>()V

    .line 160
    .local v4, "d":Lcom/oplus/favorite/OplusFavoriteData;
    invoke-virtual {v3}, Lcn/teddymobile/free/anteater/AnteaterClient$QueryData;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/oplus/favorite/OplusFavoriteData;->setTitle(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v3}, Lcn/teddymobile/free/anteater/AnteaterClient$QueryData;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/oplus/favorite/OplusFavoriteData;->setUrl(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v3}, Lcn/teddymobile/free/anteater/AnteaterClient$QueryData;->getContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/oplus/favorite/OplusFavoriteData;->setContent(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v3}, Lcn/teddymobile/free/anteater/AnteaterClient$QueryData;->getExtra()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/oplus/favorite/OplusFavoriteData;->setExtra(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    nop

    .end local v3    # "queryData":Lcn/teddymobile/free/anteater/AnteaterClient$QueryData;
    .end local v4    # "d":Lcom/oplus/favorite/OplusFavoriteData;
    goto :goto_0

    .line 166
    :cond_0
    monitor-exit v1

    .line 167
    return-object v0

    .line 166
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method protected blacklist isSettingOn(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 127
    iget-object v0, p0, Lcom/oplus/favorite/OplusEngineTeddy$AnteaterCallback;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/favorite/OplusFavoriteCallback;

    .line 128
    .local v0, "callback":Lcom/oplus/favorite/OplusFavoriteCallback;
    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0, p1}, Lcom/oplus/favorite/OplusFavoriteCallback;->isSettingOn(Landroid/content/Context;)Z

    move-result v1

    return v1

    .line 131
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method protected blacklist onCreateWorkHandler(Landroid/content/Context;Ljava/lang/String;I)Landroid/os/Handler;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "priority"    # I

    .line 136
    iget-object v0, p0, Lcom/oplus/favorite/OplusEngineTeddy$AnteaterCallback;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/favorite/OplusFavoriteCallback;

    .line 137
    .local v0, "callback":Lcom/oplus/favorite/OplusFavoriteCallback;
    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0, p1, p2, p3}, Lcom/oplus/favorite/OplusFavoriteCallback;->createWorkHandler(Landroid/content/Context;Ljava/lang/String;I)Landroid/os/Handler;

    move-result-object v1

    return-object v1

    .line 140
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method protected blacklist onHandleFinished(Landroid/content/Context;Lcn/teddymobile/free/anteater/AnteaterClient$ResultData;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "result"    # Lcn/teddymobile/free/anteater/AnteaterClient$ResultData;

    .line 145
    iget-object v0, p0, Lcom/oplus/favorite/OplusEngineTeddy$AnteaterCallback;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/favorite/OplusFavoriteCallback;

    .line 146
    .local v0, "callback":Lcom/oplus/favorite/OplusFavoriteCallback;
    if-eqz v0, :cond_0

    .line 147
    new-instance v1, Lcom/oplus/favorite/OplusFavoriteResult;

    invoke-direct {v1}, Lcom/oplus/favorite/OplusFavoriteResult;-><init>()V

    .line 148
    .local v1, "favoriteResult":Lcom/oplus/favorite/OplusFavoriteResult;
    invoke-direct {p0, p2}, Lcom/oplus/favorite/OplusEngineTeddy$AnteaterCallback;->getQueryList(Lcn/teddymobile/free/anteater/AnteaterClient$ResultData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oplus/favorite/OplusFavoriteResult;->setData(Ljava/util/ArrayList;)V

    .line 149
    invoke-virtual {p2}, Lcn/teddymobile/free/anteater/AnteaterClient$ResultData;->getError()Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/oplus/favorite/OplusEngineTeddy$AnteaterCallback;->getErrorMessage(Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oplus/favorite/OplusFavoriteResult;->setError(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v0, p1, v1}, Lcom/oplus/favorite/OplusFavoriteCallback;->onFavoriteFinished(Landroid/content/Context;Lcom/oplus/favorite/OplusFavoriteResult;)V

    .line 152
    .end local v1    # "favoriteResult":Lcom/oplus/favorite/OplusFavoriteResult;
    :cond_0
    return-void
.end method
