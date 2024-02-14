.class public interface abstract Lcom/oplus/orms/IOplusResourceManager;
.super Ljava/lang/Object;
.source "IOplusResourceManager.java"

# interfaces
.implements Landroid/common/IOplusCommonFeature;


# static fields
.field public static final whitelist DEFAULT:Lcom/oplus/orms/IOplusResourceManager;

.field public static final whitelist NAME:Ljava/lang/String; = "IOplusResourceManager"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/oplus/orms/IOplusResourceManager$1;

    invoke-direct {v0}, Lcom/oplus/orms/IOplusResourceManager$1;-><init>()V

    sput-object v0, Lcom/oplus/orms/IOplusResourceManager;->DEFAULT:Lcom/oplus/orms/IOplusResourceManager;

    return-void
.end method


# virtual methods
.method public whitelist getDefault()Landroid/common/IOplusCommonFeature;
    .locals 1

    .line 39
    sget-object v0, Lcom/oplus/orms/IOplusResourceManager;->DEFAULT:Lcom/oplus/orms/IOplusResourceManager;

    return-object v0
.end method

.method public whitelist index()Landroid/common/OplusFeatureList$OplusIndex;
    .locals 1

    .line 35
    sget-object v0, Landroid/common/OplusFeatureList$OplusIndex;->IOplusResourceManager:Landroid/common/OplusFeatureList$OplusIndex;

    return-object v0
.end method

.method public whitelist ormsClrCtrlData()V
    .locals 0

    .line 50
    return-void
.end method

.method public whitelist ormsClrSceneAction(J)V
    .locals 0
    .param p1, "handle"    # J

    .line 44
    return-void
.end method

.method public whitelist ormsGetModeStatus(I)I
    .locals 1
    .param p1, "mode"    # I

    .line 52
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist ormsGetPerfLimit()[[[J
    .locals 1

    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist ormsSendFling(Landroid/view/MotionEvent;I)V
    .locals 0
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "duration"    # I

    .line 56
    return-void
.end method

.method public whitelist ormsSetCtrlData(Lcom/oplus/orms/info/OrmsCtrlDataParam;)V
    .locals 0
    .param p1, "ormsCtrlDataParam"    # Lcom/oplus/orms/info/OrmsCtrlDataParam;

    .line 48
    return-void
.end method

.method public whitelist ormsSetNotification(Lcom/oplus/orms/info/OrmsNotifyParam;)V
    .locals 0
    .param p1, "ormsNotifyParam"    # Lcom/oplus/orms/info/OrmsNotifyParam;

    .line 46
    return-void
.end method

.method public whitelist ormsSetSceneAction(Lcom/oplus/orms/info/OrmsSaParam;)J
    .locals 2
    .param p1, "ormsSaParam"    # Lcom/oplus/orms/info/OrmsSaParam;

    .line 42
    const-wide/16 v0, -0x1

    return-wide v0
.end method
