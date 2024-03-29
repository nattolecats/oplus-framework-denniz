.class public Lcom/oplus/statusbar/OplusStatusBarController;
.super Ljava/lang/Object;
.source "OplusStatusBarController.java"


# static fields
.field private static final blacklist ALPHA:I = 0x9c

.field private static blacklist DEBUG_OPLUS_SYSTEMBAR:Z = false

.field private static final blacklist GRAY_LEVEL:I = 0x96

.field public static final blacklist NAVIGATION_BAR:I = 0x1

.field public static final blacklist OPLUS_NAVIGATION_BAR_COLOR:I = -0x1

.field public static final blacklist STATUS_BAR:I

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist sColorStatusBarControllerSingleton:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/oplus/statusbar/OplusStatusBarController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mNavigationGuardColor:I

.field private blacklist mWm:Landroid/view/OplusWindowManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lcom/oplus/statusbar/OplusStatusBarController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/statusbar/OplusStatusBarController;->TAG:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Lcom/oplus/statusbar/OplusStatusBarController;->DEBUG_OPLUS_SYSTEMBAR:Z

    .line 51
    new-instance v0, Lcom/oplus/statusbar/OplusStatusBarController$1;

    invoke-direct {v0}, Lcom/oplus/statusbar/OplusStatusBarController$1;-><init>()V

    sput-object v0, Lcom/oplus/statusbar/OplusStatusBarController;->sColorStatusBarControllerSingleton:Landroid/util/Singleton;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/statusbar/OplusStatusBarController;->mNavigationGuardColor:I

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/statusbar/OplusStatusBarController;->mWm:Landroid/view/OplusWindowManager;

    .line 60
    new-instance v0, Landroid/view/OplusWindowManager;

    invoke-direct {v0}, Landroid/view/OplusWindowManager;-><init>()V

    iput-object v0, p0, Lcom/oplus/statusbar/OplusStatusBarController;->mWm:Landroid/view/OplusWindowManager;

    .line 61
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/statusbar/OplusStatusBarController;->DEBUG_OPLUS_SYSTEMBAR:Z

    .line 62
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/oplus/statusbar/OplusStatusBarController-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/statusbar/OplusStatusBarController;-><init>()V

    return-void
.end method

