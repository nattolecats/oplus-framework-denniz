.class public Lcom/android/internal/telephony/OplusLocationListener;
.super Ljava/lang/Object;
.source "OplusLocationListener.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/OplusLocationListener$MyHandler;
    }
.end annotation


# static fields
.field private static final blacklist EVENT_GET_LOC_TIMEOUT:I = 0xcb

.field private static final blacklist EVENT_INITIAL_LOC_INFO:I = 0xca

.field private static final blacklist EVENT_INIT_LOCACTION_ADD:I = 0xcc

.field private static final blacklist EVENT_LOCACTION_CHANGED_CB:I = 0xc9

.field private static final blacklist INTERVAL_NLP_REPORT_TIMEOUT:I = 0xea60

.field private static final blacklist TAG:Ljava/lang/String; = "OplusLocationListener"

.field private static blacklist mHt:Landroid/os/HandlerThread;

.field private static blacklist sInstance:Lcom/android/internal/telephony/OplusLocationListener;


# instance fields
.field private blacklist MAX_LOCATION_RETRY_TIMES:I

.field private blacklist MXT_RETRY_TIMES:I

.field private blacklist mAdd:Landroid/location/Address;

.field private blacklist mCity:Ljava/lang/String;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mGeocoder:Landroid/location/Geocoder;

.field private blacklist mHandler:Lcom/android/internal/telephony/OplusLocationListener$MyHandler;

.field private blacklist mInitailLocationInfo:Ljava/lang/Runnable;

.field private final blacklist mLocRegistrants:Landroid/os/RegistrantList;

.field private blacklist mLocationManager:Landroid/location/LocationManager;

.field private blacklist mProvince:Ljava/lang/String;

.field private blacklist mRetryCounter:I

.field private blacklist mRetryLocCounter:I

