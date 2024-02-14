.class final Lcom/oplus/util/OplusDisplayCompatUtils$SettingsContentObserver;
.super Landroid/database/ContentObserver;
.source "OplusDisplayCompatUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/util/OplusDisplayCompatUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsContentObserver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/util/OplusDisplayCompatUtils;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/util/OplusDisplayCompatUtils;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1158
    iput-object p1, p0, Lcom/oplus/util/OplusDisplayCompatUtils$SettingsContentObserver;->this$0:Lcom/oplus/util/OplusDisplayCompatUtils;

    .line 1159
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1160
    return-void
.end method


# virtual methods
.method public whitelist onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .line 1164
    iget-object v0, p0, Lcom/oplus/util/OplusDisplayCompatUtils$SettingsContentObserver;->this$0:Lcom/oplus/util/OplusDisplayCompatUtils;

    invoke-static {v0}, Lcom/oplus/util/OplusDisplayCompatUtils;->-$$Nest$mupdateSettings(Lcom/oplus/util/OplusDisplayCompatUtils;)V

    .line 1165
    return-void
.end method
