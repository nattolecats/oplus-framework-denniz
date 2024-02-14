.class Lcom/oplus/util/OplusDisplayCompatUtils$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "OplusDisplayCompatUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/util/OplusDisplayCompatUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/util/OplusDisplayCompatUtils;


# direct methods
.method private constructor blacklist <init>(Lcom/oplus/util/OplusDisplayCompatUtils;)V
    .locals 0

    .line 1179
    iput-object p1, p0, Lcom/oplus/util/OplusDisplayCompatUtils$MyPackageMonitor;->this$0:Lcom/oplus/util/OplusDisplayCompatUtils;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/oplus/util/OplusDisplayCompatUtils;Lcom/oplus/util/OplusDisplayCompatUtils$MyPackageMonitor-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/util/OplusDisplayCompatUtils$MyPackageMonitor;-><init>(Lcom/oplus/util/OplusDisplayCompatUtils;)V

    return-void
.end method


# virtual methods
.method public blacklist onPackageAdded(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1193
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1194
    return-void

    .line 1196
    :cond_0
    iget-object v0, p0, Lcom/oplus/util/OplusDisplayCompatUtils$MyPackageMonitor;->this$0:Lcom/oplus/util/OplusDisplayCompatUtils;

    invoke-static {v0}, Lcom/oplus/util/OplusDisplayCompatUtils;->-$$Nest$mloadInstalledImeAppList(Lcom/oplus/util/OplusDisplayCompatUtils;)V

    .line 1197
    iget-object v0, p0, Lcom/oplus/util/OplusDisplayCompatUtils$MyPackageMonitor;->this$0:Lcom/oplus/util/OplusDisplayCompatUtils;

    invoke-virtual {v0, p1}, Lcom/oplus/util/OplusDisplayCompatUtils;->inInstalledImeList(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/util/OplusDisplayCompatUtils$MyPackageMonitor;->this$0:Lcom/oplus/util/OplusDisplayCompatUtils;

    invoke-static {v0, p1}, Lcom/oplus/util/OplusDisplayCompatUtils;->-$$Nest$mshouldCompat(Lcom/oplus/util/OplusDisplayCompatUtils;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1198
    iget-object v0, p0, Lcom/oplus/util/OplusDisplayCompatUtils$MyPackageMonitor;->this$0:Lcom/oplus/util/OplusDisplayCompatUtils;

    const/4 v1, 0x7

    invoke-virtual {v0, p1, v1}, Lcom/oplus/util/OplusDisplayCompatUtils;->addPkgInList(Ljava/lang/String;I)V

    .line 1200
    :cond_1
    iget-object v0, p0, Lcom/oplus/util/OplusDisplayCompatUtils$MyPackageMonitor;->this$0:Lcom/oplus/util/OplusDisplayCompatUtils;

    invoke-virtual {v0, p1}, Lcom/oplus/util/OplusDisplayCompatUtils;->inInstalledThirdPartyAppList(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oplus/util/OplusDisplayCompatUtils$MyPackageMonitor;->this$0:Lcom/oplus/util/OplusDisplayCompatUtils;

    invoke-static {v0, p1}, Lcom/oplus/util/OplusDisplayCompatUtils;->-$$Nest$misThirdPartyApp(Lcom/oplus/util/OplusDisplayCompatUtils;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1201
    iget-object v0, p0, Lcom/oplus/util/OplusDisplayCompatUtils$MyPackageMonitor;->this$0:Lcom/oplus/util/OplusDisplayCompatUtils;

    const/16 v1, 0xc

    invoke-virtual {v0, p1, v1}, Lcom/oplus/util/OplusDisplayCompatUtils;->addPkgInList(Ljava/lang/String;I)V

    .line 1203
    :cond_2
    return-void
.end method

.method public blacklist onPackageModified(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1207
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1208
    return-void

    .line 1210
    :cond_0
    iget-object v0, p0, Lcom/oplus/util/OplusDisplayCompatUtils$MyPackageMonitor;->this$0:Lcom/oplus/util/OplusDisplayCompatUtils;

    invoke-static {v0}, Lcom/oplus/util/OplusDisplayCompatUtils;->-$$Nest$mloadInstalledImeAppList(Lcom/oplus/util/OplusDisplayCompatUtils;)V

    .line 1211
    iget-object v0, p0, Lcom/oplus/util/OplusDisplayCompatUtils$MyPackageMonitor;->this$0:Lcom/oplus/util/OplusDisplayCompatUtils;

    const/4 v1, 0x7

    .line 1212
    invoke-static {v0, p1}, Lcom/oplus/util/OplusDisplayCompatUtils;->-$$Nest$mshouldCompat(Lcom/oplus/util/OplusDisplayCompatUtils;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oplus/util/OplusDisplayCompatUtils$MyPackageMonitor;->this$0:Lcom/oplus/util/OplusDisplayCompatUtils;

    invoke-virtual {v2, p1}, Lcom/oplus/util/OplusDisplayCompatUtils;->inInstalledImeList(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 1211
    :goto_0
    invoke-virtual {v0, p1, v1, v2}, Lcom/oplus/util/OplusDisplayCompatUtils;->updatePkgInList(Ljava/lang/String;IZ)V

    .line 1213
    return-void
.end method

.method public blacklist onPackageRemoved(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1182
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1183
    return-void

    .line 1185
    :cond_0
    iget-object v0, p0, Lcom/oplus/util/OplusDisplayCompatUtils$MyPackageMonitor;->this$0:Lcom/oplus/util/OplusDisplayCompatUtils;

    invoke-static {v0}, Lcom/oplus/util/OplusDisplayCompatUtils;->-$$Nest$mloadInstalledImeAppList(Lcom/oplus/util/OplusDisplayCompatUtils;)V

    .line 1186
    iget-object v0, p0, Lcom/oplus/util/OplusDisplayCompatUtils$MyPackageMonitor;->this$0:Lcom/oplus/util/OplusDisplayCompatUtils;

    const/4 v1, 0x7

    invoke-virtual {v0, p1, v1}, Lcom/oplus/util/OplusDisplayCompatUtils;->removePkgInList(Ljava/lang/String;I)V

    .line 1187
    iget-object v0, p0, Lcom/oplus/util/OplusDisplayCompatUtils$MyPackageMonitor;->this$0:Lcom/oplus/util/OplusDisplayCompatUtils;

    const/16 v1, 0xc

    invoke-virtual {v0, p1, v1}, Lcom/oplus/util/OplusDisplayCompatUtils;->removePkgInList(Ljava/lang/String;I)V

    .line 1188
    iget-object v0, p0, Lcom/oplus/util/OplusDisplayCompatUtils$MyPackageMonitor;->this$0:Lcom/oplus/util/OplusDisplayCompatUtils;

    invoke-virtual {v0, p1}, Lcom/oplus/util/OplusDisplayCompatUtils;->removeLocalShowDialogListForPkg(Ljava/lang/String;)V

    .line 1189
    return-void
.end method
