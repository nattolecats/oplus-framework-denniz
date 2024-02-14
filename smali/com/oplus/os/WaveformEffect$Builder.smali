.class public Lcom/oplus/os/WaveformEffect$Builder;
.super Ljava/lang/Object;
.source "WaveformEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/os/WaveformEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAsynchronous:Z

.field private blacklist mEffectLoop:Z

.field private blacklist mEffectStrength:I

.field private blacklist mEffectType:I

.field private blacklist mIsRingtoneCustomized:Z

.field private blacklist mRingtoneFilePath:Ljava/lang/String;

.field private blacklist mRingtoneVibrateType:I

.field private blacklist mStrengthSettingEnabled:Z

.field private blacklist mUsageHint:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 3

    .line 2145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2128
    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/os/WaveformEffect$Builder;->mEffectType:I

    .line 2129
    const/4 v1, 0x1

    iput v1, p0, Lcom/oplus/os/WaveformEffect$Builder;->mEffectStrength:I

    .line 2130
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oplus/os/WaveformEffect$Builder;->mEffectLoop:Z

    .line 2131
    iput v0, p0, Lcom/oplus/os/WaveformEffect$Builder;->mRingtoneVibrateType:I

    .line 2132
    iput-boolean v2, p0, Lcom/oplus/os/WaveformEffect$Builder;->mIsRingtoneCustomized:Z

    .line 2133
    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/os/WaveformEffect$Builder;->mRingtoneFilePath:Ljava/lang/String;

    .line 2134
    iput-boolean v1, p0, Lcom/oplus/os/WaveformEffect$Builder;->mStrengthSettingEnabled:Z

    .line 2135
    iput-boolean v2, p0, Lcom/oplus/os/WaveformEffect$Builder;->mAsynchronous:Z

    .line 2136
    iput v2, p0, Lcom/oplus/os/WaveformEffect$Builder;->mUsageHint:I

    .line 2146
    return-void
.end method

.method public constructor whitelist <init>(Lcom/oplus/os/WaveformEffect;)V
    .locals 3
    .param p1, "we"    # Lcom/oplus/os/WaveformEffect;

    .line 2153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2128
    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/os/WaveformEffect$Builder;->mEffectType:I

    .line 2129
    const/4 v1, 0x1

    iput v1, p0, Lcom/oplus/os/WaveformEffect$Builder;->mEffectStrength:I

    .line 2130
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oplus/os/WaveformEffect$Builder;->mEffectLoop:Z

    .line 2131
    iput v0, p0, Lcom/oplus/os/WaveformEffect$Builder;->mRingtoneVibrateType:I

    .line 2132
    iput-boolean v2, p0, Lcom/oplus/os/WaveformEffect$Builder;->mIsRingtoneCustomized:Z

    .line 2133
    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/os/WaveformEffect$Builder;->mRingtoneFilePath:Ljava/lang/String;

    .line 2134
    iput-boolean v1, p0, Lcom/oplus/os/WaveformEffect$Builder;->mStrengthSettingEnabled:Z

    .line 2135
    iput-boolean v2, p0, Lcom/oplus/os/WaveformEffect$Builder;->mAsynchronous:Z

    .line 2136
    iput v2, p0, Lcom/oplus/os/WaveformEffect$Builder;->mUsageHint:I

    .line 2154
    invoke-static {p1}, Lcom/oplus/os/WaveformEffect;->-$$Nest$fgetmEffectType(Lcom/oplus/os/WaveformEffect;)I

    move-result v0

    iput v0, p0, Lcom/oplus/os/WaveformEffect$Builder;->mEffectType:I

    .line 2155
    return-void
.end method


