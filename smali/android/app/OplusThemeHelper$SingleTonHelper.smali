.class Landroid/app/OplusThemeHelper$SingleTonHelper;
.super Ljava/lang/Object;
.source "OplusThemeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/OplusThemeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleTonHelper"
.end annotation


# static fields
.field private static final blacklist INSTANCE:Landroid/app/OplusThemeHelper;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetINSTANCE()Landroid/app/OplusThemeHelper;
    .locals 1

    sget-object v0, Landroid/app/OplusThemeHelper$SingleTonHelper;->INSTANCE:Landroid/app/OplusThemeHelper;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Landroid/app/OplusThemeHelper;

    invoke-direct {v0}, Landroid/app/OplusThemeHelper;-><init>()V

    sput-object v0, Landroid/app/OplusThemeHelper$SingleTonHelper;->INSTANCE:Landroid/app/OplusThemeHelper;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
