.class final enum Lcom/oplus/uifirst/Platform;
.super Ljava/lang/Enum;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/uifirst/Platform;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/oplus/uifirst/Platform;

.field public static final enum blacklist MTK:Lcom/oplus/uifirst/Platform;

.field public static final enum blacklist NONE:Lcom/oplus/uifirst/Platform;

.field public static final enum blacklist QCOM:Lcom/oplus/uifirst/Platform;

.field public static final enum blacklist UNKNOWN:Lcom/oplus/uifirst/Platform;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 9

    .line 30
    new-instance v0, Lcom/oplus/uifirst/Platform;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/uifirst/Platform;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/uifirst/Platform;->NONE:Lcom/oplus/uifirst/Platform;

    new-instance v1, Lcom/oplus/uifirst/Platform;

    const-string v3, "UNKNOWN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/oplus/uifirst/Platform;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/oplus/uifirst/Platform;->UNKNOWN:Lcom/oplus/uifirst/Platform;

    new-instance v3, Lcom/oplus/uifirst/Platform;

    const-string v5, "MTK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/oplus/uifirst/Platform;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/oplus/uifirst/Platform;->MTK:Lcom/oplus/uifirst/Platform;

    new-instance v5, Lcom/oplus/uifirst/Platform;

    const-string v7, "QCOM"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/oplus/uifirst/Platform;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/oplus/uifirst/Platform;->QCOM:Lcom/oplus/uifirst/Platform;

    .line 29
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/oplus/uifirst/Platform;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/oplus/uifirst/Platform;->$VALUES:[Lcom/oplus/uifirst/Platform;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/oplus/uifirst/Platform;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 29
    const-class v0, Lcom/oplus/uifirst/Platform;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oplus/uifirst/Platform;

    return-object v0
.end method

.method public static blacklist values()[Lcom/oplus/uifirst/Platform;
    .locals 1

    .line 29
    sget-object v0, Lcom/oplus/uifirst/Platform;->$VALUES:[Lcom/oplus/uifirst/Platform;

    invoke-virtual {v0}, [Lcom/oplus/uifirst/Platform;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/uifirst/Platform;

    return-object v0
.end method