# virtual methods
.method public whitelist build()Lcom/oplus/os/WaveformEffect;
    .locals 2

    .line 2164
    new-instance v0, Lcom/oplus/os/WaveformEffect;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/os/WaveformEffect;-><init>(Lcom/oplus/os/WaveformEffect-IA;)V

    .line 2165
    .local v0, "we":Lcom/oplus/os/WaveformEffect;
    iget v1, p0, Lcom/oplus/os/WaveformEffect$Builder;->mEffectType:I

    invoke-static {v0, v1}, Lcom/oplus/os/WaveformEffect;->-$$Nest$fputmEffectType(Lcom/oplus/os/WaveformEffect;I)V

    .line 2166
    iget v1, p0, Lcom/oplus/os/WaveformEffect$Builder;->mEffectStrength:I

    invoke-static {v0, v1}, Lcom/oplus/os/WaveformEffect;->-$$Nest$fputmEffectStrength(Lcom/oplus/os/WaveformEffect;I)V

    .line 2167
    iget-boolean v1, p0, Lcom/oplus/os/WaveformEffect$Builder;->mEffectLoop:Z

    invoke-static {v0, v1}, Lcom/oplus/os/WaveformEffect;->-$$Nest$fputmEffectLoop(Lcom/oplus/os/WaveformEffect;Z)V

    .line 2168
    iget v1, p0, Lcom/oplus/os/WaveformEffect$Builder;->mRingtoneVibrateType:I

    invoke-static {v0, v1}, Lcom/oplus/os/WaveformEffect;->-$$Nest$fputmRingtoneVibrateType(Lcom/oplus/os/WaveformEffect;I)V

    .line 2169
    iget-boolean v1, p0, Lcom/oplus/os/WaveformEffect$Builder;->mIsRingtoneCustomized:Z

    invoke-static {v0, v1}, Lcom/oplus/os/WaveformEffect;->-$$Nest$fputmIsRingtoneCustomized(Lcom/oplus/os/WaveformEffect;Z)V

    .line 2170
    iget-object v1, p0, Lcom/oplus/os/WaveformEffect$Builder;->mRingtoneFilePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/oplus/os/WaveformEffect;->-$$Nest$fputmRingtoneFilePath(Lcom/oplus/os/WaveformEffect;Ljava/lang/String;)V

    .line 2171
    iget-boolean v1, p0, Lcom/oplus/os/WaveformEffect$Builder;->mStrengthSettingEnabled:Z

    invoke-static {v0, v1}, Lcom/oplus/os/WaveformEffect;->-$$Nest$fputmStrengthSettingEnabled(Lcom/oplus/os/WaveformEffect;Z)V

    .line 2172
    iget-boolean v1, p0, Lcom/oplus/os/WaveformEffect$Builder;->mAsynchronous:Z

    invoke-static {v0, v1}, Lcom/oplus/os/WaveformEffect;->-$$Nest$fputmAsynchronous(Lcom/oplus/os/WaveformEffect;Z)V

    .line 2173
    iget v1, p0, Lcom/oplus/os/WaveformEffect$Builder;->mUsageHint:I

    invoke-static {v0, v1}, Lcom/oplus/os/WaveformEffect;->-$$Nest$fputmUsageHint(Lcom/oplus/os/WaveformEffect;I)V

    .line 2174
    return-object v0
.end method

.method public whitelist setAsynchronous(Z)Lcom/oplus/os/WaveformEffect$Builder;
    .locals 0
    .param p1, "async"    # Z

    .line 2527
    iput-boolean p1, p0, Lcom/oplus/os/WaveformEffect$Builder;->mAsynchronous:Z

    .line 2528
    return-object p0
.end method

.method public whitelist setEffectLoop(Z)Lcom/oplus/os/WaveformEffect$Builder;
    .locals 0
    .param p1, "loop"    # Z

    .line 2463
    iput-boolean p1, p0, Lcom/oplus/os/WaveformEffect$Builder;->mEffectLoop:Z

    .line 2464
    return-object p0
.end method

