.class public Lcom/oplus/darkmode/OplusDarkModeManager;
.super Ljava/lang/Object;
.source "OplusDarkModeManager.java"

# interfaces
.implements Lcom/oplus/darkmode/IOplusDarkModeManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/darkmode/OplusDarkModeManager$Holder;
    }
.end annotation


# static fields
.field private static final blacklist ATTRS_OPLUSOS_FORCE_DARK_CUSTOM:Ljava/lang/String; = "enableFollowSystemForceDarkRank"

.field private static final blacklist ATTRS_OPLUSOS_SELECT_FORCE_DARK_TYPE:Ljava/lang/String; = "selectSystemForceDarkType"

.field private static final blacklist DBG:Z

.field private static final blacklist DEBUG:Z

.field private static final blacklist DEFAULT_BACKGROUNDMAXL:F = 0.0f

.field private static final blacklist DEFAULT_DIALOGBGMAXL:F = 27.0f

.field private static final blacklist DEFAULT_FOREGROUNDMINL:F = 100.0f

.field private static final blacklist GENTLE_BACKGROUNDMAXL:F = 19.0f

.field private static final blacklist MIDDLE_BACKGROUNDMAXL:F = 9.0f

.field private static final blacklist TAG:Ljava/lang/String; = "OplusDarkModeManager"

.field private static blacklist mIsHidden:Z

.field private static blacklist mShouldInvalidWorld:Z

.field private static blacklist mSupportStyle:I

.field private static blacklist mUseThirdPartyInvert:Z


# instance fields
.field private blacklist mBackgroundMaxL:F

.field private blacklist mDialogBgMaxL:F

.field private blacklist mForegroundMinL:F

.field private blacklist mIsChangeSystemUiVisibility:Z

.field private blacklist mIsOplusOSForceDarkCustom:Z

.field private blacklist mOplusActivityManager:Landroid/app/OplusActivityManager;

.field private blacklist mSelectForceDarkType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 55
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/darkmode/OplusDarkModeManager;->DBG:Z

    .line 56
    or-int/2addr v0, v1

    sput-boolean v0, Lcom/oplus/darkmode/OplusDarkModeManager;->DEBUG:Z

    .line 70
    sput-boolean v1, Lcom/oplus/darkmode/OplusDarkModeManager;->mIsHidden:Z

    .line 72
    sput-boolean v1, Lcom/oplus/darkmode/OplusDarkModeManager;->mShouldInvalidWorld:Z

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/darkmode/OplusDarkModeManager;->mIsChangeSystemUiVisibility:Z

    .line 65
    const/high16 v1, 0x41d80000    # 27.0f

    iput v1, p0, Lcom/oplus/darkmode/OplusDarkModeManager;->mDialogBgMaxL:F

    .line 66
    const/4 v1, 0x0

    iput v1, p0, Lcom/oplus/darkmode/OplusDarkModeManager;->mBackgroundMaxL:F

    .line 67
    const/high16 v1, 0x42c80000    # 100.0f

    iput v1, p0, Lcom/oplus/darkmode/OplusDarkModeManager;->mForegroundMinL:F

    .line 68
    iput-boolean v0, p0, Lcom/oplus/darkmode/OplusDarkModeManager;->mIsOplusOSForceDarkCustom:Z

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/darkmode/OplusDarkModeManager;->mSelectForceDarkType:I

    .line 75
    return-void
.end method

