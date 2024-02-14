.class public final enum Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;
.super Ljava/lang/Enum;
.source "AnteaterClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/teddymobile/free/anteater/AnteaterClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;

.field public static final enum blacklist NONE:Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;

.field public static final enum blacklist NOT_FOUND:Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;

.field public static final enum blacklist NOT_INIT:Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;

.field public static final enum blacklist NO_VIEW:Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;

.field public static final enum blacklist SAVE_FAILED:Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;

.field public static final enum blacklist SETTING_OFF:Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;

.field public static final enum blacklist UNSUPPORT:Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 15

    .line 754
    new-instance v0, Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;

    const-string v1, "NO_VIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;->NO_VIEW:Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;

    .line 755
    new-instance v1, Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;

    const-string v3, "NOT_INIT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;->NOT_INIT:Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;

    .line 756
    new-instance v3, Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;

    const-string v5, "NOT_FOUND"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;->NOT_FOUND:Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;

    .line 757
    new-instance v5, Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;

    const-string v7, "UNSUPPORT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;->UNSUPPORT:Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;

    .line 758
    new-instance v7, Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;

    const-string v9, "SETTING_OFF"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;->SETTING_OFF:Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;

    .line 759
    new-instance v9, Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;

    const-string v11, "SAVE_FAILED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;->SAVE_FAILED:Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;

    .line 761
    new-instance v11, Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;

    const-string v13, "NONE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;->NONE:Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;

    .line 752
    const/4 v13, 0x7

    new-array v13, v13, [Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;->$VALUES:[Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 752
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 752
    const-class v0, Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;

    return-object v0
.end method

.method public static blacklist values()[Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;
    .locals 1

    .line 752
    sget-object v0, Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;->$VALUES:[Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;

    invoke-virtual {v0}, [Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;

    return-object v0
.end method
