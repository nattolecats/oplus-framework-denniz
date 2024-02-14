.class public final enum Lcom/android/server/FeaturePriority;
.super Ljava/lang/Enum;
.source "FeaturePriority.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/FeaturePriority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/server/FeaturePriority;

.field public static final enum blacklist END:Lcom/android/server/FeaturePriority;

.field public static final enum blacklist PRIORITY_CARRIER:Lcom/android/server/FeaturePriority;

.field public static final enum blacklist PRIORITY_COMPANY:Lcom/android/server/FeaturePriority;

.field public static final enum blacklist PRIORITY_ENGINEER:Lcom/android/server/FeaturePriority;

.field public static final enum blacklist PRIORITY_PRODUCT:Lcom/android/server/FeaturePriority;

.field public static final enum blacklist PRIORITY_REGION:Lcom/android/server/FeaturePriority;

.field public static final enum blacklist PRIORITY_STOCK:Lcom/android/server/FeaturePriority;

.field public static final enum blacklist PRIORITY_SYSTEM:Lcom/android/server/FeaturePriority;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 16

    .line 21
    new-instance v0, Lcom/android/server/FeaturePriority;

    const-string v1, "PRIORITY_SYSTEM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/FeaturePriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/FeaturePriority;->PRIORITY_SYSTEM:Lcom/android/server/FeaturePriority;

    .line 22
    new-instance v1, Lcom/android/server/FeaturePriority;

    const-string v3, "PRIORITY_STOCK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/server/FeaturePriority;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/FeaturePriority;->PRIORITY_STOCK:Lcom/android/server/FeaturePriority;

    .line 23
    new-instance v3, Lcom/android/server/FeaturePriority;

    const-string v5, "PRIORITY_PRODUCT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/server/FeaturePriority;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/server/FeaturePriority;->PRIORITY_PRODUCT:Lcom/android/server/FeaturePriority;

    .line 24
    new-instance v5, Lcom/android/server/FeaturePriority;

    const-string v7, "PRIORITY_REGION"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/server/FeaturePriority;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/server/FeaturePriority;->PRIORITY_REGION:Lcom/android/server/FeaturePriority;

    .line 25
    new-instance v7, Lcom/android/server/FeaturePriority;

    const-string v9, "PRIORITY_CARRIER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/android/server/FeaturePriority;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/server/FeaturePriority;->PRIORITY_CARRIER:Lcom/android/server/FeaturePriority;

    .line 26
    new-instance v9, Lcom/android/server/FeaturePriority;

    const-string v11, "PRIORITY_COMPANY"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/android/server/FeaturePriority;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/server/FeaturePriority;->PRIORITY_COMPANY:Lcom/android/server/FeaturePriority;

    .line 27
    new-instance v11, Lcom/android/server/FeaturePriority;

    const-string v13, "PRIORITY_ENGINEER"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/android/server/FeaturePriority;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/android/server/FeaturePriority;->PRIORITY_ENGINEER:Lcom/android/server/FeaturePriority;

    .line 28
    new-instance v13, Lcom/android/server/FeaturePriority;

    const-string v15, "END"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/android/server/FeaturePriority;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/android/server/FeaturePriority;->END:Lcom/android/server/FeaturePriority;

    .line 20
    const/16 v15, 0x8

    new-array v15, v15, [Lcom/android/server/FeaturePriority;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lcom/android/server/FeaturePriority;->$VALUES:[Lcom/android/server/FeaturePriority;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/server/FeaturePriority;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 20
    const-class v0, Lcom/android/server/FeaturePriority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/FeaturePriority;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/server/FeaturePriority;
    .locals 1

    .line 20
    sget-object v0, Lcom/android/server/FeaturePriority;->$VALUES:[Lcom/android/server/FeaturePriority;

    invoke-virtual {v0}, [Lcom/android/server/FeaturePriority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/FeaturePriority;

    return-object v0
.end method