.method private blacklist checkThirdInvertArgs()V
    .locals 4

    .line 181
    invoke-static {}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->getInstance()Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->getBackgroundMaxL()F

    move-result v0

    .line 182
    .local v0, "oldBg":F
    invoke-static {}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->getInstance()Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->getForegroundMinL()F

    move-result v1

    .line 183
    .local v1, "oldFg":F
    sget v2, Lcom/oplus/darkmode/OplusDarkModeManager;->mSupportStyle:I

    const/high16 v3, 0x42c80000    # 100.0f

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 193
    :pswitch_0
    const/high16 v2, 0x41980000    # 19.0f

    iput v2, p0, Lcom/oplus/darkmode/OplusDarkModeManager;->mBackgroundMaxL:F

    .line 194
    iput v3, p0, Lcom/oplus/darkmode/OplusDarkModeManager;->mForegroundMinL:F

    .line 195
    goto :goto_0

    .line 185
    :pswitch_1
    const/high16 v2, 0x41100000    # 9.0f

    iput v2, p0, Lcom/oplus/darkmode/OplusDarkModeManager;->mBackgroundMaxL:F

    .line 186
    iput v3, p0, Lcom/oplus/darkmode/OplusDarkModeManager;->mForegroundMinL:F

    .line 187
    goto :goto_0

    .line 189
    :pswitch_2
    const/4 v2, 0x0

    iput v2, p0, Lcom/oplus/darkmode/OplusDarkModeManager;->mBackgroundMaxL:F

    .line 190
    iput v3, p0, Lcom/oplus/darkmode/OplusDarkModeManager;->mForegroundMinL:F

    .line 191
    nop

    .line 199
    :goto_0
    invoke-static {}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->getInstance()Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;

    move-result-object v2

    iget v3, p0, Lcom/oplus/darkmode/OplusDarkModeManager;->mBackgroundMaxL:F

    invoke-virtual {v2, v3}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->setBackgroundMaxL(F)V

    .line 200
    invoke-static {}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->getInstance()Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;

    move-result-object v2

    iget v3, p0, Lcom/oplus/darkmode/OplusDarkModeManager;->mForegroundMinL:F

    invoke-virtual {v2, v3}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->setForegroundMinL(F)V

    .line 201
    iget v2, p0, Lcom/oplus/darkmode/OplusDarkModeManager;->mBackgroundMaxL:F

    cmpl-float v2, v0, v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/oplus/darkmode/OplusDarkModeManager;->mForegroundMinL:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_1

    .line 202
    :cond_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/oplus/darkmode/OplusDarkModeManager;->mShouldInvalidWorld:Z

    .line 204
    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static whitelist getInstance()Lcom/oplus/darkmode/OplusDarkModeManager;
    .locals 1

    .line 82
    invoke-static {}, Lcom/oplus/darkmode/OplusDarkModeManager$Holder;->-$$Nest$sfgetINSTANCE()Lcom/oplus/darkmode/OplusDarkModeManager;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist isSystemApp(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 331
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private blacklist parseOpenByDarkModeData(Landroid/content/Context;Lcom/oplus/darkmode/OplusDarkModeData;)Z
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "oplusDarkModeData"    # Lcom/oplus/darkmode/OplusDarkModeData;

    .line 379
    const/4 v0, 0x0

    if-eqz p2, :cond_b

    if-nez p1, :cond_0

    goto/16 :goto_5

    .line 382
    :cond_0
    iget-boolean v1, p2, Lcom/oplus/darkmode/OplusDarkModeData;->mAlreadyClickByUser:Z

    .line 383
    .local v1, "alreadyClickByUser":Z
    iget-boolean v2, p2, Lcom/oplus/darkmode/OplusDarkModeData;->mOpenByUser:Z

    .line 384
    .local v2, "isOpen":Z
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-wide v3, v3, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    .line 385
    .local v3, "versionCode":J
    iget-wide v5, p2, Lcom/oplus/darkmode/OplusDarkModeData;->mVersionCode:J

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    iget-wide v7, p2, Lcom/oplus/darkmode/OplusDarkModeData;->mVersionCode:J

    cmp-long v5, v3, v7

    if-ltz v5, :cond_1

    goto :goto_0

    :cond_1
    move v5, v0

    goto :goto_1

    :cond_2
    :goto_0
    move v5, v6

    .line 386
    .local v5, "isNewVersion":Z
    :goto_1
    sget-boolean v7, Lcom/oplus/darkmode/OplusDarkModeManager;->mIsHidden:Z

    .line 387
    .local v7, "oldIsHidden":Z
    if-eqz v5, :cond_3

    iget v8, p2, Lcom/oplus/darkmode/OplusDarkModeData;->mCurType:I

    goto :goto_2

    :cond_3
    iget v8, p2, Lcom/oplus/darkmode/OplusDarkModeData;->mOldType:I

    .line 388
    .local v8, "type":I
    :goto_2
    sget v9, Lcom/oplus/darkmode/OplusDarkModeManager;->mSupportStyle:I

    .line 389
    .local v9, "oldSupportStyle":I
    packed-switch v8, :pswitch_data_0

    .line 402
    sput v0, Lcom/oplus/darkmode/OplusDarkModeManager;->mSupportStyle:I

    .line 403
    sput-boolean v0, Lcom/oplus/darkmode/OplusDarkModeManager;->mIsHidden:Z

    goto :goto_3

    .line 393
    :pswitch_0
    sput v8, Lcom/oplus/darkmode/OplusDarkModeManager;->mSupportStyle:I

    .line 394
    sput-boolean v0, Lcom/oplus/darkmode/OplusDarkModeManager;->mIsHidden:Z

    .line 395
    goto :goto_3

    .line 397
    :pswitch_1
    sput v0, Lcom/oplus/darkmode/OplusDarkModeManager;->mSupportStyle:I

    .line 398
    sput-boolean v6, Lcom/oplus/darkmode/OplusDarkModeManager;->mIsHidden:Z

    .line 399
    const/4 v2, 0x0

    .line 400
    nop

    .line 406
    :goto_3
    sget-boolean v10, Lcom/oplus/darkmode/OplusDarkModeManager;->mShouldInvalidWorld:Z

    if-nez v10, :cond_5

    .line 407
    sget v10, Lcom/oplus/darkmode/OplusDarkModeManager;->mSupportStyle:I

    if-ne v9, v10, :cond_4

    sget-boolean v10, Lcom/oplus/darkmode/OplusDarkModeManager;->mIsHidden:Z

    if-eq v7, v10, :cond_5

    .line 408
    :cond_4
    sput-boolean v6, Lcom/oplus/darkmode/OplusDarkModeManager;->mShouldInvalidWorld:Z

    .line 411
    :cond_5
    sget-boolean v10, Lcom/oplus/darkmode/OplusDarkModeManager;->mIsHidden:Z

    if-nez v10, :cond_9

    .line 412
    if-nez v2, :cond_9

    if-nez v1, :cond_9

    .line 413
    iget v10, p2, Lcom/oplus/darkmode/OplusDarkModeData;->mIsRecommend:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_6

    .line 414
    const/4 v2, 0x1

    goto :goto_4

    .line 415
    :cond_6
    iget v10, p2, Lcom/oplus/darkmode/OplusDarkModeData;->mIsRecommend:I

    if-ne v10, v6, :cond_7

    .line 416
    move v2, v5

    goto :goto_4

    .line 417
    :cond_7
    iget v10, p2, Lcom/oplus/darkmode/OplusDarkModeData;->mIsRecommend:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_9

    .line 418
    if-nez v5, :cond_8

    move v0, v6

    :cond_8
    move v2, v0

    .line 422
    :cond_9
    :goto_4
    sget-boolean v0, Lcom/oplus/darkmode/OplusDarkModeManager;->DEBUG:Z

    if-eqz v0, :cond_a

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseOpenByDarkModeData-->"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "-->ver:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v10, p2, Lcom/oplus/darkmode/OplusDarkModeData;->mVersionCode:J

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "-->isRec:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, p2, Lcom/oplus/darkmode/OplusDarkModeData;->mIsRecommend:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "-->oldType:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, p2, Lcom/oplus/darkmode/OplusDarkModeData;->mOldType:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "-->curType:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, p2, Lcom/oplus/darkmode/OplusDarkModeData;->mCurType:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "-->mAlreadyClickByUser:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v6, p2, Lcom/oplus/darkmode/OplusDarkModeData;->mAlreadyClickByUser:Z

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "-->openByUser:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v6, p2, Lcom/oplus/darkmode/OplusDarkModeData;->mOpenByUser:Z

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "-->open:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "OplusDarkModeManager"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_a
    return v2

    .line 380
    .end local v1    # "alreadyClickByUser":Z
    .end local v2    # "isOpen":Z
    .end local v3    # "versionCode":J
    .end local v5    # "isNewVersion":Z
    .end local v7    # "oldIsHidden":Z
    .end local v8    # "type":I
    .end local v9    # "oldSupportStyle":I
    :cond_b
    :goto_5
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist setDarkStyleArgs(Landroid/content/res/Configuration;)Z
    .locals 4
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .line 129
    const-class v0, Landroid/content/res/OplusBaseConfiguration;

    invoke-static {v0, p1}, Lcom/oplus/util/OplusTypeCastingHelper;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/OplusBaseConfiguration;

    .line 130
    .local v0, "OplusBaseConfiguration":Landroid/content/res/OplusBaseConfiguration;
    if-eqz v0, :cond_3

    .line 131
    invoke-virtual {v0}, Landroid/content/res/OplusBaseConfiguration;->getOplusExtraConfiguration()Loplus/content/res/OplusExtraConfiguration;

    move-result-object v1

    iget v1, v1, Loplus/content/res/OplusExtraConfiguration;->mDarkModeDialogBgMaxL:F

    iput v1, p0, Lcom/oplus/darkmode/OplusDarkModeManager;->mDialogBgMaxL:F

    .line 132
    invoke-virtual {v0}, Landroid/content/res/OplusBaseConfiguration;->getOplusExtraConfiguration()Loplus/content/res/OplusExtraConfiguration;

    move-result-object v1

    iget v1, v1, Loplus/content/res/OplusExtraConfiguration;->mDarkModeBackgroundMaxL:F

    iput v1, p0, Lcom/oplus/darkmode/OplusDarkModeManager;->mBackgroundMaxL:F

    .line 133
    invoke-virtual {v0}, Landroid/content/res/OplusBaseConfiguration;->getOplusExtraConfiguration()Loplus/content/res/OplusExtraConfiguration;

    move-result-object v1

    iget v1, v1, Loplus/content/res/OplusExtraConfiguration;->mDarkModeForegroundMinL:F

    iput v1, p0, Lcom/oplus/darkmode/OplusDarkModeManager;->mForegroundMinL:F

    .line 134
    iget v2, p0, Lcom/oplus/darkmode/OplusDarkModeManager;->mDialogBgMaxL:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 135
    const/high16 v2, 0x41d80000    # 27.0f

    iput v2, p0, Lcom/oplus/darkmode/OplusDarkModeManager;->mDialogBgMaxL:F

    .line 137
    :cond_0
    iget v2, p0, Lcom/oplus/darkmode/OplusDarkModeManager;->mBackgroundMaxL:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    .line 138
    const/4 v2, 0x0

    iput v2, p0, Lcom/oplus/darkmode/OplusDarkModeManager;->mBackgroundMaxL:F

    .line 140
    :cond_1
    cmpl-float v1, v1, v3

    if-nez v1, :cond_2

    .line 141
    const/high16 v1, 0x42c80000    # 100.0f

    iput v1, p0, Lcom/oplus/darkmode/OplusDarkModeManager;->mForegroundMinL:F

    .line 143
    :cond_2
    const/4 v1, 0x1

    return v1

    .line 145
    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist setForceDarkArgs(Landroid/graphics/HardwareRenderer;FFF)Z
    .locals 2
    .param p1, "renderer"    # Landroid/graphics/HardwareRenderer;
    .param p2, "dialogBgMaxL"    # F
    .param p3, "backgroundMaxL"    # F
    .param p4, "foregroundMinL"    # F

    .line 248
    const-class v0, Landroid/graphics/OplusBaseHardwareRenderer;

    invoke-static {v0, p1}, Lcom/oplus/util/OplusTypeCastingHelper;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/OplusBaseHardwareRenderer;

    .line 249
    .local v0, "OplusBaseHardwareRenderer":Landroid/graphics/OplusBaseHardwareRenderer;
    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {v0, p2, p3, p4}, Landroid/graphics/OplusBaseHardwareRenderer;->setForceDarkArgs(FFF)Z

    move-result v1

    return v1

    .line 252
    :cond_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public whitelist changeColorFilterInDarkMode(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 497
    invoke-static {}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->getInstance()Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->changeColorFilterInDarkMode(Landroid/graphics/ColorFilter;)V

    .line 498
    return-void
.end method

.method public whitelist changePaintWhenDrawArea(Landroid/graphics/Paint;Landroid/graphics/RectF;Landroid/graphics/IBaseCanvasExt;)V
    .locals 1
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "rectF"    # Landroid/graphics/RectF;
    .param p3, "canvas"    # Landroid/graphics/IBaseCanvasExt;

    .line 517
    invoke-static {}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->getInstance()Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->changePaintWhenDrawArea(Landroid/graphics/Paint;Landroid/graphics/RectF;Landroid/graphics/IBaseCanvasExt;)V

    .line 518
    return-void
.end method

.method public whitelist changePaintWhenDrawArea(Landroid/graphics/Paint;Landroid/graphics/RectF;Landroid/graphics/Path;Landroid/graphics/IBaseCanvasExt;)V
    .locals 1
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "rectF"    # Landroid/graphics/RectF;
    .param p3, "path"    # Landroid/graphics/Path;
    .param p4, "canvas"    # Landroid/graphics/IBaseCanvasExt;

    .line 521
    invoke-static {}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->getInstance()Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->changePaintWhenDrawArea(Landroid/graphics/Paint;Landroid/graphics/RectF;Landroid/graphics/Path;Landroid/graphics/IBaseCanvasExt;)V

    .line 522
    return-void
.end method

.method public whitelist changePaintWhenDrawBitmap(Landroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/IBaseCanvasExt;)V
    .locals 1
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "rectF"    # Landroid/graphics/RectF;
    .param p4, "canvas"    # Landroid/graphics/IBaseCanvasExt;

    .line 533
    invoke-static {}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->getInstance()Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->changePaintWhenDrawBitmap(Landroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/IBaseCanvasExt;)Landroid/graphics/Paint;

    .line 534
    return-void
.end method

.method public whitelist changePaintWhenDrawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Paint;Landroid/graphics/RectF;Landroid/graphics/IBaseCanvasExt;)V
    .locals 1
    .param p1, "patch"    # Landroid/graphics/NinePatch;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "rectF"    # Landroid/graphics/RectF;
    .param p4, "canvas"    # Landroid/graphics/IBaseCanvasExt;

    .line 525
    invoke-static {}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->getInstance()Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->changePaintWhenDrawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Paint;Landroid/graphics/RectF;Landroid/graphics/IBaseCanvasExt;)Landroid/graphics/Paint;

    .line 526
    return-void
