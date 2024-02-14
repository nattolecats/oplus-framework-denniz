.class public Landroid/app/OplusINotificationManagerExtImpl;
.super Ljava/lang/Object;
.source "OplusINotificationManagerExtImpl.java"

# interfaces
.implements Landroid/app/INotificationManagerExt;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "base"    # Ljava/lang/Object;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method public blacklist fixTotalCustom(Landroid/app/Notification;)V
    .locals 2
    .param p1, "notification"    # Landroid/app/Notification;

    .line 25
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "oplus_total_custom_layout"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 26
    return-void
.end method
