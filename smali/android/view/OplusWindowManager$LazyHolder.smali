.class Landroid/view/OplusWindowManager$LazyHolder;
.super Ljava/lang/Object;
.source "OplusWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/OplusWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static final blacklist INSTANCE:Landroid/view/OplusWindowManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetINSTANCE()Landroid/view/OplusWindowManager;
    .locals 1

    sget-object v0, Landroid/view/OplusWindowManager$LazyHolder;->INSTANCE:Landroid/view/OplusWindowManager;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 87
    new-instance v0, Landroid/view/OplusWindowManager;

    invoke-direct {v0}, Landroid/view/OplusWindowManager;-><init>()V

    sput-object v0, Landroid/view/OplusWindowManager$LazyHolder;->INSTANCE:Landroid/view/OplusWindowManager;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
