.class public final synthetic Lcom/oplus/util/OplusStatisticsImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/oplus/util/OplusStatisticsImpl;

.field public final synthetic blacklist f$1:Landroid/content/Context;

.field public final synthetic blacklist f$2:Loplus/util/OplusStatistics$EventData;

.field public final synthetic blacklist f$3:I


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/oplus/util/OplusStatisticsImpl;Landroid/content/Context;Loplus/util/OplusStatistics$EventData;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/util/OplusStatisticsImpl$$ExternalSyntheticLambda3;->f$0:Lcom/oplus/util/OplusStatisticsImpl;

    iput-object p2, p0, Lcom/oplus/util/OplusStatisticsImpl$$ExternalSyntheticLambda3;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/oplus/util/OplusStatisticsImpl$$ExternalSyntheticLambda3;->f$2:Loplus/util/OplusStatistics$EventData;

    iput p4, p0, Lcom/oplus/util/OplusStatisticsImpl$$ExternalSyntheticLambda3;->f$3:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 4

    iget-object v0, p0, Lcom/oplus/util/OplusStatisticsImpl$$ExternalSyntheticLambda3;->f$0:Lcom/oplus/util/OplusStatisticsImpl;

    iget-object v1, p0, Lcom/oplus/util/OplusStatisticsImpl$$ExternalSyntheticLambda3;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/oplus/util/OplusStatisticsImpl$$ExternalSyntheticLambda3;->f$2:Loplus/util/OplusStatistics$EventData;

    iget v3, p0, Lcom/oplus/util/OplusStatisticsImpl$$ExternalSyntheticLambda3;->f$3:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/oplus/util/OplusStatisticsImpl;->lambda$onCommon$1$com-oplus-util-OplusStatisticsImpl(Landroid/content/Context;Loplus/util/OplusStatistics$EventData;I)V

    return-void
.end method
