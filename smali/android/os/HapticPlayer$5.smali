.class Landroid/os/HapticPlayer$5;
.super Ljava/lang/Object;
.source "HapticPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/HapticPlayer;->stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/os/HapticPlayer;


# direct methods
.method constructor blacklist <init>(Landroid/os/HapticPlayer;)V
    .locals 0
    .param p1, "this$0"    # Landroid/os/HapticPlayer;

    .line 876
    iput-object p1, p0, Landroid/os/HapticPlayer$5;->this$0:Landroid/os/HapticPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 9

    .line 880
    const-string v0, "HapticPlayer"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1, v1, v1}, Landroid/os/RichTapVibrationEffect;->createPatternHeParameter(III)Landroid/os/VibrationEffect;

    move-result-object v1

    .line 881
    .local v1, "createPatternHe":Landroid/os/VibrationEffect;
    invoke-static {v1}, Landroid/os/CombinedVibration;->createParallel(Landroid/os/VibrationEffect;)Landroid/os/CombinedVibration;

    move-result-object v5

    .line 882
    .local v5, "combined":Landroid/os/CombinedVibration;
    iget-object v2, p0, Landroid/os/HapticPlayer$5;->this$0:Landroid/os/HapticPlayer;

    invoke-static {v2}, Landroid/os/HapticPlayer;->-$$Nest$fgetmService(Landroid/os/HapticPlayer;)Landroid/os/IVibratorManagerService;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    iget-object v4, p0, Landroid/os/HapticPlayer$5;->this$0:Landroid/os/HapticPlayer;

    invoke-static {v4}, Landroid/os/HapticPlayer;->-$$Nest$fgetmPackageName(Landroid/os/HapticPlayer;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const-string v7, "DynamicEffect"

    iget-object v8, p0, Landroid/os/HapticPlayer$5;->this$0:Landroid/os/HapticPlayer;

    invoke-static {v8}, Landroid/os/HapticPlayer;->-$$Nest$fgetmToken(Landroid/os/HapticPlayer;)Landroid/os/Binder;

    move-result-object v8

    invoke-interface/range {v2 .. v8}, Landroid/os/IVibratorManagerService;->vibrate(ILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 884
    const-string v2, "haptic play stop"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 888
    nop

    .end local v1    # "createPatternHe":Landroid/os/VibrationEffect;
    .end local v5    # "combined":Landroid/os/CombinedVibration;
    goto :goto_0

    .line 885
    :catch_0
    move-exception v1

    .line 886
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 887
    const-string v2, "for createPatternHe, The system doesn\'t integrate richTap software"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
