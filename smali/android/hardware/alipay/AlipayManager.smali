.class public Landroid/hardware/alipay/AlipayManager;
.super Ljava/lang/Object;
.source "AlipayManager.java"


# static fields
.field public static final blacklist ALIPAY_SERVICE:Ljava/lang/String; = "alipay"

.field public static final blacklist AUTH_TYPE_FACE:I = 0x4

.field public static final blacklist AUTH_TYPE_FINGERPRINT:I = 0x1

.field public static final blacklist AUTH_TYPE_IRIS:I = 0x2

.field public static final blacklist AUTH_TYPE_NOT_SUPPORT:I = 0x0

.field public static final blacklist AUTH_TYPE_OPTICAL_FINGERPRINT:I = 0x11

.field public static final blacklist OPLUS_DEFAULT_FINGERPRINT_ICON_DIAMETER:I = 0xbe

.field public static final blacklist OPLUS_DEFAULT_FINGERPRINT_ICON_LOCATION_X:I = 0x1bd

.field public static final blacklist OPLUS_DEFAULT_FINGERPRINT_ICON_LOCATION_Y:I = 0x7af

.field public static final blacklist OPLUS_DEFAULT_MODEL:Ljava/lang/String; = "OPLUS-Default"

.field private static final blacklist TAG:Ljava/lang/String; = "AlipayManager"


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mService:Landroid/hardware/alipay/IAlipayService;

