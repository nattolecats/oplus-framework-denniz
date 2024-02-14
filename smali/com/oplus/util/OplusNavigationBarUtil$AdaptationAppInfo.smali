.class Lcom/oplus/util/OplusNavigationBarUtil$AdaptationAppInfo;
.super Ljava/lang/Object;
.source "OplusNavigationBarUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/util/OplusNavigationBarUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdaptationAppInfo"
.end annotation


# instance fields
.field blacklist mActivityColorList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mColorArray:Landroid/util/SparseIntArray;

.field blacklist mDefaultColor:I

.field blacklist mIsNeedPalette:Z

.field blacklist mKeys:[I

.field blacklist mPkg:Ljava/lang/String;

.field final synthetic blacklist this$0:Lcom/oplus/util/OplusNavigationBarUtil;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/util/OplusNavigationBarUtil;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/util/OplusNavigationBarUtil;

    .line 117
    iput-object p1, p0, Lcom/oplus/util/OplusNavigationBarUtil$AdaptationAppInfo;->this$0:Lcom/oplus/util/OplusNavigationBarUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
