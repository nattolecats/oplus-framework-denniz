.class public Landroid/widget/OplusCustomizeTextViewFeature;
.super Ljava/lang/Object;
.source "OplusCustomizeTextViewFeature.java"

# interfaces
.implements Landroid/widget/IOplusCustomizeTextViewFeature;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "OplusCustomizeTextViewFeature"

.field private static blacklist sOplusCustomizeRestrictionManager:Landroid/os/customize/OplusCustomizeRestrictionManager;

.field private static blacklist sOplusCustomizeTextViewFeature:Landroid/widget/OplusCustomizeTextViewFeature;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 26
    const/4 v0, 0x0

    sput-object v0, Landroid/widget/OplusCustomizeTextViewFeature;->sOplusCustomizeTextViewFeature:Landroid/widget/OplusCustomizeTextViewFeature;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static declared-synchronized blacklist getInstance()Landroid/widget/OplusCustomizeTextViewFeature;
    .locals 2

    const-class v0, Landroid/widget/OplusCustomizeTextViewFeature;

    monitor-enter v0

    .line 33
    :try_start_0
    sget-object v1, Landroid/widget/OplusCustomizeTextViewFeature;->sOplusCustomizeTextViewFeature:Landroid/widget/OplusCustomizeTextViewFeature;

    if-nez v1, :cond_0

    .line 34
    new-instance v1, Landroid/widget/OplusCustomizeTextViewFeature;

    invoke-direct {v1}, Landroid/widget/OplusCustomizeTextViewFeature;-><init>()V

    sput-object v1, Landroid/widget/OplusCustomizeTextViewFeature;->sOplusCustomizeTextViewFeature:Landroid/widget/OplusCustomizeTextViewFeature;

    .line 36
    :cond_0
    sget-object v1, Landroid/widget/OplusCustomizeTextViewFeature;->sOplusCustomizeTextViewFeature:Landroid/widget/OplusCustomizeTextViewFeature;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 32
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public blacklist getClipboardStatus()Z
    .locals 1

    .line 44
    sget-object v0, Landroid/widget/OplusCustomizeTextViewFeature;->sOplusCustomizeRestrictionManager:Landroid/os/customize/OplusCustomizeRestrictionManager;

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getClipboardStatus()Z

    move-result v0

    return v0

    .line 47
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    invoke-static {p1}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getInstance(Landroid/content/Context;)Landroid/os/customize/OplusCustomizeRestrictionManager;

    move-result-object v0

    sput-object v0, Landroid/widget/OplusCustomizeTextViewFeature;->sOplusCustomizeRestrictionManager:Landroid/os/customize/OplusCustomizeRestrictionManager;

    .line 41
    return-void
.end method
