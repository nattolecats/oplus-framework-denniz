.class Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager$RedPackageRUSReceiver;
.super Ljava/lang/Object;
.source "RedPackageAssistRUSManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RedPackageRUSReceiver"
.end annotation


# static fields
.field public static final blacklist OPLUS_COMPONENT_SAFE:Ljava/lang/String; = "oplus.permission.OPLUS_COMPONENT_SAFE"

.field private static final blacklist ROM_UPDATE_CONFIG_SUCCESS_ACTION:Ljava/lang/String; = "oplus.intent.action.ROM_UPDATE_CONFIG_SUCCESS"

.field private static final blacklist ROM_UPDATE_CONFIG_SUCCES_EXTRA:Ljava/lang/String; = "ROM_UPDATE_CONFIG_LIST"

.field private static final blacklist TAG:Ljava/lang/String; = "RomUpdateReceiver"


# instance fields
.field private final blacklist DEBUG:Z

.field private blacklist mReceiver:Landroid/content/BroadcastReceiver;

.field final synthetic blacklist this$0:Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetDEBUG(Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager$RedPackageRUSReceiver;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager$RedPackageRUSReceiver;->DEBUG:Z

    return p0
.end method

.method public constructor blacklist <init>(Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;)V
    .locals 1

    .line 300
    iput-object p1, p0, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager$RedPackageRUSReceiver;->this$0:Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    const-string p1, "RomUpdateReceiver"

    const/4 v0, 0x3

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager$RedPackageRUSReceiver;->DEBUG:Z

    .line 267
    new-instance p1, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager$RedPackageRUSReceiver$1;

    invoke-direct {p1, p0}, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager$RedPackageRUSReceiver$1;-><init>(Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager$RedPackageRUSReceiver;)V

    iput-object p1, p0, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager$RedPackageRUSReceiver;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 302
    return-void
.end method


# virtual methods
.method public blacklist registerRedPackageRUSReceiver(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 305
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 306
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "oplus.intent.action.ROM_UPDATE_CONFIG_SUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 307
    iget-object v1, p0, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager$RedPackageRUSReceiver;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "oplus.permission.OPLUS_COMPONENT_SAFE"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 308
    return-void
.end method
