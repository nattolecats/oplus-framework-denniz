.class public Loplus/util/OplusSafeCenterFeature;
.super Ljava/lang/Object;
.source "OplusSafeCenterFeature.java"


# static fields
.field private static blacklist mAssociateStartFeature:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 22
    const/4 v0, 0x1

    sput-boolean v0, Loplus/util/OplusSafeCenterFeature;->mAssociateStartFeature:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist isAssociationStartEnabled()Z
    .locals 1

    .line 25
    sget-boolean v0, Loplus/util/OplusSafeCenterFeature;->mAssociateStartFeature:Z

    return v0
.end method

.method public static blacklist isLaunchRecordEnabled()Z
    .locals 1

    .line 33
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist setAssociationStartFeature(Z)V
    .locals 0
    .param p0, "enabled"    # Z

    .line 29
    sput-boolean p0, Loplus/util/OplusSafeCenterFeature;->mAssociateStartFeature:Z

    .line 30
    return-void
.end method
