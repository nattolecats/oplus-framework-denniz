.class public Landroid/app/OplusUxIconAppCheckUtils;
.super Ljava/lang/Object;
.source "OplusUxIconAppCheckUtils.java"


# static fields
.field private static blacklist DESK_ACTIVITY_LIST:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist PRESET_APPS_LIST:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist SYSTEM_APP_LIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "OplusUxIconAppCheckUtils"

.field private static final blacklist UX_DESK_APP_PACKAGE:I = 0xc07002d

.field private static final blacklist UX_PRESET_APP_PACKAGE:I = 0xc07002c


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 13

    .line 39
    const/4 v0, 0x0

    sput-object v0, Landroid/app/OplusUxIconAppCheckUtils;->PRESET_APPS_LIST:Ljava/util/HashSet;

    .line 40
    sput-object v0, Landroid/app/OplusUxIconAppCheckUtils;->DESK_ACTIVITY_LIST:Ljava/util/Set;

    .line 42
    const-string v1, "com.android.systemui"

    const-string v2, "com.android.settings"

    const-string v3, "com.android.browser"

    const-string v4, "com.android.calculator2"

    const-string v5, "com.android.calendar"

    const-string v6, "com.android.contacts"

    const-string v7, "com.android.launcher"

    const-string v8, "com.android.mms"

    const-string v9, "com.android.packageinstaller"

    const-string v10, "com.android.permissioncontroller"

    const-string v11, "com.oplus.eyeprotect"

    const-string v12, "android"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Landroid/app/OplusUxIconAppCheckUtils;->SYSTEM_APP_LIST:Ljava/util/Set;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist isDeskActivity(Landroid/content/res/Resources;Ljava/lang/String;)Z
    .locals 3
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 58
    sget-object v0, Landroid/app/OplusUxIconAppCheckUtils;->DESK_ACTIVITY_LIST:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 59
    const v0, 0xc07002d    # 1.0400075E-31f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "packages":[Ljava/lang/String;
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v1, Landroid/app/OplusUxIconAppCheckUtils;->DESK_ACTIVITY_LIST:Ljava/util/Set;

    .line 62
    .end local v0    # "packages":[Ljava/lang/String;
    :cond_0
    sget-object v0, Landroid/app/OplusUxIconAppCheckUtils;->DESK_ACTIVITY_LIST:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static whitelist isPresetApp(Landroid/content/res/Resources;Ljava/lang/String;)Z
    .locals 5
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 66
    const-string v0, "OplusUxIconAppCheckUtils"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    const/4 v0, 0x0

    return v0

    .line 69
    :cond_0
    sget-object v1, Landroid/app/OplusUxIconAppCheckUtils;->PRESET_APPS_LIST:Ljava/util/HashSet;

    if-nez v1, :cond_1

    .line 71
    :try_start_0
    new-instance v1, Landroid/app/OplusActivityManager;

    invoke-direct {v1}, Landroid/app/OplusActivityManager;-><init>()V

    .line 72
    .local v1, "mOplusActivityManager":Landroid/app/OplusActivityManager;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    sput-object v2, Landroid/app/OplusUxIconAppCheckUtils;->PRESET_APPS_LIST:Ljava/util/HashSet;

    .line 73
    invoke-virtual {v1}, Landroid/app/OplusActivityManager;->getUXIconData()Lcom/oplus/util/OplusUXIconData;

    move-result-object v2

    .line 74
    .local v2, "data":Lcom/oplus/util/OplusUXIconData;
    new-instance v3, Ljava/util/HashSet;

    invoke-virtual {v2}, Lcom/oplus/util/OplusUXIconData;->getPresetAppList()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v3, Landroid/app/OplusUxIconAppCheckUtils;->PRESET_APPS_LIST:Ljava/util/HashSet;

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preset list = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/app/OplusUxIconAppCheckUtils;->PRESET_APPS_LIST:Ljava/util/HashSet;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    nop

    .end local v1    # "mOplusActivityManager":Landroid/app/OplusActivityManager;
    .end local v2    # "data":Lcom/oplus/util/OplusUXIconData;
    goto :goto_0

    .line 79
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init data Exception , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 76
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 77
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init data RemoteException , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 82
    .end local v1    # "e":Landroid/os/RemoteException;
    nop

    .line 83
    :goto_0
    sget-object v0, Landroid/app/OplusUxIconAppCheckUtils;->PRESET_APPS_LIST:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    const v0, 0xc07002c    # 1.0400073E-31f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "packages":[Ljava/lang/String;
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v1, Landroid/app/OplusUxIconAppCheckUtils;->PRESET_APPS_LIST:Ljava/util/HashSet;

    .line 88
    .end local v0    # "packages":[Ljava/lang/String;
    :cond_1
    sget-object v0, Landroid/app/OplusUxIconAppCheckUtils;->PRESET_APPS_LIST:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static whitelist isSystemApp(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .line 92
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    const/4 v0, 0x0

    return v0

    .line 95
    :cond_0
    sget-object v0, Landroid/app/OplusUxIconAppCheckUtils;->SYSTEM_APP_LIST:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static whitelist resetPresetAppsList()V
    .locals 1

    .line 99
    const/4 v0, 0x0

    sput-object v0, Landroid/app/OplusUxIconAppCheckUtils;->PRESET_APPS_LIST:Ljava/util/HashSet;

    .line 100
    return-void
.end method
