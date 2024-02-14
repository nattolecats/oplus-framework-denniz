.class Landroid/app/OplusActivityTaskManager$1;
.super Landroid/util/Singleton;
.source "OplusActivityTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/OplusActivityTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Landroid/app/OplusActivityTaskManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 140
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist create()Landroid/app/OplusActivityTaskManager;
    .locals 1

    .line 143
    new-instance v0, Landroid/app/OplusActivityTaskManager;

    invoke-direct {v0}, Landroid/app/OplusActivityTaskManager;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic blacklist create()Ljava/lang/Object;
    .locals 1

    .line 140
    invoke-virtual {p0}, Landroid/app/OplusActivityTaskManager$1;->create()Landroid/app/OplusActivityTaskManager;

    move-result-object v0

    return-object v0
.end method
