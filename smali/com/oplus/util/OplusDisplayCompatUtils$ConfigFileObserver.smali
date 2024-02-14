.class Lcom/oplus/util/OplusDisplayCompatUtils$ConfigFileObserver;
.super Landroid/os/FileObserver;
.source "OplusDisplayCompatUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/util/OplusDisplayCompatUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfigFileObserver"
.end annotation


# instance fields
.field private final blacklist mFocusPath:Ljava/lang/String;

.field final synthetic blacklist this$0:Lcom/oplus/util/OplusDisplayCompatUtils;


# direct methods
.method public constructor blacklist <init>(Lcom/oplus/util/OplusDisplayCompatUtils;Ljava/lang/String;)V
    .locals 0
    .param p2, "path"    # Ljava/lang/String;

    .line 1030
    iput-object p1, p0, Lcom/oplus/util/OplusDisplayCompatUtils$ConfigFileObserver;->this$0:Lcom/oplus/util/OplusDisplayCompatUtils;

    .line 1031
    const/16 p1, 0x8

    invoke-direct {p0, p2, p1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 1032
    iput-object p2, p0, Lcom/oplus/util/OplusDisplayCompatUtils$ConfigFileObserver;->mFocusPath:Ljava/lang/String;

    .line 1033
    return-void
.end method


# virtual methods
.method public whitelist onEvent(ILjava/lang/String;)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .line 1038
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 1039
    iget-object v0, p0, Lcom/oplus/util/OplusDisplayCompatUtils$ConfigFileObserver;->mFocusPath:Ljava/lang/String;

    const-string v1, "/data/oplus/os/displaycompat/sys_display_compat_config.xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1040
    const-string v0, "OplusDisplayCompatUtils"

    const-string v1, "FileObserver: onEvent"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    iget-object v0, p0, Lcom/oplus/util/OplusDisplayCompatUtils$ConfigFileObserver;->this$0:Lcom/oplus/util/OplusDisplayCompatUtils;

    invoke-virtual {v0}, Lcom/oplus/util/OplusDisplayCompatUtils;->readDisplayCompatConfig()V

    .line 1044
    :cond_0
    return-void
.end method
