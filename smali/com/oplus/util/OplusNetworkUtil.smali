.class public Lcom/oplus/util/OplusNetworkUtil;
.super Ljava/lang/Object;
.source "OplusNetworkUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/util/OplusNetworkUtil$ProfileServiceListener;
    }
.end annotation


# static fields
.field public static final whitelist AIRPLANE_MODE_ON_STR:I = 0x0

.field private static final blacklist DEFAULT_HTTP_URL:Ljava/lang/String; = "http://connectivitycheck.gstatic.com/generate_204"

.field private static final blacklist KEY_NETWORK_MONITOR_AVAILABLE:Ljava/lang/String; = "oplus.comm.network.monitor.available"

.field private static final blacklist KEY_NETWORK_MONITOR_PORTAL:Ljava/lang/String; = "oplus.comm.network.monitor.portal"

.field private static final blacklist KEY_NETWORK_MONITOR_SSID:Ljava/lang/String; = "oplus.comm.network.monitor.ssid"

.field public static final whitelist MOBILE_AND_WLAN_NETWORK_NOT_CONNECT_STR:I = 0x1

.field public static final whitelist NETWORK_CONNECT_OK_STR:I = -0x1

.field public static final whitelist NO_NETWORK_CONNECT_STR:I = 0x3

.field public static final whitelist TAG:Ljava/lang/String; = "OplusNetworkUtil"

.field public static final whitelist WLAN_NEED_LOGIN_STR:I = 0x2

.field private static blacklist mCurrSSID:Ljava/lang/String;

.field private static blacklist mIsBluetoothTetherConnected:Z

.field private static blacklist mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private static blacklist mService:Landroid/bluetooth/BluetoothPan;

.field private static blacklist sNetworkId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfputmIsBluetoothTetherConnected(Z)V
    .locals 0

    sput-boolean p0, Lcom/oplus/util/OplusNetworkUtil;->mIsBluetoothTetherConnected:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfputmService(Landroid/bluetooth/BluetoothPan;)V
    .locals 0

    sput-object p0, Lcom/oplus/util/OplusNetworkUtil;->mService:Landroid/bluetooth/BluetoothPan;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 48
    new-instance v0, Lcom/oplus/util/OplusNetworkUtil$ProfileServiceListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/util/OplusNetworkUtil$ProfileServiceListener;-><init>(Lcom/oplus/util/OplusNetworkUtil$ProfileServiceListener-IA;)V

    sput-object v0, Lcom/oplus/util/OplusNetworkUtil;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Lcom/oplus/util/OplusNetworkUtil;->mIsBluetoothTetherConnected:Z

    .line 57
    const/4 v0, -0x1

    sput v0, Lcom/oplus/util/OplusNetworkUtil;->sNetworkId:I

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist closeProxy()V
    .locals 3

    .line 201
    sget-object v0, Lcom/oplus/util/OplusNetworkUtil;->mService:Landroid/bluetooth/BluetoothPan;

    if-eqz v0, :cond_0

    .line 203
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x5

    sget-object v2, Lcom/oplus/util/OplusNetworkUtil;->mService:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 204
    const/4 v0, 0x0

    sput-object v0, Lcom/oplus/util/OplusNetworkUtil;->mService:Landroid/bluetooth/BluetoothPan;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    goto :goto_0

    .line 205
    :catchall_0
    move-exception v0

    .line 206
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "OplusNetworkUtil"

    const-string v2, "Error cleaning up PAN proxy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 209
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void
.end method

