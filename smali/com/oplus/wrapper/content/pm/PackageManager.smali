.class public Lcom/oplus/wrapper/content/pm/PackageManager;
.super Ljava/lang/Object;
.source "PackageManager.java"


# instance fields
.field private final blacklist mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor whitelist <init>(Landroid/content/pm/PackageManager;)V
    .locals 0
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/oplus/wrapper/content/pm/PackageManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 43
    return-void
.end method


# virtual methods
.method public whitelist getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    .line 55
    .local p1, "outActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v0, p0, Lcom/oplus/wrapper/content/pm/PackageManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method
