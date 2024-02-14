.class Lcom/oplus/os/WaveformEffect$1;
.super Ljava/lang/Object;
.source "WaveformEffect.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/os/WaveformEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oplus/os/WaveformEffect;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 2568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/oplus/os/WaveformEffect;
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;

    .line 2575
    new-instance v0, Lcom/oplus/os/WaveformEffect;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oplus/os/WaveformEffect;-><init>(Landroid/os/Parcel;Lcom/oplus/os/WaveformEffect-IA;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 2568
    invoke-virtual {p0, p1}, Lcom/oplus/os/WaveformEffect$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oplus/os/WaveformEffect;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/oplus/os/WaveformEffect;
    .locals 1
    .param p1, "size"    # I

    .line 2578
    new-array v0, p1, [Lcom/oplus/os/WaveformEffect;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 2568
    invoke-virtual {p0, p1}, Lcom/oplus/os/WaveformEffect$1;->newArray(I)[Lcom/oplus/os/WaveformEffect;

    move-result-object p1

    return-object p1
.end method
