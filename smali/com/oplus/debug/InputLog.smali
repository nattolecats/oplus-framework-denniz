.class public Lcom/oplus/debug/InputLog;
.super Ljava/lang/Object;
.source "InputLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/debug/InputLog$DebugEvent;
    }
.end annotation


# static fields
.field public static final blacklist CALL_STACK:I = 0x3

.field public static final blacklist DEFAULT_CHILD_TAG_STRING:Ljava/lang/String; = "DEFAULT_LABEL"

.field public static final blacklist ENGINEERING_TYPE_RELEASE:Ljava/lang/String; = "release"

.field private static final blacklist INSECURE_LABELS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist LOG_LEVEL_DEBUG:I = 0x1

.field public static final blacklist LOG_LEVEL_DISABLE:I = 0x0

.field public static final blacklist LOG_LEVEL_ERROR:I = 0x5

.field public static final blacklist LOG_LEVEL_INFO:I = 0x3

.field public static final blacklist LOG_LEVEL_VERBOSE:I = 0x2

.field public static final blacklist LOG_LEVEL_WARN:I = 0x4

.field public static final blacklist LOG_TAG_STRING:Ljava/lang/String; = "InputLog"

.field public static final blacklist OPLUS_IMAGE_ENGINEERING_TYPE:Ljava/lang/String; = "ro.oplus.image.my_engineering.type"

.field public static final blacklist PERSIST_INPUT_JAVA_LEVEL:Ljava/lang/String; = "persist.sys.input_java_level"

.field public static final blacklist PERSIST_INPUT_NATIVE_LEVEL:Ljava/lang/String; = "persist.sys.input_native_level"

.field public static final blacklist PERSIST_TP_INPUT_TRACE:Ljava/lang/String; = "persist.sys.tp_input.trace"

.field private static blacklist sCurrLevel:I

.field private static final blacklist sDateFormat:Ljava/text/SimpleDateFormat;

.field private static blacklist sDebug:Z

.field private static blacklist sEngineeringRelease:Z

.field private static blacklist sError:Z

.field private static final blacklist sEvent:Lcom/oplus/debug/InputLog$DebugEvent;

.field private static blacklist sInfo:Z

.field private static blacklist sVerbose:Z

