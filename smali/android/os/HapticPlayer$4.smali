.class Landroid/os/HapticPlayer$4;
.super Ljava/lang/Object;
.source "HapticPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/HapticPlayer;->applyPatternHeParam(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/os/HapticPlayer;

.field final synthetic blacklist val$amplitude:I

.field final synthetic blacklist val$freq:I

.field final synthetic blacklist val$interval:I


# direct methods
.method constructor blacklist <init>(Landroid/os/HapticPlayer;III)V
    .locals 0
    .param p1, "this$0"    # Landroid/os/HapticPlayer;

    .line 811
    iput-object p1, p0, Landroid/os/HapticPlayer$4;->this$0:Landroid/os/HapticPlayer;

    iput p2, p0, Landroid/os/HapticPlayer$4;->val$interval:I

    iput p3, p0, Landroid/os/HapticPlayer$4;->val$amplitude:I

    iput p4, p0, Landroid/os/HapticPlayer$4;->val$freq:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 10

    .line 815
    const-string v0, "HapticPlayer"

    :try_start_0
    iget v1, p0, Landroid/os/HapticPlayer$4;->val$interval:I

    iget v2, p0, Landroid/os/HapticPlayer$4;->val$amplitude:I

    iget v3, p0, Landroid/os/HapticPlayer$4;->val$freq:I

    invoke-static {v1, v2, v3}, Landroid/os/RichTapVibrationEffect;->createPatternHeParameter(III)Landroid/os/VibrationEffect;

    move-result-object v1

    .line 816
    .local v1, "createPatternHe":Landroid/os/VibrationEffect;
    new-instance v2, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v2}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v7

    .line 817
    .local v7, "attributes":Landroid/os/VibrationAttributes;
    invoke-static {v1}, Landroid/os/CombinedVibration;->createParallel(Landroid/os/VibrationEffect;)Landroid/os/CombinedVibration;

    move-result-object v6

    .line 818
    .local v6, "combined":Landroid/os/CombinedVibration;
    iget-object v2, p0, Landroid/os/HapticPlayer$4;->this$0:Landroid/os/HapticPlayer;

    invoke-static {v2}, Landroid/os/HapticPlayer;->-$$Nest$fgetmService(Landroid/os/HapticPlayer;)Landroid/os/IVibratorManagerService;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    iget-object v2, p0, Landroid/os/HapticPlayer$4;->this$0:Landroid/os/HapticPlayer;

    invoke-static {v2}, Landroid/os/HapticPlayer;->-$$Nest$fgetmPackageName(Landroid/os/HapticPlayer;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "DynamicEffect"

    iget-object v2, p0, Landroid/os/HapticPlayer$4;->this$0:Landroid/os/HapticPlayer;

    invoke-static {v2}, Landroid/os/HapticPlayer;->-$$Nest$fgetmToken(Landroid/os/HapticPlayer;)Landroid/os/Binder;

    move-result-object v9

    invoke-interface/range {v3 .. v9}, Landroid/os/IVibratorManagerService;->vibrate(ILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 820
    const-string v2, "haptic apply param"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 824
    nop

    .end local v1    # "createPatternHe":Landroid/os/VibrationEffect;
    .end local v6    # "combined":Landroid/os/CombinedVibration;
    .end local v7    # "attributes":Landroid/os/VibrationAttributes;
    goto :goto_0

    .line 821
    :catch_0
    move-exception v1

    .line 822
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 823
    const-string v2, "for createPatternHe, The system doesn\'t integrate richTap software"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
