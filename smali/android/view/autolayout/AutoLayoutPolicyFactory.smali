.class public Landroid/view/autolayout/AutoLayoutPolicyFactory;
.super Ljava/lang/Object;
.source "AutoLayoutPolicyFactory.java"


# static fields
.field private static blacklist sPolicies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/autolayout/IAutoLayoutPolicy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/view/autolayout/AutoLayoutPolicyFactory;->sPolicies:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist createPolicy(I)Landroid/view/autolayout/IAutoLayoutPolicy;
    .locals 1
    .param p1, "type"    # I

    .line 41
    new-instance v0, Landroid/view/autolayout/AutoLayoutCommonPolicy;

    invoke-direct {v0}, Landroid/view/autolayout/AutoLayoutCommonPolicy;-><init>()V

    .line 42
    .local v0, "policy":Landroid/view/autolayout/IAutoLayoutPolicy;
    return-object v0
.end method


# virtual methods
.method public blacklist getPolicy(I)Landroid/view/autolayout/IAutoLayoutPolicy;
    .locals 2
    .param p1, "type"    # I

    .line 30
    sget-object v0, Landroid/view/autolayout/AutoLayoutPolicyFactory;->sPolicies:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autolayout/IAutoLayoutPolicy;

    .line 31
    .local v0, "policy":Landroid/view/autolayout/IAutoLayoutPolicy;
    if-eqz v0, :cond_0

    .line 32
    return-object v0

    .line 35
    :cond_0
    invoke-direct {p0, p1}, Landroid/view/autolayout/AutoLayoutPolicyFactory;->createPolicy(I)Landroid/view/autolayout/IAutoLayoutPolicy;

    move-result-object v0

    .line 36
    sget-object v1, Landroid/view/autolayout/AutoLayoutPolicyFactory;->sPolicies:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 37
    return-object v0
.end method
