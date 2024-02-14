.class public final Loplus/util/OplusCommonConstants;
.super Ljava/lang/Object;
.source "OplusCommonConstants.java"


# static fields
.field private static final blacklist COLOR_CALL_TRANSACTION_INDEX:I = 0x2710

.field private static final blacklist COLOR_MESSAGE_INDEX:I = 0x3e8

.field public static final whitelist OPLUS_FIRST_CALL_TRANSACTION:I = 0x2711

.field public static final whitelist OPLUS_FIRST_MESSAGE:I = 0x3e9

.field public static final whitelist OPLUS_GROUP:I = 0x1

.field public static final whitelist OPLUS_LAST_CALL_TRANSACTION:I = 0x4e20

.field public static final whitelist OPLUS_LAST_MESSAGE:I = 0x7d0

.field public static final blacklist OPLUS_LAYOUT_IN_DISPLAY_CUTOUT_MODE_FORCE:I = 0x5

.field private static final blacklist OPPO_CALL_TRANSACTION_INDEX:I = 0x2710

.field private static final blacklist OPPO_FIRST_CALL_TRANSACTION:I = 0x1

.field private static final blacklist OPPO_FIRST_MESSAGE:I = 0x1

.field private static final blacklist OPPO_MESSAGE_INDEX:I = 0x3e8

.field private static final blacklist PSW_CALL_TRANSACTION_INDEX:I = 0x4e20

.field public static final whitelist PSW_FIRST_CALL_TRANSACTION:I = 0x4e21

.field public static final whitelist PSW_FIRST_MESSAGE:I = 0x7d1

.field public static final whitelist PSW_GROUP:I = 0x2

.field public static final whitelist PSW_LAST_CALL_TRANSACTION:I = 0x7530

.field public static final whitelist PSW_LAST_MESSAGE:I = 0xbb8

.field private static final blacklist PSW_MESSAGE_INDEX:I = 0x7d0

.field private static final blacklist SCREEN_CAST_CALL_TRANSACTION_INDEX:I = 0x7530

.field public static final whitelist SCREEN_CAST_FIRST_CALL_TRANSACTION:I = 0x7531

.field public static final whitelist SCREEN_CAST_LAST_CALL_TRANSACTION:I = 0x9c40

.field private static final blacklist TAG:Ljava/lang/String; = "OplusCommonConstants"

.field public static final whitelist TYPE_BINDER:I = 0x1

.field public static final whitelist TYPE_MESSAGE:I = 0x2


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist checkBinderCodeValid(II)Z
    .locals 2
    .param p0, "code"    # I
    .param p1, "group"    # I

    .line 77
    packed-switch p1, :pswitch_data_0

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOW group = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusCommonConstants"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 v0, 0x0

    return v0

    .line 82
    :pswitch_0
    const/16 v0, 0x4e21

    const/16 v1, 0x7530

    invoke-static {p0, v0, v1}, Loplus/util/OplusCommonConstants;->inside(III)Z

    move-result v0

    return v0

    .line 79
    :pswitch_1
    const/16 v0, 0x2711

    const/16 v1, 0x4e20

    invoke-static {p0, v0, v1}, Loplus/util/OplusCommonConstants;->inside(III)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static whitelist checkCodeValid(III)Z
    .locals 2
    .param p0, "code"    # I
    .param p1, "type"    # I
    .param p2, "group"    # I

    .line 63
    packed-switch p1, :pswitch_data_0

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOW type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusCommonConstants"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v0, 0x0

    return v0

    .line 68
    :pswitch_0
    invoke-static {p0, p2}, Loplus/util/OplusCommonConstants;->checkMessageCodeValie(II)Z

    move-result v0

    return v0

    .line 65
    :pswitch_1
    invoke-static {p0, p2}, Loplus/util/OplusCommonConstants;->checkBinderCodeValid(II)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist checkMessageCodeValie(II)Z
    .locals 2
    .param p0, "code"    # I
    .param p1, "group"    # I

    .line 91
    packed-switch p1, :pswitch_data_0

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uknow group = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusCommonConstants"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v0, 0x0

    return v0

    .line 96
    :pswitch_0
    const/16 v0, 0x7d1

    const/16 v1, 0xbb8

    invoke-static {p0, v0, v1}, Loplus/util/OplusCommonConstants;->inside(III)Z

    move-result v0

    return v0

    .line 93
    :pswitch_1
    const/16 v0, 0x3e9

    const/16 v1, 0x7d0

    invoke-static {p0, v0, v1}, Loplus/util/OplusCommonConstants;->inside(III)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist inside(III)Z
    .locals 1
    .param p0, "code"    # I
    .param p1, "first"    # I
    .param p2, "last"    # I

    .line 105
    if-lt p0, p1, :cond_0

    if-gt p0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
