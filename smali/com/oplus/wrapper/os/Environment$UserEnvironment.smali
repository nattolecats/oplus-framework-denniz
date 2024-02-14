.class public Lcom/oplus/wrapper/os/Environment$UserEnvironment;
.super Ljava/lang/Object;
.source "Environment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/wrapper/os/Environment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserEnvironment"
.end annotation


# instance fields
.field private final blacklist mUserEnvironment:Landroid/os/Environment$UserEnvironment;


# direct methods
.method public constructor whitelist <init>(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v0, p1}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    iput-object v0, p0, Lcom/oplus/wrapper/os/Environment$UserEnvironment;->mUserEnvironment:Landroid/os/Environment$UserEnvironment;

    .line 57
    return-void
.end method


# virtual methods
.method public whitelist getExternalStorageDirectory()Ljava/io/File;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/oplus/wrapper/os/Environment$UserEnvironment;->mUserEnvironment:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
