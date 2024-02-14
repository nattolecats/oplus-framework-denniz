.class public Lcom/oplus/wrapper/content/pm/PackageParser;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/wrapper/content/pm/PackageParser$Package;
    }
.end annotation


# instance fields
.field private final blacklist mPackageParser:Landroid/content/pm/PackageParser;


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/content/pm/PackageParser;

    invoke-direct {v0}, Landroid/content/pm/PackageParser;-><init>()V

    iput-object v0, p0, Lcom/oplus/wrapper/content/pm/PackageParser;->mPackageParser:Landroid/content/pm/PackageParser;

    return-void
.end method


# virtual methods
.method public whitelist parsePackage(Ljava/io/File;IZ)Lcom/oplus/wrapper/content/pm/PackageParser$Package;
    .locals 2
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "flags"    # I
    .param p3, "useCaches"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/oplus/wrapper/content/pm/PackageParser;->mPackageParser:Landroid/content/pm/PackageParser;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;IZ)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 63
    .local v0, "parsePackage":Landroid/content/pm/PackageParser$Package;
    new-instance v1, Lcom/oplus/wrapper/content/pm/PackageParser$Package;

    invoke-direct {v1, v0}, Lcom/oplus/wrapper/content/pm/PackageParser$Package;-><init>(Landroid/content/pm/PackageParser$Package;)V

    return-object v1
.end method
