.class public Lcom/oplus/verifycode/OplusVerifyCodeManager;
.super Ljava/lang/Object;
.source "OplusVerifyCodeManager.java"


# static fields
.field public static final whitelist TAG:Ljava/lang/String; = "OplusVerifyCodeManager"

.field private static volatile blacklist sInstance:Lcom/oplus/verifycode/OplusVerifyCodeManager;


# instance fields
.field private blacklist mLock:Ljava/lang/Object;

.field private blacklist mOAms:Landroid/app/OplusActivityManager;


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oplus/verifycode/OplusVerifyCodeManager;->mLock:Ljava/lang/Object;

    .line 35
    new-instance v0, Landroid/app/OplusActivityManager;

    invoke-direct {v0}, Landroid/app/OplusActivityManager;-><init>()V

    iput-object v0, p0, Lcom/oplus/verifycode/OplusVerifyCodeManager;->mOAms:Landroid/app/OplusActivityManager;

    .line 36
    return-void
.end method

.method public static whitelist getInstance()Lcom/oplus/verifycode/OplusVerifyCodeManager;
    .locals 2

    .line 39
    sget-object v0, Lcom/oplus/verifycode/OplusVerifyCodeManager;->sInstance:Lcom/oplus/verifycode/OplusVerifyCodeManager;

    if-nez v0, :cond_1

    .line 40
    const-class v0, Lcom/oplus/verifycode/OplusVerifyCodeManager;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v1, Lcom/oplus/verifycode/OplusVerifyCodeManager;->sInstance:Lcom/oplus/verifycode/OplusVerifyCodeManager;

    if-nez v1, :cond_0

    .line 42
    new-instance v1, Lcom/oplus/verifycode/OplusVerifyCodeManager;

    invoke-direct {v1}, Lcom/oplus/verifycode/OplusVerifyCodeManager;-><init>()V

    sput-object v1, Lcom/oplus/verifycode/OplusVerifyCodeManager;->sInstance:Lcom/oplus/verifycode/OplusVerifyCodeManager;

    .line 44
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 46
    :cond_1
    :goto_0
    sget-object v0, Lcom/oplus/verifycode/OplusVerifyCodeManager;->sInstance:Lcom/oplus/verifycode/OplusVerifyCodeManager;

    return-object v0
.end method


# virtual methods
.method public blacklist addOrRemoveOplusVerifyCodeListener(ZLcom/oplus/verifycode/IOplusVerifyCodeListener;)Z
    .locals 1
    .param p1, "add"    # Z
    .param p2, "listener"    # Lcom/oplus/verifycode/IOplusVerifyCodeListener;

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/oplus/verifycode/OplusVerifyCodeManager;->mOAms:Landroid/app/OplusActivityManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/OplusActivityManager;->addOrRemoveOplusVerifyCodeListener(ZLcom/oplus/verifycode/IOplusVerifyCodeListener;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 58
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