.method public static whitelist getBluetoothTether(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 168
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 169
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    .line 171
    .local v1, "btState":I
    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 172
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/oplus/util/OplusNetworkUtil;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v4, 0x5

    invoke-virtual {v0, v2, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 176
    .end local v1    # "btState":I
    :cond_0
    return-void
.end method

.method private static blacklist getCaptivePortalStr(Landroid/content/Context;Ljava/lang/String;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oplus.comm.network.monitor.ssid"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "ssid":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current network id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/oplus/util/OplusNetworkUtil;->sNetworkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusNetworkUtil"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    sget-object v1, Lcom/oplus/util/OplusNetworkUtil;->mCurrSSID:Ljava/lang/String;

    const/4 v2, 0x3

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 123
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "oplus.comm.network.monitor.available"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 125
    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    .line 126
    .local v1, "isAvailable":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 127
    const/4 v2, -0x1

    return v2

    .line 129
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "oplus.comm.network.monitor.portal"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_2

    .line 130
    move v4, v3

    goto :goto_1

    :cond_2
    nop

    :goto_1
    move v3, v4

    .line 131
    .local v3, "isPortal":Z
    if-eqz v3, :cond_3

    .line 132
    const/4 v2, 0x2

    return v2

    .line 134
    :cond_3
    return v2

    .line 138
    .end local v1    # "isAvailable":Z
    .end local v3    # "isPortal":Z
    :cond_4
    return v2
.end method

.method public static whitelist getErrorString(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .line 143
    invoke-static {p0}, Lcom/oplus/util/OplusNetworkUtil;->getBluetoothTether(Landroid/content/Context;)V

    .line 145
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    .line 149
    :goto_0
    invoke-static {}, Lcom/oplus/util/OplusNetworkUtil;->closeProxy()V

    .line 150
    invoke-static {p0}, Lcom/oplus/util/OplusNetworkUtil;->isAirplaneMode(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/oplus/util/OplusNetworkUtil;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/oplus/util/OplusNetworkUtil;->mIsBluetoothTetherConnected:Z

    if-nez v0, :cond_0

    .line 152
    const/4 v0, 0x0

    return v0

    .line 154
    :cond_0
    invoke-static {p0}, Lcom/oplus/util/OplusNetworkUtil;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/oplus/util/OplusNetworkUtil;->mIsBluetoothTetherConnected:Z

    if-eqz v0, :cond_1

    goto :goto_1

    .line 156
    :cond_1
    invoke-static {p0}, Lcom/oplus/util/OplusNetworkUtil;->hasSimCard(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 157
    invoke-static {p0}, Lcom/oplus/util/OplusNetworkUtil;->isMobileDataConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    const/4 v0, -0x1

    return v0

    .line 160
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 163
    :cond_3
    const/4 v0, 0x3

    return v0

    .line 155
    :cond_4
    :goto_1
    invoke-static {p0, p1}, Lcom/oplus/util/OplusNetworkUtil;->getCaptivePortalStr(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static blacklist hasSimCard(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 95
    const/4 v0, 0x0

    .line 97
    .local v0, "hasSimCard":Z
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lcom/oplus/util/OplusNetworkUtil;->isSimInserted(Landroid/content/Context;I)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    invoke-static {p0, v3}, Lcom/oplus/util/OplusNetworkUtil;->isSimInserted(Landroid/content/Context;I)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    :cond_0
    move v1, v3

    :cond_1
    move v0, v1

    .line 101
    goto :goto_0

    .line 98
    :catch_0
    move-exception v1

    .line 99
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 100
    const-string v2, "OplusNetworkUtil"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public static whitelist isAirplaneMode(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 114
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist isMobileDataConnected(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 79
    nop

    .line 80
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 82
    .local v0, "connect":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_0

    .line 83
    const/4 v1, 0x1

    return v1

    .line 85
    :cond_0
    return v1
.end method

.method public static whitelist isSimInserted(Landroid/content/Context;I)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .line 90
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 91
    .local v0, "telMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v1

    return v1
.end method

.method public static whitelist isWifiConnected(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 60
    nop

    .line 61
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 63
    .local v0, "connect":Landroid/net/ConnectivityManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_1

    .line 64
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 65
    .local v2, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v2, :cond_0

    .line 66
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 67
    .local v3, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v3, :cond_0

    .line 68
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/oplus/util/OplusNetworkUtil;->mCurrSSID:Ljava/lang/String;

    .line 69
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v4

    sput v4, Lcom/oplus/util/OplusNetworkUtil;->sNetworkId:I

    .line 72
    .end local v3    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_0
    return v1

    .line 74
    .end local v2    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public static whitelist onClickLoginBtn(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 106
    const-string v0, "http://connectivitycheck.gstatic.com/generate_204"

    .line 107
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 108
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10400000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 110
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 111
    return-void
.end method
