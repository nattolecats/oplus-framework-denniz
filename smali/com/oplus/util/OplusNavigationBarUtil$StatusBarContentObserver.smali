.class public Lcom/oplus/util/OplusNavigationBarUtil$StatusBarContentObserver;
.super Landroid/database/ContentObserver;
.source "OplusNavigationBarUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/util/OplusNavigationBarUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StatusBarContentObserver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/util/OplusNavigationBarUtil;


# direct methods
.method public constructor whitelist <init>(Lcom/oplus/util/OplusNavigationBarUtil;)V
    .locals 1
    .param p1, "this$0"    # Lcom/oplus/util/OplusNavigationBarUtil;

    .line 388
    iput-object p1, p0, Lcom/oplus/util/OplusNavigationBarUtil$StatusBarContentObserver;->this$0:Lcom/oplus/util/OplusNavigationBarUtil;

    .line 389
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 390
    return-void
.end method


# virtual methods
.method public whitelist onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .line 397
    iget-object v0, p0, Lcom/oplus/util/OplusNavigationBarUtil$StatusBarContentObserver;->this$0:Lcom/oplus/util/OplusNavigationBarUtil;

    invoke-static {v0}, Lcom/oplus/util/OplusNavigationBarUtil;->-$$Nest$mupdateStatusBgColorListFromDB(Lcom/oplus/util/OplusNavigationBarUtil;)V

    .line 398
    return-void
.end method
