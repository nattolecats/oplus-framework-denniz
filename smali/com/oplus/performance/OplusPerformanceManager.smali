.class public Lcom/oplus/performance/OplusPerformanceManager;
.super Ljava/lang/Object;
.source "OplusPerformanceManager.java"

# interfaces
.implements Lcom/oplus/performance/IOplusPerformanceManager;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "OplusPerformanceManager"

.field private static blacklist sInstance:Lcom/oplus/performance/OplusPerformanceManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/oplus/performance/OplusPerformanceManager;->sInstance:Lcom/oplus/performance/OplusPerformanceManager;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static blacklist getInstance()Lcom/oplus/performance/OplusPerformanceManager;
    .locals 1

    .line 30
    sget-object v0, Lcom/oplus/performance/OplusPerformanceManager;->sInstance:Lcom/oplus/performance/OplusPerformanceManager;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/oplus/performance/OplusPerformanceManager;

    invoke-direct {v0}, Lcom/oplus/performance/OplusPerformanceManager;-><init>()V

    sput-object v0, Lcom/oplus/performance/OplusPerformanceManager;->sInstance:Lcom/oplus/performance/OplusPerformanceManager;

    .line 33
    :cond_0
    sget-object v0, Lcom/oplus/performance/OplusPerformanceManager;->sInstance:Lcom/oplus/performance/OplusPerformanceManager;

    return-object v0
.end method


# virtual methods
.method public blacklist ormsAction(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "scene"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "timeout"    # I

    .line 43
    invoke-static {p1}, Lcom/oplus/orms/OplusResourceManager;->getInstance(Ljava/lang/Class;)Lcom/oplus/orms/OplusResourceManager;

    move-result-object v0

    .line 44
    .local v0, "OrmsManager":Lcom/oplus/orms/OplusResourceManager;
    if-eqz v0, :cond_0

    .line 45
    new-instance v1, Lcom/oplus/orms/info/OrmsSaParam;

    invoke-direct {v1, p2, p3, p4}, Lcom/oplus/orms/info/OrmsSaParam;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/oplus/orms/OplusResourceManager;->ormsSetSceneAction(Lcom/oplus/orms/info/OrmsSaParam;)J

    .line 47
    :cond_0
    return-void
.end method
