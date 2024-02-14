.class public Lcom/oplus/splitscreen/SplitScreenManagerExtImpl;
.super Ljava/lang/Object;
.source "SplitScreenManagerExtImpl.java"

# interfaces
.implements Lcom/oplus/splitscreen/ISplitScreenManagerExt;


# static fields
.field private static volatile blacklist sInstance:Lcom/oplus/splitscreen/SplitScreenManagerExtImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 6
    const/4 v0, 0x0

    sput-object v0, Lcom/oplus/splitscreen/SplitScreenManagerExtImpl;->sInstance:Lcom/oplus/splitscreen/SplitScreenManagerExtImpl;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/oplus/splitscreen/SplitScreenManagerExtImpl;
    .locals 2
    .param p0, "base"    # Ljava/lang/Object;

    .line 9
    sget-object v0, Lcom/oplus/splitscreen/SplitScreenManagerExtImpl;->sInstance:Lcom/oplus/splitscreen/SplitScreenManagerExtImpl;

    if-nez v0, :cond_1

    .line 10
    const-class v0, Lcom/oplus/splitscreen/SplitScreenManagerExtImpl;

    monitor-enter v0

    .line 11
    :try_start_0
    sget-object v1, Lcom/oplus/splitscreen/SplitScreenManagerExtImpl;->sInstance:Lcom/oplus/splitscreen/SplitScreenManagerExtImpl;

    if-nez v1, :cond_0

    .line 12
    new-instance v1, Lcom/oplus/splitscreen/SplitScreenManagerExtImpl;

    invoke-direct {v1}, Lcom/oplus/splitscreen/SplitScreenManagerExtImpl;-><init>()V

    sput-object v1, Lcom/oplus/splitscreen/SplitScreenManagerExtImpl;->sInstance:Lcom/oplus/splitscreen/SplitScreenManagerExtImpl;

    .line 14
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 17
    :cond_1
    :goto_0
    sget-object v0, Lcom/oplus/splitscreen/SplitScreenManagerExtImpl;->sInstance:Lcom/oplus/splitscreen/SplitScreenManagerExtImpl;

    return-object v0
.end method


# virtual methods
.method public blacklist getDividerInsets(Landroid/content/res/Resources;)I
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 30
    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getDividerInsets(Landroid/content/res/Resources;)I

    move-result v0

    return v0
.end method

.method public blacklist hasLargeScreenFeature()Z
    .locals 1

    .line 25
    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->hasLargeScreenFeature()Z

    move-result v0

    return v0
.end method
