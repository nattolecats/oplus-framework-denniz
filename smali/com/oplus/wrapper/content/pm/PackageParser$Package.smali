.class public final Lcom/oplus/wrapper/content/pm/PackageParser$Package;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/wrapper/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Package"
.end annotation


# instance fields
.field private final blacklist mPackage:Landroid/content/pm/PackageParser$Package;


# direct methods
.method constructor blacklist <init>(Landroid/content/pm/PackageParser$Package;)V
    .locals 0
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/oplus/wrapper/content/pm/PackageParser$Package;->mPackage:Landroid/content/pm/PackageParser$Package;

    .line 86
    return-void
.end method


# virtual methods
.method public whitelist getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/oplus/wrapper/content/pm/PackageParser$Package;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/oplus/wrapper/content/pm/PackageParser$Package;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getVersionCode()I
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/oplus/wrapper/content/pm/PackageParser$Package;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget v0, v0, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    return v0
.end method

.method public whitelist getVersionName()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/oplus/wrapper/content/pm/PackageParser$Package;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    return-object v0
.end method
