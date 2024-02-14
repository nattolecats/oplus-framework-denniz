.class public final enum Lcom/oplus/favorite/OplusFavoriteEngines;
.super Ljava/lang/Enum;
.source "OplusFavoriteEngines.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/favorite/OplusFavoriteEngines;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/oplus/favorite/OplusFavoriteEngines;

.field public static final enum blacklist TEDDY:Lcom/oplus/favorite/OplusFavoriteEngines;

.field public static final enum blacklist UNKNOWN:Lcom/oplus/favorite/OplusFavoriteEngines;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 5

    .line 23
    new-instance v0, Lcom/oplus/favorite/OplusFavoriteEngines;

    const-string v1, "TEDDY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/favorite/OplusFavoriteEngines;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/favorite/OplusFavoriteEngines;->TEDDY:Lcom/oplus/favorite/OplusFavoriteEngines;

    .line 25
    new-instance v1, Lcom/oplus/favorite/OplusFavoriteEngines;

    const-string v3, "UNKNOWN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/oplus/favorite/OplusFavoriteEngines;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/oplus/favorite/OplusFavoriteEngines;->UNKNOWN:Lcom/oplus/favorite/OplusFavoriteEngines;

    .line 21
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/oplus/favorite/OplusFavoriteEngines;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/oplus/favorite/OplusFavoriteEngines;->$VALUES:[Lcom/oplus/favorite/OplusFavoriteEngines;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/oplus/favorite/OplusFavoriteEngines;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 21
    const-class v0, Lcom/oplus/favorite/OplusFavoriteEngines;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oplus/favorite/OplusFavoriteEngines;

    return-object v0
.end method

.method public static blacklist values()[Lcom/oplus/favorite/OplusFavoriteEngines;
    .locals 1

    .line 21
    sget-object v0, Lcom/oplus/favorite/OplusFavoriteEngines;->$VALUES:[Lcom/oplus/favorite/OplusFavoriteEngines;

    invoke-virtual {v0}, [Lcom/oplus/favorite/OplusFavoriteEngines;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/favorite/OplusFavoriteEngines;

    return-object v0
.end method
