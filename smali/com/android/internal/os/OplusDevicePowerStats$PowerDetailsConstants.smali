.class Lcom/android/internal/os/OplusDevicePowerStats$PowerDetailsConstants;
.super Landroid/database/ContentObserver;
.source "OplusDevicePowerStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/OplusDevicePowerStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PowerDetailsConstants"
.end annotation


# static fields
.field public static final blacklist KEY_DISPLAY_REF_MODE:Ljava/lang/String; = "coloros_screen_refresh_rate"

.field public static final blacklist KEY_VOL_MUSIC_SPK:Ljava/lang/String; = "volume_music_speaker"

.field public static final blacklist TAG:Ljava/lang/String; = "OplusDevicePowerStats"


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mResolver:Landroid/content/ContentResolver;

.field final synthetic blacklist this$0:Lcom/android/internal/os/OplusDevicePowerStats;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/os/OplusDevicePowerStats;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .line 299
    iput-object p1, p0, Lcom/android/internal/os/OplusDevicePowerStats$PowerDetailsConstants;->this$0:Lcom/android/internal/os/OplusDevicePowerStats;

    .line 300
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 301
    return-void
.end method

.method private blacklist updateConstants()V
    .locals 4

    .line 319
    iget-object v0, p0, Lcom/android/internal/os/OplusDevicePowerStats$PowerDetailsConstants;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 320
    const-string v0, "OplusDevicePowerStats"

    const-string v1, "Context is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    return-void

    .line 323
    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/OplusDevicePowerStats$PowerDetailsConstants;->this$0:Lcom/android/internal/os/OplusDevicePowerStats;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "coloros_screen_refresh_rate"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v1, v0}, Lcom/android/internal/os/OplusDevicePowerStats;->-$$Nest$fputmScreenRefreshMode(Lcom/android/internal/os/OplusDevicePowerStats;I)V

    .line 324
    iget-object v0, p0, Lcom/android/internal/os/OplusDevicePowerStats$PowerDetailsConstants;->this$0:Lcom/android/internal/os/OplusDevicePowerStats;

    iget-object v1, p0, Lcom/android/internal/os/OplusDevicePowerStats$PowerDetailsConstants;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, -0x1

    const-string v3, "volume_music_speaker"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/os/OplusDevicePowerStats;->-$$Nest$fputmVolumeMusicSpeaker(Lcom/android/internal/os/OplusDevicePowerStats;I)V

    .line 328
    iget-object v0, p0, Lcom/android/internal/os/OplusDevicePowerStats$PowerDetailsConstants;->this$0:Lcom/android/internal/os/OplusDevicePowerStats;

    invoke-static {v0}, Lcom/android/internal/os/OplusDevicePowerStats;->-$$Nest$fgetmCurOplusDevicePowerDetails(Lcom/android/internal/os/OplusDevicePowerStats;)Lcom/android/internal/os/OplusDevicePowerStats$DevicePowerDetails;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/OplusDevicePowerStats$PowerDetailsConstants;->this$0:Lcom/android/internal/os/OplusDevicePowerStats;

    invoke-static {v1}, Lcom/android/internal/os/OplusDevicePowerStats;->-$$Nest$fgetmScreenRefreshMode(Lcom/android/internal/os/OplusDevicePowerStats;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/os/OplusDevicePowerStats$DevicePowerDetails;->mRefreshRateSetting:I

    .line 329
    iget-object v0, p0, Lcom/android/internal/os/OplusDevicePowerStats$PowerDetailsConstants;->this$0:Lcom/android/internal/os/OplusDevicePowerStats;

    invoke-static {v0}, Lcom/android/internal/os/OplusDevicePowerStats;->-$$Nest$fgetmCurOplusDevicePowerDetails(Lcom/android/internal/os/OplusDevicePowerStats;)Lcom/android/internal/os/OplusDevicePowerStats$DevicePowerDetails;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/OplusDevicePowerStats$PowerDetailsConstants;->this$0:Lcom/android/internal/os/OplusDevicePowerStats;

    invoke-static {v1}, Lcom/android/internal/os/OplusDevicePowerStats;->-$$Nest$fgetmVolumeMusicSpeaker(Lcom/android/internal/os/OplusDevicePowerStats;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/os/OplusDevicePowerStats$DevicePowerDetails;->mVolumeMusicSpeaker:I

    .line 335
    return-void
.end method


# virtual methods
.method public whitelist onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 305
    invoke-direct {p0}, Lcom/android/internal/os/OplusDevicePowerStats$PowerDetailsConstants;->updateConstants()V

    .line 306
    return-void
.end method

.method public blacklist startObserving(Landroid/content/Context;Landroid/content/ContentResolver;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resolver"    # Landroid/content/ContentResolver;

    .line 309
    iput-object p1, p0, Lcom/android/internal/os/OplusDevicePowerStats$PowerDetailsConstants;->mContext:Landroid/content/Context;

    .line 310
    iput-object p2, p0, Lcom/android/internal/os/OplusDevicePowerStats$PowerDetailsConstants;->mResolver:Landroid/content/ContentResolver;

    .line 311
    const-string v0, "coloros_screen_refresh_rate"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 313
    iget-object v0, p0, Lcom/android/internal/os/OplusDevicePowerStats$PowerDetailsConstants;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "volume_music_speaker"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 314
    invoke-direct {p0}, Lcom/android/internal/os/OplusDevicePowerStats$PowerDetailsConstants;->updateConstants()V

    .line 315
    return-void
.end method
