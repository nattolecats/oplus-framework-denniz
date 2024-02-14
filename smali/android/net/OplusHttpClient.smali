.class public Landroid/net/OplusHttpClient;
.super Ljava/lang/Object;
.source "OplusHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/OplusHttpClient$DateTimeXmlParseHandler;,
        Landroid/net/OplusHttpClient$MyX509TrustManager;
    }
.end annotation


# static fields
.field private static final blacklist AVERAGE_RECEIVE_TIME:J = 0x340L

.field private static final blacklist DEBUG:Z = true

.field private static final blacklist GMT_BEIJING_OFFSET:J = 0x1b77400L

.field private static final blacklist TAG:Ljava/lang/String; = "OplusHttpClient"

.field private static final blacklist VALID_LAST_TIME_THRESHOLD:J = 0x5dcL

.field private static blacklist mLastGotSuccessLocaltime:J


# instance fields
.field private blacklist mHttpTime:J

.field private blacklist mHttpTimeReference:J

.field private blacklist mRoundTripTime:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 71
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/net/OplusHttpClient;->mLastGotSuccessLocaltime:J

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist forceRefreshTimeFromOplusServer(Landroid/content/Context;II)Z
    .locals 43
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "selServerUrl"    # I
    .param p3, "timeout"    # I

    .line 96
    move-object/from16 v1, p0

    const-string v0, ""

    const-string v2, "default"

    const/4 v3, 0x0

    .line 97
    .local v3, "returnFlag":Z
    const/4 v4, 0x0

    .line 98
    .local v4, "url":Ljava/net/URL;
    const-string v5, "OplusHttpClient"

    const-string v6, "Enter forceRefreshTimeFromOplusServer run"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :try_start_0
    const-string v6, "ro.oplus.server_url_1"

    invoke-static {v6, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 101
    .local v6, "oplusServerURL":Ljava/lang/String;
    if-lez p2, :cond_0

    .line 102
    :try_start_1
    const-string v7, "ro.oplus.server_url_2"

    invoke-static {v7, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v6, v7

    goto :goto_0

    .line 270
    .end local v6    # "oplusServerURL":Ljava/lang/String;
    :catch_0
    move-exception v0

    move/from16 v13, p3

    move/from16 v25, v3

    goto/16 :goto_7

    .line 104
    .restart local v6    # "oplusServerURL":Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    const/4 v7, 0x0

    if-eqz v2, :cond_1

    .line 105
    :try_start_3
    const-string v0, "Property return default."

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 106
    return v7

    .line 108
    :cond_1
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 109
    .end local v6    # "oplusServerURL":Ljava/lang/String;
    .local v2, "oplusServerURL":Ljava/lang/String;
    const-string v6, "SSL"

    invoke-static {v6}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v6

    .line 110
    .local v6, "sslcontext":Ljavax/net/ssl/SSLContext;
    const/4 v8, 0x1

    new-array v9, v8, [Ljavax/net/ssl/TrustManager;

    new-instance v10, Landroid/net/OplusHttpClient$MyX509TrustManager;

    const/4 v11, 0x0

    invoke-direct {v10, v1, v11}, Landroid/net/OplusHttpClient$MyX509TrustManager;-><init>(Landroid/net/OplusHttpClient;Landroid/net/OplusHttpClient$MyX509TrustManager-IA;)V

    aput-object v10, v9, v7

    new-instance v10, Ljava/security/SecureRandom;

    invoke-direct {v10}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v6, v11, v9, v10}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 111
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    move-object v4, v9

    .line 113
    :try_start_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cur http request:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance v9, Landroid/net/OplusHttpClient$1;

    invoke-direct {v9, v1}, Landroid/net/OplusHttpClient$1;-><init>(Landroid/net/OplusHttpClient;)V

    .line 122
    .local v9, "ignoreHostnameVerifier":Ljavax/net/ssl/HostnameVerifier;
    const/4 v10, 0x0

    .line 123
    .local v10, "httpconn":Ljavax/net/ssl/HttpsURLConnection;
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v11

    .line 124
    .local v11, "proxyHost":Ljava/lang/String;
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v12

    .line 125
    .local v12, "proxyPort":I
    invoke-static {v9}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 126
    invoke-virtual {v6}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v13

    invoke-static {v13}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 128
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "OplusServer proxyHost = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " proxyPort = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-direct/range {p0 .. p1}, Landroid/net/OplusHttpClient;->getNetType(Landroid/content/Context;)Z

    move-result v13
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    if-eqz v13, :cond_2

    .line 132
    :try_start_6
    const-string v13, "Get network type success!"

    invoke-static {v5, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v13

    check-cast v13, Ljavax/net/ssl/HttpsURLConnection;

    move-object v10, v13

    .line 134
    const-string v13, "HttpURLConnection open openConnection success!"

    invoke-static {v5, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    .line 136
    :cond_2
    :try_start_7
    const-string v13, "Use http proxy!"

    invoke-static {v5, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance v13, Ljava/net/Proxy;

    sget-object v14, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v15, Ljava/net/InetSocketAddress;

    invoke-direct {v15, v11, v12}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v13, v14, v15}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 139
    .local v13, "proxy":Ljava/net/Proxy;
    invoke-virtual {v4, v13}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v14

    check-cast v14, Ljavax/net/ssl/HttpsURLConnection;

    move-object v10, v14

    .line 141
    .end local v13    # "proxy":Ljava/net/Proxy;
    :goto_1
    const-string v13, "GET"

    invoke-virtual {v10, v13}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v10, v8}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 144
    invoke-virtual {v10, v7}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    .line 145
    invoke-virtual {v10, v7}, Ljavax/net/ssl/HttpsURLConnection;->setInstanceFollowRedirects(Z)V

    .line 147
    const-string v13, "Accept-Charset"

    const-string v14, "UTF-8"

    invoke-virtual {v10, v13, v14}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 148
    if-lez p2, :cond_3

    .line 149
    mul-int/lit8 v13, p3, 0x3

    .end local p3    # "timeout":I
    .local v13, "timeout":I
    goto :goto_2

    .line 148
    .end local v13    # "timeout":I
    .restart local p3    # "timeout":I
    :cond_3
    move/from16 v13, p3

    .line 151
    .end local p3    # "timeout":I
    .restart local v13    # "timeout":I
    :goto_2
    :try_start_8
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "timeout:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v5, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {v10, v13}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 153
    invoke-virtual {v10, v13}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 154
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 156
    .local v14, "requestTicks":J
    const-string v8, "Strart to connect http server!"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {v10}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 160
    const-string v8, "Connect http server success!"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v8, 0x0

    .line 171
    .local v8, "mInputStreamReader":Ljava/io/InputStreamReader;
    const/16 v17, 0x0

    .line 172
    .local v17, "mBufferedReader":Ljava/io/BufferedReader;
    move-object/from16 v18, v0

    .line 174
    .local v18, "mDateTimeXmlString":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 p3, v19

    .line 175
    .local p3, "sb":Ljava/lang/StringBuffer;
    const-wide/16 v19, 0x0

    .line 176
    .local v19, "mBeginParseTime":J
    const-wide/16 v21, 0x0

    .line 177
    .local v21, "responseTicks":J
    move-object/from16 v23, v8

    .end local v8    # "mInputStreamReader":Ljava/io/InputStreamReader;
    .local v23, "mInputStreamReader":Ljava/io/InputStreamReader;
    const-wide/16 v7, 0x0

    iput-wide v7, v1, Landroid/net/OplusHttpClient;->mHttpTimeReference:J

    .line 179
    invoke-virtual {v10}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v7

    .line 180
    .local v7, "responseCode":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v2

    .end local v2    # "oplusServerURL":Ljava/lang/String;
    .local v24, "oplusServerURL":Ljava/lang/String;
    const-string v2, "Http responseCode:"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/16 v2, 0xc8

    if-ne v7, v2, :cond_5

    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    move-wide/from16 v19, v25

    .line 185
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v10}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    move/from16 v25, v3

    .end local v3    # "returnFlag":Z
    .local v25, "returnFlag":Z
    :try_start_9
    const-string v3, "utf-8"

    invoke-direct {v2, v8, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v8, v2

    .line 186
    .end local v23    # "mInputStreamReader":Ljava/io/InputStreamReader;
    .restart local v8    # "mInputStreamReader":Ljava/io/InputStreamReader;
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object/from16 v17, v2

    .line 187
    move-object/from16 v2, v18

    .line 188
    .end local v18    # "mDateTimeXmlString":Ljava/lang/String;
    .local v0, "lineString":Ljava/lang/String;
    .local v2, "mDateTimeXmlString":Ljava/lang/String;
    :goto_3
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    if-eqz v3, :cond_4

    .line 189
    move-object v2, v0

    .line 191
    move-object/from16 v3, p3

    .end local p3    # "sb":Ljava/lang/StringBuffer;
    .local v3, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    move-object/from16 p3, v2

    .end local v2    # "mDateTimeXmlString":Ljava/lang/String;
    .local p3, "mDateTimeXmlString":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    move-object/from16 v26, v4

    .end local v4    # "url":Ljava/net/URL;
    .local v26, "url":Ljava/net/URL;
    :try_start_a
    const-string v4, "Read response, lineString="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",sb="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v2, p3

    move-object/from16 p3, v3

    move-object/from16 v4, v26

    goto :goto_3

    .line 195
    .end local v3    # "sb":Ljava/lang/StringBuffer;
    .end local v26    # "url":Ljava/net/URL;
    .restart local v2    # "mDateTimeXmlString":Ljava/lang/String;
    .restart local v4    # "url":Ljava/net/URL;
    .local p3, "sb":Ljava/lang/StringBuffer;
    :cond_4
    move-object/from16 v3, p3

    move-object/from16 v26, v4

    .end local v4    # "url":Ljava/net/URL;
    .end local p3    # "sb":Ljava/lang/StringBuffer;
    .restart local v3    # "sb":Ljava/lang/StringBuffer;
    .restart local v26    # "url":Ljava/net/URL;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p3, v0

    .end local v0    # "lineString":Ljava/lang/String;
    .local p3, "lineString":Ljava/lang/String;
    const-string v0, "Read response data success! mDateTimeXmlString="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 270
    .end local v2    # "mDateTimeXmlString":Ljava/lang/String;
    .end local v3    # "sb":Ljava/lang/StringBuffer;
    .end local v6    # "sslcontext":Ljavax/net/ssl/SSLContext;
    .end local v7    # "responseCode":I
    .end local v8    # "mInputStreamReader":Ljava/io/InputStreamReader;
    .end local v9    # "ignoreHostnameVerifier":Ljavax/net/ssl/HostnameVerifier;
    .end local v10    # "httpconn":Ljavax/net/ssl/HttpsURLConnection;
    .end local v11    # "proxyHost":Ljava/lang/String;
    .end local v12    # "proxyPort":I
    .end local v14    # "requestTicks":J
    .end local v17    # "mBufferedReader":Ljava/io/BufferedReader;
    .end local v19    # "mBeginParseTime":J
    .end local v21    # "responseTicks":J
    .end local v24    # "oplusServerURL":Ljava/lang/String;
    .end local v26    # "url":Ljava/net/URL;
    .end local p3    # "lineString":Ljava/lang/String;
    .restart local v4    # "url":Ljava/net/URL;
    :catch_1
    move-exception v0

    move-object/from16 v26, v4

    .end local v4    # "url":Ljava/net/URL;
    .restart local v26    # "url":Ljava/net/URL;
    goto/16 :goto_7

    .line 181
    .end local v25    # "returnFlag":Z
    .end local v26    # "url":Ljava/net/URL;
    .local v3, "returnFlag":Z
    .restart local v4    # "url":Ljava/net/URL;
    .restart local v6    # "sslcontext":Ljavax/net/ssl/SSLContext;
    .restart local v7    # "responseCode":I
    .restart local v9    # "ignoreHostnameVerifier":Ljavax/net/ssl/HostnameVerifier;
    .restart local v10    # "httpconn":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v11    # "proxyHost":Ljava/lang/String;
    .restart local v12    # "proxyPort":I
    .restart local v14    # "requestTicks":J
    .restart local v17    # "mBufferedReader":Ljava/io/BufferedReader;
    .restart local v18    # "mDateTimeXmlString":Ljava/lang/String;
    .restart local v19    # "mBeginParseTime":J
    .restart local v21    # "responseTicks":J
    .restart local v23    # "mInputStreamReader":Ljava/io/InputStreamReader;
    .restart local v24    # "oplusServerURL":Ljava/lang/String;
    .local p3, "sb":Ljava/lang/StringBuffer;
    :cond_5
    move/from16 v25, v3

    move-object/from16 v26, v4

    move-object/from16 v3, p3

    .end local v4    # "url":Ljava/net/URL;
    .end local p3    # "sb":Ljava/lang/StringBuffer;
    .local v3, "sb":Ljava/lang/StringBuffer;
    .restart local v25    # "returnFlag":Z
    .restart local v26    # "url":Ljava/net/URL;
    move-object/from16 v2, v18

    move-object/from16 v8, v23

    .line 197
    .end local v18    # "mDateTimeXmlString":Ljava/lang/String;
    .end local v23    # "mInputStreamReader":Ljava/io/InputStreamReader;
    .restart local v2    # "mDateTimeXmlString":Ljava/lang/String;
    .restart local v8    # "mInputStreamReader":Ljava/io/InputStreamReader;
    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v27

    move-wide/from16 v21, v27

    .line 198
    move-object v0, v3

    .end local v3    # "sb":Ljava/lang/StringBuffer;
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v1, Landroid/net/OplusHttpClient;->mHttpTimeReference:J

    .line 201
    if-eqz v17, :cond_6

    .line 202
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->close()V

    .line 204
    :cond_6
    if-eqz v8, :cond_7

    .line 205
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V

    .line 207
    :cond_7
    invoke-virtual {v10}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 209
    const-string v3, "Start to parser http response data!"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    .line 212
    .local v3, "mSaxParserFactory":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v4

    .line 213
    .local v4, "mSaxParser":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v18

    move-object/from16 p3, v18

    .line 214
    .local p3, "mXmlReader":Lorg/xml/sax/XMLReader;
    move-object/from16 v18, v0

    .end local v0    # "sb":Ljava/lang/StringBuffer;
    .local v18, "sb":Ljava/lang/StringBuffer;
    new-instance v0, Landroid/net/OplusHttpClient$DateTimeXmlParseHandler;

    invoke-direct {v0, v1}, Landroid/net/OplusHttpClient$DateTimeXmlParseHandler;-><init>(Landroid/net/OplusHttpClient;)V

    .line 215
    .local v0, "mDateTimeXmlParseHandler":Landroid/net/OplusHttpClient$DateTimeXmlParseHandler;
    move-object/from16 v23, v3

    move-object/from16 v3, p3

    .end local p3    # "mXmlReader":Lorg/xml/sax/XMLReader;
    .local v3, "mXmlReader":Lorg/xml/sax/XMLReader;
    .local v23, "mSaxParserFactory":Ljavax/xml/parsers/SAXParserFactory;
    invoke-interface {v3, v0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 216
    move-object/from16 p3, v4

    .end local v4    # "mSaxParser":Ljavax/xml/parsers/SAXParser;
    .local p3, "mSaxParser":Ljavax/xml/parsers/SAXParser;
    new-instance v4, Lorg/xml/sax/InputSource;

    move-object/from16 v27, v6

    .end local v6    # "sslcontext":Ljavax/net/ssl/SSLContext;
    .local v27, "sslcontext":Ljavax/net/ssl/SSLContext;
    new-instance v6, Ljava/io/StringReader;

    invoke-direct {v6, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v3, v4}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 218
    invoke-virtual {v0}, Landroid/net/OplusHttpClient$DateTimeXmlParseHandler;->getDate()Ljava/lang/String;

    move-result-object v4

    .line 219
    .local v4, "mDateString":Ljava/lang/String;
    const-string v6, "-"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 220
    .local v6, "dateStrings":[Ljava/lang/String;
    move-object/from16 v28, v2

    .end local v2    # "mDateTimeXmlString":Ljava/lang/String;
    .local v28, "mDateTimeXmlString":Ljava/lang/String;
    const/4 v2, 0x3

    move-object/from16 v29, v3

    .end local v3    # "mXmlReader":Lorg/xml/sax/XMLReader;
    .local v29, "mXmlReader":Lorg/xml/sax/XMLReader;
    new-array v3, v2, [I

    .line 221
    .local v3, "mIntDateData":[I
    const/16 v30, 0x0

    move/from16 v2, v30

    .local v2, "i":I
    :goto_5
    move-object/from16 v30, v4

    .end local v4    # "mDateString":Ljava/lang/String;
    .local v30, "mDateString":Ljava/lang/String;
    array-length v4, v6

    if-ge v2, v4, :cond_8

    .line 222
    aget-object v4, v6, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v2

    .line 221
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v4, v30

    goto :goto_5

    .line 225
    .end local v2    # "i":I
    :cond_8
    invoke-virtual {v0}, Landroid/net/OplusHttpClient$DateTimeXmlParseHandler;->getTime()Ljava/lang/String;

    move-result-object v2

    .line 226
    .local v2, "mTimeString":Ljava/lang/String;
    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 227
    .local v4, "timeStrings":[Ljava/lang/String;
    move-object/from16 v32, v0

    const/4 v0, 0x3

    .end local v0    # "mDateTimeXmlParseHandler":Landroid/net/OplusHttpClient$DateTimeXmlParseHandler;
    .local v32, "mDateTimeXmlParseHandler":Landroid/net/OplusHttpClient$DateTimeXmlParseHandler;
    new-array v0, v0, [I

    .line 228
    .local v0, "mIntTimeData":[I
    const/16 v31, 0x0

    move-object/from16 v33, v2

    move/from16 v2, v31

    .local v2, "i":I
    .local v33, "mTimeString":Ljava/lang/String;
    :goto_6
    move-object/from16 v31, v6

    .end local v6    # "dateStrings":[Ljava/lang/String;
    .local v31, "dateStrings":[Ljava/lang/String;
    array-length v6, v4

    if-ge v2, v6, :cond_9

    .line 229
    aget-object v6, v4, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v0, v2

    .line 228
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v6, v31

    goto :goto_6

    .line 232
    .end local v2    # "i":I
    :cond_9
    new-instance v2, Landroid/text/format/Time;

    const-string v6, "Asia/Shanghai"

    invoke-direct {v2, v6}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 233
    .local v2, "mOplusServerTime":Landroid/text/format/Time;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v41, v4

    .end local v4    # "timeStrings":[Ljava/lang/String;
    .local v41, "timeStrings":[Ljava/lang/String;
    const-string v4, "Parser time success, hour= "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v42, v7

    const/4 v6, 0x0

    .end local v7    # "responseCode":I
    .local v42, "responseCode":I
    aget v7, v0, v6

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " minute = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v6, 0x1

    aget v7, v0, v6

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "seconds ="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v6, 0x2

    aget v7, v0, v6

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    aget v35, v0, v6

    const/4 v4, 0x1

    aget v36, v0, v4

    const/4 v7, 0x0

    aget v37, v0, v7

    aget v38, v3, v6

    aget v6, v3, v4

    add-int/lit8 v39, v6, -0x1

    aget v40, v3, v7

    move-object/from16 v34, v2

    invoke-virtual/range {v34 .. v40}, Landroid/text/format/Time;->set(IIIIII)V

    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 238
    .local v6, "mEndParseTime":J
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v34

    sub-long v36, v6, v19

    add-long v34, v34, v36

    const-wide/16 v36, 0x340

    move-object/from16 v16, v2

    move-object v4, v3

    .end local v2    # "mOplusServerTime":Landroid/text/format/Time;
    .end local v3    # "mIntDateData":[I
    .local v4, "mIntDateData":[I
    .local v16, "mOplusServerTime":Landroid/text/format/Time;
    add-long v2, v34, v36

    iput-wide v2, v1, Landroid/net/OplusHttpClient;->mHttpTime:J

    .line 240
    sub-long v2, v21, v14

    iput-wide v2, v1, Landroid/net/OplusHttpClient;->mRoundTripTime:J
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 241
    const/4 v0, 0x1

    .line 273
    .end local v4    # "mIntDateData":[I
    .end local v6    # "mEndParseTime":J
    .end local v8    # "mInputStreamReader":Ljava/io/InputStreamReader;
    .end local v9    # "ignoreHostnameVerifier":Ljavax/net/ssl/HostnameVerifier;
    .end local v10    # "httpconn":Ljavax/net/ssl/HttpsURLConnection;
    .end local v11    # "proxyHost":Ljava/lang/String;
    .end local v12    # "proxyPort":I
    .end local v14    # "requestTicks":J
    .end local v16    # "mOplusServerTime":Landroid/text/format/Time;
    .end local v17    # "mBufferedReader":Ljava/io/BufferedReader;
    .end local v18    # "sb":Ljava/lang/StringBuffer;
    .end local v19    # "mBeginParseTime":J
    .end local v21    # "responseTicks":J
    .end local v23    # "mSaxParserFactory":Ljavax/xml/parsers/SAXParserFactory;
    .end local v24    # "oplusServerURL":Ljava/lang/String;
    .end local v25    # "returnFlag":Z
    .end local v27    # "sslcontext":Ljavax/net/ssl/SSLContext;
    .end local v28    # "mDateTimeXmlString":Ljava/lang/String;
    .end local v29    # "mXmlReader":Lorg/xml/sax/XMLReader;
    .end local v30    # "mDateString":Ljava/lang/String;
    .end local v31    # "dateStrings":[Ljava/lang/String;
    .end local v32    # "mDateTimeXmlParseHandler":Landroid/net/OplusHttpClient$DateTimeXmlParseHandler;
    .end local v33    # "mTimeString":Ljava/lang/String;
    .end local v41    # "timeStrings":[Ljava/lang/String;
    .end local v42    # "responseCode":I
    .end local p3    # "mSaxParser":Ljavax/xml/parsers/SAXParser;
    .local v0, "returnFlag":Z
    move-object/from16 v4, v26

    goto :goto_8

    .line 270
    .end local v0    # "returnFlag":Z
    .restart local v25    # "returnFlag":Z
    :catch_2
    move-exception v0

    move-object/from16 v4, v26

    goto :goto_7

    .end local v25    # "returnFlag":Z
    .end local v26    # "url":Ljava/net/URL;
    .local v3, "returnFlag":Z
    .local v4, "url":Ljava/net/URL;
    :catch_3
    move-exception v0

    move/from16 v25, v3

    move-object/from16 v26, v4

    .end local v3    # "returnFlag":Z
    .end local v4    # "url":Ljava/net/URL;
    .restart local v25    # "returnFlag":Z
    .restart local v26    # "url":Ljava/net/URL;
    goto :goto_7

    .end local v13    # "timeout":I
    .end local v25    # "returnFlag":Z
    .end local v26    # "url":Ljava/net/URL;
    .restart local v3    # "returnFlag":Z
    .restart local v4    # "url":Ljava/net/URL;
    .local p3, "timeout":I
    :catch_4
    move-exception v0

    move/from16 v25, v3

    move-object/from16 v26, v4

    move/from16 v13, p3

    .end local v3    # "returnFlag":Z
    .end local v4    # "url":Ljava/net/URL;
    .restart local v25    # "returnFlag":Z
    .restart local v26    # "url":Ljava/net/URL;
    goto :goto_7

    .end local v25    # "returnFlag":Z
    .end local v26    # "url":Ljava/net/URL;
    .restart local v3    # "returnFlag":Z
    .restart local v4    # "url":Ljava/net/URL;
    :catch_5
    move-exception v0

    move/from16 v25, v3

    move/from16 v13, p3

    .line 271
    .end local v3    # "returnFlag":Z
    .end local p3    # "timeout":I
    .local v0, "e":Ljava/lang/Exception;
    .restart local v13    # "timeout":I
    .restart local v25    # "returnFlag":Z
    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oplusServer exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const/4 v2, 0x0

    move v0, v2

    .line 275
    .end local v25    # "returnFlag":Z
    .local v0, "returnFlag":Z
    :goto_8
    return v0
.end method

.method private blacklist getNetType(Landroid/content/Context;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 279
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 280
    .local v0, "conn":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 281
    return v1

    .line 284
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 285
    .local v2, "info":Landroid/net/NetworkInfo;
    if-nez v2, :cond_1

    .line 286
    return v1

    .line 289
    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    .line 290
    .local v3, "type":Ljava/lang/String;
    const-string v4, "WIFI"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 291
    return v5

    .line 292
    :cond_2
    const-string v4, "MOBILE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "GPRS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 301
    :cond_3
    return v5

    .line 293
    :cond_4
    :goto_0
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v4

    .line 294
    .local v4, "apn":Ljava/lang/String;
    if-eqz v4, :cond_5

    const-string v6, "cmwap"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 295
    return v1

    .line 297
    :cond_5
    return v5
.end method


# virtual methods
.method public blacklist getHttpTime()J
    .locals 2

    .line 384
    iget-wide v0, p0, Landroid/net/OplusHttpClient;->mHttpTime:J

    return-wide v0
.end method

.method public blacklist getHttpTimeReference()J
    .locals 2

    .line 394
    iget-wide v0, p0, Landroid/net/OplusHttpClient;->mHttpTimeReference:J

    return-wide v0
.end method

.method public blacklist getRoundTripTime()J
    .locals 2

    .line 403
    iget-wide v0, p0, Landroid/net/OplusHttpClient;->mRoundTripTime:J

    return-wide v0
.end method

.method public blacklist requestTime(Landroid/content/Context;II)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "selServerUrl"    # I
    .param p3, "timeout"    # I

    .line 92
    invoke-direct {p0, p1, p2, p3}, Landroid/net/OplusHttpClient;->forceRefreshTimeFromOplusServer(Landroid/content/Context;II)Z

    move-result v0

    return v0
.end method
