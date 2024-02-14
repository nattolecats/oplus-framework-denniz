.class public Landroid/view/OplusDirectViewDump;
.super Ljava/lang/Object;
.source "OplusDirectViewDump.java"

# interfaces
.implements Lcom/oplus/favorite/IOplusFavoriteConstans;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/OplusDirectViewDump$FavoriteCallback;
    }
.end annotation


# static fields
.field private static final blacklist DBG:Z

.field private static final blacklist TAG:Ljava/lang/String; = "DirectService"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 51
    sget-boolean v0, Lcom/oplus/direct/OplusDirectUtils;->DBG:Z

    sput-boolean v0, Landroid/view/OplusDirectViewDump;->DBG:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist findFavorite(Landroid/view/ViewRootImpl;Lcom/oplus/direct/IOplusDirectFindCallback;Ljava/lang/String;)V
    .locals 3
    .param p1, "viewAncestor"    # Landroid/view/ViewRootImpl;
    .param p2, "callback"    # Lcom/oplus/direct/IOplusDirectFindCallback;
    .param p3, "param"    # Ljava/lang/String;

    .line 159
    sget-boolean v0, Landroid/view/OplusDirectViewDump;->DBG:Z

    const-string v1, "DirectService"

    const-string v2, "findFavorite"

    invoke-static {v0, v1, v2}, Lcom/oplus/util/OplusLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 161
    sget-object v0, Lcom/oplus/favorite/IOplusFavoriteManager;->DEFAULT:Lcom/oplus/favorite/IOplusFavoriteManager;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/oplus/favorite/IOplusFavoriteManager;

    .line 162
    .local v0, "favoriteManager":Lcom/oplus/favorite/IOplusFavoriteManager;
    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/view/OplusDirectViewDump$FavoriteCallback;

    invoke-direct {v2, p2}, Landroid/view/OplusDirectViewDump$FavoriteCallback;-><init>(Lcom/oplus/direct/IOplusDirectFindCallback;)V

    invoke-interface {v0, v1, v2, p3}, Lcom/oplus/favorite/IOplusFavoriteManager;->processCrawl(Landroid/view/View;Lcom/oplus/favorite/OplusFavoriteCallback;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method private blacklist findText(Landroid/view/ViewRootImpl;Lcom/oplus/direct/IOplusDirectFindCallback;Ljava/util/ArrayList;)V
    .locals 10
    .param p1, "viewAncestor"    # Landroid/view/ViewRootImpl;
    .param p2, "callback"    # Lcom/oplus/direct/IOplusDirectFindCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewRootImpl;",
            "Lcom/oplus/direct/IOplusDirectFindCallback;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 133
    .local p3, "idNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 134
    sget-boolean v0, Landroid/view/OplusDirectViewDump;->DBG:Z

    const-string v1, "DirectService"

    const-string v2, "findText"

    invoke-static {v0, v1, v2}, Lcom/oplus/util/OplusLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p1, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    .line 136
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 137
    .local v2, "resources":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 138
    .local v3, "currPkgName":Ljava/lang/String;
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 139
    .local v5, "idName":Ljava/lang/String;
    invoke-direct {p0, v5, v3}, Landroid/view/OplusDirectViewDump;->getPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 140
    .local v6, "packageName":Ljava/lang/String;
    invoke-direct {p0, v5}, Landroid/view/OplusDirectViewDump;->getIdName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 141
    invoke-direct {p0, p1, v2, v5, v6}, Landroid/view/OplusDirectViewDump;->getTextFromView(Landroid/view/ViewRootImpl;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 142
    .local v7, "text":Ljava/lang/CharSequence;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 143
    goto :goto_0

    .line 145
    :cond_0
    sget-boolean v4, Landroid/view/OplusDirectViewDump;->DBG:Z

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "findText : text="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v1, v8}, Lcom/oplus/util/OplusLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 146
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 147
    .local v1, "result":Landroid/os/Bundle;
    const-string v4, "result_text"

    invoke-virtual {v1, v4, v7}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 148
    invoke-static {p2, v1}, Lcom/oplus/direct/OplusDirectUtils;->onFindSuccess(Lcom/oplus/direct/IOplusDirectFindCallback;Landroid/os/Bundle;)V

    .line 149
    return-void

    .line 152
    .end local v1    # "result":Landroid/os/Bundle;
    .end local v5    # "idName":Ljava/lang/String;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "text":Ljava/lang/CharSequence;
    :cond_1
    const-string v1, "no_text"

    invoke-static {p2, v1}, Lcom/oplus/direct/OplusDirectUtils;->onFindFailed(Lcom/oplus/direct/IOplusDirectFindCallback;Ljava/lang/String;)V

    .line 153
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "resources":Landroid/content/res/Resources;
    .end local v3    # "currPkgName":Ljava/lang/String;
    goto :goto_1

    .line 154
    :cond_2
    const-string v0, "no_idnames"

    invoke-static {p2, v0}, Lcom/oplus/direct/OplusDirectUtils;->onFindFailed(Lcom/oplus/direct/IOplusDirectFindCallback;Ljava/lang/String;)V

    .line 156
    :goto_1
    return-void
.end method

.method private blacklist getIdName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "idName"    # Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "s":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 103
    const/4 v1, 0x1

    aget-object v1, v0, v1

    const-string v2, "id/"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 105
    :cond_0
    return-object p1
.end method

.method private blacklist getPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "idName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "s":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 94
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1

    .line 96
    :cond_0
    return-object p2
.end method

.method private blacklist getTextFromView(Landroid/view/ViewRootImpl;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "viewAncestor"    # Landroid/view/ViewRootImpl;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "idName"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;

    .line 111
    sget-boolean v0, Landroid/view/OplusDirectViewDump;->DBG:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTextFromView : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DirectService"

    invoke-static {v0, v2, v1}, Lcom/oplus/util/OplusLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    .line 113
    .local v0, "root":Landroid/view/View;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 114
    return-object v1

    .line 116
    :cond_0
    const-string v2, "id"

    invoke-virtual {p2, p3, v2, p4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 117
    .local v2, "id":I
    if-gtz v2, :cond_1

    .line 118
    return-object v1

    .line 120
    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 121
    .local v3, "view":Landroid/view/View;
    if-nez v3, :cond_2

    .line 122
    return-object v1

    .line 124
    :cond_2
    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_3

    .line 125
    move-object v1, v3

    check-cast v1, Landroid/widget/TextView;

    .line 126
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    return-object v4

    .line 128
    .end local v1    # "textView":Landroid/widget/TextView;
    :cond_3
    return-object v1
.end method

.method private blacklist saveFavorite(Landroid/view/ViewRootImpl;Lcom/oplus/direct/IOplusDirectFindCallback;)V
    .locals 3
    .param p1, "viewAncestor"    # Landroid/view/ViewRootImpl;
    .param p2, "callback"    # Lcom/oplus/direct/IOplusDirectFindCallback;

    .line 166
    sget-boolean v0, Landroid/view/OplusDirectViewDump;->DBG:Z

    const-string v1, "DirectService"

    const-string v2, "saveFavorite"

    invoke-static {v0, v1, v2}, Lcom/oplus/util/OplusLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 168
    sget-object v0, Lcom/oplus/favorite/IOplusFavoriteManager;->DEFAULT:Lcom/oplus/favorite/IOplusFavoriteManager;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/oplus/favorite/IOplusFavoriteManager;

    .line 169
    .local v0, "favoriteManager":Lcom/oplus/favorite/IOplusFavoriteManager;
    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/view/OplusDirectViewDump$FavoriteCallback;

    invoke-direct {v2, p2}, Landroid/view/OplusDirectViewDump$FavoriteCallback;-><init>(Lcom/oplus/direct/IOplusDirectFindCallback;)V

    invoke-interface {v0, v1, v2}, Lcom/oplus/favorite/IOplusFavoriteManager;->processSave(Landroid/view/View;Lcom/oplus/favorite/OplusFavoriteCallback;)V

    .line 170
    return-void
.end method


# virtual methods
.method public blacklist findCmd(Landroid/view/ViewRootImpl;Lcom/oplus/direct/OplusDirectFindCmd;)V
    .locals 4
    .param p1, "viewAncestor"    # Landroid/view/ViewRootImpl;
    .param p2, "findCmd"    # Lcom/oplus/direct/OplusDirectFindCmd;

    .line 57
    invoke-virtual {p2}, Lcom/oplus/direct/OplusDirectFindCmd;->getCommand()Lcom/oplus/direct/OplusDirectFindCmds;

    move-result-object v0

    .line 58
    .local v0, "cmd":Lcom/oplus/direct/OplusDirectFindCmds;
    sget-boolean v1, Landroid/view/OplusDirectViewDump;->DBG:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "findCmd : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DirectService"

    invoke-static {v1, v3, v2}, Lcom/oplus/util/OplusLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 59
    sget-object v1, Landroid/view/OplusDirectViewDump$1;->$SwitchMap$com$oplus$direct$OplusDirectFindCmds:[I

    invoke-virtual {v0}, Lcom/oplus/direct/OplusDirectFindCmds;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 82
    invoke-virtual {p2}, Lcom/oplus/direct/OplusDirectFindCmd;->getCallback()Lcom/oplus/direct/IOplusDirectFindCallback;

    move-result-object v1

    const-string v2, "unknown_cmd"

    invoke-static {v1, v2}, Lcom/oplus/direct/OplusDirectUtils;->onFindFailed(Lcom/oplus/direct/IOplusDirectFindCallback;Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :pswitch_0
    invoke-virtual {p2}, Lcom/oplus/direct/OplusDirectFindCmd;->getCallback()Lcom/oplus/direct/IOplusDirectFindCallback;

    move-result-object v1

    invoke-virtual {p2}, Lcom/oplus/direct/OplusDirectFindCmd;->getOplusDirectFindParam()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Landroid/view/OplusDirectViewDump;->findFavorite(Landroid/view/ViewRootImpl;Lcom/oplus/direct/IOplusDirectFindCallback;Ljava/lang/String;)V

    .line 79
    goto :goto_0

    .line 67
    :pswitch_1
    invoke-virtual {p2}, Lcom/oplus/direct/OplusDirectFindCmd;->getCallback()Lcom/oplus/direct/IOplusDirectFindCallback;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Landroid/view/OplusDirectViewDump;->saveFavorite(Landroid/view/ViewRootImpl;Lcom/oplus/direct/IOplusDirectFindCallback;)V

    .line 68
    goto :goto_0

    .line 61
    :pswitch_2
    invoke-virtual {p2}, Lcom/oplus/direct/OplusDirectFindCmd;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 62
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "id_names"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 63
    .local v2, "idNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2}, Lcom/oplus/direct/OplusDirectFindCmd;->getCallback()Lcom/oplus/direct/IOplusDirectFindCallback;

    move-result-object v3

    invoke-direct {p0, p1, v3, v2}, Landroid/view/OplusDirectViewDump;->findText(Landroid/view/ViewRootImpl;Lcom/oplus/direct/IOplusDirectFindCallback;Ljava/util/ArrayList;)V

    .line 64
    nop

    .line 86
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "idNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
