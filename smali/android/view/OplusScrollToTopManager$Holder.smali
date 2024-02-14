.class Landroid/view/OplusScrollToTopManager$Holder;
.super Ljava/lang/Object;
.source "OplusScrollToTopManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/OplusScrollToTopManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final blacklist INSTANCE:Landroid/view/OplusScrollToTopManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetINSTANCE()Landroid/view/OplusScrollToTopManager;
    .locals 1

    sget-object v0, Landroid/view/OplusScrollToTopManager$Holder;->INSTANCE:Landroid/view/OplusScrollToTopManager;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 94
    new-instance v0, Landroid/view/OplusScrollToTopManager;

    invoke-direct {v0}, Landroid/view/OplusScrollToTopManager;-><init>()V

    sput-object v0, Landroid/view/OplusScrollToTopManager$Holder;->INSTANCE:Landroid/view/OplusScrollToTopManager;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
