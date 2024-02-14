.class Landroid/os/HapticPlayer$1;
.super Ljava/lang/Object;
.source "HapticPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/HapticPlayer;->start(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/os/HapticPlayer;

.field final synthetic blacklist val$realLooper:I


# direct methods
.method constructor blacklist <init>(Landroid/os/HapticPlayer;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/os/HapticPlayer;

    .line 652
    iput-object p1, p0, Landroid/os/HapticPlayer$1;->this$0:Landroid/os/HapticPlayer;

    iput p2, p0, Landroid/os/HapticPlayer$1;->val$realLooper:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 10

    .line 655
    const-string v0, "HapticPlayer"

    const-string v1, "haptic play start!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 658
    .local v1, "startRunTime":J
    :try_start_0
    iget-object v3, p0, Landroid/os/HapticPlayer$1;->this$0:Landroid/os/HapticPlayer;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/os/HapticPlayer;->-$$Nest$fputmStarted(Landroid/os/HapticPlayer;Z)V

    .line 659
    iget-object v3, p0, Landroid/os/HapticPlayer$1;->this$0:Landroid/os/HapticPlayer;

    invoke-static {v3}, Landroid/os/HapticPlayer;->-$$Nest$fgetmEffect(Landroid/os/HapticPlayer;)Landroid/os/DynamicEffect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/DynamicEffect;->getPatternInfo()Ljava/lang/String;

    move-result-object v3

    .line 660
    .local v3, "patternJson":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 661
    const-string v4, "pattern is null,can not play!"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    return-void

    .line 664
    :cond_0
    iget-object v4, p0, Landroid/os/HapticPlayer$1;->this$0:Landroid/os/HapticPlayer;

    iget v6, p0, Landroid/os/HapticPlayer$1;->val$realLooper:I

    const/4 v7, 0x0

    const/16 v8, 0xff

    const/4 v9, 0x0

    move-object v5, v3

    invoke-virtual/range {v4 .. v9}, Landroid/os/HapticPlayer;->applyPatternHeWithString(Ljava/lang/String;IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 668
    .end local v3    # "patternJson":Ljava/lang/String;
    goto :goto_0

    .line 665
    :catch_0
    move-exception v3

    .line 666
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 667
    const-string v4, "for createPatternHe, The system doesn\'t integrate richTap software"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 670
    .local v3, "useTime":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "run vibrate thread use time:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    return-void
.end method
