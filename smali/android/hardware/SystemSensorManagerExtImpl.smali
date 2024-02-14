.class public Landroid/hardware/SystemSensorManagerExtImpl;
.super Ljava/lang/Object;
.source "SystemSensorManagerExtImpl.java"

# interfaces
.implements Landroid/hardware/ISystemSensorManagerExt;


# static fields
.field public static blacklist MAX_STEP_INTERVAL:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "SystemSensorManagerExtImpl"

.field public static final blacklist TYPE_PEDOMETER_MINUTE:I = 0x1fa265a

.field public static blacklist hardwareValue:F

.field public static blacklist haveAonSmartRotation:Z

.field public static blacklist mAonSmartRotation:Lcom/aiunit/aon/AonSmartRotation;

.field public static blacklist mCurrentSmartRotationStatus:I

.field public static blacklist mLastSmartRotationStatus:I

.field public static blacklist mLastStep:F

.field public static blacklist mPedoLastStep:F

.field public static blacklist sInZoomWindow:Z


# instance fields
.field public blacklist mCompactWindowAppManager:Landroid/app/IOplusCompactWindowAppManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 54
    const/4 v0, 0x0

    sput v0, Landroid/hardware/SystemSensorManagerExtImpl;->mLastStep:F

    .line 55
    sput v0, Landroid/hardware/SystemSensorManagerExtImpl;->mPedoLastStep:F

    .line 56
    const/16 v1, 0x64

    sput v1, Landroid/hardware/SystemSensorManagerExtImpl;->MAX_STEP_INTERVAL:I

    .line 59
    const/4 v1, 0x0

    sput-object v1, Landroid/hardware/SystemSensorManagerExtImpl;->mAonSmartRotation:Lcom/aiunit/aon/AonSmartRotation;

    .line 60
    const/4 v1, 0x0

    sput-boolean v1, Landroid/hardware/SystemSensorManagerExtImpl;->haveAonSmartRotation:Z

    .line 61
    sput v0, Landroid/hardware/SystemSensorManagerExtImpl;->hardwareValue:F

    .line 62
    sput v1, Landroid/hardware/SystemSensorManagerExtImpl;->mLastSmartRotationStatus:I

    .line 63
    sput v1, Landroid/hardware/SystemSensorManagerExtImpl;->mCurrentSmartRotationStatus:I

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 2
    .param p1, "base"    # Ljava/lang/Object;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    sget-object v0, Landroid/app/IOplusCompactWindowAppManager;->DEFAULT:Landroid/app/IOplusCompactWindowAppManager;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Landroid/app/IOplusCompactWindowAppManager;

    iput-object v0, p0, Landroid/hardware/SystemSensorManagerExtImpl;->mCompactWindowAppManager:Landroid/app/IOplusCompactWindowAppManager;

    .line 72
    return-void
.end method

.method private blacklist blockDispatchEvent(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;Landroid/hardware/SensorEvent;)Z
    .locals 7
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "events"    # Landroid/hardware/SensorEvent;

    .line 134
    const/4 v0, 0x0

    const/16 v1, 0x1b

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    if-ne v3, v1, :cond_0

    iget-object v3, p3, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v0

    float-to-double v3, v3

    const-wide/high16 v5, 0x4010000000000000L    # 4.0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_0

    .line 137
    return v2

    .line 140
    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    if-eq v3, v1, :cond_1

    .line 141
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_1

    .line 142
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    if-ne v1, v2, :cond_2

    :cond_1
    sget-boolean v1, Landroid/hardware/SystemSensorManagerExtImpl;->sInZoomWindow:Z

    if-eqz v1, :cond_2

    .line 143
    return v2

    .line 145
    :cond_2
    return v0
.end method

