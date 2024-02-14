.class Landroid/content/pm/PackagePartitionsExtImpl$LazyHolder;
.super Ljava/lang/Object;
.source "PackagePartitionsExtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackagePartitionsExtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static final blacklist INSTANCE:Landroid/content/pm/PackagePartitionsExtImpl;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetINSTANCE()Landroid/content/pm/PackagePartitionsExtImpl;
    .locals 1

    sget-object v0, Landroid/content/pm/PackagePartitionsExtImpl$LazyHolder;->INSTANCE:Landroid/content/pm/PackagePartitionsExtImpl;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 127
    new-instance v0, Landroid/content/pm/PackagePartitionsExtImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/pm/PackagePartitionsExtImpl;-><init>(Landroid/content/pm/PackagePartitionsExtImpl-IA;)V

    sput-object v0, Landroid/content/pm/PackagePartitionsExtImpl$LazyHolder;->INSTANCE:Landroid/content/pm/PackagePartitionsExtImpl;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
