.class public Lcom/oplus/favorite/OplusFavoriteHelper;
.super Ljava/lang/Object;
.source "OplusFavoriteHelper.java"

# interfaces
.implements Lcom/oplus/favorite/IOplusFavoriteConstans;


# static fields
.field private static final blacklist SELECTION_ARGS:[Ljava/lang/String;

.field private static final blacklist SETTINGS_AUTHORITY:Ljava/lang/String; = "com.coloros.favorite.settings.provider"

.field private static final blacklist SETTINGS_PATH:Ljava/lang/String; = "settings"

.field private static final blacklist SETTINGS_URI:Landroid/net/Uri;

.field private static final blacklist SETTING_KEY_ALL:Ljava/lang/String; = "favorite_all"

.field public static final whitelist TAG:Ljava/lang/String; = "OplusFavoriteHelper"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 43
    const-string v0, "favorite_all"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/favorite/OplusFavoriteHelper;->SELECTION_ARGS:[Ljava/lang/String;

    .line 46
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 47
    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 48
    const-string v1, "com.coloros.favorite.settings.provider"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 49
    const-string v1, "settings"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oplus/favorite/OplusFavoriteHelper;->SETTINGS_URI:Landroid/net/Uri;

    .line 46
    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist isSettingOn(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public static whitelist startCrawl(Lcom/oplus/direct/IOplusDirectFindCallback;)V
    .locals 1
    .param p0, "callback"    # Lcom/oplus/direct/IOplusDirectFindCallback;

    .line 56
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/oplus/favorite/OplusFavoriteHelper;->startCrawl(Lcom/oplus/direct/IOplusDirectFindCallback;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public static whitelist startCrawl(Lcom/oplus/direct/IOplusDirectFindCallback;Ljava/lang/String;)V
    .locals 3
    .param p0, "callback"    # Lcom/oplus/direct/IOplusDirectFindCallback;
    .param p1, "param"    # Ljava/lang/String;

    .line 69
    const-string v0, "OplusFavoriteHelper"

    :try_start_0
    const-string v1, "startCrawl"

    invoke-static {v0, v1}, Lcom/oplus/util/OplusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    new-instance v1, Landroid/view/OplusWindowManager;

    invoke-direct {v1}, Landroid/view/OplusWindowManager;-><init>()V

    .line 73
    .local v1, "windowManager":Landroid/view/OplusWindowManager;
    new-instance v2, Lcom/oplus/direct/OplusDirectFindCmd;

    invoke-direct {v2, p0, p1}, Lcom/oplus/direct/OplusDirectFindCmd;-><init>(Lcom/oplus/direct/IOplusDirectFindCallback;Ljava/lang/String;)V

    .line 75
    .local v2, "cmd":Lcom/oplus/direct/OplusDirectFindCmd;
    invoke-virtual {v1, v2}, Landroid/view/OplusWindowManager;->directFindCmd(Lcom/oplus/direct/OplusDirectFindCmd;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "windowManager":Landroid/view/OplusWindowManager;
    .end local v2    # "cmd":Lcom/oplus/direct/OplusDirectFindCmd;
    goto :goto_0

    .line 78
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v0, v1}, Lcom/oplus/util/OplusLog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 76
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 77
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {v0, v1}, Lcom/oplus/util/OplusLog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 81
    :goto_1
    return-void
.end method

.method public static whitelist startSave(Lcom/oplus/direct/IOplusDirectFindCallback;)V
    .locals 4
    .param p0, "callback"    # Lcom/oplus/direct/IOplusDirectFindCallback;

    .line 85
    const-string v0, "OplusFavoriteHelper"

    :try_start_0
    const-string v1, "startSave"

    invoke-static {v0, v1}, Lcom/oplus/util/OplusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    new-instance v1, Landroid/view/OplusWindowManager;

    invoke-direct {v1}, Landroid/view/OplusWindowManager;-><init>()V

    .line 87
    .local v1, "windowManager":Landroid/view/OplusWindowManager;
    new-instance v2, Lcom/oplus/direct/OplusDirectFindCmd;

    invoke-direct {v2}, Lcom/oplus/direct/OplusDirectFindCmd;-><init>()V

    .line 88
    .local v2, "cmd":Lcom/oplus/direct/OplusDirectFindCmd;
    sget-object v3, Lcom/oplus/direct/OplusDirectFindCmds;->SAVE_FAVORITE:Lcom/oplus/direct/OplusDirectFindCmds;

    invoke-virtual {v3}, Lcom/oplus/direct/OplusDirectFindCmds;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oplus/direct/OplusDirectFindCmd;->putCommand(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v2, p0}, Lcom/oplus/direct/OplusDirectFindCmd;->setCallback(Lcom/oplus/direct/IOplusDirectFindCallback;)V

    .line 90
    invoke-virtual {v1, v2}, Landroid/view/OplusWindowManager;->directFindCmd(Lcom/oplus/direct/OplusDirectFindCmd;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "windowManager":Landroid/view/OplusWindowManager;
    .end local v2    # "cmd":Lcom/oplus/direct/OplusDirectFindCmd;
    goto :goto_0

    .line 93
    :catch_0
    move-exception v1

    .line 94
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v0, v1}, Lcom/oplus/util/OplusLog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 91
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 92
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {v0, v1}, Lcom/oplus/util/OplusLog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 96
    :goto_1
    return-void
.end method
