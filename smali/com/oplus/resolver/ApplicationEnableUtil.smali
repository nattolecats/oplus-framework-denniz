.class public Lcom/oplus/resolver/ApplicationEnableUtil;
.super Ljava/lang/Object;
.source "ApplicationEnableUtil.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ApplicationEnableUtil"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist applicationEnable(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 4
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 48
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .local v1, "enableSetting":I
    if-eq v1, v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    .line 51
    .end local v1    # "enableSetting":I
    :catch_0
    move-exception v1

    .line 52
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applicationEnable: error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ApplicationEnableUtil"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method static synthetic blacklist lambda$showApplicationEnableDialog$0(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "dialog1"    # Landroid/content/DialogInterface;
    .param p4, "which"    # I

    .line 78
    invoke-interface {p3}, Landroid/content/DialogInterface;->dismiss()V

    .line 79
    invoke-static {p0, p1}, Lcom/oplus/resolver/ApplicationEnableUtil;->setApplicationEnable(Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    .line 83
    invoke-interface {p2, p3, p4}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 84
    return-void
.end method

.method static synthetic blacklist lambda$showApplicationEnableDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog12"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 86
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private static blacklist setApplicationEnable(Landroid/content/pm/PackageManager;Ljava/lang/String;)V
    .locals 3
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 31
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0, v0}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setApplicationEnable: error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ApplicationEnableUtil"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static blacklist showApplicationEnableDialog(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/content/DialogInterface$OnClickListener;

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 65
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const-string v1, ""

    .line 67
    .local v1, "appName":Ljava/lang/CharSequence;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 70
    nop

    .line 71
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0xc0400ee

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v1, v6, v2

    .line 72
    invoke-virtual {p0, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0xc0400ef

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v2

    const v7, 0x1040136

    .line 76
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    .line 73
    invoke-virtual {p0, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0xc0400f0

    new-instance v6, Lcom/oplus/resolver/ApplicationEnableUtil$$ExternalSyntheticLambda0;

    invoke-direct {v6, v0, p1, p2}, Lcom/oplus/resolver/ApplicationEnableUtil$$ExternalSyntheticLambda0;-><init>(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 77
    invoke-virtual {v3, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0xc04003d

    new-instance v6, Lcom/oplus/resolver/ApplicationEnableUtil$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Lcom/oplus/resolver/ApplicationEnableUtil$$ExternalSyntheticLambda1;-><init>()V

    .line 85
    invoke-virtual {v3, v4, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 86
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 87
    .local v3, "dialog":Landroid/app/Dialog;
    invoke-virtual {v3, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 88
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 89
    return v5

    .line 68
    .end local v3    # "dialog":Landroid/app/Dialog;
    :catch_0
    move-exception v3

    .line 69
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v2
.end method
