.class public final enum Landroid/os/OneTraceExtImpl;
.super Ljava/lang/Enum;
.source "OneTraceExtImpl.java"

# interfaces
.implements Landroid/os/IOneTraceExt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/OneTraceExtImpl$LazyLoadDescriptorMap;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/os/OneTraceExtImpl;",
        ">;",
        "Landroid/os/IOneTraceExt;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/os/OneTraceExtImpl;

.field public static final enum blacklist INSTANCE:Landroid/os/OneTraceExtImpl;

.field private static final blacklist INTERFACE_LIST:[Ljava/lang/String;

.field private static final blacklist IS_AGING_VERSION:Z

.field private static final blacklist ONETRACE_LIB:Ljava/lang/String; = "onetrace_jni"

.field private static final blacklist TAG:Ljava/lang/String; = "OneTrace"

.field private static final blacklist TRACE_TAG_HANDLE:Landroid/os/SystemProperties$Handle;

.field private static volatile blacklist sMarkActiveInProcess:Z

.field private static volatile blacklist sOneTraceJniNotImplement:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetINTERFACE_LIST()[Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/OneTraceExtImpl;->INTERFACE_LIST:[Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 35

    .line 33
    new-instance v0, Landroid/os/OneTraceExtImpl;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/os/OneTraceExtImpl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/OneTraceExtImpl;->INSTANCE:Landroid/os/OneTraceExtImpl;

    .line 29
    const/4 v1, 0x1

    new-array v3, v1, [Landroid/os/OneTraceExtImpl;

    aput-object v0, v3, v2

    sput-object v3, Landroid/os/OneTraceExtImpl;->$VALUES:[Landroid/os/OneTraceExtImpl;

    .line 37
    const-string v4, "android.app.IAlarmManager"

    const-string v5, "android.app.IActivityManager"

    const-string v6, "android.app.IApplicationThread"

    const-string v7, "android.content.pm.IPackageManager"

    const-string v8, "android.os.IServiceManager"

    const-string v9, "android.view.accessibility.IAccessibilityManagerClient"

    const-string v10, "android.content.IContentProvider"

    const-string v11, "android.net.INetworkStatsService"

    const-string v12, "android.net.IConnectivityManager"

    const-string v13, "android.os.storage.IStorageManager"

    const-string v14, "android.view.IWindowSession"

    const-string v15, "android.permission.IPermissionManager"

    const-string v16, "com.android.internal.telephony.ITelephony"

    const-string v17, "android.media.IPlaybackConfigDispatcher"

    const-string v18, "android.view.accessibility.IAccessibilityManager"

    const-string v19, "android.os.IOplusExInputCallBack"

    const-string v20, "android.content.IBulkCursor"

    const-string v21, "android.bluetooth.le.IScannerCallback"

    const-string v22, "com.android.internal.app.IAppOpsService"

    const-string v23, "android.content.IContentService"

    const-string v24, "android.net.metrics.INetdEventListener"

    const-string v25, "android.view.IWindowManager"

    const-string v26, "android.hardware.input.IInputManager"

    const-string v27, "android.os.IOplusTraceService"

    const-string v28, "android.os.IOplusTraceCallBack"

    const-string v29, "android.location.IGnssStatusListener"

    const-string v30, "com.android.internal.app.IBatteryStats"

    const-string v31, "com.android.internal.app.IAppOpsNotedCallback"

    const-string v32, "android.hardware.display.IDisplayManagerCallback"

    const-string v33, "android.os.IOplusFilterListener"

    const-string v34, "android.database.IContentObserver"

    filled-new-array/range {v4 .. v34}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/OneTraceExtImpl;->INTERFACE_LIST:[Ljava/lang/String;

    .line 74
    nop

    .line 75
    const-string v0, "debug.onetrace.tag"

    invoke-static {v0}, Landroid/os/SystemProperties;->find(Ljava/lang/String;)Landroid/os/SystemProperties$Handle;

    move-result-object v0

    sput-object v0, Landroid/os/OneTraceExtImpl;->TRACE_TAG_HANDLE:Landroid/os/SystemProperties$Handle;

    .line 80
    nop

    .line 81
    const-string v0, "persist.sys.agingtest"

    const-string v3, "0"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/os/OneTraceExtImpl;->IS_AGING_VERSION:Z

    .line 83
    sput-boolean v2, Landroid/os/OneTraceExtImpl;->sMarkActiveInProcess:Z

    .line 84
    sput-boolean v2, Landroid/os/OneTraceExtImpl;->sOneTraceJniNotImplement:Z

    .line 88
    :try_start_0
    const-string v0, "onetrace_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v2, "OneTrace"

    const-string v3, "Failed to LoadLibrary onetrace_jni"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    sput-boolean v1, Landroid/os/OneTraceExtImpl;->sOneTraceJniNotImplement:Z

    .line 93
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static blacklist ashmemValid(I)Z
    .locals 5
    .param p0, "fd"    # I

    .line 252
    sget-boolean v0, Landroid/os/OneTraceExtImpl;->sOneTraceJniNotImplement:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 253
    return v1

    .line 256
    :cond_0
    const/4 v0, 0x1

    .line 259
    .local v0, "isValid":Z
    :try_start_0
    invoke-static {p0}, Landroid/os/OneTraceExtImpl;->nativeAshmemValid(I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 263
    goto :goto_0

    .line 260
    :catch_0
    move-exception v2

    .line 261
    .local v2, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v3, "OneTrace"

    const-string v4, "Onetrace ashmemValid jni was not implemented in android runtime"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    sput-boolean v1, Landroid/os/OneTraceExtImpl;->sOneTraceJniNotImplement:Z

    .line 265
    .end local v2    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return v0
.end method

.method private static blacklist isOneTraceEnable(J)Z
    .locals 8
    .param p0, "traceTag"    # J

    .line 123
    sget-boolean v0, Landroid/os/OneTraceExtImpl;->IS_AGING_VERSION:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 124
    return v1

    .line 126
    :cond_0
    sget-boolean v0, Landroid/os/OneTraceExtImpl;->sMarkActiveInProcess:Z

    if-nez v0, :cond_1

    .line 127
    return v1

    .line 130
    :cond_1
    sget-object v0, Landroid/os/OneTraceExtImpl;->TRACE_TAG_HANDLE:Landroid/os/SystemProperties$Handle;

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2, v3}, Landroid/os/SystemProperties$Handle;->getLong(J)J

    move-result-wide v4

    goto :goto_0

    .line 131
    :cond_2
    const-string v0, "debug.onetrace.tag"

    invoke-static {v0, v2, v3}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    :goto_0
    nop

    .line 132
    .local v4, "tags":J
    and-long v6, v4, p0

    cmp-long v0, v6, v2

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private static blacklist isTraceHandleByNative(J)Z
    .locals 8
    .param p0, "traceTag"    # J

    .line 136
    sget-boolean v0, Landroid/os/OneTraceExtImpl;->sOneTraceJniNotImplement:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 137
    return v1

    .line 140
    :cond_0
    const-wide/16 v2, 0x0

    .line 142
    .local v2, "tags":J
    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/OneTraceExtImpl;->nativeOneTraceGetEnabledTags()J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v2, v4

    .line 146
    goto :goto_0

    .line 143
    :catch_0
    move-exception v4

    .line 144
    .local v4, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v5, "OneTrace"

    const-string v6, "Onetrace jni was not implemented in android runtime"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    sput-boolean v0, Landroid/os/OneTraceExtImpl;->sOneTraceJniNotImplement:Z

    .line 147
    .end local v4    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    and-long v4, v2, p0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    move v1, v0

    :cond_1
    return v1
.end method

.method private static native blacklist nativeAshmemValid(I)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeOneTraceBegin(JLjava/lang/String;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeOneTraceBeginAsync(JLjava/lang/String;I)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeOneTraceEnd(J)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeOneTraceEndAsync(JLjava/lang/String;I)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeOneTraceGetEnabledTags()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeRegisterCallback()V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeSetTraceContentFilter([[Ljava/lang/String;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeSetTraceEnabled(Z)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeSetTraceFilterTime(J)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static blacklist oneTraceBegin(JLjava/lang/String;)V
    .locals 1
    .param p0, "traceTag"    # J
    .param p2, "methodName"    # Ljava/lang/String;

    .line 160
    invoke-static {p0, p1}, Landroid/os/OneTraceExtImpl;->isTraceHandleByNative(J)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Landroid/os/OneTraceExtImpl;->isOneTraceEnable(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-static {p2}, Landroid/os/OplusTraceManager;->oneTraceBegin(Ljava/lang/String;)V

    .line 163
    :cond_0
    return-void
.end method

.method private static blacklist oneTraceBeginAsync(JLjava/lang/String;I)V
    .locals 1
    .param p0, "traceTag"    # J
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "cookie"    # I

    .line 172
    invoke-static {p0, p1}, Landroid/os/OneTraceExtImpl;->isTraceHandleByNative(J)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Landroid/os/OneTraceExtImpl;->isOneTraceEnable(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    invoke-static {p2, p3}, Landroid/os/OplusTraceManager;->oneTraceBeginAsync(Ljava/lang/String;I)V

    .line 175
    :cond_0
    return-void
.end method

.method private static blacklist oneTraceEnd(J)V
    .locals 1
    .param p0, "traceTag"    # J

    .line 166
    invoke-static {p0, p1}, Landroid/os/OneTraceExtImpl;->isTraceHandleByNative(J)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Landroid/os/OneTraceExtImpl;->isOneTraceEnable(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-static {}, Landroid/os/OplusTraceManager;->oneTraceEnd()V

    .line 169
    :cond_0
    return-void
.end method

.method private static blacklist oneTraceEndAsync(JLjava/lang/String;I)V
    .locals 1
    .param p0, "traceTag"    # J
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "cookie"    # I

    .line 178
    invoke-static {p0, p1}, Landroid/os/OneTraceExtImpl;->isTraceHandleByNative(J)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Landroid/os/OneTraceExtImpl;->isOneTraceEnable(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    invoke-static {p2, p3}, Landroid/os/OplusTraceManager;->oneTraceEndAsync(Ljava/lang/String;I)V

    .line 181
    :cond_0
    return-void
.end method

.method public static blacklist oneTraceNativeCacheFlush(Ljava/io/FileDescriptor;ILjava/util/Map;)V
    .locals 0
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "length"    # I
    .param p2, "threadMap"    # Ljava/util/Map;

    .line 301
    invoke-static {p0, p1, p2}, Landroid/os/OplusTraceManager;->handleFileDescriptor(Ljava/io/FileDescriptor;ILjava/util/Map;)V

    .line 302
    return-void
.end method

.method static blacklist oneTraceRegisterCallback()V
    .locals 3

    .line 194
    sget-boolean v0, Landroid/os/OneTraceExtImpl;->sOneTraceJniNotImplement:Z

    if-eqz v0, :cond_0

    .line 195
    return-void

    .line 199
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/OneTraceExtImpl;->nativeRegisterCallback()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "OneTrace"

    const-string v2, "Onetrace jni was not implemented in android runtime"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/4 v1, 0x1

    sput-boolean v1, Landroid/os/OneTraceExtImpl;->sOneTraceJniNotImplement:Z

    .line 204
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void
.end method

.method static blacklist oneTraceSetTraceEnabled(Z)V
    .locals 3
    .param p0, "enabled"    # Z

    .line 207
    sget-boolean v0, Landroid/os/OneTraceExtImpl;->sOneTraceJniNotImplement:Z

    if-eqz v0, :cond_0

    .line 208
    return-void

    .line 212
    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/os/OneTraceExtImpl;->nativeSetTraceEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    goto :goto_0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "OneTrace"

    const-string v2, "Onetrace jni was not implemented in android runtime"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const/4 v1, 0x1

    sput-boolean v1, Landroid/os/OneTraceExtImpl;->sOneTraceJniNotImplement:Z

    .line 217
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void
.end method

.method private static blacklist stringMapToNative(Ljava/util/Map;)[[Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)[[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 279
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v0, "OneTrace"

    const/4 v1, 0x2

    if-nez p0, :cond_0

    .line 280
    const-string v2, "map is null, returning zero-elements array"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    const-class v1, Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    return-object v0

    .line 284
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 285
    .local v2, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    .line 286
    .local v3, "len":I
    new-array v4, v1, [I

    const/4 v5, 0x1

    aput v1, v4, v5

    const/4 v1, 0x0

    aput v3, v4, v1

    const-class v6, Ljava/lang/String;

    invoke-static {v6, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Ljava/lang/String;

    .line 288
    .local v4, "arr":[[Ljava/lang/String;
    const/4 v6, 0x0

    .line 289
    .local v6, "i":I
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 290
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    aget-object v9, v4, v6

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    aput-object v10, v9, v1

    .line 291
    aget-object v9, v4, v6

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    .line 292
    nop

    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    add-int/lit8 v6, v6, 0x1

    .line 293
    goto :goto_0

    .line 295
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "converted "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " element(s)"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    return-object v4

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method static blacklist updateNativeContentFilter(Ljava/util/Map;)V
    .locals 3
    .param p0, "filter"    # Ljava/util/Map;

    .line 233
    sget-boolean v0, Landroid/os/OneTraceExtImpl;->sOneTraceJniNotImplement:Z

    if-eqz v0, :cond_0

    .line 234
    return-void

    .line 238
    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/os/OneTraceExtImpl;->stringMapToNative(Ljava/util/Map;)[[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/OneTraceExtImpl;->nativeSetTraceContentFilter([[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    goto :goto_0

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "OneTrace"

    const-string v2, "Onetrace jni was not implemented in android runtime"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const/4 v1, 0x1

    sput-boolean v1, Landroid/os/OneTraceExtImpl;->sOneTraceJniNotImplement:Z

    .line 243
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void
.end method

.method static blacklist updateNativeFilterTime(J)V
    .locals 3
    .param p0, "filterTime"    # J

    .line 220
    sget-boolean v0, Landroid/os/OneTraceExtImpl;->sOneTraceJniNotImplement:Z

    if-eqz v0, :cond_0

    .line 221
    return-void

    .line 225
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Landroid/os/OneTraceExtImpl;->nativeSetTraceFilterTime(J)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    goto :goto_0

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "OneTrace"

    const-string v2, "Onetrace jni was not implemented in android runtime"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/4 v1, 0x1

    sput-boolean v1, Landroid/os/OneTraceExtImpl;->sOneTraceJniNotImplement:Z

    .line 230
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/os/OneTraceExtImpl;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 29
    const-class v0, Landroid/os/OneTraceExtImpl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/os/OneTraceExtImpl;

    return-object v0
.end method

.method public static blacklist values()[Landroid/os/OneTraceExtImpl;
    .locals 1

    .line 29
    sget-object v0, Landroid/os/OneTraceExtImpl;->$VALUES:[Landroid/os/OneTraceExtImpl;

    invoke-virtual {v0}, [Landroid/os/OneTraceExtImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/OneTraceExtImpl;

    return-object v0
.end method


# virtual methods
.method public blacklist begin(JLjava/lang/String;)V
    .locals 0
    .param p1, "traceTag"    # J
    .param p3, "methodName"    # Ljava/lang/String;

    .line 102
    invoke-static {p1, p2, p3}, Landroid/os/OneTraceExtImpl;->oneTraceBegin(JLjava/lang/String;)V

    .line 103
    return-void
.end method

.method public blacklist beginAsync(JLjava/lang/String;I)V
    .locals 0
    .param p1, "traceTag"    # J
    .param p3, "methodName"    # Ljava/lang/String;
    .param p4, "cookie"    # I

    .line 112
    invoke-static {p1, p2, p3, p4}, Landroid/os/OneTraceExtImpl;->oneTraceBeginAsync(JLjava/lang/String;I)V

    .line 113
    return-void
.end method

.method public blacklist end(J)V
    .locals 0
    .param p1, "traceTag"    # J

    .line 107
    invoke-static {p1, p2}, Landroid/os/OneTraceExtImpl;->oneTraceEnd(J)V

    .line 108
    return-void
.end method

.method public blacklist endAsync(JLjava/lang/String;I)V
    .locals 0
    .param p1, "traceTag"    # J
    .param p3, "methodName"    # Ljava/lang/String;
    .param p4, "cookie"    # I

    .line 117
    invoke-static {p1, p2, p3, p4}, Landroid/os/OneTraceExtImpl;->oneTraceEndAsync(JLjava/lang/String;I)V

    .line 118
    return-void
.end method

.method public blacklist isEnable(J)Z
    .locals 1
    .param p1, "traceTag"    # J

    .line 97
    invoke-static {p1, p2}, Landroid/os/OneTraceExtImpl;->isOneTraceEnable(J)Z

    move-result v0

    return v0
.end method

.method public blacklist matchDescriptor(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 190
    invoke-static {}, Landroid/os/OneTraceExtImpl$LazyLoadDescriptorMap;->-$$Nest$sfgetDESCRIPTOR_ID_MAP()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1, p1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public blacklist setActiveState(Z)V
    .locals 2
    .param p1, "isActive"    # Z

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mark active for pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneTrace"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    sput-boolean p1, Landroid/os/OneTraceExtImpl;->sMarkActiveInProcess:Z

    .line 155
    invoke-static {}, Landroid/os/OneTraceExtImpl;->oneTraceRegisterCallback()V

    .line 156
    invoke-static {p1}, Landroid/os/OneTraceExtImpl;->oneTraceSetTraceEnabled(Z)V

    .line 157
    return-void
.end method
