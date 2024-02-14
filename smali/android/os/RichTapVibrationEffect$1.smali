.class Landroid/os/RichTapVibrationEffect$1;
.super Ljava/lang/Object;
.source "RichTapVibrationEffect.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/RichTapVibrationEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/VibrationEffect;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 778
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/os/VibrationEffect;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 782
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 783
    .local v0, "token":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createFromParcel read token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RichTapVibrationEffect"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    packed-switch v0, :pswitch_data_0

    .line 797
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected vibration event type token in parcel."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 795
    :pswitch_1
    new-instance v1, Landroid/os/RichTapVibrationEffect$HapticParameter;

    invoke-direct {v1, p1}, Landroid/os/RichTapVibrationEffect$HapticParameter;-><init>(Landroid/os/Parcel;)V

    return-object v1

    .line 791
    :pswitch_2
    new-instance v1, Landroid/os/RichTapVibrationEffect$PatternHeParameter;

    invoke-direct {v1, p1}, Landroid/os/RichTapVibrationEffect$PatternHeParameter;-><init>(Landroid/os/Parcel;)V

    return-object v1

    .line 793
    :pswitch_3
    new-instance v1, Landroid/os/RichTapVibrationEffect$PatternHe;

    invoke-direct {v1, p1}, Landroid/os/RichTapVibrationEffect$PatternHe;-><init>(Landroid/os/Parcel;)V

    return-object v1

    .line 789
    :pswitch_4
    new-instance v1, Landroid/os/RichTapVibrationEffect$Envelope;

    invoke-direct {v1, p1}, Landroid/os/RichTapVibrationEffect$Envelope;-><init>(Landroid/os/Parcel;)V

    return-object v1

    .line 787
    :pswitch_5
    new-instance v1, Landroid/os/RichTapVibrationEffect$ExtPrebaked;

    invoke-direct {v1, p1}, Landroid/os/RichTapVibrationEffect$ExtPrebaked;-><init>(Landroid/os/Parcel;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x7ee
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 778
    invoke-virtual {p0, p1}, Landroid/os/RichTapVibrationEffect$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/VibrationEffect;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/os/VibrationEffect;
    .locals 1
    .param p1, "size"    # I

    .line 804
    new-array v0, p1, [Landroid/os/VibrationEffect;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 778
    invoke-virtual {p0, p1}, Landroid/os/RichTapVibrationEffect$1;->newArray(I)[Landroid/os/VibrationEffect;

    move-result-object p1

    return-object p1
.end method
