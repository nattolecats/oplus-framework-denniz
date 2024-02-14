.class public Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;
.super Ljava/lang/Object;
.source "OplusPreloadSpalshRUSHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper$MyHandler;,
        Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper$UpdateReceiver;
    }
.end annotation


# static fields
.field private static final blacklist ACTION_ROM_UPDATE_CONFIG_SUCCES:Ljava/lang/String; = "oplus.intent.action.ROM_UPDATE_CONFIG_SUCCESS"

.field private static final blacklist COLUMN_NAME_1:Ljava/lang/String; = "version"

.field private static final blacklist COLUMN_NAME_2:Ljava/lang/String; = "xml"

.field private static final blacklist CONTENT_URI_WHITE_LIST:Landroid/net/Uri;

.field private static final blacklist FILTER_NAME:Ljava/lang/String; = "sys_opti_preload_splash_config"

.field private static final blacklist MSG_CONFIG:I = 0x700001

.field private static final blacklist PARAM_MAX_FAIL_NUM:Ljava/lang/String; = "max-fail-num"

.field private static final blacklist PARAM_MAX_SAVE_NUM:Ljava/lang/String; = "max-save-num"

.field private static final blacklist PARAM_MIN_HEIGHT:Ljava/lang/String; = "min-height"

.field private static final blacklist PARAM_MIN_WIDTH:Ljava/lang/String; = "min-width"

.field private static final blacklist TAG:Ljava/lang/String; = "OplusPreloadSpalshRUSHelper"

.field private static final blacklist mListLock:Ljava/lang/Object;

.field private static final blacklist mLock:Ljava/lang/Object;

.field private static blacklist sInstance:Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;


# instance fields
.field private blacklist mConfigVersion:I

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mCurrentPreloadList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDebug:I

.field private blacklist mEnable:I

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mIsSystemReady:Z

.field private blacklist mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mListparamSize:I

.field private blacklist mMaxFailNum:I

.field private blacklist mMaxSaveCount:I

.field private blacklist mMinHeight:I

.field private blacklist mMinWidth:I

.field private blacklist mPreloadList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mReceiver:Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper$UpdateReceiver;