.field private static blacklist sWarn:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 48
    new-instance v0, Lcom/oplus/debug/InputLog$DebugEvent;

    invoke-direct {v0}, Lcom/oplus/debug/InputLog$DebugEvent;-><init>()V

    sput-object v0, Lcom/oplus/debug/InputLog;->sEvent:Lcom/oplus/debug/InputLog$DebugEvent;

    .line 49
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oplus/debug/InputLog;->sDateFormat:Ljava/text/SimpleDateFormat;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "WLAN"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/oplus/debug/InputLog;->INSECURE_LABELS:Ljava/util/List;

    .line 53
    const/4 v0, 0x5

    sput v0, Lcom/oplus/debug/InputLog;->sCurrLevel:I

    .line 54
    const/4 v0, 0x0

    sput-boolean v0, Lcom/oplus/debug/InputLog;->sDebug:Z

    .line 55
    sput-boolean v0, Lcom/oplus/debug/InputLog;->sVerbose:Z

    .line 56
    sput-boolean v0, Lcom/oplus/debug/InputLog;->sInfo:Z

    .line 57
    sput-boolean v0, Lcom/oplus/debug/InputLog;->sWarn:Z

    .line 58
    const/4 v1, 0x1

    sput-boolean v1, Lcom/oplus/debug/InputLog;->sError:Z

    .line 59
    sput-boolean v0, Lcom/oplus/debug/InputLog;->sEngineeringRelease:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist canBePrinted(Landroid/view/InputEvent;)Z
    .locals 2
    .param p0, "event"    # Landroid/view/InputEvent;

    .line 288
    sget-boolean v0, Lcom/oplus/debug/InputLog;->sDebug:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 289
    return v1

    .line 291
    :cond_0
    sget-boolean v0, Lcom/oplus/debug/InputLog;->sVerbose:Z

    if-eqz v0, :cond_3

    .line 293
    :try_start_0
    instance-of v0, p0, Landroid/view/KeyEvent;

    if-eqz v0, :cond_1

    .line 294
    return v1

    .line 296
    :cond_1
    instance-of v0, p0, Landroid/view/MotionEvent;

    if-eqz v0, :cond_2

    .line 297
    move-object v0, p0

    check-cast v0, Landroid/view/MotionEvent;

    .line 298
    .local v0, "motion":Landroid/view/MotionEvent;
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    invoke-static {v1}, Lcom/oplus/debug/InputLog;->isVerboseAction(I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 301
    .end local v0    # "motion":Landroid/view/MotionEvent;
    :cond_2
    goto :goto_0

    .line 300
    :catch_0
    move-exception v0

    .line 303
    :cond_3
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist currDate()Ljava/lang/String;
    .locals 4

    .line 323
    sget-object v0, Lcom/oplus/debug/InputLog;->sDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 351
    sget-boolean v0, Lcom/oplus/debug/InputLog;->sDebug:Z

    if-eqz v0, :cond_0

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputLog"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_0
    return-void
.end method

.method public static blacklist d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "error"    # Ljava/lang/Throwable;

    .line 357
    sget-boolean v0, Lcom/oplus/debug/InputLog;->sDebug:Z

    if-eqz v0, :cond_0

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputLog"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 360
    :cond_0
    return-void
.end method

.method public static blacklist debugEventHandled(Ljava/lang/String;Landroid/view/InputEvent;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "detail"    # Ljava/lang/String;

    .line 268
    invoke-static {p1}, Lcom/oplus/debug/InputLog;->canBePrinted(Landroid/view/InputEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    sget-object v0, Lcom/oplus/debug/InputLog;->sEvent:Lcom/oplus/debug/InputLog$DebugEvent;

    invoke-virtual {v0, p1}, Lcom/oplus/debug/InputLog$DebugEvent;->match(Landroid/view/InputEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    invoke-virtual {v0, p2}, Lcom/oplus/debug/InputLog$DebugEvent;->handled(Ljava/lang/String;)V

    .line 272
    :cond_0
    sget-boolean v1, Lcom/oplus/debug/InputLog;->sDebug:Z

    if-eqz v1, :cond_1

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "debugEventHandled detail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sEvent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oplus/debug/InputLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :cond_1
    return-void
.end method

.method public static blacklist debugInputEventEnqueue(Ljava/lang/String;Landroid/view/InputEvent;ZZ)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "immediately"    # Z
    .param p3, "scheduled"    # Z

    .line 248
    invoke-static {p1}, Lcom/oplus/debug/InputLog;->canBePrinted(Landroid/view/InputEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    sget-object v0, Lcom/oplus/debug/InputLog;->sEvent:Lcom/oplus/debug/InputLog$DebugEvent;

    invoke-virtual {v0, p1}, Lcom/oplus/debug/InputLog$DebugEvent;->match(Landroid/view/InputEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    invoke-virtual {v0, p2, p3}, Lcom/oplus/debug/InputLog$DebugEvent;->enqueue(ZZ)V

    .line 253
    :cond_0
    sget-boolean v0, Lcom/oplus/debug/InputLog;->sDebug:Z

    if-eqz v0, :cond_1

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enqueueInputEvent, call from:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oplus/debug/InputLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :cond_1
    return-void
.end method

.method public static blacklist debugInputEventFinished(Ljava/lang/String;ILandroid/view/InputEvent;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "flag"    # I
    .param p2, "event"    # Landroid/view/InputEvent;

    .line 279
    invoke-static {p2}, Lcom/oplus/debug/InputLog;->canBePrinted(Landroid/view/InputEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    sget-object v0, Lcom/oplus/debug/InputLog;->sEvent:Lcom/oplus/debug/InputLog$DebugEvent;

    invoke-virtual {v0, p2}, Lcom/oplus/debug/InputLog$DebugEvent;->match(Landroid/view/InputEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    invoke-virtual {v0, p1}, Lcom/oplus/debug/InputLog$DebugEvent;->finish(I)V

    .line 282
    invoke-static {p0}, Lcom/oplus/debug/InputLog;->processTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "debugInputEventFinished event:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sEvent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/debug/InputLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :cond_0
    return-void
.end method

.method public static blacklist debugInputEventStart(Ljava/lang/String;Landroid/view/InputEvent;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 241
    invoke-static {p1}, Lcom/oplus/debug/InputLog;->canBePrinted(Landroid/view/InputEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    sget-object v0, Lcom/oplus/debug/InputLog;->sEvent:Lcom/oplus/debug/InputLog$DebugEvent;

    invoke-virtual {v0, p1}, Lcom/oplus/debug/InputLog$DebugEvent;->start(Landroid/view/InputEvent;)V

    .line 243
    invoke-static {p0}, Lcom/oplus/debug/InputLog;->processTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "debugInputEventStart event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/debug/InputLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_0
    return-void
.end method

.method public static blacklist debugInputStageDeliverd(Ljava/lang/String;ILandroid/view/InputEvent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "flag"    # I
    .param p2, "event"    # Landroid/view/InputEvent;
    .param p3, "stage"    # Ljava/lang/String;
    .param p4, "detail"    # Ljava/lang/String;

    .line 259
    invoke-static {p2}, Lcom/oplus/debug/InputLog;->canBePrinted(Landroid/view/InputEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    sget-object v0, Lcom/oplus/debug/InputLog;->sEvent:Lcom/oplus/debug/InputLog$DebugEvent;

    invoke-virtual {v0, p2}, Lcom/oplus/debug/InputLog$DebugEvent;->match(Landroid/view/InputEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    invoke-virtual {v0, p3, p1}, Lcom/oplus/debug/InputLog$DebugEvent;->deliverd(Ljava/lang/String;I)V

    .line 265
    :cond_0
    return-void
.end method

.method public static blacklist dynamicLog(I)V
    .locals 2
    .param p0, "level"    # I

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dynamicLog, level = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputLog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-static {p0}, Lcom/oplus/debug/InputLog;->writeLevel(I)V

    .line 64
    invoke-static {}, Lcom/oplus/debug/InputLog;->updateLogLevel()V

    .line 65
    return-void
.end method

.method public static blacklist e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 375
    sget-boolean v0, Lcom/oplus/debug/InputLog;->sError:Z

    if-eqz v0, :cond_0

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputLog"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_0
    return-void
.end method

.method public static blacklist e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "error"    # Ljava/lang/Throwable;

    .line 381
    sget-boolean v0, Lcom/oplus/debug/InputLog;->sError:Z

    if-eqz v0, :cond_0

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputLog"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 384
    :cond_0
    return-void
.end method

.method public static blacklist getCurrentLogSwitchValue()I
    .locals 1

    .line 87
    invoke-static {}, Lcom/oplus/debug/InputLog;->readLevel()I

    move-result v0

    return v0
.end method

.method public static blacklist i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 327
    sget-boolean v0, Lcom/oplus/debug/InputLog;->sInfo:Z

    if-eqz v0, :cond_0

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputLog"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_0
    return-void
.end method

.method public static blacklist i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "error"    # Ljava/lang/Throwable;

    .line 333
    sget-boolean v0, Lcom/oplus/debug/InputLog;->sInfo:Z

    if-eqz v0, :cond_0

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputLog"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 336
    :cond_0
    return-void
.end method

.method public static blacklist isLevelDebug()Z
    .locals 1

    .line 399
    sget-boolean v0, Lcom/oplus/debug/InputLog;->sDebug:Z

    return v0
.end method

.method public static blacklist isLevelVerbose()Z
    .locals 1

    .line 403
    sget-boolean v0, Lcom/oplus/debug/InputLog;->sVerbose:Z

    return v0
.end method

.method public static blacklist isVerboseAction(I)Z
    .locals 2
    .param p0, "action"    # I

    .line 307
    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static blacklist isVolumeKey(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .line 312
    sparse-switch p0, :sswitch_data_0

    .line 319
    const/4 v0, 0x0

    return v0

    .line 316
    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0xa4 -> :sswitch_0
    .end sparse-switch
.end method

.method private static blacklist processTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;

    .line 224
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/oplus/debug/InputLog;->sDebug:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/oplus/debug/InputLog;->sEngineeringRelease:Z

    if-nez v0, :cond_0

    goto :goto_2

    .line 228
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    sget-object v1, Lcom/oplus/debug/InputLog;->INSECURE_LABELS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 229
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 230
    .local v1, "label":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 231
    const-string v2, "DEFAULT_LABEL"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 228
    .end local v1    # "label":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    .end local v0    # "i":I
    :cond_2
    goto :goto_1

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processTag error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputLog"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-object p0

    .line 225
    :cond_3
    :goto_2
    return-object p0
.end method

.method private static blacklist readLevel()I
    .locals 5

    .line 76
    const-string v0, "InputLog"

    const/4 v1, 0x0

    .line 78
    .local v1, "result":I
    :try_start_0
    const-string v2, "persist.sys.input_java_level"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 81
    goto :goto_0

    .line 79
    :catch_0
    move-exception v2

    .line 80
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readLevel error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readLevel result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oplus/debug/InputLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return v1
.end method

.method public static blacklist updateLogLevel()V
    .locals 5

    .line 91
    const-string v0, "InputLog"

    invoke-static {}, Lcom/oplus/debug/InputLog;->readLevel()I

    move-result v1

    sput v1, Lcom/oplus/debug/InputLog;->sCurrLevel:I

    .line 92
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    sput-boolean v4, Lcom/oplus/debug/InputLog;->sDebug:Z

    .line 93
    if-lt v1, v3, :cond_1

    const/4 v4, 0x2

    if-gt v1, v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    sput-boolean v4, Lcom/oplus/debug/InputLog;->sVerbose:Z

    .line 94
    if-lt v1, v3, :cond_2

    const/4 v4, 0x3

    if-gt v1, v4, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    sput-boolean v4, Lcom/oplus/debug/InputLog;->sInfo:Z

    .line 95
    if-lt v1, v3, :cond_3

    const/4 v4, 0x4

    if-gt v1, v4, :cond_3

    move v4, v3

    goto :goto_3

    :cond_3
    move v4, v2

    :goto_3
    sput-boolean v4, Lcom/oplus/debug/InputLog;->sWarn:Z

    .line 96
    if-lt v1, v3, :cond_4

    const/4 v4, 0x5

    if-gt v1, v4, :cond_4

    move v1, v3

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    sput-boolean v1, Lcom/oplus/debug/InputLog;->sError:Z

    .line 99
    :try_start_0
    const-string v1, "release"

    const-string v4, "ro.oplus.image.my_engineering.type"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v2, v3

    :cond_5
    sput-boolean v2, Lcom/oplus/debug/InputLog;->sEngineeringRelease:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    goto :goto_5

    .line 100
    :catch_0
    move-exception v1

    .line 101
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "read engineering type error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLogLevel value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/oplus/debug/InputLog;->sCurrLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",engineering="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/oplus/debug/InputLog;->sEngineeringRelease:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/debug/InputLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public static blacklist v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 339
    sget-boolean v0, Lcom/oplus/debug/InputLog;->sVerbose:Z

    if-eqz v0, :cond_0

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputLog"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_0
    return-void
.end method

.method public static blacklist v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "error"    # Ljava/lang/Throwable;

    .line 345
    sget-boolean v0, Lcom/oplus/debug/InputLog;->sVerbose:Z

    if-eqz v0, :cond_0

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputLog"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 348
    :cond_0
    return-void
.end method

.method public static blacklist w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 363
    sget-boolean v0, Lcom/oplus/debug/InputLog;->sWarn:Z

    if-eqz v0, :cond_0

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputLog"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_0
    return-void
.end method

.method public static blacklist w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "error"    # Ljava/lang/Throwable;

    .line 369
    sget-boolean v0, Lcom/oplus/debug/InputLog;->sWarn:Z

    if-eqz v0, :cond_0

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputLog"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 372
    :cond_0
    return-void
.end method

.method private static blacklist writeLevel(I)V
    .locals 3
    .param p0, "level"    # I

    .line 69
    :try_start_0
    const-string v0, "persist.sys.input_java_level"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeLevel error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputLog"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static blacklist wtf(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 387
    sget-boolean v0, Lcom/oplus/debug/InputLog;->sError:Z

    if-eqz v0, :cond_0

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputLog"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_0
    return-void
.end method

.method public static blacklist wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "error"    # Ljava/lang/Throwable;

    .line 393
    sget-boolean v0, Lcom/oplus/debug/InputLog;->sError:Z

    if-eqz v0, :cond_0

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputLog"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 396
    :cond_0
    return-void
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " finalized"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputLog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 110
    return-void
.end method
