.class Lcom/android/internal/telephony/OplusTelephonyPlugIn$1;
.super Ljava/lang/Object;
.source "OplusTelephonyPlugIn.java"

# interfaces
.implements Lcom/android/internal/telephony/IOplusNrModePlugIn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/OplusTelephonyPlugIn;->getOplusNrModeFactory()Lcom/android/internal/telephony/IOplusNrModePlugIn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/OplusTelephonyPlugIn;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/OplusTelephonyPlugIn;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/OplusTelephonyPlugIn;

    .line 48
    iput-object p1, p0, Lcom/android/internal/telephony/OplusTelephonyPlugIn$1;->this$0:Lcom/android/internal/telephony/OplusTelephonyPlugIn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
