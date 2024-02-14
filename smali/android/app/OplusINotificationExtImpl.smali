.class public Landroid/app/OplusINotificationExtImpl;
.super Ljava/lang/Object;
.source "OplusINotificationExtImpl.java"

# interfaces
.implements Landroid/app/INotificationExt;


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
.method public blacklist isTotalCustom(Landroid/app/Notification;)Z
    .locals 3
    .param p1, "notification"    # Landroid/app/Notification;

    .line 25
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "oplus_total_custom_layout"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