.method private blacklist needToAdjustEvent(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;Landroid/hardware/SensorEvent;)Z
    .locals 6
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "events"    # Landroid/hardware/SensorEvent;

    .line 149
    const-string v0, "SystemSensorManagerExtImpl"

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 150
    return v1

    .line 154
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getType()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x13

    const-string v4, " to + "

    const/4 v5, 0x0

    if-ne v2, v3, :cond_2

    .line 155
    :try_start_1
    sget v2, Landroid/hardware/SystemSensorManagerExtImpl;->mLastStep:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_1

    iget-object v2, p3, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v1

    sget v3, Landroid/hardware/SystemSensorManagerExtImpl;->mLastStep:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sget v3, Landroid/hardware/SystemSensorManagerExtImpl;->MAX_STEP_INTERVAL:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_4

    .line 156
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "step counter dispatchSensorEvent step "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p3, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v2, p3, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v1

    sput v2, Landroid/hardware/SystemSensorManagerExtImpl;->mLastStep:F

    goto :goto_0

    .line 159
    :cond_2
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const v3, 0x1fa265a

    if-ne v2, v3, :cond_4

    .line 160
    sget v2, Landroid/hardware/SystemSensorManagerExtImpl;->mPedoLastStep:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_3

    iget-object v2, p3, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v1

    sget v3, Landroid/hardware/SystemSensorManagerExtImpl;->mPedoLastStep:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sget v3, Landroid/hardware/SystemSensorManagerExtImpl;->MAX_STEP_INTERVAL:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_4

    .line 161
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pedometer minute step counter dispatchSensorEvent step "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p3, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v2, p3, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v1

    sput v2, Landroid/hardware/SystemSensorManagerExtImpl;->mPedoLastStep:F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 167
    :cond_4
    :goto_0
    goto :goto_1

    .line 165
    :catch_0
    move-exception v2

    .line 166
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "step counter error e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v2, 0x1b

    if-ne v0, v2, :cond_5

    sget-boolean v0, Landroid/hardware/SystemSensorManagerExtImpl;->haveAonSmartRotation:Z

    if-eqz v0, :cond_5

    sget-object v0, Landroid/hardware/SystemSensorManagerExtImpl;->mAonSmartRotation:Lcom/aiunit/aon/AonSmartRotation;

    if-eqz v0, :cond_5

    .line 171
    const/4 v0, 0x1

    return v0

    .line 173
    :cond_5
    return v1
.end method


