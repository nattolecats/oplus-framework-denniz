.class Lcom/oplus/multiapp/OplusMultiAppManager$1;
.super Landroid/util/Singleton;
.source "OplusMultiAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/multiapp/OplusMultiAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Lcom/oplus/multiapp/OplusMultiAppManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 167
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist create()Lcom/oplus/multiapp/OplusMultiAppManager;
    .locals 2

    .line 170
    new-instance v0, Lcom/oplus/multiapp/OplusMultiAppManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/multiapp/OplusMultiAppManager;-><init>(Lcom/oplus/multiapp/OplusMultiAppManager-IA;)V

    return-object v0
.end method

.method protected bridge synthetic blacklist create()Ljava/lang/Object;
    .locals 1

    .line 167
    invoke-virtual {p0}, Lcom/oplus/multiapp/OplusMultiAppManager$1;->create()Lcom/oplus/multiapp/OplusMultiAppManager;

    move-result-object v0

    return-object v0
.end method
