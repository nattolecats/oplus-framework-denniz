.class public abstract Loplus/app/OplusAthenaManagerInternal;
.super Ljava/lang/Object;
.source "OplusAthenaManagerInternal.java"


# static fields
.field public static final blacklist FORCESTOP:Ljava/lang/String; = "forcestop"

.field public static final blacklist KILLER_PID:Ljava/lang/String; = "killer_pid"

.field public static final blacklist KILLER_PKG:Ljava/lang/String; = "killer_pkg"

.field public static final blacklist KILLER_PROC:Ljava/lang/String; = "killer_proc"

.field public static final blacklist KILLER_UID:Ljava/lang/String; = "killer_uid"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist notifyAppExitInfo(Landroid/app/ApplicationExitInfo;Landroid/os/Bundle;)V
.end method
