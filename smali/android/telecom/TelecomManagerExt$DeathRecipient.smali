.class Landroid/telecom/TelecomManagerExt$DeathRecipient;
.super Ljava/lang/Object;
.source "TelecomManagerExt.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/TelecomManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeathRecipient"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telecom/TelecomManagerExt$DeathRecipient-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/telecom/TelecomManagerExt$DeathRecipient;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .locals 0

    .line 157
    invoke-static {}, Landroid/telecom/TelecomManagerExt;->-$$Nest$smresetServiceCache()V

    .line 158
    return-void
.end method
