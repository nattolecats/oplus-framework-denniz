.class public Landroid/os/OplusBaseBatteryStatsRUSHelper;
.super Ljava/lang/Object;
.source "OplusBaseBatteryStatsRUSHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/OplusBaseBatteryStatsRUSHelper$GetDataFromProviderRunnable;
    }
.end annotation


# static fields
.field private static final blacklist COLUMN_NAME_1:Ljava/lang/String; = "version"

.field private static final blacklist COLUMN_NAME_2:Ljava/lang/String; = "xml"

.field private static final blacklist CONTENT_URI_WHITE_LIST:Landroid/net/Uri;

.field private static final blacklist DAILY_BATT_PROTO_SWITCH:Ljava/lang/String; = "daily_batt_proto_switch"

.field private static final blacklist DEBUG:Z

.field private static final blacklist TAG:Ljava/lang/String; = "OplusBaseBatteryStatsRUSHelper"


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mFilterName:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetConfigFromProvider(Landroid/os/OplusBaseBatteryStatsRUSHelper;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/OplusBaseBatteryStatsRUSHelper;->getConfigFromProvider()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateROMConfig(Landroid/os/OplusBaseBatteryStatsRUSHelper;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/OplusBaseBatteryStatsRUSHelper;->updateROMConfig()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smmyLog(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Landroid/os/OplusBaseBatteryStatsRUSHelper;->myLog(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 40
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/OplusBaseBatteryStatsRUSHelper;->DEBUG:Z

    .line 44
    const-string v0, "content://com.nearme.romupdate.provider.db/update_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/os/OplusBaseBatteryStatsRUSHelper;->CONTENT_URI_WHITE_LIST:Landroid/net/Uri;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filterName"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/OplusBaseBatteryStatsRUSHelper;->mContext:Landroid/content/Context;

    .line 49
    iput-object v0, p0, Landroid/os/OplusBaseBatteryStatsRUSHelper;->mFilterName:Ljava/lang/String;

    .line 52
    iput-object p1, p0, Landroid/os/OplusBaseBatteryStatsRUSHelper;->mContext:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Landroid/os/OplusBaseBatteryStatsRUSHelper;->mFilterName:Ljava/lang/String;

    .line 54
    return-void
.end method

.method private blacklist getConfigFromProvider()V
    .locals 13

    .line 112
    const-string v0, "xml"

    const-string v1, "version"

    const/4 v2, 0x0

    .line 113
    .local v2, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 114
    .local v3, "strConfigList":Ljava/lang/String;
    const/4 v4, 0x0

    .line 115
    .local v4, "configVersion":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getConfigFromProvider FILTER_NAME ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/os/OplusBaseBatteryStatsRUSHelper;->mFilterName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OplusBaseBatteryStatsRUSHelper"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :try_start_0
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v9

    .line 118
    .local v9, "projection":[Ljava/lang/String;
    iget-object v5, p0, Landroid/os/OplusBaseBatteryStatsRUSHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/os/OplusBaseBatteryStatsRUSHelper;->CONTENT_URI_WHITE_LIST:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "filtername=\""

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v10, p0, Landroid/os/OplusBaseBatteryStatsRUSHelper;->mFilterName:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "\""

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    move-object v2, v5

    .line 119
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 120
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 121
    .local v1, "versioncolumnIndex":I
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 122
    .local v0, "xmlcolumnIndex":I
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 123
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move v4, v5

    .line 124
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "configVersion: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/OplusBaseBatteryStatsRUSHelper;->myLog(Ljava/lang/String;)V

    .line 125
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 126
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "strConfigList: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/OplusBaseBatteryStatsRUSHelper;->myLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    .end local v0    # "xmlcolumnIndex":I
    .end local v1    # "versioncolumnIndex":I
    .end local v9    # "projection":[Ljava/lang/String;
    :cond_0
    if-eqz v2, :cond_1

    .line 132
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getConfigFromProvider: Got execption. "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_1

    .line 132
    goto :goto_0

    .line 136
    :cond_1
    :goto_1
    if-nez v3, :cond_2

    .line 137
    const-string v0, "getConfigFromProvider: failed"

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void

    .line 141
    :cond_2
    invoke-direct {p0, v3}, Landroid/os/OplusBaseBatteryStatsRUSHelper;->parseContentFromXML(Ljava/lang/String;)V

    .line 142
    return-void

    .line 131
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_3

    .line 132
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 134
    :cond_3
    throw v0
.end method

.method private static blacklist myLog(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 57
    sget-boolean v0, Landroid/os/OplusBaseBatteryStatsRUSHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 58
    const-string v0, "OplusBaseBatteryStatsRUSHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    return-void
.end method

.method private blacklist parseContentFromXML(Ljava/lang/String;)V
    .locals 8
    .param p1, "content"    # Ljava/lang/String;

    .line 75
    const-string v0, "daily_batt_proto_switch"

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 80
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 81
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 82
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 84
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 86
    .local v2, "type":I
    :cond_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v2, v3

    .line 87
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v3, :cond_3

    .line 88
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, "tag":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 90
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    .line 91
    .local v5, "currentText":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "currentText: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/os/OplusBaseBatteryStatsRUSHelper;->myLog(Ljava/lang/String;)V

    .line 92
    if-eqz v5, :cond_3

    .line 93
    const-string v6, "0"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 94
    const-string v6, "Update daily proto reporting feature to 0"

    invoke-static {v6}, Landroid/os/OplusBaseBatteryStatsRUSHelper;->myLog(Ljava/lang/String;)V

    .line 95
    iget-object v6, p0, Landroid/os/OplusBaseBatteryStatsRUSHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v0, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 96
    :cond_2
    const-string v6, "1"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 97
    const-string v6, "Update daily proto reporting feature to 1"

    invoke-static {v6}, Landroid/os/OplusBaseBatteryStatsRUSHelper;->myLog(Ljava/lang/String;)V

    .line 98
    iget-object v6, p0, Landroid/os/OplusBaseBatteryStatsRUSHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v0, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v3    # "tag":Ljava/lang/String;
    .end local v5    # "currentText":Ljava/lang/String;
    :cond_3
    :goto_0
    if-ne v2, v4, :cond_1

    .line 108
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "type":I
    goto :goto_1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusBaseBatteryStatsRUSHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 109
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 76
    :cond_4
    :goto_2
    return-void
.end method

.method private blacklist updateROMConfig()V
    .locals 3

    .line 145
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/os/OplusBaseBatteryStatsRUSHelper$GetDataFromProviderRunnable;

    invoke-direct {v1, p0}, Landroid/os/OplusBaseBatteryStatsRUSHelper$GetDataFromProviderRunnable;-><init>(Landroid/os/OplusBaseBatteryStatsRUSHelper;)V

    const-string v2, "ProtoConfigRomUpdate"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 146
    .local v0, "thread":Ljava/lang/Thread;
    const-string v1, "OplusBaseBatteryStatsRUSHelper"

    const-string v2, "ACTION_ROM_UPDATE_CONFIG_SUCCES"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 148
    return-void
.end method


# virtual methods
.method public blacklist registerRomUpdate()V
    .locals 3

    .line 63
    const-string v0, "OplusBaseBatteryStatsRUSHelper"

    const-string v1, "registerRomUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-static {}, Lcom/oplus/romupdate/RomUpdateObserver;->getInstance()Lcom/oplus/romupdate/RomUpdateObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/os/OplusBaseBatteryStatsRUSHelper;->mFilterName:Ljava/lang/String;

    new-instance v2, Landroid/os/OplusBaseBatteryStatsRUSHelper$1;

    invoke-direct {v2, p0}, Landroid/os/OplusBaseBatteryStatsRUSHelper$1;-><init>(Landroid/os/OplusBaseBatteryStatsRUSHelper;)V

    invoke-virtual {v0, v1, v2}, Lcom/oplus/romupdate/RomUpdateObserver;->register(Ljava/lang/String;Lcom/oplus/romupdate/RomUpdateObserver$OnReceiveListener;)V

    .line 72
    return-void
.end method
