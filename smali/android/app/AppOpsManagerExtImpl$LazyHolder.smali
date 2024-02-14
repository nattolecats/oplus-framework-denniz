.class Landroid/app/AppOpsManagerExtImpl$LazyHolder;
.super Ljava/lang/Object;
.source "AppOpsManagerExtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManagerExtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static final blacklist INSTANCE:Landroid/app/AppOpsManagerExtImpl;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetINSTANCE()Landroid/app/AppOpsManagerExtImpl;
    .locals 1

    sget-object v0, Landroid/app/AppOpsManagerExtImpl$LazyHolder;->INSTANCE:Landroid/app/AppOpsManagerExtImpl;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Landroid/app/AppOpsManagerExtImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/AppOpsManagerExtImpl;-><init>(Landroid/app/AppOpsManagerExtImpl-IA;)V

    sput-object v0, Landroid/app/AppOpsManagerExtImpl$LazyHolder;->INSTANCE:Landroid/app/AppOpsManagerExtImpl;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
