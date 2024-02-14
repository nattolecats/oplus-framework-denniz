.class public final enum Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;
.super Ljava/lang/Enum;
.source "IccCardConstantsExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/internal/telephony/IccCardConstantsExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CardType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;

.field public static final enum blacklist CARD_NOT_INSERTED:Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;

.field public static final enum blacklist CT_3G_UIM_CARD:Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;

.field public static final enum blacklist CT_4G_UICC_CARD:Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;

.field public static final enum blacklist CT_EXCEL_GG_CARD:Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;

.field public static final enum blacklist CT_UIM_SIM_CARD:Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;

.field public static final enum blacklist LOCKED_CARD:Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;

.field public static final enum blacklist NOT_CT_UICC_CARD:Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;

.field public static final enum blacklist PIN_LOCK_CARD:Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;

.field public static final enum blacklist SIM_CARD:Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;

.field public static final enum blacklist UIM_CARD:Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;

.field public static final enum blacklist UIM_SIM_CARD:Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;

.field public static final enum blacklist UNKNOW_CARD:Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;


# instance fields
.field private blacklist mValue:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 16

    .line 59
    new-instance v0, Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;

    const-string v1, "UIM_CARD"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;->UIM_CARD:Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;

    .line 60
    new-instance v1, Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;

    const-string v4, "SIM_CARD"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;->SIM_CARD:Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;

    .line 61
    new-instance v4, Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;

    const-string v6, "UIM_SIM_CARD"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;->UIM_SIM_CARD:Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;

    .line 62
    new-instance v6, Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;

    const-string v8, "UNKNOW_CARD"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;->UNKNOW_CARD:Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;

    .line 63
    new-instance v8, Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;

    const-string v10, "CT_3G_UIM_CARD"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;->CT_3G_UIM_CARD:Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;

    .line 64
    new-instance v10, Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;

    const-string v12, "CT_UIM_SIM_CARD"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v11, v13}, Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;->CT_UIM_SIM_CARD:Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;

    .line 65
    new-instance v12, Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;

    const-string v14, "PIN_LOCK_CARD"

    const/4 v15, 0x7

    invoke-direct {v12, v14, v13, v15}, Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;->PIN_LOCK_CARD:Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;

    .line 66
    new-instance v14, Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;

    const-string v13, "CT_4G_UICC_CARD"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v15, v11}, Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;->CT_4G_UICC_CARD:Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;

    .line 67
    new-instance v13, Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;

    const-string v15, "NOT_CT_UICC_CARD"

    const/16 v9, 0x9

    invoke-direct {v13, v15, v11, v9}, Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;->NOT_CT_UICC_CARD:Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;

    .line 68
    new-instance v15, Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;

    const-string v11, "CT_EXCEL_GG_CARD"

    const/16 v7, 0xa

    invoke-direct {v15, v11, v9, v7}, Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;->CT_EXCEL_GG_CARD:Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;

    .line 69
    new-instance v11, Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;

    const-string v9, "LOCKED_CARD"

    const/16 v5, 0x12

    invoke-direct {v11, v9, v7, v5}, Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;->LOCKED_CARD:Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;

    .line 70
    new-instance v5, Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;

    const-string v9, "CARD_NOT_INSERTED"

    const/16 v7, 0xb

    const/16 v3, 0xff

    invoke-direct {v5, v9, v7, v3}, Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;->CARD_NOT_INSERTED:Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;

    .line 58
    const/16 v3, 0xc

    new-array v3, v3, [Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;

    aput-object v0, v3, v2

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v4, v3, v0

    const/4 v0, 0x3

    aput-object v6, v3, v0

    const/4 v0, 0x4

    aput-object v8, v3, v0

    const/4 v0, 0x5

    aput-object v10, v3, v0

    const/4 v0, 0x6

    aput-object v12, v3, v0

    const/4 v0, 0x7

    aput-object v14, v3, v0

    const/16 v0, 0x8

    aput-object v13, v3, v0

    const/16 v0, 0x9

    aput-object v15, v3, v0

    const/16 v0, 0xa

    aput-object v11, v3, v0

    aput-object v5, v3, v7

    sput-object v3, Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;->$VALUES:[Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 75
    iput p3, p0, Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;->mValue:I

    .line 76
    return-void
.end method

.method public static blacklist getCardTypeFromInt(I)Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;
    .locals 4
    .param p0, "cardTypeInt"    # I

    .line 96
    sget-object v0, Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;->UNKNOW_CARD:Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;

    .line 97
    .local v0, "cardType":Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;
    invoke-static {}, Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;->values()[Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;

    move-result-object v1

    .line 98
    .local v1, "cardTypes":[Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;
    if-eqz v1, :cond_1

    .line 99
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 100
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;->getValue()I

    move-result v3

    if-ne v3, p0, :cond_0

    .line 101
    aget-object v0, v1, v2

    .line 102
    goto :goto_1

    .line 99
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 106
    .end local v2    # "i":I
    :cond_1
    :goto_1
    return-object v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 58
    const-class v0, Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;
    .locals 1

    .line 58
    sget-object v0, Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;->$VALUES:[Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;

    invoke-virtual {v0}, [Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;

    return-object v0
.end method


# virtual methods
.method public blacklist getValue()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;->mValue:I

    return v0
.end method

.method public blacklist is4GCard()Z
    .locals 1

    .line 86
    sget-object v0, Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;->CT_4G_UICC_CARD:Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;->NOT_CT_UICC_CARD:Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
