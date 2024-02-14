.class public final synthetic Landroid/telephony/OplusTelephonyManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/OplusTelephonyManager;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/OplusTelephonyManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/OplusTelephonyManager$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/OplusTelephonyManager;

    return-void
.end method


# virtual methods
.method public final whitelist binderDied()V
    .locals 1

    iget-object v0, p0, Landroid/telephony/OplusTelephonyManager$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/OplusTelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/OplusTelephonyManager;->lambda$new$0$android-telephony-OplusTelephonyManager()V

    return-void
.end method
