.class public final enum Lcom/oplus/content/AppfeatureHelper$CACHE_MODE;
.super Ljava/lang/Enum;
.source "AppfeatureHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/content/AppfeatureHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CACHE_MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/content/AppfeatureHelper$CACHE_MODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/oplus/content/AppfeatureHelper$CACHE_MODE;

.field public static final enum blacklist CACHE_AND_DB:Lcom/oplus/content/AppfeatureHelper$CACHE_MODE;

.field public static final enum blacklist CACHE_ONLY:Lcom/oplus/content/AppfeatureHelper$CACHE_MODE;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 5

    .line 32
    new-instance v0, Lcom/oplus/content/AppfeatureHelper$CACHE_MODE;

    const-string v1, "CACHE_ONLY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/content/AppfeatureHelper$CACHE_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/content/AppfeatureHelper$CACHE_MODE;->CACHE_ONLY:Lcom/oplus/content/AppfeatureHelper$CACHE_MODE;

    .line 33
    new-instance v1, Lcom/oplus/content/AppfeatureHelper$CACHE_MODE;

    const-string v3, "CACHE_AND_DB"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/oplus/content/AppfeatureHelper$CACHE_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/oplus/content/AppfeatureHelper$CACHE_MODE;->CACHE_AND_DB:Lcom/oplus/content/AppfeatureHelper$CACHE_MODE;

    .line 31
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/oplus/content/AppfeatureHelper$CACHE_MODE;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/oplus/content/AppfeatureHelper$CACHE_MODE;->$VALUES:[Lcom/oplus/content/AppfeatureHelper$CACHE_MODE;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/oplus/content/AppfeatureHelper$CACHE_MODE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 31
    const-class v0, Lcom/oplus/content/AppfeatureHelper$CACHE_MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oplus/content/AppfeatureHelper$CACHE_MODE;

    return-object v0
.end method

.method public static blacklist values()[Lcom/oplus/content/AppfeatureHelper$CACHE_MODE;
    .locals 1

    .line 31
    sget-object v0, Lcom/oplus/content/AppfeatureHelper$CACHE_MODE;->$VALUES:[Lcom/oplus/content/AppfeatureHelper$CACHE_MODE;

    invoke-virtual {v0}, [Lcom/oplus/content/AppfeatureHelper$CACHE_MODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/content/AppfeatureHelper$CACHE_MODE;

    return-object v0
.end method
