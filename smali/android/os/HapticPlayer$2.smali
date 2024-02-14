.class Landroid/os/HapticPlayer$2;
.super Ljava/lang/Object;
.source "HapticPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/HapticPlayer;->start(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/os/HapticPlayer;

.field final synthetic blacklist val$amplitude:I

.field final synthetic blacklist val$interval:I

.field final synthetic blacklist val$realLooper:I


# direct methods
.method constructor blacklist <init>(Landroid/os/HapticPlayer;III)V
    .locals 0
    .param p1, "this$0"    # Landroid/os/HapticPlayer;

    .line 703
    iput-object p1, p0, Landroid/os/HapticPlayer$2;->this$0:Landroid/os/HapticPlayer;

    iput p2, p0, Landroid/os/HapticPlayer$2;->val$realLooper:I

    iput p3, p0, Landroid/os/HapticPlayer$2;->val$interval:I

    iput p4, p0, Landroid/os/HapticPlayer$2;->val$amplitude:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 10

    .line 706
    const-string v0, "HapticPlayer"

    const-string v1, "haptic play start!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 709
    .local v1, "startRunTime":J
    :try_start_0
    iget-object v3, p0, Landroid/os/HapticPlayer$2;->this$0:Landroid/os/HapticPlayer;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/os/HapticPlayer;->-$$Nest$fputmStarted(Landroid/os/HapticPlayer;Z)V

    .line 710
    iget-object v3, p0, Landroid/os/HapticPlayer$2;->this$0:Landroid/os/HapticPlayer;

    invoke-static {v3}, Landroid/os/HapticPlayer;->-$$Nest$fgetmEffect(Landroid/os/HapticPlayer;)Landroid/os/DynamicEffect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/DynamicEffect;->getPatternInfo()Ljava/lang/String;

    move-result-object v3

    .line 711
    .local v3, "patternJson":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 712
    const-string v4, "pattern is null,can not play!"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    return-void

    .line 715
    :cond_0
    iget-object v4, p0, Landroid/os/HapticPlayer$2;->this$0:Landroid/os/HapticPlayer;

    iget v6, p0, Landroid/os/HapticPlayer$2;->val$realLooper:I

    iget v7, p0, Landroid/os/HapticPlayer$2;->val$interval:I

    iget v8, p0, Landroid/os/HapticPlayer$2;->val$amplitude:I

    const/4 v9, 0x0

    move-object v5, v3

    invoke-virtual/range {v4 .. v9}, Landroid/os/HapticPlayer;->applyPatternHeWithString(Ljava/lang/String;IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 719
    .end local v3    # "patternJson":Ljava/lang/String;
    goto :goto_0

    .line 716
    :catch_0
    move-exception v3

    .line 717
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 718
    const-string v4, "for createPatternHe, The system doesn\'t integrate richTap software"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 721
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

    .line 722
    return-void
.end method
