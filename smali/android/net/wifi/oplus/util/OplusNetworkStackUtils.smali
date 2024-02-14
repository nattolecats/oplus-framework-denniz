.class public Landroid/net/wifi/oplus/util/OplusNetworkStackUtils;
.super Ljava/lang/Object;
.source "OplusNetworkStackUtils.java"


# static fields
.field public static final whitelist CAPTIVE_PORTAL_FALLBACK_PROBE_SPECS:Ljava/lang/String; = "captive_portal_fallback_probe_specs"

.field public static final whitelist CAPTIVE_PORTAL_FALLBACK_URL:Ljava/lang/String; = "captive_portal_fallback_url"

.field public static final whitelist CAPTIVE_PORTAL_HTTPS_URL:Ljava/lang/String; = "captive_portal_https_url"

.field public static final whitelist CAPTIVE_PORTAL_HTTP_URL:Ljava/lang/String; = "captive_portal_http_url"

.field public static final whitelist CAPTIVE_PORTAL_MODE:Ljava/lang/String; = "captive_portal_mode"

.field public static final whitelist CAPTIVE_PORTAL_MODE_AVOID:I = 0x2

.field public static final whitelist CAPTIVE_PORTAL_MODE_IGNORE:I = 0x0

.field public static final whitelist CAPTIVE_PORTAL_MODE_PROMPT:I = 0x1

.field public static final whitelist CAPTIVE_PORTAL_OTHER_FALLBACK_URLS:Ljava/lang/String; = "captive_portal_other_fallback_urls"

.field public static final whitelist CAPTIVE_PORTAL_OTHER_HTTPS_URLS:Ljava/lang/String; = "captive_portal_other_https_urls"

.field public static final whitelist CAPTIVE_PORTAL_OTHER_HTTP_URLS:Ljava/lang/String; = "captive_portal_other_http_urls"

.field public static final whitelist CAPTIVE_PORTAL_USER_AGENT:Ljava/lang/String; = "captive_portal_user_agent"

.field public static final whitelist CAPTIVE_PORTAL_USE_HTTPS:Ljava/lang/String; = "captive_portal_use_https"

.field public static final whitelist DEFAULT_CAPTIVE_PORTAL_DNS_PROBE_TIMEOUT:I = 0x30d4

