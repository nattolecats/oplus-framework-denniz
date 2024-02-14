.class public Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;
.super Landroid/net/wifi/OplusRomUpdateHelper$UpdateInfo;
.source "OplusWifiRomUpdateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/OplusWifiRomUpdateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WifiRomUpdateInfo"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/wifi/OplusWifiRomUpdateHelper;


# direct methods
.method public constructor whitelist <init>(Landroid/net/wifi/OplusWifiRomUpdateHelper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/wifi/OplusWifiRomUpdateHelper;

    .line 80
    iput-object p1, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;->this$0:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    invoke-direct {p0, p1}, Landroid/net/wifi/OplusRomUpdateHelper$UpdateInfo;-><init>(Landroid/net/wifi/OplusRomUpdateHelper;)V

    .line 82
    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist clear()V
    .locals 0

    .line 79
    invoke-super {p0}, Landroid/net/wifi/OplusRomUpdateHelper$UpdateInfo;->clear()V

    return-void
.end method

.method public bridge synthetic whitelist clone(Landroid/net/wifi/OplusRomUpdateHelper$UpdateInfo;)Z
    .locals 0

    .line 79
    invoke-super {p0, p1}, Landroid/net/wifi/OplusRomUpdateHelper$UpdateInfo;->clone(Landroid/net/wifi/OplusRomUpdateHelper$UpdateInfo;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic whitelist dump()V
    .locals 0

    .line 79
    invoke-super {p0}, Landroid/net/wifi/OplusRomUpdateHelper$UpdateInfo;->dump()V

    return-void
.end method

.method public bridge synthetic whitelist getVersion()J
    .locals 2

    .line 79
    invoke-super {p0}, Landroid/net/wifi/OplusRomUpdateHelper$UpdateInfo;->getVersion()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic whitelist insert(ILjava/lang/String;)Z
    .locals 0

    .line 79
    invoke-super {p0, p1, p2}, Landroid/net/wifi/OplusRomUpdateHelper$UpdateInfo;->insert(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public whitelist parseContentFromXML(Ljava/lang/String;)V
    .locals 9
    .param p1, "content"    # Ljava/lang/String;

    .line 86
    const-string v0, "Got execption parsing permissions."

    iget-object v1, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;->this$0:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    invoke-static {v1}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->-$$Nest$fgetDEBUG(Landroid/net/wifi/OplusWifiRomUpdateHelper;)Z

    move-result v1

    const-string v2, "OplusWifiRomUpdateHelper"

    if-eqz v1, :cond_0

    const-string v1, "parseContentFromXML"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    if-nez p1, :cond_1

    .line 88
    const-string v0, "\tcontent is null"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void

    .line 91
    :cond_1
    const-string v1, ""

    .line 92
    .local v1, "mTagName":Ljava/lang/String;
    const-string v3, ""

    .line 93
    .local v3, "mText":Ljava/lang/String;
    const/4 v4, 0x0

    .line 95
    .local v4, "strReader":Ljava/io/StringReader;
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 96
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v6, Ljava/io/StringReader;

    invoke-direct {v6, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    move-object v4, v6

    .line 97
    invoke-interface {v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 98
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    .line 99
    .local v6, "eventType":I
    :goto_0
    const/4 v7, 0x1

    if-eq v6, v7, :cond_3b

    .line 100
    packed-switch v6, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 104
    :pswitch_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    move-object v1, v7

    .line 105
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    move v6, v7

    .line 106
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 107
    iget-object v7, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;->this$0:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    invoke-static {v7}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->-$$Nest$fgetDEBUG(Landroid/net/wifi/OplusWifiRomUpdateHelper;)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_2
    const-string v7, "NETWORK_SLA_APPS"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v8, ","

    if-eqz v7, :cond_3

    .line 109
    :try_start_1
    iget-object v7, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;->this$0:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->-$$Nest$fputmSlaApps(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V

    goto/16 :goto_2

    .line 110
    :cond_3
    const-string v7, "NETWORK_SLA_APPS_EXP"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 111
    iget-object v7, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;->this$0:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->-$$Nest$fputmSlaAppsExp(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V

    goto/16 :goto_2

    .line 112
    :cond_4
    const-string v7, "NETWORK_SLA_BLACK_LIST"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 113
    iget-object v7, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;->this$0:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->-$$Nest$fputmSlaBlackList(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V

    goto/16 :goto_2

    .line 114
    :cond_5
    const-string v7, "NETWORK_SLA_GAME_APPS"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 115
    iget-object v7, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;->this$0:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->-$$Nest$fputmSlaGameApps(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V

    goto/16 :goto_2

    .line 116
    :cond_6
    const-string v7, "NETWORK_SLA_GAME_APPS_EXP"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 117
    iget-object v7, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;->this$0:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->-$$Nest$fputmSlaGameAppsExp(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V

    goto/16 :goto_2

    .line 118
    :cond_7
    const-string v7, "NETWORK_SLA_ENABLED_MCC"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 119
    iget-object v7, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;->this$0:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->-$$Nest$fputmSlaEnabledMCC(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V

    goto/16 :goto_2

    .line 120
    :cond_8
    const-string v7, "OPLUS_DUAL_STA_DISABLED_MCC"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 121
    iget-object v7, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;->this$0:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->-$$Nest$fputmDualStaDisableMcc(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V

    goto/16 :goto_2

    .line 122
    :cond_9
    const-string v7, "NETWORK_SLA_PARAMS"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 123
    iget-object v7, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;->this$0:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->-$$Nest$fputmSlaParams(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V

    goto/16 :goto_2

    .line 124
    :cond_a
    const-string v7, "NETWORK_SLA_SPEED_PARAMS"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 125
    iget-object v7, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;->this$0:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->-$$Nest$fputmSlaSpeedParams(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V

    goto/16 :goto_2

    .line 126
    :cond_b
    const-string v7, "NETWORK_SLA_INTERVAL_PARAMS"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 127
    iget-object v7, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;->this$0:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->-$$Nest$fputmSlaIntervalParams(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V

    goto/16 :goto_2

    .line 128
    :cond_c
    const-string v7, "NETWORK_SLA_WIFI_SCORE_PARAMS"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 129
    iget-object v7, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;->this$0:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->-$$Nest$fputmSlaWifiScoreParams(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V

    goto/16 :goto_2

    .line 130
    :cond_d
    const-string v7, "NETWORK_SPEED_RTT_PARAMS"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 131
    iget-object v7, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;->this$0:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    invoke-static {v7, v3}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->-$$Nest$msetSpeedRttParams(Landroid/net/wifi/OplusWifiRomUpdateHelper;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 132
    :cond_e
    const-string v7, "NETWORK_SLA_GAME_PARAMS"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 133
    iget-object v7, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;->this$0:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->-$$Nest$fputmSlaGameParams(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V

    goto/16 :goto_2

    .line 134
    :cond_f
    const-string v7, "NETWORK_DUAL_STA_APPS"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 135
    iget-object v7, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;->this$0:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->-$$Nest$fputmDualStaApps(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V

    goto/16 :goto_2

    .line 136
    :cond_10
    const-string v7, "NETWORK_DUAL_STA_APPS_EXP"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 137
    iget-object v7, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;->this$0:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->-$$Nest$fputmDualStaAppsExp(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V

    goto/16 :goto_2

    .line 138
    :cond_11
    const-string v7, "NETWORK_DUAL_STA_BLACK_LIST"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 139
    iget-object v7, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;->this$0:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->-$$Nest$fputmDualStaBlackList(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V

    goto/16 :goto_2

    .line 140
    :cond_12
    const-string v7, "NETWORK_REQUESTOR_APPS"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 141
    iget-object v7, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;->this$0:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->-$$Nest$fputmRequestorApp(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V

    goto/16 :goto_2

    .line 142
    :cond_13
    const-string v7, "NETWORK_WECHAT_LM_PARAMS"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 143
    iget-object v7, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;->this$0:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->-$$Nest$fputmLmParams(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V

    goto/16 :goto_2

    .line 144
    :cond_14
    const-string v7, "NETWORK_VIDEO_APPS"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 145
    iget-object v7, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;->this$0:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->-$$Nest$fputmVideoApps(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V

    goto/16 :goto_2

    .line 146
    :cond_15
    const-string v7, "NETWORK_DOWNLOAD_APPS"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 147
    iget-object v7, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;->this$0:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->-$$Nest$fputmDownloadApps(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V

    goto/16 :goto_2

    .line 148
    :cond_16
    const-string v7, "NETWORK_DUAL_STA_CAP_HOST_BLACK_LIST"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 149
    iget-object v7, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;->this$0:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->-$$Nest$fputmDualStaCapHostBlackList(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V

    goto/16 :goto_2

    .line 150
    :cond_17
    const-string v7, "NETWORK_SKIP_DESTROY_SOCKET_APPS"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 151
    iget-object v7, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;->this$0:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->-$$Nest$fputmSkipDestroySocketApps(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V

    goto/16 :goto_2

    .line 152
    :cond_18
    const-string v7, "ROUTERBOOST_DUPPKT_GAME_WHITE_LIST"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 153
    iget-object v7, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;->this$0:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->-$$Nest$fputmRouterBoostDupPktGameWhiteList(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V

    goto/16 :goto_2

    .line 154
    :cond_19
    const-string v7, "ROUTERBOOST_DUPPKT_GAME_BLACK_LIST"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 155
    iget-object v7, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;->this$0:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->-$$Nest$fputmRouterBoostDupPktGameBlackList(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V

    goto/16 :goto_2

    .line 156
    :cond_1a
    const-string v7, "ROUTERBOOST_VENDORIECOMM_SUPPORT_VERSION_LIST"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 157
    iget-object v7, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;->this$0:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->-$$Nest$fputmRouterBoostVendorIECommSupportVersionList(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V

    goto/16 :goto_2

    .line 158
    :cond_1b
    const-string v7, "ROUTERBOOST_VENDORIECOMM_V2_SUPPORT_OUI_LIST"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 159
    iget-object v7, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;->this$0:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->-$$Nest$fputmRouterBoostVendorIECommV2SupportOuiList(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V

    goto/16 :goto_2

    .line 160
    :cond_1c
    const-string v7, "ROUTERBOOST_VENDORIECOMM_V1_SUPPORT_OUI_LIST"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 161
    iget-object v7, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;->this$0:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->-$$Nest$fputmRouterBoostVendorIECommV1SupportOuiList(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V

    goto/16 :goto_2

    .line 162
    :cond_1d
    const-string v7, "WIFI_SMART_GEAR_ROUTER_WHITE_LIST"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 163
    iget-object v7, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;->this$0:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->-$$Nest$fputmSmartGearRouterWhiteList(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V

    goto/16 :goto_2

    .line 164
    :cond_1e
    const-string v7, "WIFI_SMART_GEAR_SSID_WHITE_LIST"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 165
    iget-object v7, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;->this$0:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->-$$Nest$fputmSmartGearSsidWhiteList(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V

    goto/16 :goto_2

    .line 166
    :cond_1f
    const-string v7, "WIFI_SMART_GEAR_APP_WHITE_LIST"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 167
    iget-object v7, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;->this$0:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->-$$Nest$fputmSmartGearAppWhiteList(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V

    goto/16 :goto_2

    .line 168
    :cond_20
    const-string v7, "NULL_DATA_TO_CTS_ROUTER_WHITE_LIST"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_21

    .line 169
    iget-object v7, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;->this$0:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->-$$Nest$fputmNullDataToCTSRouterWhiteList(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V

    goto/16 :goto_2

    .line 170
    :cond_21
    const-string v7, "NULL_DATA_TO_CTS_ROUTER_BLACK_LIST"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22

    .line 171
    iget-object v7, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;->this$0:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->-$$Nest$fputmNullDataToCTSRouterBlackList(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V

    goto/16 :goto_2

    .line 172
    :cond_22
    const-string v7, "DEFAULT_MAC_RANDOMIZATION_SETTING"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 173
    iget-object v7, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;->this$0:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    invoke-static {v7, v3}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->-$$Nest$msetDefaultMacRandomizationSetting(Landroid/net/wifi/OplusWifiRomUpdateHelper;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 174
    :cond_23
    const-string v7, "SMART_BW_PARAMS"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_24

    .line 175
    iget-object v7, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;->this$0:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    invoke-static {v7, v3}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->-$$Nest$msetSmartBWParams(Landroid/net/wifi/OplusWifiRomUpdateHelper;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 176
    :cond_24
    const-string v7, "MTK_SMART_BW_PARAMS"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_25

    .line 177
    iget-object v7, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;->this$0:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    invoke-static {v7, v3}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->-$$Nest$msetMtkSmartBWParams(Landroid/net/wifi/OplusWifiRomUpdateHelper;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 178
    :cond_25
    const-string v7, "OPLUS_IOTCONNECT_WHITE_LIST"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_26

    .line 179
    iget-object v7, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;->this$0:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->-$$Nest$fputmIOTConnectWhiteList(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V

    goto/16 :goto_2

    .line 180
    :cond_26
    const-string v7, "OPLUS_IOTCONNECT_PACKAGE_CONTROL_THRESHOLD"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_27

    .line 181
    iget-object v7, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;->this$0:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    invoke-static {v7, v3}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->-$$Nest$msetIOTPackageControlThreshold(Landroid/net/wifi/OplusWifiRomUpdateHelper;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 182
    :cond_27
    const-string v7, "OPLUS_5G_160M_SAP_CONFIG"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_28

    .line 183
    iget-object v7, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;->this$0:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->-$$Nest$fputmOplus5g160MSapConfig(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V

    goto/16 :goto_2

    .line 184
    :cond_28
    const-string v7, "OPLUS_5G_160M_STATION_FOR_PHONE_CLONE"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_29

    .line 185
    iget-object v7, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;->this$0:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->-$$Nest$fputmOplus5g160MStationFeatureForPhoneClone(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V

    goto/16 :goto_2

    .line 186
    :cond_29
    const-string v7, "OPLUS_5G_160M_SAP_APK_WHITE_LIST"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 187
    iget-object v7, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;->this$0:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->-$$Nest$fputmOplus5g160MSapApkWhiteList(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V

    goto/16 :goto_2

    .line 188
    :cond_2a
    const-string v7, "OPLUS_5G_160M_SAP_COUNTRY_WHITE_LIST"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 189
    iget-object v7, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;->this$0:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->-$$Nest$fputmOplus5g160MSapCountryWhiteList(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V

    goto/16 :goto_2

    .line 190
    :cond_2b
    const-string v7, "HYBRID_TGPA_APPS"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 191
    iget-object v7, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;->this$0:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->-$$Nest$fputmHybridTgpaApps(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V

    goto/16 :goto_2

    .line 192
    :cond_2c
    const-string v7, "OPLUS_IE_HYBRID_BLACKLIST"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 193
    if-eqz v3, :cond_2d

    .line 194
    iget-object v7, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;->this$0:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->-$$Nest$fputmHybridBlackList(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V

    goto/16 :goto_2

    .line 196
    :cond_2d
    iget-object v7, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;->this$0:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->-$$Nest$fputmHybridBlackList(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V

    goto/16 :goto_2

    .line 198
    :cond_2e
    const-string v7, "OPLUS_SNIFFER_CAPTURE_WITH_UDP"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2f

    .line 200
    iget-object v7, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;->this$0:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    invoke-static {v7, v3}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->-$$Nest$fputmOplusSnifferCaptureWithUdp(Landroid/net/wifi/OplusWifiRomUpdateHelper;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 201
    :cond_2f
    const-string v7, "SMARTMCC_VIDEO_APP_LIST"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_30

    .line 202
    iget-object v7, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;->this$0:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->-$$Nest$fputmSmartMCCVideoAppList(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V

    goto/16 :goto_2

    .line 205
    :cond_30
    const-string v7, "SMARTMCC_REALTIME_GAME_APP_LIST"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_31

    .line 206
    iget-object v7, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;->this$0:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->-$$Nest$fputmSmartMCCRealTimeGameAppList(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V

    goto/16 :goto_2

    .line 207
    :cond_31
    const-string v7, "SMARTMCC_FILE_TRANS_APP_LIST"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_32

    .line 208
    iget-object v7, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;->this$0:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->-$$Nest$fputmSmartMCCFileTransAppList(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V

    goto/16 :goto_2

    .line 209
    :cond_32
    const-string v7, "SMARTMCC_GAME_MODE_SUPPORT_APP_LIST"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_33

    .line 210
    iget-object v7, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;->this$0:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->-$$Nest$fputmSmartMCCGameModeSupportAppList(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V

    goto/16 :goto_2

    .line 211
    :cond_33
    const-string v7, "SMARTMCC_QUOTA_2G_VIDEO_MTK"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3a

    const-string v7, "SMARTMCC_QUOTA_2G_REAL_TIME_GAME_MTK"

    .line 212
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3a

    const-string v7, "SMARTMCC_QUOTA_2G_FILE_TRANS_MTK"

    .line 213
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3a

    const-string v7, "SMARTMCC_QUOTA_2G_P2P_FILE_TRANS_MTK"

    .line 214
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3a

    const-string v7, "SMARTMCC_QUOTA_2G_OTHERS_MTK"

    .line 215
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3a

    const-string v7, "SMARTMCC_QUOTA_5G_VIDEO_MTK"

    .line 216
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3a

    const-string v7, "SMARTMCC_QUOTA_5G_REALTIME_GAME_MTK"

    .line 217
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3a

    const-string v7, "SMARTMCC_QUOTA_5G_FILE_TRANS_MTK"

    .line 218
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3a

    const-string v7, "SMARTMCC_QUOTA_5G_P2P_FILE_TRANS_MTK"

    .line 219
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3a

    const-string v7, "SMARTMCC_QUOTA_5G_OTHERS_MTK"

    .line 220
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3a

    const-string v7, "SMARTMCC_QUOTA_2G_VIDEO_QCOM"

    .line 221
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3a

    const-string v7, "SMARTMCC_QUOTA_2G_REAL_TIME_GAME_QCOM"

    .line 222
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3a

    const-string v7, "SMARTMCC_QUOTA_2G_FILE_TRANS_QCOM"

    .line 223
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3a

    const-string v7, "SMARTMCC_QUOTA_2G_P2P_FILE_TRANS_QCOM"

    .line 224
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3a

    const-string v7, "SMARTMCC_QUOTA_2G_OTHERS_QCOM"

    .line 225
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3a

    const-string v7, "SMARTMCC_QUOTA_5G_VIDEO_QCOM"

    .line 226
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3a

    const-string v7, "SMARTMCC_QUOTA_5G_REALTIME_GAME_QCOM"

    .line 227
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3a

    const-string v7, "SMARTMCC_QUOTA_5G_FILE_TRANS_QCOM"

    .line 228
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3a

    const-string v7, "SMARTMCC_QUOTA_5G_P2P_FILE_TRANS_QCOM"

    .line 229
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3a

    const-string v7, "SMARTMCC_QUOTA_5G_OTHERS_QCOM"

    .line 230
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_34

    goto :goto_1

    .line 232
    :cond_34
    const-string v7, "OPLUS_WIFI_PROPERTIES_RUS"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_35

    .line 234
    iget-object v7, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;->this$0:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    invoke-static {v7, v3}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->-$$Nest$mupdateWifiProperties(Landroid/net/wifi/OplusWifiRomUpdateHelper;Ljava/lang/String;)V

    goto :goto_2

    .line 235
    :cond_35
    const-string v7, "OPLUS_WIFI_P2P_OPTIMIZATION_ENABLED"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_36

    .line 237
    iget-object v7, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;->this$0:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    invoke-static {v7, v3}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->-$$Nest$fputmOplusScreencastP2pOptEnabled(Landroid/net/wifi/OplusWifiRomUpdateHelper;Ljava/lang/String;)V

    goto :goto_2

    .line 238
    :cond_36
    const-string v7, "SLA_NETWORK_FAST_SWITCH_APPS"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_37

    .line 239
    iget-object v7, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;->this$0:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->-$$Nest$fputmSlaFastSwitchApps(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V

    goto :goto_2

    .line 240
    :cond_37
    const-string v7, "DYNAMIC_TDD_WHITE_LIST"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_38

    .line 242
    iget-object v7, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;->this$0:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->-$$Nest$fputmDynamicTddWhiteList(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V

    goto :goto_2

    .line 244
    :cond_38
    const-string v7, "OPLUS_WIFI_ASSISTANT_FEATURE"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_39

    .line 245
    iget-object v7, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;->this$0:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    invoke-static {v7, v3}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->-$$Nest$msetWifiAssistantFeatureState(Landroid/net/wifi/OplusWifiRomUpdateHelper;Ljava/lang/String;)V

    .line 247
    :cond_39
    iget-object v7, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;->this$0:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    invoke-static {v7}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->-$$Nest$fgetmKeyValuePair(Landroid/net/wifi/OplusWifiRomUpdateHelper;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    goto :goto_2

    .line 231
    :cond_3a
    :goto_1
    iget-object v7, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;->this$0:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    invoke-static {v7, v1, v3}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->-$$Nest$msetSmartMCCQutoa(Landroid/net/wifi/OplusWifiRomUpdateHelper;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 102
    :pswitch_2
    nop

    .line 253
    :goto_2
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v6, v7

    goto/16 :goto_0

    .line 260
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "eventType":I
    :cond_3b
    nop

    .line 261
    :goto_3
    invoke-virtual {v4}, Ljava/io/StringReader;->close()V

    goto :goto_4

    .line 260
    :catchall_0
    move-exception v0

    goto :goto_5

    .line 257
    :catch_0
    move-exception v5

    .line 258
    .local v5, "e":Ljava/io/IOException;
    :try_start_2
    iget-object v6, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;->this$0:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    invoke-virtual {v6, v0, v5}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 260
    .end local v5    # "e":Ljava/io/IOException;
    if-eqz v4, :cond_3c

    .line 261
    goto :goto_3

    .line 255
    :catch_1
    move-exception v5

    .line 256
    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    iget-object v6, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;->this$0:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    invoke-virtual {v6, v0, v5}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->log(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 260
    .end local v5    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz v4, :cond_3c

    .line 261
    goto :goto_3

    .line 266
    :cond_3c
    :goto_4
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;->this$0:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    invoke-static {v0}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->-$$Nest$msendWifiRomUpdateChangedBroadcast(Landroid/net/wifi/OplusWifiRomUpdateHelper;)V

    .line 268
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;->this$0:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    invoke-static {v0}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->-$$Nest$fgetDEBUG(Landroid/net/wifi/OplusWifiRomUpdateHelper;)Z

    move-result v0

    if-eqz v0, :cond_3d

    const-string v0, "\txml file parse end!"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_3d
    return-void

    .line 260
    :goto_5
    if-eqz v4, :cond_3e

    .line 261
    invoke-virtual {v4}, Ljava/io/StringReader;->close()V

    .line 263
    :cond_3e
    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic whitelist updateToLowerVersion(Ljava/lang/String;)Z
    .locals 0

    .line 79
    invoke-super {p0, p1}, Landroid/net/wifi/OplusRomUpdateHelper$UpdateInfo;->updateToLowerVersion(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
