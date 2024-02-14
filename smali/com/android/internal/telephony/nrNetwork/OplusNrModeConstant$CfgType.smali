.class public final enum Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$CfgType;
.super Ljava/lang/Enum;
.source "OplusNrModeConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CfgType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$CfgType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$CfgType;

.field public static final enum blacklist CITY:Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$CfgType;

.field public static final enum blacklist NONE:Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$CfgType;

.field public static final enum blacklist PROVINCE:Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$CfgType;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 7

    .line 108
    new-instance v0, Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$CfgType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$CfgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$CfgType;->NONE:Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$CfgType;

    .line 109
    new-instance v1, Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$CfgType;

    const-string v3, "CITY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$CfgType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$CfgType;->CITY:Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$CfgType;

    .line 110
    new-instance v3, Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$CfgType;

    const-string v5, "PROVINCE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$CfgType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$CfgType;->PROVINCE:Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$CfgType;

    .line 107
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$CfgType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$CfgType;->$VALUES:[Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$CfgType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 107
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$CfgType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 107
    const-class v0, Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$CfgType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$CfgType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$CfgType;
    .locals 1

    .line 107
    sget-object v0, Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$CfgType;->$VALUES:[Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$CfgType;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$CfgType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$CfgType;

    return-object v0
.end method
