.class synthetic Lcom/oplus/favorite/OplusFavoriteFactory$1;
.super Ljava/lang/Object;
.source "OplusFavoriteFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/favorite/OplusFavoriteFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic blacklist $SwitchMap$com$oplus$favorite$OplusFavoriteEngines:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 37
    invoke-static {}, Lcom/oplus/favorite/OplusFavoriteEngines;->values()[Lcom/oplus/favorite/OplusFavoriteEngines;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/oplus/favorite/OplusFavoriteFactory$1;->$SwitchMap$com$oplus$favorite$OplusFavoriteEngines:[I

    :try_start_0
    sget-object v1, Lcom/oplus/favorite/OplusFavoriteEngines;->TEDDY:Lcom/oplus/favorite/OplusFavoriteEngines;

    invoke-virtual {v1}, Lcom/oplus/favorite/OplusFavoriteEngines;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method
