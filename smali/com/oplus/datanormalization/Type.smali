.class public final enum Lcom/oplus/datanormalization/Type;
.super Ljava/lang/Enum;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/datanormalization/Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/oplus/datanormalization/Type;

.field public static final enum whitelist EXTERNAL:Lcom/oplus/datanormalization/Type;

.field public static final enum whitelist INTERNAL:Lcom/oplus/datanormalization/Type;

.field public static final enum whitelist INTERNAL_PENDING:Lcom/oplus/datanormalization/Type;


# instance fields
.field private final blacklist type:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 8

    .line 23
    new-instance v0, Lcom/oplus/datanormalization/Type;

    const-string v1, "INTERNAL"

    const/4 v2, 0x0

    const-string v3, "internal"

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/datanormalization/Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oplus/datanormalization/Type;->INTERNAL:Lcom/oplus/datanormalization/Type;

    .line 31
    new-instance v1, Lcom/oplus/datanormalization/Type;

    const-string v3, "INTERNAL_PENDING"

    const/4 v4, 0x1

    const-string v5, "internal_pending"

    invoke-direct {v1, v3, v4, v5}, Lcom/oplus/datanormalization/Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/oplus/datanormalization/Type;->INTERNAL_PENDING:Lcom/oplus/datanormalization/Type;

    .line 32
    new-instance v3, Lcom/oplus/datanormalization/Type;

    const-string v5, "EXTERNAL"

    const/4 v6, 0x2

    const-string v7, "external"

    invoke-direct {v3, v5, v6, v7}, Lcom/oplus/datanormalization/Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/oplus/datanormalization/Type;->EXTERNAL:Lcom/oplus/datanormalization/Type;

    .line 22
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/oplus/datanormalization/Type;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/oplus/datanormalization/Type;->$VALUES:[Lcom/oplus/datanormalization/Type;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput-object p3, p0, Lcom/oplus/datanormalization/Type;->type:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Lcom/oplus/datanormalization/Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 22
    const-class v0, Lcom/oplus/datanormalization/Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oplus/datanormalization/Type;

    return-object v0
.end method

.method public static whitelist values()[Lcom/oplus/datanormalization/Type;
    .locals 1

    .line 22
    sget-object v0, Lcom/oplus/datanormalization/Type;->$VALUES:[Lcom/oplus/datanormalization/Type;

    invoke-virtual {v0}, [Lcom/oplus/datanormalization/Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/datanormalization/Type;

    return-object v0
.end method


# virtual methods
.method public whitelist getType()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/oplus/datanormalization/Type;->type:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/oplus/datanormalization/Type;->type:Ljava/lang/String;

    return-object v0
.end method
