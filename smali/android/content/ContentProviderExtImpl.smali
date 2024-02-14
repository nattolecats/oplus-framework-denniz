.class public Landroid/content/ContentProviderExtImpl;
.super Ljava/lang/Object;
.source "ContentProviderExtImpl.java"

# interfaces
.implements Landroid/content/IContentProviderExt;


# static fields
.field private static final blacklist FASFAST_APP_CARRIER_URI_PROPERTY:Ljava/lang/String; = "persistent.sys.fastapp.authority"

.field private static final blacklist FAST_APP_CARRIER:Ljava/lang/String; = "com.tencent.mm"

.field private static final blacklist FAST_APP_CARRIER_URI:Ljava/lang/String; = "com.tencent.mm.sdk.comm.provider"

.field private static final blacklist FAST_APP_ENGINE:Ljava/lang/String; = "com.nearme.instant.platform"

.field private static final blacklist TAG:Ljava/lang/String; = "ContentProviderExtImpl"


# instance fields
.field private blacklist mContentProvider:Landroid/content/ContentProvider;

.field private blacklist mFastAppAuthrity:Ljava/lang/String;

.field private blacklist mOplusActivityManager:Landroid/app/OplusActivityManager;

.field private blacklist mSupportFastAppAdjust:Z


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "base"    # Ljava/lang/Object;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/ContentProviderExtImpl;->mSupportFastAppAdjust:Z

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ContentProviderExtImpl;->mFastAppAuthrity:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Landroid/content/ContentProviderExtImpl;->mOplusActivityManager:Landroid/app/OplusActivityManager;

    .line 43
    move-object v0, p1

    check-cast v0, Landroid/content/ContentProvider;

    iput-object v0, p0, Landroid/content/ContentProviderExtImpl;->mContentProvider:Landroid/content/ContentProvider;

    .line 44
    return-void
.end method


# virtual methods
.method public blacklist adjustCallingPkg(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Ljava/lang/String;
    .locals 4
    .param p1, "cp"    # Landroid/content/ContentProvider;
    .param p2, "callingAttributionSource"    # Landroid/content/AttributionSource;

    .line 73
    iget-boolean v0, p0, Landroid/content/ContentProviderExtImpl;->mSupportFastAppAdjust:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez p2, :cond_0

    goto :goto_1

    .line 77
    :cond_0
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.nearme.instant.platform"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    return-object v1

    .line 80
    :cond_1
    nop

    .line 81
    const-string v0, "persistent.sys.fastapp.authority"

    const-string v2, "com.tencent.mm.sdk.comm.provider"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-virtual {p1, v0}, Landroid/content/ContentProvider;->matchesOurAuthorities(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 82
    return-object v1

    .line 86
    :cond_2
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentProviderExtImpl;->mOplusActivityManager:Landroid/app/OplusActivityManager;

    if-eqz v0, :cond_3

    .line 87
    const-string v2, "com.tencent.mm"

    invoke-virtual {v0, v2}, Landroid/app/OplusActivityManager;->getFastAppReplacePkg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 91
    :cond_3
    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjust calling pkg got exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ContentProviderExtImpl"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v1

    .line 74
    :cond_4
    :goto_1
    return-object v1
.end method

.method public blacklist init(Landroid/content/ContentProvider;)V
    .locals 3
    .param p1, "cp"    # Landroid/content/ContentProvider;

    .line 59
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    const-string v0, "com.tencent.mm"

    invoke-virtual {p1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/ContentProviderExtImpl;->mSupportFastAppAdjust:Z

    .line 62
    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/ContentProviderExtImpl;->mOplusActivityManager:Landroid/app/OplusActivityManager;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Landroid/app/OplusActivityManager;

    invoke-direct {v0}, Landroid/app/OplusActivityManager;-><init>()V

    iput-object v0, p0, Landroid/content/ContentProviderExtImpl;->mOplusActivityManager:Landroid/app/OplusActivityManager;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :cond_0
    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/content/ContentProviderExtImpl;->mSupportFastAppAdjust:Z

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init got exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ContentProviderExtImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .end local v0    # "e":Ljava/lang/UnsupportedOperationException;
    :goto_0
    return-void
.end method

.method public blacklist skipMultiappHandleUri(ILandroid/net/Uri;)Z
    .locals 3
    .param p1, "userId"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .line 47
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 48
    return v0

    .line 50
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "auth":Ljava/lang/String;
    const/16 v2, 0x3e7

    if-ne v2, p1, :cond_1

    const-string v2, "media"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 52
    const/4 v0, 0x1

    return v0

    .line 54
    :cond_1
    return v0
.end method
