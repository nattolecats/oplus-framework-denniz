.class public final enum Lcom/oplus/internal/telephony/imsphone/ImsPhoneExt$ImsDialArgsExt$DeferDial;
.super Ljava/lang/Enum;
.source "ImsPhoneExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/internal/telephony/imsphone/ImsPhoneExt$ImsDialArgsExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeferDial"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/internal/telephony/imsphone/ImsPhoneExt$ImsDialArgsExt$DeferDial;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/oplus/internal/telephony/imsphone/ImsPhoneExt$ImsDialArgsExt$DeferDial;

.field public static final enum blacklist DISABLE:Lcom/oplus/internal/telephony/imsphone/ImsPhoneExt$ImsDialArgsExt$DeferDial;

.field public static final enum blacklist ENABLE:Lcom/oplus/internal/telephony/imsphone/ImsPhoneExt$ImsDialArgsExt$DeferDial;

.field public static final enum blacklist INVALID:Lcom/oplus/internal/telephony/imsphone/ImsPhoneExt$ImsDialArgsExt$DeferDial;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 7

    .line 53
    new-instance v0, Lcom/oplus/internal/telephony/imsphone/ImsPhoneExt$ImsDialArgsExt$DeferDial;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/internal/telephony/imsphone/ImsPhoneExt$ImsDialArgsExt$DeferDial;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/internal/telephony/imsphone/ImsPhoneExt$ImsDialArgsExt$DeferDial;->INVALID:Lcom/oplus/internal/telephony/imsphone/ImsPhoneExt$ImsDialArgsExt$DeferDial;

    .line 54
    new-instance v1, Lcom/oplus/internal/telephony/imsphone/ImsPhoneExt$ImsDialArgsExt$DeferDial;

    const-string v3, "ENABLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/oplus/internal/telephony/imsphone/ImsPhoneExt$ImsDialArgsExt$DeferDial;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/oplus/internal/telephony/imsphone/ImsPhoneExt$ImsDialArgsExt$DeferDial;->ENABLE:Lcom/oplus/internal/telephony/imsphone/ImsPhoneExt$ImsDialArgsExt$DeferDial;

    .line 55
    new-instance v3, Lcom/oplus/internal/telephony/imsphone/ImsPhoneExt$ImsDialArgsExt$DeferDial;

    const-string v5, "DISABLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/oplus/internal/telephony/imsphone/ImsPhoneExt$ImsDialArgsExt$DeferDial;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/oplus/internal/telephony/imsphone/ImsPhoneExt$ImsDialArgsExt$DeferDial;->DISABLE:Lcom/oplus/internal/telephony/imsphone/ImsPhoneExt$ImsDialArgsExt$DeferDial;

    .line 52
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/oplus/internal/telephony/imsphone/ImsPhoneExt$ImsDialArgsExt$DeferDial;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/oplus/internal/telephony/imsphone/ImsPhoneExt$ImsDialArgsExt$DeferDial;->$VALUES:[Lcom/oplus/internal/telephony/imsphone/ImsPhoneExt$ImsDialArgsExt$DeferDial;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/oplus/internal/telephony/imsphone/ImsPhoneExt$ImsDialArgsExt$DeferDial;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 52
    const-class v0, Lcom/oplus/internal/telephony/imsphone/ImsPhoneExt$ImsDialArgsExt$DeferDial;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oplus/internal/telephony/imsphone/ImsPhoneExt$ImsDialArgsExt$DeferDial;

    return-object v0
.end method

.method public static blacklist values()[Lcom/oplus/internal/telephony/imsphone/ImsPhoneExt$ImsDialArgsExt$DeferDial;
    .locals 1

    .line 52
    sget-object v0, Lcom/oplus/internal/telephony/imsphone/ImsPhoneExt$ImsDialArgsExt$DeferDial;->$VALUES:[Lcom/oplus/internal/telephony/imsphone/ImsPhoneExt$ImsDialArgsExt$DeferDial;

    invoke-virtual {v0}, [Lcom/oplus/internal/telephony/imsphone/ImsPhoneExt$ImsDialArgsExt$DeferDial;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/internal/telephony/imsphone/ImsPhoneExt$ImsDialArgsExt$DeferDial;

    return-object v0
.end method
