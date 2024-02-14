.class public final enum Lcom/oplus/theme/OplusConvertIcon$IconBgType;
.super Ljava/lang/Enum;
.source "OplusConvertIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/theme/OplusConvertIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IconBgType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/theme/OplusConvertIcon$IconBgType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/oplus/theme/OplusConvertIcon$IconBgType;

.field public static final enum whitelist COVER:Lcom/oplus/theme/OplusConvertIcon$IconBgType;

.field public static final enum whitelist MASK:Lcom/oplus/theme/OplusConvertIcon$IconBgType;

.field public static final enum whitelist SCALE:Lcom/oplus/theme/OplusConvertIcon$IconBgType;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 7

    .line 57
    new-instance v0, Lcom/oplus/theme/OplusConvertIcon$IconBgType;

    const-string v1, "MASK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/theme/OplusConvertIcon$IconBgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/theme/OplusConvertIcon$IconBgType;->MASK:Lcom/oplus/theme/OplusConvertIcon$IconBgType;

    new-instance v1, Lcom/oplus/theme/OplusConvertIcon$IconBgType;

    const-string v3, "COVER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/oplus/theme/OplusConvertIcon$IconBgType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/oplus/theme/OplusConvertIcon$IconBgType;->COVER:Lcom/oplus/theme/OplusConvertIcon$IconBgType;

    new-instance v3, Lcom/oplus/theme/OplusConvertIcon$IconBgType;

    const-string v5, "SCALE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/oplus/theme/OplusConvertIcon$IconBgType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/oplus/theme/OplusConvertIcon$IconBgType;->SCALE:Lcom/oplus/theme/OplusConvertIcon$IconBgType;

    .line 56
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/oplus/theme/OplusConvertIcon$IconBgType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/oplus/theme/OplusConvertIcon$IconBgType;->$VALUES:[Lcom/oplus/theme/OplusConvertIcon$IconBgType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Lcom/oplus/theme/OplusConvertIcon$IconBgType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 56
    const-class v0, Lcom/oplus/theme/OplusConvertIcon$IconBgType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oplus/theme/OplusConvertIcon$IconBgType;

    return-object v0
.end method

.method public static whitelist values()[Lcom/oplus/theme/OplusConvertIcon$IconBgType;
    .locals 1

    .line 56
    sget-object v0, Lcom/oplus/theme/OplusConvertIcon$IconBgType;->$VALUES:[Lcom/oplus/theme/OplusConvertIcon$IconBgType;

    invoke-virtual {v0}, [Lcom/oplus/theme/OplusConvertIcon$IconBgType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/theme/OplusConvertIcon$IconBgType;

    return-object v0
.end method
