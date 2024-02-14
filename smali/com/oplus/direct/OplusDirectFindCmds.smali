.class public final enum Lcom/oplus/direct/OplusDirectFindCmds;
.super Ljava/lang/Enum;
.source "OplusDirectFindCmds.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/direct/OplusDirectFindCmds;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/oplus/direct/OplusDirectFindCmds;

.field public static final enum whitelist FIND_ACTION_CLICK:Lcom/oplus/direct/OplusDirectFindCmds;

.field public static final enum whitelist FIND_ACTION_DOUBLE_CLICK:Lcom/oplus/direct/OplusDirectFindCmds;

.field public static final enum whitelist FIND_ACTION_LONG_CLICK:Lcom/oplus/direct/OplusDirectFindCmds;

.field public static final enum whitelist FIND_ACTIVITY_INFO:Lcom/oplus/direct/OplusDirectFindCmds;

.field public static final enum whitelist FIND_CONTENT:Lcom/oplus/direct/OplusDirectFindCmds;

.field public static final enum whitelist FIND_FAVORITE:Lcom/oplus/direct/OplusDirectFindCmds;

.field public static final enum whitelist FIND_REFLECTION_INFO:Lcom/oplus/direct/OplusDirectFindCmds;

.field public static final enum whitelist FIND_TEXT:Lcom/oplus/direct/OplusDirectFindCmds;

.field public static final enum whitelist FIND_VIEW_INFO:Lcom/oplus/direct/OplusDirectFindCmds;

.field public static final enum whitelist SAVE_FAVORITE:Lcom/oplus/direct/OplusDirectFindCmds;

.field public static final enum whitelist UNKNOWN:Lcom/oplus/direct/OplusDirectFindCmds;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 16

    .line 32
    new-instance v0, Lcom/oplus/direct/OplusDirectFindCmds;

    const-string v1, "FIND_TEXT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/direct/OplusDirectFindCmds;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/direct/OplusDirectFindCmds;->FIND_TEXT:Lcom/oplus/direct/OplusDirectFindCmds;

    .line 38
    new-instance v1, Lcom/oplus/direct/OplusDirectFindCmds;

    const-string v3, "FIND_FAVORITE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/oplus/direct/OplusDirectFindCmds;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/oplus/direct/OplusDirectFindCmds;->FIND_FAVORITE:Lcom/oplus/direct/OplusDirectFindCmds;

    .line 44
    new-instance v3, Lcom/oplus/direct/OplusDirectFindCmds;

    const-string v5, "SAVE_FAVORITE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/oplus/direct/OplusDirectFindCmds;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/oplus/direct/OplusDirectFindCmds;->SAVE_FAVORITE:Lcom/oplus/direct/OplusDirectFindCmds;

    .line 50
    new-instance v5, Lcom/oplus/direct/OplusDirectFindCmds;

    const-string v7, "FIND_CONTENT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/oplus/direct/OplusDirectFindCmds;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/oplus/direct/OplusDirectFindCmds;->FIND_CONTENT:Lcom/oplus/direct/OplusDirectFindCmds;

    .line 56
    new-instance v7, Lcom/oplus/direct/OplusDirectFindCmds;

    const-string v9, "FIND_ACTION_CLICK"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/oplus/direct/OplusDirectFindCmds;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/oplus/direct/OplusDirectFindCmds;->FIND_ACTION_CLICK:Lcom/oplus/direct/OplusDirectFindCmds;

    .line 62
    new-instance v9, Lcom/oplus/direct/OplusDirectFindCmds;

    const-string v11, "FIND_ACTION_DOUBLE_CLICK"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/oplus/direct/OplusDirectFindCmds;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/oplus/direct/OplusDirectFindCmds;->FIND_ACTION_DOUBLE_CLICK:Lcom/oplus/direct/OplusDirectFindCmds;

    .line 68
    new-instance v11, Lcom/oplus/direct/OplusDirectFindCmds;

    const-string v13, "FIND_ACTION_LONG_CLICK"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/oplus/direct/OplusDirectFindCmds;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/oplus/direct/OplusDirectFindCmds;->FIND_ACTION_LONG_CLICK:Lcom/oplus/direct/OplusDirectFindCmds;

    .line 74
    new-instance v13, Lcom/oplus/direct/OplusDirectFindCmds;

    const-string v15, "FIND_ACTIVITY_INFO"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/oplus/direct/OplusDirectFindCmds;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/oplus/direct/OplusDirectFindCmds;->FIND_ACTIVITY_INFO:Lcom/oplus/direct/OplusDirectFindCmds;

    .line 80
    new-instance v15, Lcom/oplus/direct/OplusDirectFindCmds;

    const-string v14, "FIND_VIEW_INFO"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/oplus/direct/OplusDirectFindCmds;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/oplus/direct/OplusDirectFindCmds;->FIND_VIEW_INFO:Lcom/oplus/direct/OplusDirectFindCmds;

    .line 86
    new-instance v14, Lcom/oplus/direct/OplusDirectFindCmds;

    const-string v12, "FIND_REFLECTION_INFO"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/oplus/direct/OplusDirectFindCmds;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/oplus/direct/OplusDirectFindCmds;->FIND_REFLECTION_INFO:Lcom/oplus/direct/OplusDirectFindCmds;

    .line 92
    new-instance v12, Lcom/oplus/direct/OplusDirectFindCmds;

    const-string v10, "UNKNOWN"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/oplus/direct/OplusDirectFindCmds;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/oplus/direct/OplusDirectFindCmds;->UNKNOWN:Lcom/oplus/direct/OplusDirectFindCmds;

    .line 26
    const/16 v10, 0xb

    new-array v10, v10, [Lcom/oplus/direct/OplusDirectFindCmds;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    const/4 v0, 0x3

    aput-object v5, v10, v0

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v15, v10, v0

    const/16 v0, 0x9

    aput-object v14, v10, v0

    aput-object v12, v10, v8

    sput-object v10, Lcom/oplus/direct/OplusDirectFindCmds;->$VALUES:[Lcom/oplus/direct/OplusDirectFindCmds;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Lcom/oplus/direct/OplusDirectFindCmds;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 26
    const-class v0, Lcom/oplus/direct/OplusDirectFindCmds;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oplus/direct/OplusDirectFindCmds;

    return-object v0
.end method

.method public static whitelist values()[Lcom/oplus/direct/OplusDirectFindCmds;
    .locals 1

    .line 26
    sget-object v0, Lcom/oplus/direct/OplusDirectFindCmds;->$VALUES:[Lcom/oplus/direct/OplusDirectFindCmds;

    invoke-virtual {v0}, [Lcom/oplus/direct/OplusDirectFindCmds;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/direct/OplusDirectFindCmds;

    return-object v0
.end method
