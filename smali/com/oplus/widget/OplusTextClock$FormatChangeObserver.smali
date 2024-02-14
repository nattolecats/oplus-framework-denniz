.class Lcom/oplus/widget/OplusTextClock$FormatChangeObserver;
.super Landroid/database/ContentObserver;
.source "OplusTextClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/widget/OplusTextClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatChangeObserver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/widget/OplusTextClock;


# direct methods
.method public constructor blacklist <init>(Lcom/oplus/widget/OplusTextClock;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .line 154
    iput-object p1, p0, Lcom/oplus/widget/OplusTextClock$FormatChangeObserver;->this$0:Lcom/oplus/widget/OplusTextClock;

    .line 155
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 156
    return-void
.end method


# virtual methods
.method public whitelist onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .line 160
    iget-object v0, p0, Lcom/oplus/widget/OplusTextClock$FormatChangeObserver;->this$0:Lcom/oplus/widget/OplusTextClock;

    invoke-static {v0}, Lcom/oplus/widget/OplusTextClock;->-$$Nest$mchooseFormat(Lcom/oplus/widget/OplusTextClock;)V

    .line 161
    iget-object v0, p0, Lcom/oplus/widget/OplusTextClock$FormatChangeObserver;->this$0:Lcom/oplus/widget/OplusTextClock;

    invoke-static {v0}, Lcom/oplus/widget/OplusTextClock;->-$$Nest$monTimeChanged(Lcom/oplus/widget/OplusTextClock;)V

    .line 162
    return-void
.end method

.method public whitelist onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 166
    iget-object v0, p0, Lcom/oplus/widget/OplusTextClock$FormatChangeObserver;->this$0:Lcom/oplus/widget/OplusTextClock;

    invoke-static {v0}, Lcom/oplus/widget/OplusTextClock;->-$$Nest$mchooseFormat(Lcom/oplus/widget/OplusTextClock;)V

    .line 167
    iget-object v0, p0, Lcom/oplus/widget/OplusTextClock$FormatChangeObserver;->this$0:Lcom/oplus/widget/OplusTextClock;

    invoke-static {v0}, Lcom/oplus/widget/OplusTextClock;->-$$Nest$monTimeChanged(Lcom/oplus/widget/OplusTextClock;)V

    .line 168
    return-void
.end method
