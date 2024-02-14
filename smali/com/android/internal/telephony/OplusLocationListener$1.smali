.class Lcom/android/internal/telephony/OplusLocationListener$1;
.super Ljava/lang/Object;
.source "OplusLocationListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/OplusLocationListener;->onLocationChangedCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/OplusLocationListener;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/OplusLocationListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/OplusLocationListener;

    .line 117
    iput-object p1, p0, Lcom/android/internal/telephony/OplusLocationListener$1;->this$0:Lcom/android/internal/telephony/OplusLocationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 7

    .line 120
    iget-object v0, p0, Lcom/android/internal/telephony/OplusLocationListener$1;->this$0:Lcom/android/internal/telephony/OplusLocationListener;

    const-string v1, "query loction long loc period:2h"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/OplusLocationListener;->-$$Nest$mlogd(Lcom/android/internal/telephony/OplusLocationListener;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/android/internal/telephony/OplusLocationListener$1;->this$0:Lcom/android/internal/telephony/OplusLocationListener;

    invoke-static {v0}, Lcom/android/internal/telephony/OplusLocationListener;->-$$Nest$fgetmLocationManager(Lcom/android/internal/telephony/OplusLocationListener;)Landroid/location/LocationManager;

    move-result-object v1

    iget-object v6, p0, Lcom/android/internal/telephony/OplusLocationListener$1;->this$0:Lcom/android/internal/telephony/OplusLocationListener;

    const-string v2, "network"

    const-wide/16 v3, 0x3e8

    const/high16 v5, 0x42480000    # 50.0f

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 123
    iget-object v0, p0, Lcom/android/internal/telephony/OplusLocationListener$1;->this$0:Lcom/android/internal/telephony/OplusLocationListener;

    invoke-static {v0}, Lcom/android/internal/telephony/OplusLocationListener;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/OplusLocationListener;)Lcom/android/internal/telephony/OplusLocationListener$MyHandler;

    move-result-object v0

    const/16 v1, 0xcb

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/OplusLocationListener$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 124
    return-void
.end method
