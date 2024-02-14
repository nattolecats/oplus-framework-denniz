.class public Lcom/oplus/wrapper/content/pm/PackageInstaller;
.super Ljava/lang/Object;
.source "PackageInstaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/wrapper/content/pm/PackageInstaller$Session;
    }
.end annotation


# instance fields
.field private final blacklist mPackageInstaller:Landroid/content/pm/PackageInstaller;


# direct methods
.method public constructor whitelist <init>(Landroid/content/pm/PackageInstaller;)V
    .locals 0
    .param p1, "packageInstaller"    # Landroid/content/pm/PackageInstaller;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/oplus/wrapper/content/pm/PackageInstaller;->mPackageInstaller:Landroid/content/pm/PackageInstaller;

    .line 45
    return-void
.end method


# virtual methods
.method public whitelist abandonSession(I)V
    .locals 1
    .param p1, "sessionId"    # I

    .line 101
    iget-object v0, p0, Lcom/oplus/wrapper/content/pm/PackageInstaller;->mPackageInstaller:Landroid/content/pm/PackageInstaller;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageInstaller;->abandonSession(I)V

    .line 102
    return-void
.end method

.method public whitelist createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I
    .locals 1
    .param p1, "params"    # Landroid/content/pm/PackageInstaller$SessionParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/oplus/wrapper/content/pm/PackageInstaller;->mPackageInstaller:Landroid/content/pm/PackageInstaller;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v0

    return v0
.end method

.method public whitelist openSession(I)Landroid/content/pm/PackageInstaller$Session;
    .locals 1
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/oplus/wrapper/content/pm/PackageInstaller;->mPackageInstaller:Landroid/content/pm/PackageInstaller;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v0

    return-object v0
.end method