.end method

.method public whitelist changePaintWhenDrawText(Landroid/graphics/Paint;Landroid/graphics/IBaseCanvasExt;)V
    .locals 1
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "canvas"    # Landroid/graphics/IBaseCanvasExt;

    .line 509
    invoke-static {}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->getInstance()Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->changePaintWhenDrawText(Landroid/graphics/Paint;Landroid/graphics/IBaseCanvasExt;)V

    .line 510
    return-void
.end method

.method public whitelist changeSystemUiVisibility(I)I
    .locals 1
    .param p1, "oldSystemUiVisibility"    # I

    .line 90
    sget-boolean v0, Lcom/oplus/darkmode/OplusDarkModeManager;->mUseThirdPartyInvert:Z

    if-eqz v0, :cond_1

    .line 91
    and-int/lit16 v0, p1, 0x2000

    if-eqz v0, :cond_0

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/darkmode/OplusDarkModeManager;->mIsChangeSystemUiVisibility:Z

    .line 94
    :cond_0
    and-int/lit16 v0, p1, -0x2001

    .line 95
    .local v0, "vis":I
    and-int/lit8 v0, v0, -0x11

    .line 96
    return v0

    .line 97
    .end local v0    # "vis":I
    :cond_1
    iget-boolean v0, p0, Lcom/oplus/darkmode/OplusDarkModeManager;->mIsChangeSystemUiVisibility:Z

    if-eqz v0, :cond_2

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/darkmode/OplusDarkModeManager;->mIsChangeSystemUiVisibility:Z

    .line 99
    or-int/lit16 v0, p1, 0x2000

    .line 100
    .restart local v0    # "vis":I
    or-int/lit8 v0, v0, 0x10

    .line 101
    return v0

    .line 103
    .end local v0    # "vis":I
    :cond_2
    return p1
