.class final Landroid/view/OplusScrollToTopManager$Idler;
.super Ljava/lang/Object;
.source "OplusScrollToTopManager.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/OplusScrollToTopManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Idler"
.end annotation


# instance fields
.field private blacklist mCallback:Ljava/lang/Runnable;


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 665
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/OplusScrollToTopManager$Idler-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/OplusScrollToTopManager$Idler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist queueIdle()Z
    .locals 1

    .line 674
    iget-object v0, p0, Landroid/view/OplusScrollToTopManager$Idler;->mCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 675
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 677
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setCallback(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 669
    iput-object p1, p0, Landroid/view/OplusScrollToTopManager$Idler;->mCallback:Ljava/lang/Runnable;

    .line 670
    return-void
.end method
