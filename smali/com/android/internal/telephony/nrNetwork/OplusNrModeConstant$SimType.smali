.class public final enum Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;
.super Ljava/lang/Enum;
.source "OplusNrModeConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SimType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;

.field public static final enum blacklist SIM_TYPE_CB:Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;

.field public static final enum blacklist SIM_TYPE_CMCC:Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;

.field public static final enum blacklist SIM_TYPE_CT:Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;

.field public static final enum blacklist SIM_TYPE_CU:Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;

.field public static final enum blacklist SIM_TYPE_JIO:Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;

.field public static final enum blacklist SIM_TYPE_OTHER:Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;

.field public static final enum blacklist SIM_TYPE_TEST:Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 15

    .line 98
    new-instance v0, Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;

    const-string v1, "SIM_TYPE_OTHER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;->SIM_TYPE_OTHER:Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;

    .line 99
    new-instance v1, Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;

    const-string v3, "SIM_TYPE_TEST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;->SIM_TYPE_TEST:Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;

    .line 100
    new-instance v3, Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;

    const-string v5, "SIM_TYPE_CMCC"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;->SIM_TYPE_CMCC:Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;

    .line 101
    new-instance v5, Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;

    const-string v7, "SIM_TYPE_CU"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;->SIM_TYPE_CU:Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;

    .line 102
    new-instance v7, Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;

    const-string v9, "SIM_TYPE_CT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;->SIM_TYPE_CT:Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;

    .line 103
    new-instance v9, Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;

    const-string v11, "SIM_TYPE_CB"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;->SIM_TYPE_CB:Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;

    .line 104
    new-instance v11, Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;

    const-string v13, "SIM_TYPE_JIO"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;->SIM_TYPE_JIO:Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;

    .line 97
    const/4 v13, 0x7

    new-array v13, v13, [Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;->$VALUES:[Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 97
    const-class v0, Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;
    .locals 1

    .line 97
    sget-object v0, Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;->$VALUES:[Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;

    return-object v0
.end method
