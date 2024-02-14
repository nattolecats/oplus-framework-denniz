.class Lcn/teddymobile/free/anteater/AnteaterClient$8;
.super Ljava/lang/Object;
.source "AnteaterClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/teddymobile/free/anteater/AnteaterClient;->findActivityInfo(Ljava/lang/String;Landroid/view/View;Lcn/teddymobile/free/anteater/AnteaterClient$ProcessCallback;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcn/teddymobile/free/anteater/AnteaterClient;

.field final synthetic blacklist val$context:Landroid/content/Context;


# direct methods
.method constructor blacklist <init>(Lcn/teddymobile/free/anteater/AnteaterClient;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcn/teddymobile/free/anteater/AnteaterClient;

    .line 463
    iput-object p1, p0, Lcn/teddymobile/free/anteater/AnteaterClient$8;->this$0:Lcn/teddymobile/free/anteater/AnteaterClient;

    iput-object p2, p0, Lcn/teddymobile/free/anteater/AnteaterClient$8;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 2

    .line 466
    invoke-static {}, Lcn/teddymobile/free/anteater/helper/AnteaterHelper;->getInstance()Lcn/teddymobile/free/anteater/helper/AnteaterHelper;

    move-result-object v0

    .line 467
    .local v0, "helper":Lcn/teddymobile/free/anteater/helper/AnteaterHelper;
    iget-object v1, p0, Lcn/teddymobile/free/anteater/AnteaterClient$8;->val$context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcn/teddymobile/free/anteater/helper/AnteaterHelper;->logActivityInfo(Landroid/app/Activity;)V

    .line 468
    return-void
.end method
