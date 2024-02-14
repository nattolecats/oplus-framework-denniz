.class Landroid/view/OplusColorModeManager$LazyHolder;
.super Ljava/lang/Object;
.source "OplusColorModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/OplusColorModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static final blacklist INSTANCE:Landroid/view/OplusColorModeManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetINSTANCE()Landroid/view/OplusColorModeManager;
    .locals 1

    sget-object v0, Landroid/view/OplusColorModeManager$LazyHolder;->INSTANCE:Landroid/view/OplusColorModeManager;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Landroid/view/OplusColorModeManager;

    invoke-direct {v0}, Landroid/view/OplusColorModeManager;-><init>()V

    sput-object v0, Landroid/view/OplusColorModeManager$LazyHolder;->INSTANCE:Landroid/view/OplusColorModeManager;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