.field private blacklist mlocation:Landroid/location/Location;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/android/internal/telephony/OplusLocationListener;)Lcom/android/internal/telephony/OplusLocationListener$MyHandler;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/telephony/OplusLocationListener;->mHandler:Lcom/android/internal/telephony/OplusLocationListener$MyHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLocationManager(Lcom/android/internal/telephony/OplusLocationListener;)Landroid/location/LocationManager;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/telephony/OplusLocationListener;->mLocationManager:Landroid/location/LocationManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$minitLocationAdd(Lcom/android/internal/telephony/OplusLocationListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/OplusLocationListener;->initLocationAdd()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogd(Lcom/android/internal/telephony/OplusLocationListener;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/OplusLocationListener;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/OplusLocationListener;->sInstance:Lcom/android/internal/telephony/OplusLocationListener;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 200
    invoke-static {}, Lcom/android/internal/telephony/OplusLocationListener;->getHandlerThread()Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/OplusLocationListener;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 201
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/OplusLocationListener;->mLocRegistrants:Landroid/os/RegistrantList;

    .line 52
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/internal/telephony/OplusLocationListener;->MXT_RETRY_TIMES:I

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/OplusLocationListener;->mRetryCounter:I

    .line 55
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/internal/telephony/OplusLocationListener;->MAX_LOCATION_RETRY_TIMES:I

    .line 56
    iput v0, p0, Lcom/android/internal/telephony/OplusLocationListener;->mRetryLocCounter:I

    .line 182
    new-instance v0, Lcom/android/internal/telephony/OplusLocationListener$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/OplusLocationListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/OplusLocationListener;)V

    iput-object v0, p0, Lcom/android/internal/telephony/OplusLocationListener;->mInitailLocationInfo:Ljava/lang/Runnable;

    .line 205
    iput-object p1, p0, Lcom/android/internal/telephony/OplusLocationListener;->mContext:Landroid/content/Context;

    .line 206
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/internal/telephony/OplusLocationListener;->mLocationManager:Landroid/location/LocationManager;

    .line 207
    new-instance v0, Lcom/android/internal/telephony/OplusLocationListener$MyHandler;

    invoke-direct {v0, p0, p2}, Lcom/android/internal/telephony/OplusLocationListener$MyHandler;-><init>(Lcom/android/internal/telephony/OplusLocationListener;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/OplusLocationListener;->mHandler:Lcom/android/internal/telephony/OplusLocationListener$MyHandler;

    .line 208
    iget-object v0, p0, Lcom/android/internal/telephony/OplusLocationListener;->mInitailLocationInfo:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 209
    const-string v0, "OplusLocationListener Created"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/OplusLocationListener;->logd(Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public static blacklist create(Landroid/content/Context;)Lcom/android/internal/telephony/OplusLocationListener;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 221
    const-class v0, Lcom/android/internal/telephony/OplusLocationListener;

    monitor-enter v0

    .line 222
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/OplusLocationListener;->sInstance:Lcom/android/internal/telephony/OplusLocationListener;

    if-nez v1, :cond_0

    .line 223
    new-instance v1, Lcom/android/internal/telephony/OplusLocationListener;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/OplusLocationListener;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/internal/telephony/OplusLocationListener;->sInstance:Lcom/android/internal/telephony/OplusLocationListener;

    .line 225
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/OplusLocationListener;->sInstance:Lcom/android/internal/telephony/OplusLocationListener;

    monitor-exit v0

    return-object v1

    .line 226
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static blacklist create(Landroid/content/Context;Landroid/os/Looper;)Lcom/android/internal/telephony/OplusLocationListener;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "looper"    # Landroid/os/Looper;

    .line 231
    const-class v0, Lcom/android/internal/telephony/OplusLocationListener;

    monitor-enter v0

    .line 232
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/OplusLocationListener;->sInstance:Lcom/android/internal/telephony/OplusLocationListener;

    if-nez v1, :cond_0

    .line 233
    new-instance v1, Lcom/android/internal/telephony/OplusLocationListener;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/OplusLocationListener;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    sput-object v1, Lcom/android/internal/telephony/OplusLocationListener;->sInstance:Lcom/android/internal/telephony/OplusLocationListener;

    .line 235
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/OplusLocationListener;->sInstance:Lcom/android/internal/telephony/OplusLocationListener;

    monitor-exit v0

    return-object v1

    .line 236
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist getCurrLocation()Landroid/location/Location;
    .locals 3

    .line 289
    const-string v0, "network"

    const/4 v1, 0x0

    .line 290
    .local v1, "location":Landroid/location/Location;
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/OplusLocationListener;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 291
    iget-object v2, p0, Lcom/android/internal/telephony/OplusLocationListener;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 293
    :cond_0
    const-string v0, "getCurrLocation do not support gps"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/OplusLocationListener;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :goto_0
    return-object v1

    .line 296
    .end local v1    # "location":Landroid/location/Location;
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 298
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist getHandlerThread()Landroid/os/HandlerThread;
    .locals 2

    .line 241
    sget-object v0, Lcom/android/internal/telephony/OplusLocationListener;->mHt:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 242
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "OplusLocationListener"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/OplusLocationListener;->mHt:Landroid/os/HandlerThread;

    .line 243
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 245
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/OplusLocationListener;->mHt:Landroid/os/HandlerThread;

    return-object v0
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/OplusLocationListener;
    .locals 2

    .line 214
    const-class v0, Lcom/android/internal/telephony/OplusLocationListener;

    monitor-enter v0

    .line 215
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/OplusLocationListener;->sInstance:Lcom/android/internal/telephony/OplusLocationListener;

    monitor-exit v0

    return-object v1

    .line 216
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist getRetryTimeout()I
    .locals 2

    .line 169
    iget v0, p0, Lcom/android/internal/telephony/OplusLocationListener;->mRetryCounter:I

    const/4 v1, 0x1

    shl-int v0, v1, v0

    mul-int/lit16 v0, v0, 0x1f4

    return v0
.end method

.method private blacklist initLocationAdd()V
    .locals 1

    .line 157
    :try_start_0
    const-string v0, "initLocation()."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/OplusLocationListener;->logd(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/android/internal/telephony/OplusLocationListener;->mlocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 159
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/OplusLocationListener;->updateAddFromLocation(Landroid/location/Location;)Landroid/location/Address;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/OplusLocationListener;->mAdd:Landroid/location/Address;

    .line 160
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/OplusLocationListener;->updateProvinceFromAdd(Landroid/location/Address;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/OplusLocationListener;->mProvince:Ljava/lang/String;

    .line 161
    iget-object v0, p0, Lcom/android/internal/telephony/OplusLocationListener;->mAdd:Landroid/location/Address;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/OplusLocationListener;->updateCityFromAdd(Landroid/location/Address;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/OplusLocationListener;->mCity:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :cond_0
    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 166
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 325
    const-string v0, "OplusLocationListener"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    return-void
.end method

.method private blacklist retryInitailLocationInfo()V
    .locals 4

    .line 173
    iget v0, p0, Lcom/android/internal/telephony/OplusLocationListener;->mRetryCounter:I

    iget v1, p0, Lcom/android/internal/telephony/OplusLocationListener;->MXT_RETRY_TIMES:I

    if-le v0, v1, :cond_0

    .line 174
    const-string v0, "retry max time was hit."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/OplusLocationListener;->logd(Ljava/lang/String;)V

    .line 175
    return-void

    .line 177
    :cond_0
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/OplusLocationListener;->mRetryCounter:I

    .line 178
    iget-object v0, p0, Lcom/android/internal/telephony/OplusLocationListener;->mHandler:Lcom/android/internal/telephony/OplusLocationListener$MyHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/OplusLocationListener;->mInitailLocationInfo:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/telephony/OplusLocationListener;->getRetryTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/OplusLocationListener$MyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 179
    return-void
.end method

.method private blacklist updateAddFromLocation(Landroid/location/Location;)Landroid/location/Address;
    .locals 8
    .param p1, "location"    # Landroid/location/Location;

    .line 272
    const/4 v0, 0x0

    .line 273
    .local v0, "addList":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    const/4 v1, 0x0

    .line 275
    .local v1, "add":Landroid/location/Address;
    if-eqz p1, :cond_0

    .line 276
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/OplusLocationListener;->mGeocoder:Landroid/location/Geocoder;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 280
    :catch_0
    move-exception v2

    goto :goto_1

    .line 277
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 278
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Address;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_2

    .line 281
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 282
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    nop

    .line 283
    :goto_3
    if-eqz v1, :cond_2

    move-object v2, v1

    goto :goto_4

    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/OplusLocationListener;->mAdd:Landroid/location/Address;

    :goto_4
    return-object v2
.end method

.method private blacklist updateCityFromAdd(Landroid/location/Address;)Ljava/lang/String;
    .locals 3
    .param p1, "add"    # Landroid/location/Address;

    .line 250
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 251
    .local v0, "cityName":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 252
    invoke-static {v0}, Lcom/android/internal/telephony/nrNetwork/OplusNrUtils;->isChinese(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 253
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/nrNetwork/OplusNrUtils;->stringToUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    .line 252
    :goto_1
    return-object v1

    .line 255
    :cond_2
    return-object v0
.end method

.method private blacklist updateProvinceFromAdd(Landroid/location/Address;)Ljava/lang/String;
    .locals 3
    .param p1, "add"    # Landroid/location/Address;

    .line 261
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 262
    .local v0, "provinceName":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 263
    invoke-static {v0}, Lcom/android/internal/telephony/nrNetwork/OplusNrUtils;->isChinese(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 264
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/nrNetwork/OplusNrUtils;->stringToUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    .line 263
    :goto_1
    return-object v1

    .line 266
    :cond_2
    return-object v0
.end method


# virtual methods
.method public blacklist getCity()Ljava/lang/String;
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/android/internal/telephony/OplusLocationListener;->mCity:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getProvince()Ljava/lang/String;
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/android/internal/telephony/OplusLocationListener;->mProvince:Ljava/lang/String;

    return-object v0
.end method

.method synthetic blacklist lambda$new$0$com-android-internal-telephony-OplusLocationListener()V
    .locals 4

    .line 184
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mInitailLocationInfo mRetryCounter = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/OplusLocationListener;->mRetryCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " getRetryTimeout = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/telephony/OplusLocationListener;->getRetryTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/OplusLocationListener;->logd(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/android/internal/telephony/OplusLocationListener;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NETWORK_PROVIDER not ready yet : mRetryCounter = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/OplusLocationListener;->mRetryCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/OplusLocationListener;->logd(Ljava/lang/String;)V

    .line 187
    invoke-direct {p0}, Lcom/android/internal/telephony/OplusLocationListener;->retryInitailLocationInfo()V

    .line 188
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/OplusLocationListener;->mHandler:Lcom/android/internal/telephony/OplusLocationListener$MyHandler;

    const/16 v1, 0xca

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/OplusLocationListener$MyHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    goto :goto_0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OplusLocationListener ex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/OplusLocationListener;->logd(Ljava/lang/String;)V

    .line 194
    invoke-direct {p0}, Lcom/android/internal/telephony/OplusLocationListener;->retryInitailLocationInfo()V

    .line 196
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :goto_0
    return-void
.end method

.method protected blacklist notifyLocChanged(Landroid/location/Location;)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    .line 69
    const-string v0, "notifyLocChanged"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/OplusLocationListener;->logd(Ljava/lang/String;)V

    .line 70
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 71
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/OplusLocationListener;->mLocRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 72
    return-void
.end method

.method protected blacklist onInitailLocationInfo()V
    .locals 8

    .line 304
    const-string v0, "onInitailLocationInfo : begin"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/OplusLocationListener;->logd(Ljava/lang/String;)V

    .line 305
    new-instance v0, Landroid/location/Geocoder;

    iget-object v1, p0, Lcom/android/internal/telephony/OplusLocationListener;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/OplusLocationListener;->mGeocoder:Landroid/location/Geocoder;

    .line 306
    invoke-direct {p0}, Lcom/android/internal/telephony/OplusLocationListener;->getCurrLocation()Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/OplusLocationListener;->mlocation:Landroid/location/Location;

    .line 307
    iget-object v0, p0, Lcom/android/internal/telephony/OplusLocationListener;->mHandler:Lcom/android/internal/telephony/OplusLocationListener$MyHandler;

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/OplusLocationListener$MyHandler;->sendEmptyMessage(I)Z

    .line 308
    iget-object v2, p0, Lcom/android/internal/telephony/OplusLocationListener;->mLocationManager:Landroid/location/LocationManager;

    const-string v3, "network"

    const-wide/16 v4, 0x3e8

    const/high16 v6, 0x42480000    # 50.0f

    move-object v7, p0

    invoke-virtual/range {v2 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 309
    iget-object v0, p0, Lcom/android/internal/telephony/OplusLocationListener;->mHandler:Lcom/android/internal/telephony/OplusLocationListener$MyHandler;

    const/16 v1, 0xcb

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/OplusLocationListener$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 310
    const-string v0, "onInitailLocationInfo : end"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/OplusLocationListener;->logd(Ljava/lang/String;)V

    .line 311
    return-void
.end method

.method public whitelist onLocationChanged(Landroid/location/Location;)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    .line 77
    const-string v0, "onLocationChanged()."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/OplusLocationListener;->logd(Ljava/lang/String;)V

    .line 78
    if-eqz p1, :cond_0

    .line 79
    iput-object p1, p0, Lcom/android/internal/telephony/OplusLocationListener;->mlocation:Landroid/location/Location;

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/OplusLocationListener;->mHandler:Lcom/android/internal/telephony/OplusLocationListener$MyHandler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/OplusLocationListener$MyHandler;->sendEmptyMessage(I)Z

    .line 82
    return-void
.end method

.method public blacklist onLocationChangedCallback()V
    .locals 8

    .line 87
    :try_start_0
    const-string v0, "onLocationChangedCallback()."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/OplusLocationListener;->logd(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/android/internal/telephony/OplusLocationListener;->mlocation:Landroid/location/Location;

    const/16 v1, 0xcb

    if-eqz v0, :cond_0

    .line 89
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/OplusLocationListener;->updateAddFromLocation(Landroid/location/Location;)Landroid/location/Address;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/OplusLocationListener;->mAdd:Landroid/location/Address;

    .line 90
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/OplusLocationListener;->updateProvinceFromAdd(Landroid/location/Address;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/OplusLocationListener;->mProvince:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/android/internal/telephony/OplusLocationListener;->mAdd:Landroid/location/Address;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/OplusLocationListener;->updateCityFromAdd(Landroid/location/Address;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/OplusLocationListener;->mCity:Ljava/lang/String;

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/OplusLocationListener;->mRetryLocCounter:I

    goto :goto_0

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLocationChangedCallback : mRetryLocCounter = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/OplusLocationListener;->mRetryLocCounter:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/telephony/OplusLocationListener;->mRetryLocCounter:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/OplusLocationListener;->logd(Ljava/lang/String;)V

    .line 95
    iget v0, p0, Lcom/android/internal/telephony/OplusLocationListener;->mRetryLocCounter:I

    iget v2, p0, Lcom/android/internal/telephony/OplusLocationListener;->MAX_LOCATION_RETRY_TIMES:I

    if-ge v0, v2, :cond_2

    .line 96
    iget-object v0, p0, Lcom/android/internal/telephony/OplusLocationListener;->mHandler:Lcom/android/internal/telephony/OplusLocationListener$MyHandler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/OplusLocationListener$MyHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/android/internal/telephony/OplusLocationListener;->mHandler:Lcom/android/internal/telephony/OplusLocationListener$MyHandler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/OplusLocationListener$MyHandler;->removeMessages(I)V

    .line 98
    const-string v0, "onLocationChangedCallback Remove EVENT_GET_LOC_TIMEOUT!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/OplusLocationListener;->logd(Ljava/lang/String;)V

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/OplusLocationListener;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 101
    iget-object v2, p0, Lcom/android/internal/telephony/OplusLocationListener;->mLocationManager:Landroid/location/LocationManager;

    const-string v3, "network"

    const-wide/16 v4, 0x3e8

    const/high16 v6, 0x42480000    # 50.0f

    move-object v7, p0

    invoke-virtual/range {v2 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 103
    iget-object v0, p0, Lcom/android/internal/telephony/OplusLocationListener;->mHandler:Lcom/android/internal/telephony/OplusLocationListener$MyHandler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/OplusLocationListener$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 104
    return-void

    .line 107
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/OplusLocationListener;->mlocation:Landroid/location/Location;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/OplusLocationListener;->notifyLocChanged(Landroid/location/Location;)V

    .line 108
    iget-object v0, p0, Lcom/android/internal/telephony/OplusLocationListener;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 109
    iget-object v0, p0, Lcom/android/internal/telephony/OplusLocationListener;->mHandler:Lcom/android/internal/telephony/OplusLocationListener$MyHandler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/OplusLocationListener$MyHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 110
    iget-object v0, p0, Lcom/android/internal/telephony/OplusLocationListener;->mHandler:Lcom/android/internal/telephony/OplusLocationListener$MyHandler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/OplusLocationListener$MyHandler;->removeMessages(I)V

    .line 111
    const-string v0, "onSetReq Remove EVENT_GET_LOC_TIMEOUT!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/OplusLocationListener;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :cond_3
    goto :goto_1

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 117
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/OplusLocationListener;->mHandler:Lcom/android/internal/telephony/OplusLocationListener$MyHandler;

    new-instance v1, Lcom/android/internal/telephony/OplusLocationListener$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/OplusLocationListener$1;-><init>(Lcom/android/internal/telephony/OplusLocationListener;)V

    const-wide/32 v2, 0x6ddd00

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/OplusLocationListener$MyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 126
    return-void
.end method

.method public blacklist registerForLocChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/android/internal/telephony/OplusLocationListener;->mLocRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 60
    return-void
.end method

.method public blacklist unregisterForLocChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 64
    iget-object v0, p0, Lcom/android/internal/telephony/OplusLocationListener;->mLocRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 65
    return-void
.end method