# virtual methods
.method public blacklist dispatchEventDataAdjust(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;Landroid/hardware/SensorEvent;)Landroid/hardware/SensorEvent;
    .locals 6
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "events"    # Landroid/hardware/SensorEvent;

    .line 180
    const-string v0, "SystemSensorManagerExtImpl"

    move-object v1, p3

    .line 182
    .local v1, "resultEvent":Landroid/hardware/SensorEvent;
    if-eqz p2, :cond_3

    :try_start_0
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/16 v3, 0x1b

    if-ne v2, v3, :cond_3

    sget-boolean v2, Landroid/hardware/SystemSensorManagerExtImpl;->haveAonSmartRotation:Z

    if-eqz v2, :cond_3

    sget-object v2, Landroid/hardware/SystemSensorManagerExtImpl;->mAonSmartRotation:Lcom/aiunit/aon/AonSmartRotation;

    if-eqz v2, :cond_3

    .line 184
    invoke-virtual {v2}, Lcom/aiunit/aon/AonSmartRotation;->getStatus()I

    move-result v2

    sput v2, Landroid/hardware/SystemSensorManagerExtImpl;->mCurrentSmartRotationStatus:I

    .line 185
    sget v3, Landroid/hardware/SystemSensorManagerExtImpl;->mLastSmartRotationStatus:I

    const/4 v4, 0x0

    if-eq v2, v3, :cond_2

    .line 186
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 187
    const-string v2, "SmartRotationDebug, SmartRotation switch On."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    sget-object v2, Landroid/hardware/SystemSensorManagerExtImpl;->mAonSmartRotation:Lcom/aiunit/aon/AonSmartRotation;

    invoke-virtual {v2}, Lcom/aiunit/aon/AonSmartRotation;->createSmartRotationConnection()F

    goto :goto_0

    .line 189
    :cond_0
    if-nez v2, :cond_1

    .line 190
    const-string v2, "SmartRotationDebug, SmartRotation switch Off."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    sget-object v2, Landroid/hardware/SystemSensorManagerExtImpl;->mAonSmartRotation:Lcom/aiunit/aon/AonSmartRotation;

    invoke-virtual {v2}, Lcom/aiunit/aon/AonSmartRotation;->destroySmartRotationConnection()F

    goto :goto_0

    .line 193
    :cond_1
    const-string v2, "SmartRotationDebug, SmartRotation switch Invalid, reset Status value."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    sput v4, Landroid/hardware/SystemSensorManagerExtImpl;->mCurrentSmartRotationStatus:I

    .line 195
    sput v4, Landroid/hardware/SystemSensorManagerExtImpl;->mLastSmartRotationStatus:I

    .line 198
    :cond_2
    :goto_0
    sget v2, Landroid/hardware/SystemSensorManagerExtImpl;->mCurrentSmartRotationStatus:I

    sput v2, Landroid/hardware/SystemSensorManagerExtImpl;->mLastSmartRotationStatus:I

    .line 199
    iget-object v2, p3, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v4

    sput v2, Landroid/hardware/SystemSensorManagerExtImpl;->hardwareValue:F

    .line 200
    iget-object v2, v1, Landroid/hardware/SensorEvent;->values:[F

    sget-object v3, Landroid/hardware/SystemSensorManagerExtImpl;->mAonSmartRotation:Lcom/aiunit/aon/AonSmartRotation;

    iget-object v5, p3, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v3, v5}, Lcom/aiunit/aon/AonSmartRotation;->makeDecisionBySmartRotation([F)F

    move-result v3

    aput v3, v2, v4

    .line 201
    sget v2, Landroid/hardware/SystemSensorManagerExtImpl;->hardwareValue:F

    iget-object v3, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v4

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_3

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SmartRotationDebug, Device Orientation changed by SmartRotation, t.value[0] is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", and Hardware Value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/hardware/SystemSensorManagerExtImpl;->hardwareValue:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 206
    :catch_0
    move-exception v2

    .line 207
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SmartRotation got exception, e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 208
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_1
    nop

    .line 209
    :goto_2
    return-object v1
.end method

.method public blacklist dispatchSensorEventEnd(II[FIIILjava/lang/String;)V
    .locals 3
    .param p1, "res"    # I
    .param p2, "handle"    # I
    .param p3, "values"    # [F
    .param p4, "accuracy"    # I
    .param p5, "type"    # I
    .param p6, "cmdArgs"    # I
    .param p7, "client"    # Ljava/lang/String;

    .line 245
    const/4 v0, 0x1

    if-ne p6, v0, :cond_0

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchSensorEvent_end  reportedRes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",handle=data["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, p3, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v0, p3, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    aget v1, p3, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "],accuracy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",client="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemSensorManagerExtImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_0
    return-void
.end method

.method public blacklist dispatchSensorEventHook(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;Landroid/hardware/SensorEvent;ZILandroid/content/Context;)Landroid/hardware/SensorEvent;
    .locals 5
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "events"    # Landroid/hardware/SensorEvent;
    .param p4, "inMirage"    # Z
    .param p5, "cmdArgs"    # I
    .param p6, "context"    # Landroid/content/Context;

    .line 215
    move-object v0, p3

    .line 216
    .local v0, "t":Landroid/hardware/SensorEvent;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 217
    .local v1, "type":I
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/SystemSensorManagerExtImpl;->needToAdjustEvent(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;Landroid/hardware/SensorEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 218
    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/SystemSensorManagerExtImpl;->dispatchEventDataAdjust(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;Landroid/hardware/SensorEvent;)Landroid/hardware/SensorEvent;

    move-result-object v0

    .line 220
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/SystemSensorManagerExtImpl;->blockDispatchEvent(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;Landroid/hardware/SensorEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 221
    const/4 v0, 0x0

    .line 225
    :cond_2
    if-eqz p4, :cond_3

    .line 226
    const/4 v0, 0x0

    .line 229
    :cond_3
    const/4 v2, 0x1

    if-ne p5, v2, :cond_4

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchSensorEventHook newEvent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",oldEvent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",sInZoomWindow="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Landroid/hardware/SystemSensorManagerExtImpl;->sInZoomWindow:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",inMirage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",listener="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SystemSensorManagerExtImpl"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_4
    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Landroid/hardware/SystemSensorManagerExtImpl;->mCompactWindowAppManager:Landroid/app/IOplusCompactWindowAppManager;

    if-eqz v2, :cond_5

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, p6, v3, v4}, Landroid/app/IOplusCompactWindowAppManager;->blockOrientationSensorEventInCompactWindowMode(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 236
    const/4 v2, 0x0

    return-object v2

    .line 239
    :cond_5
    return-object v0
.end method

.method public blacklist registerListenerImplHook(Landroid/content/Context;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/hardware/SensorEventListener;
    .param p3, "sensor"    # Landroid/hardware/Sensor;
    .param p4, "delayUs"    # I

    .line 76
    const-string v0, "SystemSensorManagerExtImpl"

    if-eqz p2, :cond_1

    .line 77
    if-eqz p3, :cond_0

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RegisterListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " delay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "us by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 79
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 81
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RegisterListener by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.tencent.beacon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 85
    const-string v1, "Block tencent beacon for using sensor."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 v0, 0x1

    return v0

    .line 91
    :cond_1
    if-eqz p3, :cond_2

    .line 92
    :try_start_0
    invoke-virtual {p3}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/16 v2, 0x1b

    if-ne v1, v2, :cond_2

    sget-object v1, Landroid/hardware/SystemSensorManagerExtImpl;->mAonSmartRotation:Lcom/aiunit/aon/AonSmartRotation;

    if-nez v1, :cond_2

    .line 93
    const-string v1, "persist.sys.oplus.smartrotation"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Landroid/hardware/SystemSensorManagerExtImpl;->haveAonSmartRotation:Z

    .line 94
    if-eqz v1, :cond_2

    .line 95
    new-instance v1, Lcom/aiunit/aon/AonSmartRotation;

    invoke-direct {v1, p1}, Lcom/aiunit/aon/AonSmartRotation;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/hardware/SystemSensorManagerExtImpl;->mAonSmartRotation:Lcom/aiunit/aon/AonSmartRotation;

    .line 96
    if-eqz p2, :cond_2

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmartRotationDebug, Init AonSmartRotation by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 102
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SmartRotation got exception, e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 104
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    nop

    .line 105
    :goto_2
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unregisterListenerImplHook(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)Z
    .locals 4
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;

    .line 110
    const-string v0, "SystemSensorManagerExtImpl"

    if-eqz p1, :cond_1

    .line 111
    const-string v1, "unRegisterListener by "

    if-eqz p2, :cond_0

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and its name is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 114
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 120
    :try_start_0
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/16 v2, 0x1b

    if-ne v1, v2, :cond_2

    sget-object v1, Landroid/hardware/SystemSensorManagerExtImpl;->mAonSmartRotation:Lcom/aiunit/aon/AonSmartRotation;

    if-eqz v1, :cond_2

    .line 121
    const/4 v1, 0x0

    sput-object v1, Landroid/hardware/SystemSensorManagerExtImpl;->mAonSmartRotation:Lcom/aiunit/aon/AonSmartRotation;

    .line 122
    if-eqz p1, :cond_2

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmartRotationDebug, Destroy AonSmartRotation by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 127
    :catch_0
    move-exception v1

    .line 128
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SmartRotation got exception, e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 129
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    nop

    .line 130
    :goto_2
    const/4 v0, 0x0

    return v0
.end method
