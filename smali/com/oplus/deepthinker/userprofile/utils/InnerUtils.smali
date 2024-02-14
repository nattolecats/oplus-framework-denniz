.class Lcom/oplus/deepthinker/userprofile/utils/InnerUtils;
.super Ljava/lang/Object;
.source "InnerUtils.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "UserLabelUtils"


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist queryUserProfile(Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;Landroid/os/Bundle;)Ljava/util/List;
    .locals 4
    .param p0, "delegate"    # Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;
    .param p1, "query"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .line 17
    if-nez p0, :cond_0

    .line 18
    const/4 v0, 0x0

    return-object v0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 23
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :try_start_0
    const-string v1, "ability_userprofile"

    const-string v2, "query_user_profile"

    invoke-virtual {p0, v1, v2, p1}, Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 26
    .local v1, "respond":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 27
    const-string v2, "query_result_user_profile"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 31
    .end local v1    # "respond":Landroid/os/Bundle;
    :cond_1
    goto :goto_0

    .line 29
    :catchall_0
    move-exception v1

    .line 30
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryUserProfile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UserLabelUtils"

    invoke-static {v3, v2, v1}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    return-object v0
.end method