.field public static final whitelist DEFAULT_CAPTIVE_PORTAL_FALLBACK_PROBE_SPECS:[Ljava/lang/String;

.field public static final whitelist DEFAULT_CAPTIVE_PORTAL_HTTPS_URLS:[Ljava/lang/String;

.field public static final whitelist DEFAULT_CAPTIVE_PORTAL_HTTP_URLS:[Ljava/lang/String;

.field public static final whitelist DHCP_INIT_REBOOT_ENABLED:Ljava/lang/String; = "dhcp_init_reboot_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist DHCP_INIT_REBOOT_VERSION:Ljava/lang/String; = "dhcp_init_reboot_version"

.field public static final whitelist DHCP_IP_CONFLICT_DETECT_VERSION:Ljava/lang/String; = "dhcp_ip_conflict_detect_version"

.field public static final whitelist DHCP_RAPID_COMMIT_ENABLED:Ljava/lang/String; = "dhcp_rapid_commit_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist DHCP_RAPID_COMMIT_VERSION:Ljava/lang/String; = "dhcp_rapid_commit_version"

.field public static final whitelist DISMISS_PORTAL_IN_VALIDATED_NETWORK:Ljava/lang/String; = "dismiss_portal_in_validated_network"

.field public static final whitelist DNS_PROBE_PRIVATE_IP_NO_INTERNET_VERSION:Ljava/lang/String; = "dns_probe_private_ip_no_internet"

.field private static final blacklist TAG:Ljava/lang/String; = "OplusNetworkStackUtils"

.field public static final whitelist TEST_CAPTIVE_PORTAL_HTTPS_URL:Ljava/lang/String; = "test_captive_portal_https_url"

.field public static final whitelist TEST_CAPTIVE_PORTAL_HTTP_URL:Ljava/lang/String; = "test_captive_portal_http_url"

.field public static final whitelist TEST_URL_EXPIRATION_TIME:Ljava/lang/String; = "test_url_expiration_time"

.field public static final whitelist VALIDATION_METRICS_VERSION:Ljava/lang/String; = "validation_metrics_version"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 183
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroid/net/wifi/oplus/util/OplusNetworkStackUtils;->DEFAULT_CAPTIVE_PORTAL_FALLBACK_PROBE_SPECS:[Ljava/lang/String;

    .line 189
    const-string v0, "http://connectivitycheck.gstatic.com/generate_204"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/oplus/util/OplusNetworkStackUtils;->DEFAULT_CAPTIVE_PORTAL_HTTP_URLS:[Ljava/lang/String;

    .line 196
    const-string v0, "https://www.google.com/generate_204"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/oplus/util/OplusNetworkStackUtils;->DEFAULT_CAPTIVE_PORTAL_HTTPS_URLS:[Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist addArpEntry(Ljava/net/Inet4Address;Landroid/net/MacAddress;Ljava/lang/String;Ljava/io/FileDescriptor;)V
    .locals 2
    .param p0, "ipv4Addr"    # Ljava/net/Inet4Address;
    .param p1, "ethAddr"    # Landroid/net/MacAddress;
    .param p2, "ifname"    # Ljava/lang/String;
    .param p3, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 456
    invoke-virtual {p1}, Landroid/net/MacAddress;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v1

    invoke-static {v0, v1, p2, p3}, Landroid/net/wifi/oplus/util/OplusNetworkStackUtils;->addArpEntry([B[BLjava/lang/String;Ljava/io/FileDescriptor;)V

    .line 457
    return-void
.end method

.method private static native blacklist addArpEntry([B[BLjava/lang/String;Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static whitelist addressAndPortToString(Ljava/net/InetAddress;I)Ljava/lang/String;
    .locals 4
    .param p0, "address"    # Ljava/net/InetAddress;
    .param p1, "port"    # I

    .line 467
    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_0

    const-string v0, "[%s]:%d"

    goto :goto_0

    :cond_0
    const-string v0, "%s:%d"

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 468
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 466
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist any(Landroid/util/SparseArray;Ljava/util/function/Predicate;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "TT;>;)Z"
        }
    .end annotation

    .line 305
    .local p0, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 306
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    const/4 v1, 0x1

    return v1

    .line 305
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 310
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static native whitelist attachControlPacketFilter(Ljava/io/FileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public static native whitelist attachDhcpFilter(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public static native whitelist attachRaFilter(Ljava/io/FileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public static native whitelist attachWlan0HttpFilter(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public static whitelist closeSocketQuietly(Ljava/io/FileDescriptor;)V
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;

    .line 273
    :try_start_0
    invoke-static {p0}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    goto :goto_0

    .line 274
    :catch_0
    move-exception v0

    .line 276
    :goto_0
    return-void
.end method

.method public static whitelist convertToIntArray(Ljava/util/List;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 282
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 283
    .local v0, "array":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 284
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 283
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 286
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static whitelist convertToLongArray(Ljava/util/List;)[J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    .line 293
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [J

    .line 294
    .local v0, "array":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 295
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 294
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 297
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static whitelist getDeviceConfigProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "namespace"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 323
    invoke-static {p0, p1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    return-object v1
.end method

.method public static whitelist getDeviceConfigPropertyBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "namespace"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 370
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/net/wifi/oplus/util/OplusNetworkStackUtils;->getDeviceConfigProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    return v1
.end method

.method public static whitelist getDeviceConfigPropertyInt(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p0, "namespace"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 336
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/net/wifi/oplus/util/OplusNetworkStackUtils;->getDeviceConfigProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 339
    :catch_0
    move-exception v1

    .line 340
    .local v1, "e":Ljava/lang/NumberFormatException;
    return p2

    .line 338
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    move v1, p2

    :goto_0
    return v1
.end method

.method public static whitelist getDeviceConfigPropertyInt(Ljava/lang/String;Ljava/lang/String;III)I
    .locals 1
    .param p0, "namespace"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "minimumValue"    # I
    .param p3, "maximumValue"    # I
    .param p4, "defaultValue"    # I

    .line 356
    invoke-static {p0, p1, p4}, Landroid/net/wifi/oplus/util/OplusNetworkStackUtils;->getDeviceConfigPropertyInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 357
    .local v0, "value":I
    if-lt v0, p2, :cond_1

    if-le v0, p3, :cond_0

    goto :goto_0

    .line 358
    :cond_0
    return v0

    .line 357
    :cond_1
    :goto_0
    return p4
.end method

.method public static whitelist getImplicitNetmask(Ljava/net/Inet4Address;)I
    .locals 2
    .param p0, "address"    # Ljava/net/Inet4Address;

    .line 504
    invoke-virtual {p0}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 506
    .local v0, "firstByte":I
    const/16 v1, 0x80

    if-ge v0, v1, :cond_0

    .line 507
    const/16 v1, 0x8

    return v1

    .line 508
    :cond_0
    const/16 v1, 0xc0

    if-ge v0, v1, :cond_1

    .line 509
    const/16 v1, 0x10

    return v1

    .line 510
    :cond_1
    const/16 v1, 0xe0

    if-ge v0, v1, :cond_2

    .line 511
    const/16 v1, 0x18

    return v1

    .line 513
    :cond_2
    const/16 v1, 0x20

    return v1
.end method

.method public static whitelist inet4AddressToIntHTH(Ljava/net/Inet4Address;)I
    .locals 3
    .param p0, "inetAddr"    # Ljava/net/Inet4Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 498
    invoke-virtual {p0}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v0

    .line 499
    .local v0, "addr":[B
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    const/4 v2, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const/4 v2, 0x3

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    return v1
.end method

.method public static whitelist isEmpty([Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)Z"
        }
    .end annotation

    .line 265
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static whitelist isFeatureEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 389
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/net/wifi/oplus/util/OplusNetworkStackUtils;->isFeatureEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static whitelist isFeatureEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defaultEnabled"    # Z

    .line 410
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, p2, v0}, Landroid/net/wifi/oplus/util/OplusNetworkStackUtils;->getDeviceConfigPropertyInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 412
    .local v1, "propertyVersion":I
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 413
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 412
    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 413
    invoke-virtual {v2}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    .local v2, "packageVersion":J
    if-nez v1, :cond_0

    if-nez p3, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    int-to-long v4, v1

    cmp-long v4, v2, v4

    if-ltz v4, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0

    .line 416
    .end local v1    # "propertyVersion":I
    .end local v2    # "packageVersion":J
    :catch_0
    move-exception v1

    .line 417
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "OplusNetworkStackUtils"

    const-string v3, "Could not find the package name"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 418
    return v0
.end method

.method public static whitelist isIPv6ULA(Ljava/net/InetAddress;)Z
    .locals 3
    .param p0, "addr"    # Ljava/net/InetAddress;

    .line 475
    instance-of v0, p0, Ljava/net/Inet6Address;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 476
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xfe

    const/16 v2, 0xfc

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 475
    :goto_0
    return v1
.end method

.method public static whitelist netmaskToPrefixLength(Ljava/net/Inet4Address;)I
    .locals 6
    .param p0, "netmask"    # Ljava/net/Inet4Address;

    .line 519
    invoke-static {p0}, Landroid/net/wifi/oplus/util/OplusNetworkStackUtils;->inet4AddressToIntHTH(Ljava/net/Inet4Address;)I

    move-result v0

    .line 520
    .local v0, "i":I
    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    .line 521
    .local v1, "prefixLength":I
    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    .line 523
    .local v2, "trailingZeros":I
    rsub-int/lit8 v3, v1, 0x20

    if-ne v2, v3, :cond_0

    .line 527
    return v1

    .line 524
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Non-contiguous netmask: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static whitelist saturatedCast(J)I
    .locals 2
    .param p0, "value"    # J

    .line 488
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .line 489
    const v0, 0x7fffffff

    return v0

    .line 491
    :cond_0
    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 492
    const/high16 v0, -0x80000000

    return v0

    .line 494
    :cond_1
    long-to-int v0, p0

    return v0
.end method
