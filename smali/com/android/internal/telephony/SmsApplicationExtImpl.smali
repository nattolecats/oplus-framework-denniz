.class public Lcom/android/internal/telephony/SmsApplicationExtImpl;
.super Ljava/lang/Object;
.source "SmsApplicationExtImpl.java"

# interfaces
.implements Lcom/android/internal/telephony/ISmsApplicationExt;


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "SmsApplicationExtImpl"

.field private static final blacklist MAIN_USER_ID:I

.field private static final blacklist OEM_PACKAGE_ALLOW_WRITE_SMS:[Ljava/lang/String;

.field private static final blacklist OEM_PACKAGE_MO_SMS_NOT_SHOW_IN_UI:[Ljava/lang/String;

.field private static blacklist mUserId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    .line 14
    invoke-static {}, Landroid/common/CustomizeFrameworkFactory;->getInstance()Landroid/common/CustomizeFrameworkFactory;

    move-result-object v0

    sget-object v1, Landroid/convert/ICustomizeTransformHelper;->DEFAULT:Landroid/convert/ICustomizeTransformHelper;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Landroid/common/CustomizeFrameworkFactory;->getFeature(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Landroid/convert/ICustomizeTransformHelper;

    .line 15
    const-string v1, "config_oem_package_mo_sms_not_show_in_ui"

    invoke-interface {v0, v1}, Landroid/convert/ICustomizeTransformHelper;->getTransfromCacheFeature(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/internal/telephony/SmsApplicationExtImpl;->OEM_PACKAGE_MO_SMS_NOT_SHOW_IN_UI:[Ljava/lang/String;

    .line 17
    const-string v0, "com.oplus.engineernetwork"

    const-string v1, "com.android.settings"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SmsApplicationExtImpl;->OEM_PACKAGE_ALLOW_WRITE_SMS:[Ljava/lang/String;

    .line 23
    sput v2, Lcom/android/internal/telephony/SmsApplicationExtImpl;->mUserId:I

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 2
    .param p1, "base"    # Ljava/lang/Object;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "SmsApplicationExtImpl"

    const-string v1, "SmsApplicationExtImpl new"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-void
.end method


# virtual methods
.method public blacklist getUserId()I
    .locals 1

    .line 64
    sget v0, Lcom/android/internal/telephony/SmsApplicationExtImpl;->mUserId:I

    return v0
.end method

.method public blacklist isUserIdEqualMainUserId()Z
    .locals 1

    .line 69
    sget v0, Lcom/android/internal/telephony/SmsApplicationExtImpl;->mUserId:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist oemPackageName()[Ljava/lang/String;
    .locals 1

    .line 52
    sget-object v0, Lcom/android/internal/telephony/SmsApplicationExtImpl;->OEM_PACKAGE_ALLOW_WRITE_SMS:[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist setUserId(I)V
    .locals 0
    .param p1, "userId"    # I

    .line 59
    sput p1, Lcom/android/internal/telephony/SmsApplicationExtImpl;->mUserId:I

    .line 60
    return-void
.end method

.method public blacklist shouldWriteMessageForPackage(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 33
    :try_start_0
    const-string v0, "SmsApplicationExtImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sw pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    sget-object v0, Lcom/android/internal/telephony/SmsApplicationExtImpl;->OEM_PACKAGE_MO_SMS_NOT_SHOW_IN_UI:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 35
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 36
    .local v4, "smsPackage":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_0

    .line 37
    return v2

    .line 35
    .end local v4    # "smsPackage":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 43
    :cond_1
    goto :goto_1

    .line 41
    :catch_0
    move-exception v0

    .line 45
    :goto_1
    const/4 v0, 0x1

    return v0
.end method
