.class public interface abstract Landroid/app/IOplusResolverUxIconDrawableManager;
.super Ljava/lang/Object;
.source "IOplusResolverUxIconDrawableManager.java"


# static fields
.field public static final whitelist DEFAULT:Landroid/app/IOplusResolverUxIconDrawableManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Landroid/app/IOplusResolverUxIconDrawableManager$1;

    invoke-direct {v0}, Landroid/app/IOplusResolverUxIconDrawableManager$1;-><init>()V

    sput-object v0, Landroid/app/IOplusResolverUxIconDrawableManager;->DEFAULT:Landroid/app/IOplusResolverUxIconDrawableManager;

    return-void
.end method


# virtual methods
.method public whitelist getDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "originDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 31
    return-object p4
.end method