.field private blacklist mToken:Landroid/os/IBinder;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/hardware/alipay/IAlipayService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/hardware/alipay/IAlipayService;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/hardware/alipay/AlipayManager;->mToken:Landroid/os/IBinder;

    .line 69
    iput-object p1, p0, Landroid/hardware/alipay/AlipayManager;->mContext:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Landroid/hardware/alipay/AlipayManager;->mService:Landroid/hardware/alipay/IAlipayService;

    .line 71
    if-nez p2, :cond_0

    .line 72
    const-string v0, "AlipayManager"

    const-string v1, "AlipayService was null"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist alipayInvokeCommand([B)[B
    .locals 4
    .param p1, "inbuf"    # [B

    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, "outbuf":[B
    iget-object v1, p0, Landroid/hardware/alipay/AlipayManager;->mService:Landroid/hardware/alipay/IAlipayService;

    const-string v2, "AlipayManager"

    if-eqz v1, :cond_0

    .line 80
    :try_start_0
    invoke-interface {v1, p1}, Landroid/hardware/alipay/IAlipayService;->alipayInvokeCommand([B)[B

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 83
    :goto_0
    goto :goto_1

    .line 81
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Remote exception in alipayInvokeCommand(): "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 85
    :cond_0
    const-string v1, "alipayInvokeCommand(): Service not connected!"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :goto_1
    return-object v0
.end method

.method public blacklist cancel(Ljava/lang/String;)I
    .locals 4
    .param p1, "reqId"    # Ljava/lang/String;

    .line 91
    const/4 v0, -0x1

    .line 92
    .local v0, "result":I
    iget-object v1, p0, Landroid/hardware/alipay/AlipayManager;->mService:Landroid/hardware/alipay/IAlipayService;

    const-string v2, "AlipayManager"

    if-eqz v1, :cond_0

    .line 94
    :try_start_0
    invoke-interface {v1, p1}, Landroid/hardware/alipay/IAlipayService;->cancel(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 97
    :goto_0
    goto :goto_1

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Remote exception in cancel(): "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 99
    :cond_0
    const-string v1, "cancel(): Service not connected!"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :goto_1
    return v0
.end method

.method public blacklist getDeviceModel()Ljava/lang/String;
    .locals 4

    .line 134
    const-string v0, "OPLUS-Default"

    .line 135
    .local v0, "model":Ljava/lang/String;
    iget-object v1, p0, Landroid/hardware/alipay/AlipayManager;->mService:Landroid/hardware/alipay/IAlipayService;

    const-string v2, "AlipayManager"

    if-eqz v1, :cond_0

    .line 137
    :try_start_0
    invoke-interface {v1}, Landroid/hardware/alipay/IAlipayService;->getDeviceModel()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 140
    :goto_0
    goto :goto_1

    .line 138
    :catch_0
    move-exception v1

    .line 139
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Remote exception in getDeviceModel(): "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 142
    :cond_0
    const-string v1, "Service not connected!"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :goto_1
    return-object v0
.end method

.method public blacklist getFingerprintIconDiameter()I
    .locals 4

    .line 148
    const/16 v0, 0xbe

    .line 149
    .local v0, "iconDiameter":I
    iget-object v1, p0, Landroid/hardware/alipay/AlipayManager;->mService:Landroid/hardware/alipay/IAlipayService;

    const-string v2, "AlipayManager"

    if-eqz v1, :cond_0

    .line 151
    :try_start_0
    invoke-interface {v1}, Landroid/hardware/alipay/IAlipayService;->getFingerprintIconDiameter()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 154
    :goto_0
    goto :goto_1

    .line 152
    :catch_0
    move-exception v1

    .line 153
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Remote exception in getFingerprintIconDiameter(): "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 156
    :cond_0
    const-string v1, "Service not connected!"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :goto_1
    return v0
.end method

.method public blacklist getFingerprintIconExternalCircleXY(Ljava/lang/String;)I
    .locals 4
    .param p1, "coordinate"    # Ljava/lang/String;

    .line 163
    const-string v0, "X"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    const/16 v0, 0x1bd

    .local v0, "coord":I
    goto :goto_0

    .line 166
    .end local v0    # "coord":I
    :cond_0
    const/16 v0, 0x7af

    .line 169
    .restart local v0    # "coord":I
    :goto_0
    iget-object v1, p0, Landroid/hardware/alipay/AlipayManager;->mService:Landroid/hardware/alipay/IAlipayService;

    const-string v2, "AlipayManager"

    if-eqz v1, :cond_1

    .line 171
    :try_start_0
    invoke-interface {v1, p1}, Landroid/hardware/alipay/IAlipayService;->getFingerprintIconExternalCircleXY(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 174
    :goto_1
    goto :goto_2

    .line 172
    :catch_0
    move-exception v1

    .line 173
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Remote exception in getFingerprintIconExternalCircleXY(): "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 176
    :cond_1
    const-string v1, "Service not connected!"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :goto_2
    return v0
.end method

.method public blacklist getSupportBIOTypes()I
    .locals 4

    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "type":I
    iget-object v1, p0, Landroid/hardware/alipay/AlipayManager;->mService:Landroid/hardware/alipay/IAlipayService;

    const-string v2, "AlipayManager"

    if-eqz v1, :cond_0

    .line 109
    :try_start_0
    invoke-interface {v1}, Landroid/hardware/alipay/IAlipayService;->getSupportBIOTypes()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 112
    :goto_0
    goto :goto_1

    .line 110
    :catch_0
    move-exception v1

    .line 111
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Remote exception in getSupportBIOTypes(): "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 114
    :cond_0
    const-string v1, "Service not connected!"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :goto_1
    return v0
.end method

.method public blacklist getSupportIFAAVersion()I
    .locals 4

    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, "type":I
    iget-object v1, p0, Landroid/hardware/alipay/AlipayManager;->mService:Landroid/hardware/alipay/IAlipayService;

    const-string v2, "AlipayManager"

    if-eqz v1, :cond_0

    .line 123
    :try_start_0
    invoke-interface {v1}, Landroid/hardware/alipay/IAlipayService;->getSupportIFAAVersion()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 126
    :goto_0
    goto :goto_1

    .line 124
    :catch_0
    move-exception v1

    .line 125
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Remote exception in getSupportIFAAVersion(): "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 128
    :cond_0
    const-string v1, "Service not connected!"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :goto_1
    return v0
.end method
