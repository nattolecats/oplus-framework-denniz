.class Landroid/os/HapticPlayer$Point;
.super Ljava/lang/Object;
.source "HapticPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/HapticPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Point"
.end annotation


# instance fields
.field blacklist mFreq:I

.field blacklist mIntensity:I

.field blacklist mTime:I

.field final synthetic blacklist this$0:Landroid/os/HapticPlayer;


# direct methods
.method constructor blacklist <init>(Landroid/os/HapticPlayer;)V
    .locals 0
    .param p1, "this$0"    # Landroid/os/HapticPlayer;

    .line 945
    iput-object p1, p0, Landroid/os/HapticPlayer$Point;->this$0:Landroid/os/HapticPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
