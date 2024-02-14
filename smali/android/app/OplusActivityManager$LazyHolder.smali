.class Landroid/app/OplusActivityManager$LazyHolder;
.super Ljava/lang/Object;
.source "OplusActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/OplusActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static final blacklist INSTANCE:Landroid/app/OplusActivityManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetINSTANCE()Landroid/app/OplusActivityManager;
    .locals 1

    sget-object v0, Landroid/app/OplusActivityManager$LazyHolder;->INSTANCE:Landroid/app/OplusActivityManager;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 241
    new-instance v0, Landroid/app/OplusActivityManager;

    invoke-direct {v0}, Landroid/app/OplusActivityManager;-><init>()V

    sput-object v0, Landroid/app/OplusActivityManager$LazyHolder;->INSTANCE:Landroid/app/OplusActivityManager;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
