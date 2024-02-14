.class public Lcom/oplus/filter/DynamicFilterManager;
.super Ljava/lang/Object;
.source "DynamicFilterManager.java"


# static fields
.field public static final whitelist FILTER_BRK_SEARCH_2_WAY:Ljava/lang/String; = "brk_s2w"

.field public static final whitelist FILTER_GL_OOM:Ljava/lang/String; = "gl_oom"

.field public static final whitelist FILTER_GL_THREAD_UX:Ljava/lang/String; = "gl_thread_ux"

.field public static final whitelist FILTER_SCROLL_OPT:Ljava/lang/String; = "scroll_opt"

.field public static final whitelist FILTER_SCROLL_OPT_BLACK:Ljava/lang/String; = "scroll_black"

.field public static final whitelist FILTER_TPD:Ljava/lang/String; = "tpd"

.field public static final whitelist FILTER_UI_FIRST_BLACK:Ljava/lang/String; = "ui_first_black"

.field public static final whitelist SERVICE_NAME:Ljava/lang/String; = "dynamic_filter"

.field private static final blacklist TAG:Ljava/lang/String; = "DynamicFilterManager"


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mService:Lcom/oplus/filter/IDynamicFilterService;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Lcom/oplus/filter/IDynamicFilterService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/oplus/filter/IDynamicFilterService;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/oplus/filter/DynamicFilterManager;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/oplus/filter/DynamicFilterManager;->mService:Lcom/oplus/filter/IDynamicFilterService;

    .line 43
    if-nez p2, :cond_0

    .line 44
    const-string v0, "DynamicFilterManager"

    const-string v1, "DynamicFilterService was null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-void

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist addToFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/oplus/filter/DynamicFilterManager;->mService:Lcom/oplus/filter/IDynamicFilterService;

    if-nez v0, :cond_0

    .line 73
    return-void

    .line 76
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/oplus/filter/IDynamicFilterService;->addToFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 80
    :goto_0
    return-void
.end method

.method public whitelist getFilterTagValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/oplus/filter/DynamicFilterManager;->mService:Lcom/oplus/filter/IDynamicFilterService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 95
    return-object v1

    .line 98
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/oplus/filter/IDynamicFilterService;->getFilterTagValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public whitelist hasFilter(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/oplus/filter/DynamicFilterManager;->mService:Lcom/oplus/filter/IDynamicFilterService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 51
    return v1

    .line 54
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/oplus/filter/IDynamicFilterService;->hasFilter(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public whitelist inFilter(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/oplus/filter/DynamicFilterManager;->mService:Lcom/oplus/filter/IDynamicFilterService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 62
    return v1

    .line 65
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/oplus/filter/IDynamicFilterService;->inFilter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public whitelist removeFromFilter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/oplus/filter/DynamicFilterManager;->mService:Lcom/oplus/filter/IDynamicFilterService;

    if-nez v0, :cond_0

    .line 84
    return-void

    .line 87
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/oplus/filter/IDynamicFilterService;->removeFromFilter(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 91
    :goto_0
    return-void
.end method
