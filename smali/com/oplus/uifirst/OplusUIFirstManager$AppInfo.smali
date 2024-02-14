.class Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;
.super Ljava/lang/Object;
.source "OplusUIFirstManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/uifirst/OplusUIFirstManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppInfo"
.end annotation


# instance fields
.field blacklist mAppPid:I

.field blacklist mHwuiTasks:Landroid/util/IntArray;

.field blacklist mPackageName:Ljava/lang/String;

.field blacklist mRenderThreadTid:I


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;IILandroid/util/IntArray;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appPid"    # I
    .param p3, "renderThreadTid"    # I
    .param p4, "hwuiTasks"    # Landroid/util/IntArray;

    .line 660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 661
    iput-object p1, p0, Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;->mPackageName:Ljava/lang/String;

    .line 662
    iput p2, p0, Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;->mAppPid:I

    .line 663
    iput p3, p0, Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;->mRenderThreadTid:I

    .line 664
    iput-object p4, p0, Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;->mHwuiTasks:Landroid/util/IntArray;

    .line 665
    return-void
.end method
