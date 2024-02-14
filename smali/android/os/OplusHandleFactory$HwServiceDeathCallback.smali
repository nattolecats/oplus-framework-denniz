.class Landroid/os/OplusHandleFactory$HwServiceDeathCallback;
.super Ljava/lang/Object;
.source "OplusHandleFactory.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/OplusHandleFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HwServiceDeathCallback"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/OplusHandleFactory$HwServiceDeathCallback-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/OplusHandleFactory$HwServiceDeathCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist serviceDied(J)V
    .locals 2
    .param p1, "var1"    # J

    .line 31
    const-wide/16 v0, 0x0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 32
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/OplusHandleFactory;->-$$Nest$sfputsIHandleFactory(Lvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory;)V

    .line 33
    const-string v0, "HandleFactory"

    const-string v1, "HwServiceDeathCallback sIHandleFactory die!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_0
    return-void
.end method
