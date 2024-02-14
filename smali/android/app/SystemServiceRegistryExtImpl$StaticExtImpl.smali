.class public Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl;
.super Ljava/lang/Object;
.source "SystemServiceRegistryExtImpl.java"

# interfaces
.implements Landroid/app/ISystemServiceRegistryExt$IStaticExt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistryExtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StaticExtImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl$LazyHolder;
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl;-><init>()V

    return-void
.end method

.method private blacklist checkAppPackageName()Ljava/lang/String;
    .locals 6

    .line 236
    const-string v0, ""

    .line 237
    .local v0, "callingApp":Ljava/lang/String;
    const/4 v1, 0x0

    .line 239
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/proc/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/cmdline"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 240
    const/16 v2, 0x32

    new-array v2, v2, [B

    .line 241
    .local v2, "buffer":[B
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 242
    .local v3, "count":I
    if-lez v3, :cond_0

    .line 243
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5, v3}, Ljava/lang/String;-><init>([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v4

    .line 247
    .end local v2    # "buffer":[B
    .end local v3    # "count":I
    :cond_0
    nop

    .line 249
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 251
    :goto_0
    goto :goto_2

    .line 250
    :catch_0
    move-exception v2

    goto :goto_0

    .line 247
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    .line 249
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 251
    goto :goto_1

    .line 250
    :catch_1
    move-exception v3

    .line 253
    :cond_1
    :goto_1
    throw v2

    .line 245
    :catch_2
    move-exception v2

    .line 247
    if-eqz v1, :cond_2

    .line 249
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 254
    :cond_2
    :goto_2
    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .line 69
    invoke-static {}, Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl$LazyHolder;->-$$Nest$sfgetINSTANCE()Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist checkAppPackageName(I)I
    .locals 2
    .param p1, "newState"    # I

    .line 226
    invoke-direct {p0}, Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl;->checkAppPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "system_server"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    const/4 p1, 0x0

    .line 229
    :cond_0
    return p1
.end method

.method public blacklist registerService()V
    .locals 4

    .line 79
    sget-object v0, Landroid/app/SystemServiceRegistry;->sSystemServiceRegistryStaticWrapper:Landroid/app/ISystemServiceRegistryWrapper;

    const-class v1, Lcom/oplus/filter/DynamicFilterManager;

    new-instance v2, Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl$1;

    invoke-direct {v2, p0}, Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl$1;-><init>(Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl;)V

    const-string v3, "dynamic_filter"

    invoke-interface {v0, v3, v1, v2}, Landroid/app/ISystemServiceRegistryWrapper;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 91
    sget-object v0, Landroid/app/SystemServiceRegistry;->sSystemServiceRegistryStaticWrapper:Landroid/app/ISystemServiceRegistryWrapper;

    const-class v1, Lcom/oplus/screenshot/OplusScreenshotManager;

    new-instance v2, Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl$2;

    invoke-direct {v2, p0}, Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl$2;-><init>(Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl;)V

    const-string v3, "color_screenshot"

    invoke-interface {v0, v3, v1, v2}, Landroid/app/ISystemServiceRegistryWrapper;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 103
    sget-object v0, Landroid/app/SystemServiceRegistry;->sSystemServiceRegistryStaticWrapper:Landroid/app/ISystemServiceRegistryWrapper;

    const-class v1, Lcom/oplus/os/LinearmotorVibrator;

    new-instance v2, Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl$3;

    invoke-direct {v2, p0}, Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl$3;-><init>(Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl;)V

    const-string v3, "linearmotor"

    invoke-interface {v0, v3, v1, v2}, Landroid/app/ISystemServiceRegistryWrapper;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 117
    sget-object v0, Landroid/app/SystemServiceRegistry;->sSystemServiceRegistryStaticWrapper:Landroid/app/ISystemServiceRegistryWrapper;

    const-class v1, Landroid/os/storage/StorageHealthInfoManager;

    new-instance v2, Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl$4;

    invoke-direct {v2, p0}, Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl$4;-><init>(Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl;)V

    const-string v3, "storage_healthinfo"

    invoke-interface {v0, v3, v1, v2}, Landroid/app/ISystemServiceRegistryWrapper;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 129
    sget-object v0, Landroid/app/SystemServiceRegistry;->sSystemServiceRegistryStaticWrapper:Landroid/app/ISystemServiceRegistryWrapper;

    const-class v1, Landroid/hardware/alipay/AlipayManager;

    new-instance v2, Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl$5;

    invoke-direct {v2, p0}, Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl$5;-><init>(Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl;)V

    const-string v3, "alipay"

    invoke-interface {v0, v3, v1, v2}, Landroid/app/ISystemServiceRegistryWrapper;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 141
    sget-object v0, Landroid/app/SystemServiceRegistry;->sSystemServiceRegistryStaticWrapper:Landroid/app/ISystemServiceRegistryWrapper;

    const-class v1, Lcom/oplus/commscene/CommSceneManager;

    new-instance v2, Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl$6;

    invoke-direct {v2, p0}, Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl$6;-><init>(Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl;)V

    const-string v3, "commscene"

    invoke-interface {v0, v3, v1, v2}, Landroid/app/ISystemServiceRegistryWrapper;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 151
    sget-object v0, Landroid/app/SystemServiceRegistry;->sSystemServiceRegistryStaticWrapper:Landroid/app/ISystemServiceRegistryWrapper;

    const-class v1, Lcom/oplus/nwpower/OSysNetControlManager;

    new-instance v2, Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl$7;

    invoke-direct {v2, p0}, Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl$7;-><init>(Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl;)V

    const-string v3, "osysnetcontrol"

    invoke-interface {v0, v3, v1, v2}, Landroid/app/ISystemServiceRegistryWrapper;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 160
    sget-object v0, Landroid/app/SystemServiceRegistry;->sSystemServiceRegistryStaticWrapper:Landroid/app/ISystemServiceRegistryWrapper;

    const-class v1, Landroid/telephony/TelephonyRegistryManagerExt;

    new-instance v2, Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl$8;

    invoke-direct {v2, p0}, Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl$8;-><init>(Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl;)V

    const-string v3, "telephony_registry_ext"

    invoke-interface {v0, v3, v1, v2}, Landroid/app/ISystemServiceRegistryWrapper;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 170
    sget-object v0, Landroid/app/SystemServiceRegistry;->sSystemServiceRegistryStaticWrapper:Landroid/app/ISystemServiceRegistryWrapper;

    const-class v1, Landroid/telecom/TelecomManagerExt;

    new-instance v2, Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl$9;

    invoke-direct {v2, p0}, Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl$9;-><init>(Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl;)V

    const-string v3, "telecom_ext"

    invoke-interface {v0, v3, v1, v2}, Landroid/app/ISystemServiceRegistryWrapper;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 180
    sget-object v0, Landroid/app/SystemServiceRegistry;->sSystemServiceRegistryStaticWrapper:Landroid/app/ISystemServiceRegistryWrapper;

    const-class v1, Lcom/oplus/ims/ImsManagerExt;

    new-instance v2, Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl$10;

    invoke-direct {v2, p0}, Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl$10;-><init>(Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl;)V

    const-string v3, "iims_ext"

    invoke-interface {v0, v3, v1, v2}, Landroid/app/ISystemServiceRegistryWrapper;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 187
    sget-object v0, Landroid/app/SystemServiceRegistry;->sSystemServiceRegistryStaticWrapper:Landroid/app/ISystemServiceRegistryWrapper;

    const-class v1, Lcom/oplus/telephony/SmsManagerExt;

    new-instance v2, Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl$11;

    invoke-direct {v2, p0}, Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl$11;-><init>(Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl;)V

    const-string v3, "isms_ext"

    invoke-interface {v0, v3, v1, v2}, Landroid/app/ISystemServiceRegistryWrapper;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 194
    sget-object v0, Landroid/app/SystemServiceRegistry;->sSystemServiceRegistryStaticWrapper:Landroid/app/ISystemServiceRegistryWrapper;

    const-class v1, Lcom/oplus/telephony/SubscriptionManagerExt;

    new-instance v2, Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl$12;

    invoke-direct {v2, p0}, Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl$12;-><init>(Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl;)V

    const-string v3, "isub_ext"

    invoke-interface {v0, v3, v1, v2}, Landroid/app/ISystemServiceRegistryWrapper;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 201
    sget-object v0, Landroid/app/SystemServiceRegistry;->sSystemServiceRegistryStaticWrapper:Landroid/app/ISystemServiceRegistryWrapper;

    const-class v1, Lcom/oplus/telephony/TelephonyFeatureManagerExt;

    new-instance v2, Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl$13;

    invoke-direct {v2, p0}, Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl$13;-><init>(Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl;)V

    const-string v3, "telephony_feature_ext"

    invoke-interface {v0, v3, v1, v2}, Landroid/app/ISystemServiceRegistryWrapper;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 211
    sget-object v0, Landroid/app/SystemServiceRegistry;->sSystemServiceRegistryStaticWrapper:Landroid/app/ISystemServiceRegistryWrapper;

    const-class v1, Landroid/os/renderacc/RenderAcceleratingManager;

    new-instance v2, Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl$14;

    invoke-direct {v2, p0}, Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl$14;-><init>(Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl;)V

    const-string v3, "render_accelerating"

    invoke-interface {v0, v3, v1, v2}, Landroid/app/ISystemServiceRegistryWrapper;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 221
    return-void
.end method