.method private blacklist getBarColorFromAdaptation(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "bar"    # I

    .line 112
    const/4 v0, 0x0

    .line 114
    .local v0, "defaultColor":I
    :try_start_0
    iget-object v1, p0, Lcom/oplus/statusbar/OplusStatusBarController;->mWm:Landroid/view/OplusWindowManager;

    if-eqz v1, :cond_1

    .line 115
    if-nez p3, :cond_0

    .line 116
    invoke-virtual {v1, p1, p2}, Landroid/view/OplusWindowManager;->getStatusBarOplusFromAdaptation(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    move v0, v1

    goto :goto_0

    .line 117
    :cond_0
    const/4 v2, 0x1

    if-ne p3, v2, :cond_1

    .line 118
    invoke-virtual {v1, p1, p2}, Landroid/view/OplusWindowManager;->getNavBarOplusFromAdaptation(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 123
    :cond_1
    :goto_0
    goto :goto_1

    .line 121
    :catch_0
    move-exception v1

    .line 122
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/oplus/statusbar/OplusStatusBarController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNavBarOplusFromAdaptation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    return v0
.end method

.method public static blacklist getDarkModeBackgroundColor(Landroid/content/Context;)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .line 153
    const/high16 v0, -0x1000000

    .line 155
    .local v0, "bgColor":I
    if-nez p0, :cond_0

    return v0

    .line 157
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/OplusBaseConfiguration;

    move-result-object v1

    .line 158
    .local v1, "configuration":Landroid/content/res/OplusBaseConfiguration;
    const-class v2, Landroid/content/res/OplusBaseConfiguration;

    .line 159
    invoke-static {v2, v1}, Lcom/oplus/util/OplusTypeCastingHelper;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/OplusBaseConfiguration;

    .line 161
    .local v2, "OplusBaseConfiguration":Landroid/content/res/OplusBaseConfiguration;
    if-eqz v2, :cond_1

    .line 163
    invoke-virtual {v2}, Landroid/content/res/OplusBaseConfiguration;->getOplusExtraConfiguration()Loplus/content/res/OplusExtraConfiguration;

    move-result-object v3

    iget v3, v3, Loplus/content/res/OplusExtraConfiguration;->mDarkModeBackgroundMaxL:F

    .line 164
    .local v3, "bgL":F
    float-to-double v4, v3

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-static/range {v4 .. v9}, Lcom/android/internal/graphics/ColorUtils;->LABToColor(DDD)I

    move-result v0

    .line 165
    sget-boolean v4, Lcom/oplus/statusbar/OplusStatusBarController;->DEBUG_OPLUS_SYSTEMBAR:Z

    if-eqz v4, :cond_1

    .line 166
    sget-object v4, Lcom/oplus/statusbar/OplusStatusBarController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDarkModeBackgroundColor: bgColor = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .end local v3    # "bgL":F
    :cond_1
    return v0
.end method

.method public static blacklist getDefaultNavigationBarColor(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 144
    invoke-static {p0}, Lcom/oplus/util/OplusDarkModeUtil;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-static {p0}, Lcom/oplus/statusbar/OplusStatusBarController;->getDarkModeBackgroundColor(Landroid/content/Context;)I

    move-result v0

    return v0

    .line 147
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private blacklist getImeBgColor(Landroid/content/Context;II)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "color"    # I
    .param p3, "windowColor"    # I

    .line 98
    sget-boolean v0, Lcom/oplus/statusbar/OplusStatusBarController;->DEBUG_OPLUS_SYSTEMBAR:Z

    const-string v1, "getImeBgColor: "

    if-eqz v0, :cond_0

    .line 99
    sget-object v0, Lcom/oplus/statusbar/OplusStatusBarController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " windowColor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    const/high16 v0, -0x1000000

    if-eq p3, v0, :cond_1

    const/4 v0, -0x1

    if-eq p3, v0, :cond_1

    .line 103
    return p3

    .line 105
    :cond_1
    sget-boolean v0, Lcom/oplus/statusbar/OplusStatusBarController;->DEBUG_OPLUS_SYSTEMBAR:Z

    if-eqz v0, :cond_2

    .line 106
    sget-object v0, Lcom/oplus/statusbar/OplusStatusBarController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_2
    return p2
.end method

.method public static blacklist getInstance()Lcom/oplus/statusbar/OplusStatusBarController;
    .locals 1

    .line 65
    sget-object v0, Lcom/oplus/statusbar/OplusStatusBarController;->sColorStatusBarControllerSingleton:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/statusbar/OplusStatusBarController;

    return-object v0
.end method

.method private blacklist isColorLight(I)Z
    .locals 11
    .param p1, "color"    # I

    .line 128
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 129
    return v0

    .line 131
    :cond_0
    const/high16 v1, -0x1000000

    and-int/2addr v1, p1

    ushr-int/lit8 v1, v1, 0x18

    .line 132
    .local v1, "alpha":I
    const/high16 v2, 0xff0000

    and-int/2addr v2, p1

    ushr-int/lit8 v2, v2, 0x10

    .line 133
    .local v2, "red":I
    const v3, 0xff00

    and-int/2addr v3, p1

    ushr-int/lit8 v3, v3, 0x8

    .line 134
    .local v3, "green":I
    and-int/lit16 v4, p1, 0xff

    .line 135
    .local v4, "blue":I
    int-to-double v5, v2

    const-wide v7, 0x3fd322d0e5604189L    # 0.299

    mul-double/2addr v5, v7

    int-to-double v7, v3

    const-wide v9, 0x3fe2c8b439581062L    # 0.587

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    int-to-double v7, v4

    const-wide v9, 0x3fbd2f1a9fbe76c9L    # 0.114

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    double-to-int v5, v5

    .line 136
    .local v5, "grayLevel":I
    const/16 v6, 0x96

    if-le v5, v6, :cond_1

    const/16 v6, 0x9c

    if-le v1, v6, :cond_1

    .line 137
    const/4 v0, 0x1

    return v0

    .line 139
    :cond_1
    return v0
.end method


# virtual methods
.method public blacklist caculateSystemBarColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "activityName"    # Ljava/lang/String;
    .param p4, "themeColor"    # I
    .param p5, "bar"    # I

    .line 69
    invoke-static {p1}, Lcom/oplus/util/OplusDarkModeUtil;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    return p4

    .line 72
    :cond_0
    move v0, p4

    .line 73
    .local v0, "result":I
    invoke-direct {p0, p2, p3, p5}, Lcom/oplus/statusbar/OplusStatusBarController;->getBarColorFromAdaptation(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 74
    .local v1, "barColor":I
    if-eqz v1, :cond_1

    .line 75
    move v0, v1

    .line 77
    :cond_1
    return v0
.end method

.method public blacklist getBottomInset(ZILandroid/view/WindowInsets;)I
    .locals 1
    .param p1, "isImeWindow"    # Z
    .param p2, "normalBottomInset"    # I
    .param p3, "insets"    # Landroid/view/WindowInsets;

    .line 81
    move v0, p2

    .line 82
    .local v0, "result":I
    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {p3}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    .line 85
    :cond_0
    return v0
.end method

.method public blacklist getNavigationGuardColor()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/oplus/statusbar/OplusStatusBarController;->mNavigationGuardColor:I

    return v0
.end method

.method public blacklist updateOplusNavigationGuardColor(Landroid/content/Context;IILandroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "color"    # I
    .param p3, "windowColor"    # I
    .param p4, "decor"    # Landroid/view/View;

    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/statusbar/OplusStatusBarController;->getImeBgColor(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/oplus/statusbar/OplusStatusBarController;->mNavigationGuardColor:I

    .line 91
    return-void
.end method
