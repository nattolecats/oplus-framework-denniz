.class Lcom/android/internal/os/OplusThermalStatsHelper$10;
.super Ljava/lang/Object;
.source "OplusThermalStatsHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/OplusThermalStatsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/os/OplusThermalStatsHelper;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/os/OplusThermalStatsHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/os/OplusThermalStatsHelper;

    .line 4087
    iput-object p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$10;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist compare(Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;)I
    .locals 2
    .param p1, "o1"    # Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;
    .param p2, "o2"    # Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;

    .line 4090
    iget v0, p1, Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;->mTemp:I

    iget v1, p2, Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;->mTemp:I

    if-ne v0, v1, :cond_0

    .line 4091
    const/4 v0, 0x0

    return v0

    .line 4093
    :cond_0
    iget v0, p1, Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;->mTemp:I

    iget v1, p2, Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;->mTemp:I

    if-le v0, v1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 4087
    check-cast p1, Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;

    check-cast p2, Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/OplusThermalStatsHelper$10;->compare(Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;)I

    move-result p1

    return p1
.end method
