.class public Landroid/view/InsetsControllerExtImpl;
.super Ljava/lang/Object;
.source "InsetsControllerExtImpl.java"

# interfaces
.implements Landroid/view/IInsetsControllerExt;


# static fields
.field private static final blacklist ANIMATION_DURATION_UNSYNC_IME_MS:I = 0xc8

.field private static final blacklist ANIMATION_DURATION_UNSYNC_IME_MS_OPLUS:I = 0x190

.field private static final blacklist LINEAR_OUT_SLOW_IN_INTERPOLATOR_OPLUS:Landroid/view/animation/Interpolator;

.field private static blacklist sOplusWindowManager:Landroid/view/OplusWindowManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 5

    .line 25
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/InsetsControllerExtImpl;->LINEAR_OUT_SLOW_IN_INTERPOLATOR_OPLUS:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "base"    # Ljava/lang/Object;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method


# virtual methods
.method public blacklist replaceIMEDurationMs(ZI)J
    .locals 2
    .param p1, "show"    # Z
    .param p2, "time"    # I

    .line 40
    if-eqz p1, :cond_0

    const-wide/16 v0, 0x190

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0xc8

    :goto_0
    return-wide v0
.end method

.method public blacklist replaceIMEInterpolator(Landroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p1, "ip"    # Landroid/view/animation/Interpolator;

    .line 35
    sget-object v0, Landroid/view/InsetsControllerExtImpl;->LINEAR_OUT_SLOW_IN_INTERPOLATOR_OPLUS:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public blacklist setInsetAnimationTid(I)Z
    .locals 5
    .param p1, "type"    # I

    .line 45
    sget-object v0, Landroid/view/InsetsControllerExtImpl;->sOplusWindowManager:Landroid/view/OplusWindowManager;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Landroid/view/OplusWindowManager;

    invoke-direct {v0}, Landroid/view/OplusWindowManager;-><init>()V

    sput-object v0, Landroid/view/InsetsControllerExtImpl;->sOplusWindowManager:Landroid/view/OplusWindowManager;

    .line 49
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 50
    .local v1, "enable":Z
    :goto_0
    sget-object v2, Landroid/view/InsetsControllerExtImpl;->sOplusWindowManager:Landroid/view/OplusWindowManager;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-virtual {v2, v3, v4, v1}, Landroid/view/OplusWindowManager;->setInsetAnimationTid(IIZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    nop

    .end local v1    # "enable":Z
    goto :goto_1

    .line 51
    :catch_0
    move-exception v1

    .line 52
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 54
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    return v0
.end method