.field private blacklist mSupportForAllApps:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateRUSInfo(Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->updateRUSInfo()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 49
    const-string v0, "content://com.nearme.romupdate.provider.db/update_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->CONTENT_URI_WHITE_LIST:Landroid/net/Uri;

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mLock:Ljava/lang/Object;

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mListLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mEnable:I

    .line 55
    iput v0, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mDebug:I

    .line 56
    iput v0, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mSupportForAllApps:I

    .line 57
    const/16 v1, 0x384

    iput v1, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mMinWidth:I

    .line 58
    iput v1, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mMinHeight:I

    .line 59
    const/4 v1, 0x3

    iput v1, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mMaxSaveCount:I

    .line 60
    const/4 v1, 0x5

    iput v1, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mMaxFailNum:I

    .line 61
    const/4 v1, 0x7

    iput v1, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mListparamSize:I

    .line 63
    iput-boolean v0, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mIsSystemReady:Z

    .line 64
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mContext:Landroid/content/Context;

    .line 66
    iput v0, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mConfigVersion:I

    .line 67
    new-instance v0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper$UpdateReceiver;

    invoke-direct {v0, p0, v1}, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper$UpdateReceiver;-><init>(Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper$UpdateReceiver-IA;)V

    iput-object v0, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mReceiver:Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper$UpdateReceiver;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mList:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mPreloadList:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mCurrentPreloadList:Ljava/util/ArrayList;

    .line 76
    return-void
.end method

.method private blacklist checkParamVaild()V
    .locals 1

    .line 266
    iget v0, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mMinWidth:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mMinHeight:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mMaxSaveCount:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mMaxFailNum:I

    if-gez v0, :cond_0

    goto :goto_0

    .line 269
    :cond_0
    invoke-direct {p0}, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->updateParamList()V

    goto :goto_1

    .line 267
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->reset()V

    .line 271
    :goto_1
    return-void
.end method

.method private blacklist getConfigFromProvider()Z
    .locals 15

    .line 148
    const-string v0, "getDataFromProvider: Got execption. "

    const-string v1, "xml"

    const-string v2, "version"

    const/4 v3, 0x0

    .line 149
    .local v3, "cursor":Landroid/database/Cursor;
    const/4 v4, 0x0

    .line 150
    .local v4, "strConfigList":Ljava/lang/String;
    const/4 v5, 0x0

    .line 151
    .local v5, "configVersion":I
    const/4 v6, 0x1

    .line 152
    .local v6, "isSuccess":Z
    const-string v7, "OplusPreloadSpalshRUSHelper"

    const-string v8, "getConfigFromProvider FILTER_NAME =sys_opti_preload_splash_config"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/4 v8, 0x0

    :try_start_0
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v11

    .line 155
    .local v11, "projection":[Ljava/lang/String;
    iget-object v9, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->CONTENT_URI_WHITE_LIST:Landroid/net/Uri;

    const-string v12, "filtername=\"sys_opti_preload_splash_config\""

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    move-object v3, v9

    .line 157
    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-lez v9, :cond_0

    .line 158
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 159
    .local v2, "versioncolumnIndex":I
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 160
    .local v1, "xmlcolumnIndex":I
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 161
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    move v5, v9

    .line 162
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v4, v9

    .line 168
    .end local v1    # "xmlcolumnIndex":I
    .end local v2    # "versioncolumnIndex":I
    .end local v11    # "projection":[Ljava/lang/String;
    :cond_0
    if-eqz v3, :cond_1

    .line 169
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 173
    :cond_1
    if-nez v4, :cond_2

    .line 174
    const-string v0, "getDataFromProvider: failed; strConfigList == null"

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return v8

    .line 178
    :cond_2
    iget v1, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mConfigVersion:I

    if-eqz v1, :cond_3

    if-ge v5, v1, :cond_3

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDataFromProvider: failed; newVer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " oldVer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mConfigVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return v8

    .line 184
    :cond_3
    iput v5, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mConfigVersion:I

    .line 186
    const/4 v1, 0x0

    .line 188
    .local v1, "strReader":Ljava/io/StringReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 189
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v9, Ljava/io/StringReader;

    invoke-direct {v9, v4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    move-object v1, v9

    .line 190
    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 191
    invoke-direct {p0, v2}, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->parseXml(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_4

    .line 192
    nop

    .line 197
    nop

    .line 198
    invoke-virtual {v1}, Ljava/io/StringReader;->close()V

    .line 192
    return v8

    .line 197
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_4
    nop

    .line 198
    :goto_0
    invoke-virtual {v1}, Ljava/io/StringReader;->close()V

    goto :goto_1

    .line 197
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 194
    :catch_0
    move-exception v2

    .line 195
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v7, v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 197
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_5

    .line 198
    goto :goto_0

    .line 202
    :cond_5
    :goto_1
    const-string v0, "getConfigFromProvider success"

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return v6

    .line 197
    :goto_2
    if-eqz v1, :cond_6

    .line 198
    invoke-virtual {v1}, Ljava/io/StringReader;->close()V

    .line 200
    :cond_6
    throw v0

    .line 164
    .end local v1    # "strReader":Ljava/io/StringReader;
    :catch_1
    move-exception v1

    .line 165
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 166
    nop

    .line 168
    if-eqz v3, :cond_7

    .line 169
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 166
    :cond_7
    return v8

    .line 168
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    if-eqz v3, :cond_8

    .line 169
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 171
    :cond_8
    throw v0
.end method

.method private blacklist getDefaultListForPreloadCache()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 313
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 314
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "com.tencent.mm"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    const-string v1, "com.snda.wifilocating"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    const-string v1, "tv.danmaku.bili"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    const-string v1, "com.xunlei.downloadprovider"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    const-string v1, "com.mt.mtxx.mtxx"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    const-string v1, "com.wuba"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    const-string v1, "com.tmall.wireless"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    const-string v1, "com.ximalaya.ting.android"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    const-string v1, "com.taobao.trip"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    const-string v1, "com.immomo.momo"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    const-string v1, "com.hunantv.imgo.activity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    const-string v1, "com.kingpoint.gmcchh"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    return-object v0
.end method

.method public static blacklist getInstance()Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;
    .locals 2

    .line 110
    const-class v0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;

    monitor-enter v0

    .line 111
    :try_start_0
    sget-object v1, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->sInstance:Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;

    if-nez v1, :cond_0

    .line 112
    new-instance v1, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;

    invoke-direct {v1}, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;-><init>()V

    sput-object v1, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->sInstance:Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;

    .line 114
    :cond_0
    sget-object v1, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->sInstance:Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;

    monitor-exit v0

    return-object v1

    .line 115
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static blacklist getPreLoadSplashRUSParam(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 356
    invoke-static {}, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->getInstance()Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->getPreLoadSplashRUSParamInner(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private blacklist initRomUpdateBroadcast()V
    .locals 3

    .line 90
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 91
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "oplus.intent.action.ROM_UPDATE_CONFIG_SUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mReceiver:Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper$UpdateReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 93
    return-void
.end method

.method private blacklist parseXml(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 207
    const/4 v0, 0x1

    .line 209
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mPreloadList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 211
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 212
    .local v1, "eventType":I
    const/4 v2, 0x0

    .line 213
    .local v2, "strText":Ljava/lang/String;
    const/4 v3, 0x0

    .line 214
    .local v3, "strName":Ljava/lang/String;
    :goto_0
    const/4 v4, 0x1

    if-eq v1, v4, :cond_0

    .line 215
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 220
    :pswitch_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 221
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    move v1, v4

    .line 222
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 223
    invoke-direct {p0, v3, v2}, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->parserConfigTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    goto :goto_1

    .line 217
    :pswitch_2
    nop

    .line 229
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v4

    goto :goto_0

    .line 235
    .end local v1    # "eventType":I
    .end local v2    # "strText":Ljava/lang/String;
    .end local v3    # "strName":Ljava/lang/String;
    :cond_0
    nop

    .line 236
    return v0

    .line 231
    :catch_0
    move-exception v1

    .line 232
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "OplusPreloadSpalshRUSHelper"

    const-string v3, "parseXml: Got execption. "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    const/4 v0, 0x0

    .line 234
    const/4 v2, 0x0

    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private blacklist parserConfigTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 241
    :try_start_0
    const-string v0, "enable"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mEnable:I

    goto/16 :goto_0

    .line 243
    :cond_0
    const-string v0, "debug"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mDebug:I

    goto/16 :goto_0

    .line 245
    :cond_1
    const-string v0, "support-for-all-app"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mSupportForAllApps:I

    goto :goto_0

    .line 247
    :cond_2
    const-string v0, "min-width"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 248
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mMinWidth:I

    goto :goto_0

    .line 249
    :cond_3
    const-string v0, "min-height"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 250
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mMinHeight:I

    goto :goto_0

    .line 251
    :cond_4
    const-string v0, "max-save-num"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 252
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mMaxSaveCount:I

    goto :goto_0

    .line 253
    :cond_5
    const-string v0, "max-fail-num"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 254
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mMaxFailNum:I

    goto :goto_0

    .line 255
    :cond_6
    const-string v0, "list-app"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 256
    iget-object v0, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mPreloadList:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 257
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :cond_7
    :goto_0
    goto :goto_1

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusPreloadSpalshRUSHelper"

    const-string v2, "parserConfigTag "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 263
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private blacklist reset()V
    .locals 2

    .line 300
    const-string v0, "OplusPreloadSpalshRUSHelper"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mEnable:I

    .line 302
    iput v0, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mDebug:I

    .line 303
    iput v0, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mSupportForAllApps:I

    .line 304
    const/16 v0, 0x384

    iput v0, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mMinWidth:I

    .line 305
    iput v0, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mMinHeight:I

    .line 306
    const/4 v0, 0x3

    iput v0, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mMaxSaveCount:I

    .line 307
    const/4 v0, 0x5

    iput v0, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mMaxFailNum:I

    .line 308
    invoke-direct {p0}, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->getDefaultListForPreloadCache()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mPreloadList:Ljava/util/ArrayList;

    .line 309
    invoke-direct {p0}, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->updateParamList()V

    .line 310
    return-void
.end method

.method private blacklist updateParamList()V
    .locals 4

    .line 274
    sget-object v0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 275
    :try_start_0
    iget-object v1, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 276
    iget-object v1, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mList:Ljava/util/List;

    iget v2, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mEnable:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    iget-object v1, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mList:Ljava/util/List;

    iget v2, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mDebug:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    iget-object v1, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mList:Ljava/util/List;

    iget v2, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mSupportForAllApps:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    iget-object v1, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mList:Ljava/util/List;

    iget v2, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mMinWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    iget-object v1, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mList:Ljava/util/List;

    iget v2, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mMinHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    iget-object v1, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mList:Ljava/util/List;

    iget v2, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mMaxSaveCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object v1, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mList:Ljava/util/List;

    iget v2, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mMaxFailNum:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    iget-object v1, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mPreloadList:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mCurrentPreloadList:Ljava/util/ArrayList;

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 286
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "[OplusPreloadSpalshRUSHelper] updateParamList, status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "; mEnable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mEnable:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "; mDebug: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mDebug:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "; mSupportForAllApps: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mSupportForAllApps:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "; mMinWidth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mMinWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "; mMinHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mMinHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "; mMaxSaveCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mMaxSaveCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "; mMaxFailNum: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mMaxFailNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "; mCurrentPreloadList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mCurrentPreloadList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    const-string v2, "OplusPreloadSpalshRUSHelper"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    nop

    .end local v1    # "sb":Ljava/lang/StringBuilder;
    monitor-exit v0

    .line 297
    return-void

    .line 296
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist updateRUSInfo()V
    .locals 2

    .line 135
    const-string v0, "OplusPreloadSpalshRUSHelper"

    const-string v1, "updateRUSInfo"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    sget-object v0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 137
    :try_start_0
    iget-boolean v1, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mIsSystemReady:Z

    if-eqz v1, :cond_1

    .line 138
    invoke-direct {p0}, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->getConfigFromProvider()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    invoke-direct {p0}, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->checkParamVaild()V

    goto :goto_0

    .line 141
    :cond_0
    invoke-direct {p0}, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->reset()V

    .line 144
    :cond_1
    :goto_0
    monitor-exit v0

    .line 145
    return-void

    .line 144
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public blacklist getPreLoadSplashRUSParamInner(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 330
    sget-object v0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 331
    :try_start_0
    iget-boolean v1, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mIsSystemReady:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 332
    const-string v1, "OplusPreloadSpalshRUSHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPreLoadSplashRUSParam error; mIsSystemReady = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mIsSystemReady:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    monitor-exit v0

    return-object v2

    .line 337
    :cond_0
    iget-object v1, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v3, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mListparamSize:I

    if-eq v1, v3, :cond_1

    .line 338
    const-string v1, "OplusPreloadSpalshRUSHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPreLoadSplashRUSParam error; mList.size() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mList:Ljava/util/List;

    .line 339
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 338
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    monitor-exit v0

    return-object v2

    .line 343
    :cond_1
    const/4 v1, 0x0

    .line 344
    .local v1, "supportForAllApps":Z
    iget-object v3, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mCurrentPreloadList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 345
    .local v3, "inWhiteList":Z
    if-nez v1, :cond_3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 350
    :cond_2
    monitor-exit v0

    return-object v2

    .line 346
    :cond_3
    :goto_0
    const-string v2, "OplusPreloadSpalshRUSHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPreLoadSplashRUSParam supportForAllApps = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; package is inWhiteList= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v2, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mList:Ljava/util/List;

    monitor-exit v0

    return-object v2

    .line 352
    .end local v1    # "supportForAllApps":Z
    .end local v3    # "inWhiteList":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 79
    iget-boolean v0, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mIsSystemReady:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 80
    const-string v0, "OplusPreloadSpalshRUSHelper"

    const-string v1, "init -- begin"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mIsSystemReady:Z

    .line 82
    iput-object p1, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mContext:Landroid/content/Context;

    .line 83
    new-instance v0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper$MyHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper$MyHandler;-><init>(Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->mHandler:Landroid/os/Handler;

    .line 84
    const v1, 0x700001

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 85
    invoke-direct {p0}, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->initRomUpdateBroadcast()V

    .line 87
    :cond_0
    return-void
.end method
