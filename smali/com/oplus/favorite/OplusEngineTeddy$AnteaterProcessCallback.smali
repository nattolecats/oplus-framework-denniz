.class Lcom/oplus/favorite/OplusEngineTeddy$AnteaterProcessCallback;
.super Lcom/oplus/favorite/OplusEngineTeddy$AnteaterCallback;
.source "OplusEngineTeddy.java"

# interfaces
.implements Lcn/teddymobile/free/anteater/AnteaterClient$ProcessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/favorite/OplusEngineTeddy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnteaterProcessCallback"
.end annotation


# direct methods
.method public constructor blacklist <init>(Lcom/oplus/favorite/OplusFavoriteCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/oplus/favorite/OplusFavoriteCallback;

    .line 237
    invoke-direct {p0, p1}, Lcom/oplus/favorite/OplusEngineTeddy$AnteaterCallback;-><init>(Lcom/oplus/favorite/OplusFavoriteCallback;)V

    .line 238
    return-void
.end method


# virtual methods
.method public blacklist createWorkHandler(Landroid/content/Context;Ljava/lang/String;I)Landroid/os/Handler;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "priority"    # I

    .line 242
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/favorite/OplusEngineTeddy$AnteaterProcessCallback;->onCreateWorkHandler(Landroid/content/Context;Ljava/lang/String;I)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isSettingOff(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 247
    invoke-virtual {p0, p1}, Lcom/oplus/favorite/OplusEngineTeddy$AnteaterProcessCallback;->isSettingOn(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist onProcessResult(Landroid/content/Context;Lcn/teddymobile/free/anteater/AnteaterClient$ResultData;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "result"    # Lcn/teddymobile/free/anteater/AnteaterClient$ResultData;

    .line 252
    invoke-virtual {p0, p1, p2}, Lcom/oplus/favorite/OplusEngineTeddy$AnteaterProcessCallback;->onHandleFinished(Landroid/content/Context;Lcn/teddymobile/free/anteater/AnteaterClient$ResultData;)V

    .line 253
    return-void
.end method
