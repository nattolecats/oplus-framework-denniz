.class public Lcom/oplus/favorite/OplusFavoriteFactory;
.super Ljava/lang/Object;
.source "OplusFavoriteFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/favorite/OplusFavoriteFactory$OplusEngineNone;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist setEngine(Lcom/oplus/favorite/OplusFavoriteEngines;)Lcom/oplus/favorite/OplusFavoriteEngine;
    .locals 2
    .param p1, "engine"    # Lcom/oplus/favorite/OplusFavoriteEngines;

    .line 37
    sget-object v0, Lcom/oplus/favorite/OplusFavoriteFactory$1;->$SwitchMap$com$oplus$favorite$OplusFavoriteEngines:[I

    invoke-virtual {p1}, Lcom/oplus/favorite/OplusFavoriteEngines;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 42
    new-instance v0, Lcom/oplus/favorite/OplusFavoriteFactory$OplusEngineNone;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/favorite/OplusFavoriteFactory$OplusEngineNone;-><init>(Lcom/oplus/favorite/OplusFavoriteFactory$OplusEngineNone-IA;)V

    return-object v0

    .line 39
    :pswitch_0
    new-instance v0, Lcom/oplus/favorite/OplusEngineTeddy;

    invoke-direct {v0}, Lcom/oplus/favorite/OplusEngineTeddy;-><init>()V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
