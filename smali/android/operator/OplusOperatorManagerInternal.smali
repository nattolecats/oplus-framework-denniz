.class public abstract Landroid/operator/OplusOperatorManagerInternal;
.super Ljava/lang/Object;
.source "OplusOperatorManagerInternal.java"


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist changePackagesStatusForNewUser(I)V
.end method

.method public abstract whitelist deleteFirstSwitchNoneClearFile()V
.end method

.method public abstract whitelist deleteFirstSwitchNoneClearFileInEngineerMasterClear()V
.end method

.method public abstract whitelist getGrantedRuntimePermissionsPostInstall(Ljava/lang/String;)Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist getGrantedRuntimePermissionsPreload(Ljava/lang/String;Z)Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist testInternal()V
.end method
