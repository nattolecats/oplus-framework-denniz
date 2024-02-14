.class public Landroid/net/wifi/OplusWifiNetworkConfig;
.super Ljava/lang/Object;
.source "OplusWifiNetworkConfig.java"


# static fields
.field private static blacklist DEBUG:Z = false

.field private static final blacklist DEFAULT_DNS:Ljava/lang/String; = "8.8.8.8"

.field private static final blacklist DEFAULT_HTTPS_URL_EXP:Ljava/lang/String; = "https://www.google.com/generate_204"

.field private static final blacklist DEFAULT_HTTP_URL_EXP:Ljava/lang/String; = "http://connectivitycheck.gstatic.com/generate_204"

.field private static final blacklist DEFAULT_NETWORK_BACKUP_DNS_EXP:Ljava/lang/String; = "8.8.8.8,208.67.222.222"

.field private static final blacklist DEFAULT_SPECIAL_URL:Ljava/lang/String; = "unknow"

.field private static final blacklist MY_COUNTRY_FILE_DIR:Ljava/lang/String;

.field private static final blacklist MY_PRODUCT_FILE_DIR:Ljava/lang/String;

.field private static final blacklist TAG:Ljava/lang/String; = "OplusNetworkConfig"

.field private static blacklist sInstance:Landroid/net/wifi/OplusWifiNetworkConfig;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mDefaultFallbackServers:[Ljava/lang/String;

.field private blacklist mDefaultHttpsServers:[Ljava/lang/String;

.field private blacklist mDefaultIpv6Servers:[Ljava/lang/String;

.field private blacklist mDefaultServers:[Ljava/lang/String;

.field private blacklist mKeyValuePair:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mWifiRomUpdateHelper:Landroid/net/wifi/IWifiRomUpdateHelper;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 50
    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyProductDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/etc/wifi_network_config.xml"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/OplusWifiNetworkConfig;->MY_PRODUCT_FILE_DIR:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 54
    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyRegionDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/OplusWifiNetworkConfig;->MY_COUNTRY_FILE_DIR:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    sput-boolean v0, Landroid/net/wifi/OplusWifiNetworkConfig;->DEBUG:Z

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-string v0, "conn-service-us-04.allawnos.com"

    const-string v1, "conn-service-us-05.allawnos.com"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/OplusWifiNetworkConfig;->mDefaultServers:[Ljava/lang/String;

    .line 64
    const-string v0, "https://conn-service-us-04.allawnos.com/generate204"

    const-string v1, "https://conn-service-us-05.allawnos.com/generate204"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/OplusWifiNetworkConfig;->mDefaultHttpsServers:[Ljava/lang/String;

    .line 66
    const-string v0, "conn-service-us-07.allawnos.com"

    const-string v1, "conn-service-us-08.allawnos.com"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/OplusWifiNetworkConfig;->mDefaultIpv6Servers:[Ljava/lang/String;

    .line 68
    const-string v0, "http://www.google.cn/generate_204"

    const-string v1, "http://developers.google.cn/generate_204"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/OplusWifiNetworkConfig;->mDefaultFallbackServers:[Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/OplusWifiNetworkConfig;->mKeyValuePair:Ljava/util/HashMap;

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/OplusWifiNetworkConfig;->mWifiRomUpdateHelper:Landroid/net/wifi/IWifiRomUpdateHelper;

    .line 101
    iput-object p1, p0, Landroid/net/wifi/OplusWifiNetworkConfig;->mContext:Landroid/content/Context;

    .line 102
    invoke-static {}, Landroid/common/OplusFrameworkFactory;->getInstance()Landroid/common/OplusFrameworkFactory;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/IWifiRomUpdateHelper;->DEFAULT:Landroid/net/wifi/IWifiRomUpdateHelper;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Landroid/net/wifi/OplusWifiNetworkConfig;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/common/OplusFrameworkFactory;->getFeature(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/IWifiRomUpdateHelper;

    iput-object v0, p0, Landroid/net/wifi/OplusWifiNetworkConfig;->mWifiRomUpdateHelper:Landroid/net/wifi/IWifiRomUpdateHelper;

    .line 103
    invoke-direct {p0}, Landroid/net/wifi/OplusWifiNetworkConfig;->init()V

    .line 104
    invoke-direct {p0}, Landroid/net/wifi/OplusWifiNetworkConfig;->dump()V

    .line 105
    return-void
.end method

.method private blacklist dump()V
    .locals 5

    .line 204
    const-string v0, "dump:"

    invoke-direct {p0, v0}, Landroid/net/wifi/OplusWifiNetworkConfig;->logD(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Landroid/net/wifi/OplusWifiNetworkConfig;->mKeyValuePair:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 206
    .local v0, "iterator":Ljava/util/Iterator;
    const/4 v1, 0x0

    .line 207
    .local v1, "key":Ljava/lang/String;
    const/4 v2, 0x0

    .line 208
    .local v2, "value":Ljava/lang/String;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 209
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Ljava/lang/String;

    .line 210
    iget-object v3, p0, Landroid/net/wifi/OplusWifiNetworkConfig;->mKeyValuePair:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Ljava/lang/String;

    .line 211
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/wifi/OplusWifiNetworkConfig;->logD(Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :cond_0
    return-void
.end method

.method public static whitelist getInstance(Landroid/content/Context;)Landroid/net/wifi/OplusWifiNetworkConfig;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 76
    const-class v0, Landroid/net/wifi/OplusWifiNetworkConfig;

    monitor-enter v0

    .line 77
    :try_start_0
    sget-object v1, Landroid/net/wifi/OplusWifiNetworkConfig;->sInstance:Landroid/net/wifi/OplusWifiNetworkConfig;

    if-nez v1, :cond_0

    .line 78
    new-instance v1, Landroid/net/wifi/OplusWifiNetworkConfig;

    invoke-direct {v1, p0}, Landroid/net/wifi/OplusWifiNetworkConfig;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/net/wifi/OplusWifiNetworkConfig;->sInstance:Landroid/net/wifi/OplusWifiNetworkConfig;

    .line 80
    :cond_0
    sget-object v1, Landroid/net/wifi/OplusWifiNetworkConfig;->sInstance:Landroid/net/wifi/OplusWifiNetworkConfig;

    monitor-exit v0

    return-object v1

    .line 81
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultVal"    # Ljava/lang/String;

    .line 197
    iget-object v0, p0, Landroid/net/wifi/OplusWifiNetworkConfig;->mKeyValuePair:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 198
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 199
    return-object p2

    .line 200
    :cond_0
    return-object v0
.end method

.method private blacklist init()V
    .locals 3

    .line 140
    const-string v0, "OplusNetworkConfig"

    const-string v1, "OplusWifiNetworkConfig init..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/net/wifi/OplusWifiNetworkConfig;->MY_PRODUCT_FILE_DIR:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    .local v0, "productfile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    sget-object v2, Landroid/net/wifi/OplusWifiNetworkConfig;->MY_COUNTRY_FILE_DIR:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 143
    .local v1, "countryFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    invoke-direct {p0, v0}, Landroid/net/wifi/OplusWifiNetworkConfig;->readFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/OplusWifiNetworkConfig;->parseContentFromXML(Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :cond_0
    invoke-direct {p0, v1}, Landroid/net/wifi/OplusWifiNetworkConfig;->readFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/OplusWifiNetworkConfig;->parseContentFromXML(Ljava/lang/String;)V

    .line 148
    :goto_0
    return-void
.end method

.method private blacklist logD(Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;

    .line 382
    sget-boolean v0, Landroid/net/wifi/OplusWifiNetworkConfig;->DEBUG:Z

    if-nez v0, :cond_0

    return-void

    .line 383
    :cond_0
    const-string v0, "OplusNetworkConfig"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    return-void
.end method

.method private blacklist logD(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 387
    sget-boolean v0, Landroid/net/wifi/OplusWifiNetworkConfig;->DEBUG:Z

    if-nez v0, :cond_0

    return-void

    .line 388
    :cond_0
    const-string v0, "OplusNetworkConfig"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    return-void
.end method

.method private blacklist parseContentFromXML(Ljava/lang/String;)V
    .locals 7
    .param p1, "content"    # Ljava/lang/String;

    .line 151
    const-string v0, "Got execption parsing permissions."

    const-string v1, "parseContentFromXML"

    invoke-direct {p0, v1}, Landroid/net/wifi/OplusWifiNetworkConfig;->logD(Ljava/lang/String;)V

    .line 152
    if-nez p1, :cond_0

    .line 153
    const-string v0, "OplusNetworkConfig"

    const-string v1, "\tcontent is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-void

    .line 156
    :cond_0
    const-string v1, ""

    .line 157
    .local v1, "mTagName":Ljava/lang/String;
    const-string v2, ""

    .line 158
    .local v2, "mText":Ljava/lang/String;
    const/4 v3, 0x0

    .line 160
    .local v3, "strReader":Ljava/io/StringReader;
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 161
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v5, Ljava/io/StringReader;

    invoke-direct {v5, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 162
    invoke-interface {v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 163
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    .line 164
    .local v5, "eventType":I
    :goto_0
    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    .line 165
    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 169
    :pswitch_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 170
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move v5, v6

    .line 171
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 176
    iget-object v6, p0, Landroid/net/wifi/OplusWifiNetworkConfig;->mKeyValuePair:Ljava/util/HashMap;

    invoke-virtual {v6, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    goto :goto_1

    .line 167
    :pswitch_2
    nop

    .line 182
    :goto_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v5, v6

    goto :goto_0

    .line 189
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "eventType":I
    :cond_1
    nop

    .line 190
    :goto_2
    invoke-virtual {v3}, Ljava/io/StringReader;->close()V

    goto :goto_3

    .line 189
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 186
    :catch_0
    move-exception v4

    .line 187
    .local v4, "e":Ljava/io/IOException;
    :try_start_1
    invoke-direct {p0, v0, v4}, Landroid/net/wifi/OplusWifiNetworkConfig;->logD(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 189
    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_2

    .line 190
    goto :goto_2

    .line 184
    :catch_1
    move-exception v4

    .line 185
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-direct {p0, v0, v4}, Landroid/net/wifi/OplusWifiNetworkConfig;->logD(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz v3, :cond_2

    .line 190
    goto :goto_2

    .line 193
    :cond_2
    :goto_3
    const-string v0, "\txml file parse end!"

    invoke-direct {p0, v0}, Landroid/net/wifi/OplusWifiNetworkConfig;->logD(Ljava/lang/String;)V

    .line 194
    return-void

    .line 189
    :goto_4
    if-eqz v3, :cond_3

    .line 190
    invoke-virtual {v3}, Ljava/io/StringReader;->close()V

    .line 192
    :cond_3
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private blacklist readFromFile(Ljava/io/File;)Ljava/lang/String;
    .locals 6
    .param p1, "path"    # Ljava/io/File;

    .line 108
    const-string v0, ""

    if-nez p1, :cond_0

    .line 109
    return-object v0

    .line 111
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 112
    return-object v0

    .line 114
    :cond_1
    const/4 v1, 0x0

    .line 116
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v2

    .line 117
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 118
    .local v2, "in":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 119
    .local v3, "buffer":Ljava/lang/StringBuffer;
    nop

    .line 120
    .local v0, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    if-eqz v4, :cond_2

    .line 121
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 123
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 133
    goto :goto_1

    .line 131
    :catch_0
    move-exception v5

    .line 132
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 123
    .end local v5    # "e":Ljava/io/IOException;
    :goto_1
    return-object v4

    .line 129
    .end local v0    # "line":Ljava/lang/String;
    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v3    # "buffer":Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 126
    :catch_1
    move-exception v0

    .line 127
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 131
    :catch_2
    move-exception v0

    .line 132
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 134
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 133
    :cond_3
    :goto_2
    goto :goto_3

    .line 124
    :catch_3
    move-exception v0

    .line 125
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 130
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 135
    :goto_3
    const/4 v0, 0x0

    return-object v0

    .line 130
    :goto_4
    if-eqz v1, :cond_4

    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_5

    .line 131
    :catch_4
    move-exception v2

    .line 132
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 133
    .end local v2    # "e":Ljava/io/IOException;
    :cond_4
    :goto_5
    nop

    .line 134
    :goto_6
    throw v0
.end method


# virtual methods
.method public whitelist getBackupDnsServer(Z)[Ljava/lang/String;
    .locals 4
    .param p1, "isExp"    # Z

    .line 359
    const/4 v0, 0x0

    .line 360
    .local v0, "value":Ljava/lang/String;
    const-string v1, "NETWORK_BACKUP_DNS_EXP"

    const-string v2, "NETWORK_BACKUP_DNS"

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 361
    invoke-virtual {p0, v1, v3}, Landroid/net/wifi/OplusWifiNetworkConfig;->getRomUpdateValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 363
    :cond_0
    invoke-virtual {p0, v2, v3}, Landroid/net/wifi/OplusWifiNetworkConfig;->getRomUpdateValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 366
    :goto_0
    if-nez v0, :cond_2

    .line 367
    if-eqz p1, :cond_1

    .line 368
    invoke-direct {p0, v1, v3}, Landroid/net/wifi/OplusWifiNetworkConfig;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 370
    :cond_1
    invoke-direct {p0, v2, v3}, Landroid/net/wifi/OplusWifiNetworkConfig;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 373
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 374
    const-string v1, "get from rom update null\n"

    invoke-direct {p0, v1}, Landroid/net/wifi/OplusWifiNetworkConfig;->logD(Ljava/lang/String;)V

    .line 375
    const-string v0, "8.8.8.8,208.67.222.222"

    .line 377
    :cond_3
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 378
    .local v1, "backupServers":[Ljava/lang/String;
    return-object v1
.end method

.method public whitelist getDefaultDns(Z)Ljava/lang/String;
    .locals 4
    .param p1, "isExp"    # Z

    .line 338
    const/4 v0, 0x0

    .line 339
    .local v0, "value":Ljava/lang/String;
    const-string v1, "NETWORK_EXP_DEFAULT_DNS"

    const-string v2, "NETWORK_DEFAULT_DNS"

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 340
    invoke-virtual {p0, v1, v3}, Landroid/net/wifi/OplusWifiNetworkConfig;->getRomUpdateValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 342
    :cond_0
    invoke-virtual {p0, v2, v3}, Landroid/net/wifi/OplusWifiNetworkConfig;->getRomUpdateValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 344
    :goto_0
    if-nez v0, :cond_2

    .line 345
    if-eqz p1, :cond_1

    .line 346
    invoke-direct {p0, v1, v3}, Landroid/net/wifi/OplusWifiNetworkConfig;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 348
    :cond_1
    invoke-direct {p0, v2, v3}, Landroid/net/wifi/OplusWifiNetworkConfig;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 351
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 352
    const-string v1, "8.8.8.8"

    return-object v1

    .line 354
    :cond_3
    return-object v0
.end method

.method public whitelist getExpHttpUrl()Ljava/lang/String;
    .locals 3

    .line 312
    const-string v0, "NETWORK_EXP_CAPTIVE_SERVER_HTTP_URL"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/OplusWifiNetworkConfig;->getRomUpdateValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 314
    .local v2, "value":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 315
    invoke-direct {p0, v0, v1}, Landroid/net/wifi/OplusWifiNetworkConfig;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 317
    :cond_0
    if-nez v2, :cond_1

    .line 318
    const-string v0, "http://connectivitycheck.gstatic.com/generate_204"

    return-object v0

    .line 320
    :cond_1
    return-object v2
.end method

.method public whitelist getExpHttpsUrl()Ljava/lang/String;
    .locals 3

    .line 325
    const-string v0, "NETWORK_EXP_CAPTIVE_SERVER_HTTPS_URL"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/OplusWifiNetworkConfig;->getRomUpdateValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 327
    .local v2, "value":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 328
    invoke-direct {p0, v0, v1}, Landroid/net/wifi/OplusWifiNetworkConfig;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 330
    :cond_0
    if-nez v2, :cond_1

    .line 331
    const-string v0, "https://www.google.com/generate_204"

    return-object v0

    .line 333
    :cond_1
    return-object v2
.end method

.method public whitelist getFallbackServers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 304
    iget-object v0, p0, Landroid/net/wifi/OplusWifiNetworkConfig;->mDefaultFallbackServers:[Ljava/lang/String;

    const-string v1, "NETWORK_FALLBACK_HTTP_SERVERS_URL"

    invoke-virtual {p0, v1, v0}, Landroid/net/wifi/OplusWifiNetworkConfig;->getServers(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getInternalServers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 296
    iget-object v0, p0, Landroid/net/wifi/OplusWifiNetworkConfig;->mDefaultServers:[Ljava/lang/String;

    const-string v1, "OPLUS_WIFI_ASSISTANT_NETSERVER"

    invoke-virtual {p0, v1, v0}, Landroid/net/wifi/OplusWifiNetworkConfig;->getServers(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getIpv6Servers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 308
    iget-object v0, p0, Landroid/net/wifi/OplusWifiNetworkConfig;->mDefaultIpv6Servers:[Ljava/lang/String;

    const-string v1, "OPLUS_WIFI_NETCONFIG_IPV6_SERVER"

    invoke-virtual {p0, v1, v0}, Landroid/net/wifi/OplusWifiNetworkConfig;->getServers(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPublicHttpsServers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 300
    iget-object v0, p0, Landroid/net/wifi/OplusWifiNetworkConfig;->mDefaultHttpsServers:[Ljava/lang/String;

    const-string v1, "NETWORK_PUBLIC_HTTPS_SERVERS_URL"

    invoke-virtual {p0, v1, v0}, Landroid/net/wifi/OplusWifiNetworkConfig;->getServers(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getRomUpdateValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultVal"    # Ljava/lang/String;

    .line 87
    iget-object v0, p0, Landroid/net/wifi/OplusWifiNetworkConfig;->mWifiRomUpdateHelper:Landroid/net/wifi/IWifiRomUpdateHelper;

    if-eqz v0, :cond_0

    .line 88
    invoke-interface {v0, p1, p2}, Landroid/net/wifi/IWifiRomUpdateHelper;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 90
    :cond_0
    return-object p2
.end method

.method public whitelist getServers(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "TAG"    # Ljava/lang/String;
    .param p2, "servers"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 266
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 268
    .local v0, "defaultServers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/net/wifi/OplusWifiNetworkConfig;->getRomUpdateValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, "value":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 271
    invoke-direct {p0, p1, v1}, Landroid/net/wifi/OplusWifiNetworkConfig;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 274
    :cond_0
    if-nez v2, :cond_1

    .line 275
    const-string v1, "romupdate & defaultxml is null, using default servers!"

    invoke-direct {p0, v1}, Landroid/net/wifi/OplusWifiNetworkConfig;->logD(Ljava/lang/String;)V

    .line 276
    return-object v0

    .line 279
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 280
    .local v1, "updatedServers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 282
    .local v6, "name":Ljava/lang/String;
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    .end local v6    # "name":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 285
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_3

    .line 286
    return-object v1

    .line 288
    :cond_3
    const-string v3, "updated Servers less than 2, using default servers!"

    invoke-direct {p0, v3}, Landroid/net/wifi/OplusWifiNetworkConfig;->logD(Ljava/lang/String;)V

    .line 289
    return-object v0
.end method

.method public whitelist inSpecialUrlList(Ljava/lang/String;)Z
    .locals 7
    .param p1, "url"    # Ljava/lang/String;

    .line 216
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 217
    const-string v1, "url is null."

    invoke-direct {p0, v1}, Landroid/net/wifi/OplusWifiNetworkConfig;->logD(Ljava/lang/String;)V

    .line 218
    return v0

    .line 220
    :cond_0
    const-string v1, "NETWORK_SPECIAL_REDIRECT_URL"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/OplusWifiNetworkConfig;->getRomUpdateValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 222
    .local v3, "value":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 223
    invoke-direct {p0, v1, v2}, Landroid/net/wifi/OplusWifiNetworkConfig;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 226
    :cond_1
    if-nez v3, :cond_2

    .line 227
    const-string v1, "Fail to getRomUpdateValue & defaultxml"

    invoke-direct {p0, v1}, Landroid/net/wifi/OplusWifiNetworkConfig;->logD(Ljava/lang/String;)V

    .line 228
    return v0

    .line 230
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inSpecialUrlList(), url list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/OplusWifiNetworkConfig;->logD(Ljava/lang/String;)V

    .line 232
    const-string v1, ","

    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    move v4, v0

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, v1, v4

    .line 233
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 234
    const/4 v0, 0x1

    return v0

    .line 232
    .end local v5    # "name":Ljava/lang/String;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 237
    :cond_4
    return v0
.end method

.method public whitelist isHomeAp(Ljava/lang/String;)Z
    .locals 7
    .param p1, "redirectUrl"    # Ljava/lang/String;

    .line 241
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 245
    :cond_0
    const-string v1, "HOMEAP_REDIRECT_URL"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/OplusWifiNetworkConfig;->getRomUpdateValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 247
    .local v3, "value":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 248
    invoke-direct {p0, v1, v2}, Landroid/net/wifi/OplusWifiNetworkConfig;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 251
    :cond_1
    if-nez v3, :cond_2

    .line 252
    const-string v1, "Fail to getRomUpdateValue & defaultxml"

    invoke-direct {p0, v1}, Landroid/net/wifi/OplusWifiNetworkConfig;->logD(Ljava/lang/String;)V

    .line 253
    return v0

    .line 256
    :cond_2
    const-string v1, ","

    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    move v4, v0

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, v1, v4

    .line 257
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 258
    const-string v0, "home router, because the redirectUrl matches the keyword"

    invoke-direct {p0, v0}, Landroid/net/wifi/OplusWifiNetworkConfig;->logD(Ljava/lang/String;)V

    .line 259
    const/4 v0, 0x1

    return v0

    .line 256
    .end local v5    # "name":Ljava/lang/String;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 262
    :cond_4
    return v0

    .line 242
    .end local v3    # "value":Ljava/lang/String;
    :cond_5
    :goto_1
    return v0
.end method

.method public whitelist reloadWifiNetworkConfig(Ljava/lang/String;)V
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;

    .line 95
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/net/wifi/OplusWifiNetworkConfig;->readFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/OplusWifiNetworkConfig;->parseContentFromXML(Ljava/lang/String;)V

    .line 98
    :cond_0
    return-void
.end method