.method public whitelist setEffectStrength(I)Lcom/oplus/os/WaveformEffect$Builder;
    .locals 1
    .param p1, "strength"    # I

    .line 2454
    const/16 v0, 0x960

    if-gt p1, v0, :cond_0

    .line 2455
    iput p1, p0, Lcom/oplus/os/WaveformEffect$Builder;->mEffectStrength:I

    goto :goto_0

    .line 2457
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/oplus/os/WaveformEffect$Builder;->mEffectStrength:I

    .line 2459
    :goto_0
    return-object p0
.end method

.method public whitelist setEffectType(I)Lcom/oplus/os/WaveformEffect$Builder;
    .locals 1
    .param p1, "type"    # I

    .line 2182
    packed-switch p1, :pswitch_data_0

    .line 2447
    :pswitch_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/os/WaveformEffect$Builder;->mEffectType:I

    goto :goto_0

    .line 2444
    :pswitch_1
    iput p1, p0, Lcom/oplus/os/WaveformEffect$Builder;->mEffectType:I

    .line 2445
    nop

    .line 2450
    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public whitelist setIsRingtoneCustomized(Z)Lcom/oplus/os/WaveformEffect$Builder;
    .locals 0
    .param p1, "customized"    # Z

    .line 2512
    iput-boolean p1, p0, Lcom/oplus/os/WaveformEffect$Builder;->mIsRingtoneCustomized:Z

    .line 2513
    return-object p0
.end method

.method public whitelist setRingtoneFilePath(Ljava/lang/String;)Lcom/oplus/os/WaveformEffect$Builder;
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .line 2517
    iput-object p1, p0, Lcom/oplus/os/WaveformEffect$Builder;->mRingtoneFilePath:Ljava/lang/String;

    .line 2518
    return-object p0
.end method

.method public whitelist setRingtoneVibrateType(I)Lcom/oplus/os/WaveformEffect$Builder;
    .locals 1
    .param p1, "type"    # I

    .line 2468
    sparse-switch p1, :sswitch_data_0

    .line 2505
    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/os/WaveformEffect$Builder;->mRingtoneVibrateType:I

    goto :goto_0

    .line 2502
    :sswitch_0
    iput p1, p0, Lcom/oplus/os/WaveformEffect$Builder;->mRingtoneVibrateType:I

    .line 2503
    nop

    .line 2508
    :goto_0
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
        0x40 -> :sswitch_0
        0x43 -> :sswitch_0
        0x98 -> :sswitch_0
        0x99 -> :sswitch_0
        0x9a -> :sswitch_0
        0x9c -> :sswitch_0
        0xa5 -> :sswitch_0
        0xa6 -> :sswitch_0
        0xa7 -> :sswitch_0
        0x10e -> :sswitch_0
        0x10f -> :sswitch_0
        0x110 -> :sswitch_0
        0x111 -> :sswitch_0
        0x112 -> :sswitch_0
        0x113 -> :sswitch_0
        0x114 -> :sswitch_0
        0x115 -> :sswitch_0
        0x116 -> :sswitch_0
        0x117 -> :sswitch_0
        0x118 -> :sswitch_0
        0x119 -> :sswitch_0
        0x11a -> :sswitch_0
        0x11b -> :sswitch_0
        0x11c -> :sswitch_0
        0x11d -> :sswitch_0
        0x11e -> :sswitch_0
        0x11f -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist setStrengthSettingEnabled(Z)Lcom/oplus/os/WaveformEffect$Builder;
    .locals 0
    .param p1, "enabled"    # Z

    .line 2522
    iput-boolean p1, p0, Lcom/oplus/os/WaveformEffect$Builder;->mStrengthSettingEnabled:Z

    .line 2523
    return-object p0
.end method

.method public whitelist setUsageHint(I)Lcom/oplus/os/WaveformEffect$Builder;
    .locals 0
    .param p1, "usageHint"    # I

    .line 2532
    iput p1, p0, Lcom/oplus/os/WaveformEffect$Builder;->mUsageHint:I

    .line 2533
    return-object p0
.end method
