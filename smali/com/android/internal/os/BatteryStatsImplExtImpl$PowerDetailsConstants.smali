.class Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsConstants;
.super Landroid/database/ContentObserver;
.source "BatteryStatsImplExtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImplExtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PowerDetailsConstants"
.end annotation


# static fields
.field public static final blacklist KEY_DISPLAY_REF_MODE:Ljava/lang/String; = "coloros_screen_refresh_rate"

.field public static final blacklist KEY_VOL_MUSIC_SPK:Ljava/lang/String; = "volume_music_speaker"

.field public static final blacklist TAG:Ljava/lang/String; = "BatteryStatsImplExtImpl"


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mResolver:Landroid/content/ContentResolver;

.field final synthetic blacklist this$0:Lcom/android/internal/os/BatteryStatsImplExtImpl;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/os/BatteryStatsImplExtImpl;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .line 438
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsConstants;->this$0:Lcom/android/internal/os/BatteryStatsImplExtImpl;

    .line 439
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 440
    return-void
.end method

.method private blacklist updateConstants()V
    .locals 5

    .line 458
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsConstants;->mContext:Landroid/content/Context;

    const-string v1, "BatteryStatsImplExtImpl"

    if-nez v0, :cond_0

    .line 459
    const-string v0, "Context is null"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    return-void

    .line 462
    :cond_0
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsConstants;->this$0:Lcom/android/internal/os/BatteryStatsImplExtImpl;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const-string v4, "coloros_screen_refresh_rate"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v2, v0}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->-$$Nest$fputmScreenRefreshMode(Lcom/android/internal/os/BatteryStatsImplExtImpl;I)V

    .line 463
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsConstants;->this$0:Lcom/android/internal/os/BatteryStatsImplExtImpl;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsConstants;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, -0x1

    const-string v4, "volume_music_speaker"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->-$$Nest$fputmVolumeMusicSpeaker(Lcom/android/internal/os/BatteryStatsImplExtImpl;I)V

    .line 467
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsConstants;->this$0:Lcom/android/internal/os/BatteryStatsImplExtImpl;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->-$$Nest$fgetmCurOplusDevicePowerDetails(Lcom/android/internal/os/BatteryStatsImplExtImpl;)Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsConstants;->this$0:Lcom/android/internal/os/BatteryStatsImplExtImpl;

    invoke-static {v2}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->-$$Nest$fgetmScreenRefreshMode(Lcom/android/internal/os/BatteryStatsImplExtImpl;)I

    move-result v2

    iput v2, v0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mRefreshRateSetting:I

    .line 468
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsConstants;->this$0:Lcom/android/internal/os/BatteryStatsImplExtImpl;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->-$$Nest$fgetmCurOplusDevicePowerDetails(Lcom/android/internal/os/BatteryStatsImplExtImpl;)Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsConstants;->this$0:Lcom/android/internal/os/BatteryStatsImplExtImpl;

    invoke-static {v2}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->-$$Nest$fgetmVolumeMusicSpeaker(Lcom/android/internal/os/BatteryStatsImplExtImpl;)I

    move-result v2

    iput v2, v0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mVolumeMusicSpeaker:I

    .line 469
    sget-boolean v0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_1

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refresh mode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsConstants;->this$0:Lcom/android/internal/os/BatteryStatsImplExtImpl;

    invoke-static {v2}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->-$$Nest$fgetmScreenRefreshMode(Lcom/android/internal/os/BatteryStatsImplExtImpl;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vol_music_sp = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsConstants;->this$0:Lcom/android/internal/os/BatteryStatsImplExtImpl;

    invoke-static {v2}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->-$$Nest$fgetmVolumeMusicSpeaker(Lcom/android/internal/os/BatteryStatsImplExtImpl;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_1
    return-void
.end method


# virtual methods
.method public whitelist onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 444
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsConstants;->updateConstants()V

    .line 445
    return-void
.end method

.method public blacklist startObserving(Landroid/content/Context;Landroid/content/ContentResolver;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resolver"    # Landroid/content/ContentResolver;

    .line 448
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsConstants;->mContext:Landroid/content/Context;

    .line 449
    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsConstants;->mResolver:Landroid/content/ContentResolver;

    .line 450
    const-string v0, "coloros_screen_refresh_rate"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 452
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsConstants;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "volume_music_speaker"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 453
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsConstants;->updateConstants()V

    .line 454
    return-void
.end method