.end method

.method public whitelist changeUsageForceDarkAlgorithmType(Landroid/view/View;I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "type"    # I

    .line 448
    if-eqz p1, :cond_0

    .line 451
    invoke-virtual {p1}, Landroid/view/View;->getViewWrapper()Landroid/view/IViewWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IViewWrapper;->getViewExt()Landroid/view/IViewExt;

    move-result-object v0

    .line 452
    .local v0, "viewExt":Landroid/view/IViewExt;
    if-eqz v0, :cond_0

    .line 453
    invoke-interface {v0, p2}, Landroid/view/IViewExt;->setUsageForceDarkAlgorithmType(I)V

    .line 456
    .end local v0    # "viewExt":Landroid/view/IViewExt;
    :cond_0
    return-void
.end method

.method public whitelist changeWhenDrawColor(IZLandroid/graphics/IBaseCanvasExt;)I
    .locals 1
    .param p1, "color"    # I
    .param p2, "isDarkMode"    # Z
    .param p3, "canvas"    # Landroid/graphics/IBaseCanvasExt;

    .line 529
    invoke-static {}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->getInstance()Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->changeWhenDrawColor(IZLandroid/graphics/IBaseCanvasExt;)I

    move-result v0

    return v0
.end method

.method public whitelist darkenSplitScreenDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;IIIILandroid/graphics/RecordingCanvas;Landroid/graphics/RenderNode;)Z
    .locals 4
    .param p1, "decorView"    # Landroid/view/View;
    .param p2, "resizingDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I
    .param p7, "canvas"    # Landroid/graphics/RecordingCanvas;
    .param p8, "renderNode"    # Landroid/graphics/RenderNode;

    .line 465
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 466
    .local v0, "configuration":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    const/16 v2, 0x20

    if-ne v1, v2, :cond_2

    .line 467
    const/4 v1, 0x0

    invoke-virtual {p8, v1}, Landroid/graphics/RenderNode;->setForceDarkAllowed(Z)Z

    .line 468
    instance-of v2, p2, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v2, :cond_0

    .line 469
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 471
    :cond_0
    instance-of v2, p2, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v3, -0x1000000

    if-eqz v2, :cond_1

    .line 472
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v2

    if-eqz v2, :cond_1

    .line 473
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 474
    .local v2, "colorDrawable":Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {v2, p3, p4, p5, p6}, Landroid/graphics/drawable/ColorDrawable;->setBounds(IIII)V

    .line 475
    invoke-virtual {v2, p7}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 476
    return v1

    .line 479
    .end local v2    # "colorDrawable":Landroid/graphics/drawable/ColorDrawable;
    :cond_1
    instance-of v2, p2, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v2, :cond_2

    .line 480
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v2

    if-eqz v2, :cond_2

    .line 481
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 482
    invoke-virtual {p2, p3, p4, p5, p6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 483
    invoke-virtual {p2, p7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 484
    return v1

    .line 488
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist ensureWebSettingDarkMode(Landroid/webkit/WebView;)Z
    .locals 7
    .param p1, "webView"    # Landroid/webkit/WebView;

    .line 258
    invoke-virtual {p1}, Landroid/webkit/WebView;->getViewWrapper()Landroid/view/IViewWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IViewWrapper;->getViewExt()Landroid/view/IViewExt;

    move-result-object v0

    .line 259
    .local v0, "viewExt":Landroid/view/IViewExt;
    if-eqz v0, :cond_4

    .line 260
    sget-boolean v1, Lcom/oplus/darkmode/OplusDarkModeManager;->mUseThirdPartyInvert:Z

    const-string v2, "ensureWebSettingDarkMode-->"

    const-string v3, "OplusDarkModeManager"

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eqz v1, :cond_2

    .line 261
    invoke-interface {v0}, Landroid/view/IViewExt;->getOriginWebSettingForceDark()I

    move-result v1

    .line 262
    .local v1, "originForceDark":I
    if-ne v1, v5, :cond_0

    .line 263
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebSettings;->getForceDark()I

    move-result v5

    .line 264
    .local v5, "autoForceDark":I
    invoke-interface {v0, v5}, Landroid/view/IViewExt;->setOriginWebSettingForceDark(I)V

    .line 266
    .end local v5    # "autoForceDark":I
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/webkit/WebSettings;->setForceDark(I)V

    .line 267
    sget-boolean v5, Lcom/oplus/darkmode/OplusDarkModeManager;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 268
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "-->ON"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_1
    return v4

    .line 271
    .end local v1    # "originForceDark":I
    :cond_2
    invoke-interface {v0}, Landroid/view/IViewExt;->getOriginWebSettingForceDark()I

    move-result v1

    if-eq v1, v5, :cond_4

    .line 272
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-interface {v0}, Landroid/view/IViewExt;->getOriginWebSettingForceDark()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setForceDark(I)V

    .line 273
    invoke-interface {v0, v5}, Landroid/view/IViewExt;->setOriginWebSettingForceDark(I)V

    .line 274
    sget-boolean v1, Lcom/oplus/darkmode/OplusDarkModeManager;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-->RESTORE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_3
    return v4

    .line 280
    :cond_4
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist forceDarkWithoutTheme(Landroid/content/Context;Landroid/view/View;Z)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "useAutoDark"    # Z

    .line 335
    const-string v0, "OplusDarkModeManager"

    if-nez p1, :cond_1

    .line 336
    sget-boolean v1, Lcom/oplus/darkmode/OplusDarkModeManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 337
    const-string v1, "forceDarkWithoutTheme-->context is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_0
    return-void

    .line 341
    :cond_1
    iget-boolean v1, p0, Lcom/oplus/darkmode/OplusDarkModeManager;->mIsOplusOSForceDarkCustom:Z

    if-eqz v1, :cond_2

    .line 342
    return-void

    .line 344
    :cond_2
    const-string v1, "forceDarkWithoutTheme-->"

    const/4 v2, 0x0

    if-eqz p3, :cond_4

    .line 345
    sput-boolean v2, Lcom/oplus/darkmode/OplusDarkModeManager;->mUseThirdPartyInvert:Z

    .line 346
    invoke-static {}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->getInstance()Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->setIsSupportDarkModeStatus(I)V

    .line 347
    sget-boolean v2, Lcom/oplus/darkmode/OplusDarkModeManager;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 348
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-->app use owner force dark!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_3
    return-void

    .line 353
    :cond_4
    sget-boolean v3, Lcom/oplus/darkmode/OplusDarkModeManager;->mUseThirdPartyInvert:Z

    .line 354
    .local v3, "oldUseThirdPartyInvert":Z
    const/4 v4, 0x1

    invoke-virtual {p0, p1, v4}, Lcom/oplus/darkmode/OplusDarkModeManager;->shouldUseColorForceDark(Landroid/content/Context;Z)Z

    move-result v5

    sput-boolean v5, Lcom/oplus/darkmode/OplusDarkModeManager;->mUseThirdPartyInvert:Z

    .line 355
    invoke-static {}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->getInstance()Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;

    move-result-object v5

    sget-boolean v6, Lcom/oplus/darkmode/OplusDarkModeManager;->mUseThirdPartyInvert:Z

    invoke-virtual {v5, v6}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->setIsSupportDarkModeStatus(I)V

    .line 356
    sget-boolean v5, Lcom/oplus/darkmode/OplusDarkModeManager;->DEBUG:Z

    if-eqz v5, :cond_5

    .line 357
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-->mUseThirdPartyInvert:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/oplus/darkmode/OplusDarkModeManager;->mUseThirdPartyInvert:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_5
    sget-boolean v6, Lcom/oplus/darkmode/OplusDarkModeManager;->mShouldInvalidWorld:Z

    if-nez v6, :cond_7

    .line 360
    sget-boolean v6, Lcom/oplus/darkmode/OplusDarkModeManager;->mUseThirdPartyInvert:Z

    if-eq v3, v6, :cond_6

    goto :goto_0

    :cond_6
    move v4, v2

    :goto_0
    sput-boolean v4, Lcom/oplus/darkmode/OplusDarkModeManager;->mShouldInvalidWorld:Z

    .line 362
    :cond_7
    sget-boolean v4, Lcom/oplus/darkmode/OplusDarkModeManager;->mShouldInvalidWorld:Z

    if-eqz v4, :cond_8

    .line 363
    invoke-virtual {p0, p2}, Lcom/oplus/darkmode/OplusDarkModeManager;->invalidateWorld(Landroid/view/View;)V

    .line 364
    sput-boolean v2, Lcom/oplus/darkmode/OplusDarkModeManager;->mShouldInvalidWorld:Z

    .line 365
    if-eqz v5, :cond_8

    .line 366
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-->invalidateWorld"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_8
    return-void
.end method

.method public blacklist getColorFilterWhenDrawVectorDrawable(Landroid/graphics/drawable/SumEntity;Landroid/graphics/drawable/SumEntity;Landroid/graphics/drawable/SumEntity;)Landroid/graphics/ColorFilter;
    .locals 1
    .param p1, "hEntity"    # Landroid/graphics/drawable/SumEntity;
    .param p2, "sEntity"    # Landroid/graphics/drawable/SumEntity;
    .param p3, "lEntity"    # Landroid/graphics/drawable/SumEntity;

    .line 577
    invoke-static {}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->getInstance()Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->getColorFilterWhenDrawVectorDrawable(Landroid/graphics/drawable/SumEntity;Landroid/graphics/drawable/SumEntity;Landroid/graphics/drawable/SumEntity;)Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDarkModeColors([ILandroid/graphics/IBaseCanvasExt;)[I
    .locals 1
    .param p1, "colors"    # [I
    .param p2, "canvas"    # Landroid/graphics/IBaseCanvasExt;

    .line 537
    invoke-static {}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->getInstance()Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->getDarkModeColors([ILandroid/graphics/IBaseCanvasExt;)[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDarkModeData(Landroid/content/Context;Ljava/lang/String;Z)Lcom/oplus/darkmode/OplusDarkModeData;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "useCache"    # Z

    .line 432
    if-nez p2, :cond_0

    .line 433
    const/4 v0, 0x0

    return-object v0

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/oplus/darkmode/OplusDarkModeManager;->mOplusActivityManager:Landroid/app/OplusActivityManager;

    if-nez v0, :cond_1

    .line 436
    new-instance v0, Landroid/app/OplusActivityManager;

    invoke-direct {v0}, Landroid/app/OplusActivityManager;-><init>()V

    iput-object v0, p0, Lcom/oplus/darkmode/OplusDarkModeManager;->mOplusActivityManager:Landroid/app/OplusActivityManager;

    .line 438
    :cond_1
    const/4 v0, 0x0

    .line 440
    .local v0, "oplusDarkModeData":Lcom/oplus/darkmode/OplusDarkModeData;
    :try_start_0
    iget-object v1, p0, Lcom/oplus/darkmode/OplusDarkModeManager;->mOplusActivityManager:Landroid/app/OplusActivityManager;

    invoke-virtual {v1, p2}, Landroid/app/OplusActivityManager;->getDarkModeData(Ljava/lang/String;)Lcom/oplus/darkmode/OplusDarkModeData;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 443
    goto :goto_0

    .line 441
    :catch_0
    move-exception v1

    .line 442
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 444
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public whitelist getPaintWhenDrawBitmap(Landroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/IBaseCanvasExt;)Landroid/graphics/Paint;
    .locals 1
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "rectF"    # Landroid/graphics/RectF;
    .param p4, "canvas"    # Landroid/graphics/IBaseCanvasExt;

    .line 544
    invoke-static {}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->getInstance()Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->changePaintWhenDrawBitmap(Landroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/IBaseCanvasExt;)Landroid/graphics/Paint;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPaintWhenDrawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Paint;Landroid/graphics/RectF;Landroid/graphics/IBaseCanvasExt;)Landroid/graphics/Paint;
    .locals 1
    .param p1, "patch"    # Landroid/graphics/NinePatch;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "rectF"    # Landroid/graphics/RectF;
    .param p4, "canvas"    # Landroid/graphics/IBaseCanvasExt;

    .line 541
    invoke-static {}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->getInstance()Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->changePaintWhenDrawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Paint;Landroid/graphics/RectF;Landroid/graphics/IBaseCanvasExt;)Landroid/graphics/Paint;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getRealPaintState(Landroid/graphics/Paint;)Landroid/graphics/IBaseCanvasExt$RealPaintState;
    .locals 1
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 505
    invoke-static {}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->getInstance()Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->getRealPaintState(Landroid/graphics/Paint;)Landroid/graphics/IBaseCanvasExt$RealPaintState;

    move-result-object v0

    return-object v0
.end method

.method public whitelist initDarkModeStatus(Landroid/app/Application;)V
    .locals 0
    .param p1, "application"    # Landroid/app/Application;

    .line 493
    invoke-static {p1}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->attachApplication(Landroid/app/Application;)V

    .line 494
    return-void
.end method

.method blacklist invalidateWorld(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 284
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 285
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 286
    instance-of v0, p1, Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 287
    move-object v0, p1

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/oplus/darkmode/OplusDarkModeManager;->ensureWebSettingDarkMode(Landroid/webkit/WebView;)Z

    .line 289
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 290
    .local v0, "parent":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 291
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oplus/darkmode/OplusDarkModeManager;->invalidateWorld(Landroid/view/View;)V

    .line 290
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 294
    .end local v0    # "parent":Landroid/view/ViewGroup;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public whitelist isInDarkMode(Z)Z
    .locals 1
    .param p1, "isHardware"    # Z

    .line 501
    invoke-static {}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->getInstance()Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->isInDarkMode(Z)Z

    move-result v0

    return v0
.end method

.method public whitelist logConfigurationNightError(Landroid/content/Context;Z)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isNightConfiguration"    # Z

    .line 310
    const-string v0, "OplusDarkModeManager"

    if-eqz p2, :cond_0

    .line 311
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 312
    .local v1, "resources":Landroid/content/res/Resources;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 313
    .local v2, "packageName":Ljava/lang/String;
    const-string v3, "enableFollowSystemForceDarkRank"

    const-string v4, "attr"

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 314
    .local v3, "oplusOSForceDarkCustomId":I
    const-string v5, "selectSystemForceDarkType"

    invoke-virtual {v1, v5, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 315
    .local v4, "oplusOSForceDarkCustomType":I
    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v3, v5, v6

    const/4 v7, 0x1

    aput v4, v5, v7

    .line 317
    .local v5, "idAttr":[I
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 318
    .local v8, "attributes":Landroid/content/res/TypedArray;
    invoke-virtual {v8, v6, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/oplus/darkmode/OplusDarkModeManager;->mIsOplusOSForceDarkCustom:Z

    .line 319
    const/4 v6, -0x1

    invoke-virtual {v8, v7, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/oplus/darkmode/OplusDarkModeManager;->mSelectForceDarkType:I

    .line 320
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    .end local v8    # "attributes":Landroid/content/res/TypedArray;
    goto :goto_0

    .line 321
    :catch_0
    move-exception v6

    .line 322
    .local v6, "e":Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "logConfigurationNightError: error = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    sget-boolean v6, Lcom/oplus/darkmode/OplusDarkModeManager;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 325
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "packageName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mIsOplusOSForceDarkCustom:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/oplus/darkmode/OplusDarkModeManager;->mIsOplusOSForceDarkCustom:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    .end local v1    # "resources":Landroid/content/res/Resources;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "oplusOSForceDarkCustomId":I
    .end local v4    # "oplusOSForceDarkCustomType":I
    .end local v5    # "idAttr":[I
    :cond_0
    return-void
.end method

.method public whitelist logForceDarkAllowedStatus(Landroid/content/Context;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "forceDarkAllowedDefault"    # Z

    .line 297
    sget-boolean v0, Lcom/oplus/darkmode/OplusDarkModeManager;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 298
    const/4 v0, 0x0

    .line 299
    .local v0, "useAutoDark":Z
    sget-object v1, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 300
    .local v1, "a":Landroid/content/res/TypedArray;
    const/16 v2, 0x117

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 301
    .local v2, "isLightTheme":Z
    const/16 v4, 0x116

    invoke-virtual {v1, v4, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 302
    .local v4, "forceDarkAllowed":Z
    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v0, v3

    .line 303
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "logForceDarkAllowedStatus-->"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",isLightTheme:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",forceDarkAllowed:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",useAutoDark:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "OplusDarkModeManager"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 307
    .end local v0    # "useAutoDark":Z
    .end local v1    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "isLightTheme":Z
    .end local v4    # "forceDarkAllowed":Z
    :cond_1
    return-void
.end method

.method public whitelist markBackground(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 556
    invoke-static {}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->getInstance()Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->markBackground(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 557
    return-void
.end method

.method public whitelist markDispatchDraw(Landroid/view/ViewGroup;Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 548
    invoke-static {}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->getInstance()Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->markDispatchDraw(Landroid/view/ViewGroup;Landroid/graphics/Canvas;)V

    .line 549
    return-void
.end method

.method public whitelist markDrawChild(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .line 552
    invoke-static {}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->getInstance()Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->markDrawChild(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 553
    return-void
.end method

.method public whitelist markDrawFadingEdge(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 568
    invoke-static {}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->getInstance()Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->markDrawFadingEdge(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 569
    return-void
.end method

.method public whitelist markForeground(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 560
    invoke-static {}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->getInstance()Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->markForeground(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 561
    return-void
.end method

.method public whitelist markOnDraw(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 564
    invoke-static {}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->getInstance()Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->markOnDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 565
    return-void
.end method

.method public whitelist markViewTypeBySize(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 572
    invoke-static {}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->getInstance()Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->markViewTypeBySize(Landroid/view/View;)V

    .line 573
    return-void
.end method

.method public whitelist newOplusDarkModeManager()Lcom/oplus/darkmode/IOplusDarkModeManager;
    .locals 1

    .line 459
    new-instance v0, Lcom/oplus/darkmode/OplusDarkModeManager;

    invoke-direct {v0}, Lcom/oplus/darkmode/OplusDarkModeManager;-><init>()V

    return-object v0
.end method

.method public whitelist refreshForceDark(Landroid/view/View;Lcom/oplus/darkmode/OplusDarkModeData;)V
    .locals 7
    .param p1, "decor"    # Landroid/view/View;
    .param p2, "oplusDarkModeData"    # Lcom/oplus/darkmode/OplusDarkModeData;

    .line 207
    if-nez p1, :cond_0

    return-void

    .line 209
    :cond_0
    iget v0, p0, Lcom/oplus/darkmode/OplusDarkModeManager;->mSelectForceDarkType:I

    const/4 v1, -0x1

    const-string v2, "refreshForceDark-->"

    const-string v3, "OplusDarkModeManager"

    if-eq v0, v1, :cond_1

    .line 210
    invoke-virtual {p0, p1, v0}, Lcom/oplus/darkmode/OplusDarkModeManager;->changeUsageForceDarkAlgorithmType(Landroid/view/View;I)V

    .line 211
    sget-boolean v0, Lcom/oplus/darkmode/OplusDarkModeManager;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-->changeUsageForceDarkAlgorithmType-->mSelectForceDarkType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/darkmode/OplusDarkModeManager;->mSelectForceDarkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_1
    const/4 v0, 0x0

    .line 218
    .local v0, "shouldInvalid":Z
    sget-boolean v1, Lcom/oplus/darkmode/OplusDarkModeManager;->mUseThirdPartyInvert:Z

    .line 219
    .local v1, "oldUseThirdPartyInvert":Z
    iget-boolean v4, p0, Lcom/oplus/darkmode/OplusDarkModeManager;->mIsOplusOSForceDarkCustom:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 220
    sput-boolean v5, Lcom/oplus/darkmode/OplusDarkModeManager;->mUseThirdPartyInvert:Z

    .line 221
    invoke-static {}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->getInstance()Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->setIsSupportDarkModeStatus(I)V

    goto :goto_0

    .line 223
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Lcom/oplus/darkmode/OplusDarkModeManager;->parseOpenByDarkModeData(Landroid/content/Context;Lcom/oplus/darkmode/OplusDarkModeData;)Z

    move-result v4

    sput-boolean v4, Lcom/oplus/darkmode/OplusDarkModeManager;->mUseThirdPartyInvert:Z

    .line 224
    invoke-static {}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->getInstance()Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;

    move-result-object v4

    sget-boolean v6, Lcom/oplus/darkmode/OplusDarkModeManager;->mUseThirdPartyInvert:Z

    invoke-virtual {v4, v6}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->setIsSupportDarkModeStatus(I)V

    .line 225
    sget-boolean v4, Lcom/oplus/darkmode/OplusDarkModeManager;->DEBUG:Z

    if-eqz v4, :cond_3

    .line 226
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "-->mUseThirdPartyInvert:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v6, Lcom/oplus/darkmode/OplusDarkModeManager;->mUseThirdPartyInvert:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_3
    sget-boolean v4, Lcom/oplus/darkmode/OplusDarkModeManager;->mUseThirdPartyInvert:Z

    if-eqz v4, :cond_4

    .line 230
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/oplus/darkmode/OplusDarkModeManager;->setDarkStyleArgs(Landroid/content/res/Configuration;)Z

    .line 231
    invoke-direct {p0}, Lcom/oplus/darkmode/OplusDarkModeManager;->checkThirdInvertArgs()V

    .line 234
    :cond_4
    :goto_0
    sget-boolean v4, Lcom/oplus/darkmode/OplusDarkModeManager;->mUseThirdPartyInvert:Z

    const/4 v6, 0x1

    if-eq v1, v4, :cond_5

    move v4, v6

    goto :goto_1

    :cond_5
    move v4, v5

    :goto_1
    move v0, v4

    .line 235
    sget-boolean v4, Lcom/oplus/darkmode/OplusDarkModeManager;->mShouldInvalidWorld:Z

    if-nez v4, :cond_6

    if-eqz v0, :cond_6

    .line 236
    sput-boolean v6, Lcom/oplus/darkmode/OplusDarkModeManager;->mShouldInvalidWorld:Z

    .line 238
    :cond_6
    sget-boolean v4, Lcom/oplus/darkmode/OplusDarkModeManager;->mShouldInvalidWorld:Z

    if-eqz v4, :cond_7

    .line 239
    invoke-virtual {p0, p1}, Lcom/oplus/darkmode/OplusDarkModeManager;->invalidateWorld(Landroid/view/View;)V

    .line 240
    sput-boolean v5, Lcom/oplus/darkmode/OplusDarkModeManager;->mShouldInvalidWorld:Z

    .line 241
    sget-boolean v4, Lcom/oplus/darkmode/OplusDarkModeManager;->DEBUG:Z

    if-eqz v4, :cond_7

    .line 242
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "-->invalidateWorld"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_7
    return-void
.end method

.method public whitelist resetRealPaintIfNeed(Landroid/graphics/Paint;Landroid/graphics/IBaseCanvasExt$RealPaintState;)V
    .locals 1
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "realPaintState"    # Landroid/graphics/IBaseCanvasExt$RealPaintState;

    .line 513
    invoke-static {}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->getInstance()Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->resetRealPaintIfNeed(Landroid/graphics/Paint;Landroid/graphics/IBaseCanvasExt$RealPaintState;)V

    .line 514
    return-void
.end method

.method public whitelist setDarkModeProgress(Landroid/view/View;Landroid/content/res/Configuration;)Z
    .locals 8
    .param p1, "decor"    # Landroid/view/View;
    .param p2, "configuration"    # Landroid/content/res/Configuration;

    .line 149
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 150
    return v0

    .line 152
    :cond_0
    const/4 v1, 0x0

    .line 153
    .local v1, "result":Z
    invoke-direct {p0, p2}, Lcom/oplus/darkmode/OplusDarkModeManager;->setDarkStyleArgs(Landroid/content/res/Configuration;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getThreadedRenderer()Landroid/view/ThreadedRenderer;

    move-result-object v2

    .line 155
    .local v2, "renderer":Landroid/view/ThreadedRenderer;
    iget-boolean v3, p0, Lcom/oplus/darkmode/OplusDarkModeManager;->mIsOplusOSForceDarkCustom:Z

    const-string v4, "setDarkModeProgress-->"

    const-string v5, "OplusDarkModeManager"

    if-eqz v3, :cond_1

    .line 156
    iget v3, p0, Lcom/oplus/darkmode/OplusDarkModeManager;->mDialogBgMaxL:F

    iget v6, p0, Lcom/oplus/darkmode/OplusDarkModeManager;->mBackgroundMaxL:F

    iget v7, p0, Lcom/oplus/darkmode/OplusDarkModeManager;->mForegroundMinL:F

    invoke-direct {p0, v2, v3, v6, v7}, Lcom/oplus/darkmode/OplusDarkModeManager;->setForceDarkArgs(Landroid/graphics/HardwareRenderer;FFF)Z

    move-result v1

    .line 157
    sget-boolean v3, Lcom/oplus/darkmode/OplusDarkModeManager;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 158
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "-->mIsOplusOSForceDarkCustom-->mDialogBgMaxL:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, p0, Lcom/oplus/darkmode/OplusDarkModeManager;->mDialogBgMaxL:F

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "-->mBackgroundMaxL:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, p0, Lcom/oplus/darkmode/OplusDarkModeManager;->mBackgroundMaxL:F

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ",mForegroundMinL:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, p0, Lcom/oplus/darkmode/OplusDarkModeManager;->mForegroundMinL:F

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 164
    :cond_1
    const/high16 v3, 0x41d80000    # 27.0f

    const/4 v6, 0x0

    const/high16 v7, 0x42c80000    # 100.0f

    invoke-direct {p0, v2, v3, v6, v7}, Lcom/oplus/darkmode/OplusDarkModeManager;->setForceDarkArgs(Landroid/graphics/HardwareRenderer;FFF)Z

    move-result v1

    .line 166
    :cond_2
    :goto_0
    sget-boolean v3, Lcom/oplus/darkmode/OplusDarkModeManager;->mUseThirdPartyInvert:Z

    if-eqz v3, :cond_3

    .line 167
    invoke-direct {p0}, Lcom/oplus/darkmode/OplusDarkModeManager;->checkThirdInvertArgs()V

    .line 168
    sget-boolean v3, Lcom/oplus/darkmode/OplusDarkModeManager;->mShouldInvalidWorld:Z

    if-eqz v3, :cond_3

    .line 169
    invoke-virtual {p0, p1}, Lcom/oplus/darkmode/OplusDarkModeManager;->invalidateWorld(Landroid/view/View;)V

    .line 170
    sput-boolean v0, Lcom/oplus/darkmode/OplusDarkModeManager;->mShouldInvalidWorld:Z

    .line 171
    sget-boolean v0, Lcom/oplus/darkmode/OplusDarkModeManager;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "-->checkThirdInvertArgs to invalidateWorld"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .end local v2    # "renderer":Landroid/view/ThreadedRenderer;
    :cond_3
    return v1
.end method

.method public whitelist shouldInterceptConfigRelaunch(ILandroid/content/res/Configuration;)Z
    .locals 6
    .param p1, "diff"    # I
    .param p2, "configuration"    # Landroid/content/res/Configuration;

    .line 107
    const/high16 v0, 0x10000000

    and-int/2addr v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 108
    const-class v0, Landroid/content/res/OplusBaseConfiguration;

    invoke-static {v0, p2}, Lcom/oplus/util/OplusTypeCastingHelper;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/OplusBaseConfiguration;

    .line 109
    .local v0, "OplusBaseConfiguration":Landroid/content/res/OplusBaseConfiguration;
    if-eqz v0, :cond_4

    .line 110
    invoke-virtual {v0}, Landroid/content/res/OplusBaseConfiguration;->getOplusExtraConfiguration()Loplus/content/res/OplusExtraConfiguration;

    move-result-object v2

    iget-wide v2, v2, Loplus/content/res/OplusExtraConfiguration;->mOplusConfigType:J

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 111
    const v2, -0x10000001

    and-int/2addr v2, p1

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    .line 112
    .local v2, "hasOtherDiff":Z
    :goto_0
    const-string v4, "OplusDarkModeManager"

    if-eqz v2, :cond_2

    .line 113
    sget-boolean v3, Lcom/oplus/darkmode/OplusDarkModeManager;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shouldInterceptConfigRelaunch-->has dark mode rank change but also other diff-->diff:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_1
    return v1

    .line 118
    :cond_2
    sget-boolean v1, Lcom/oplus/darkmode/OplusDarkModeManager;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shouldInterceptConfigRelaunch-->success-->diff:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_3
    return v3

    .line 125
    .end local v0    # "OplusBaseConfiguration":Landroid/content/res/OplusBaseConfiguration;
    .end local v2    # "hasOtherDiff":Z
    :cond_4
    return v1
.end method

.method public whitelist shouldUseColorForceDark(Landroid/content/Context;Z)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "useCache"    # Z

    .line 372
    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/oplus/darkmode/OplusDarkModeManager;->isSystemApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 375
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/oplus/darkmode/OplusDarkModeManager;->getDarkModeData(Landroid/content/Context;Ljava/lang/String;Z)Lcom/oplus/darkmode/OplusDarkModeData;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/oplus/darkmode/OplusDarkModeManager;->parseOpenByDarkModeData(Landroid/content/Context;Lcom/oplus/darkmode/OplusDarkModeData;)Z

    move-result v0

    return v0

    .line 373
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist useForcePowerSave()Z
    .locals 1

    .line 86
    const/4 v0, 0x0

    return v0
.end method
