.class Lcom/oplus/quicksettings/OplusTileManager$1;
.super Landroid/util/Singleton;
.source "OplusTileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quicksettings/OplusTileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Lcom/oplus/quicksettings/OplusTileManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist create()Lcom/oplus/quicksettings/OplusTileManager;
    .locals 1

    .line 47
    new-instance v0, Lcom/oplus/quicksettings/OplusTileManager;

    invoke-direct {v0}, Lcom/oplus/quicksettings/OplusTileManager;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic blacklist create()Ljava/lang/Object;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/oplus/quicksettings/OplusTileManager$1;->create()Lcom/oplus/quicksettings/OplusTileManager;

    move-result-object v0

    return-object v0
.end method
