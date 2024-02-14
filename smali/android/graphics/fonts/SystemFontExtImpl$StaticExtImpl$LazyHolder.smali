.class Landroid/graphics/fonts/SystemFontExtImpl$StaticExtImpl$LazyHolder;
.super Ljava/lang/Object;
.source "SystemFontExtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/fonts/SystemFontExtImpl$StaticExtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static final blacklist INSTANCE:Landroid/graphics/fonts/SystemFontExtImpl$StaticExtImpl;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetINSTANCE()Landroid/graphics/fonts/SystemFontExtImpl$StaticExtImpl;
    .locals 1

    sget-object v0, Landroid/graphics/fonts/SystemFontExtImpl$StaticExtImpl$LazyHolder;->INSTANCE:Landroid/graphics/fonts/SystemFontExtImpl$StaticExtImpl;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Landroid/graphics/fonts/SystemFontExtImpl$StaticExtImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/fonts/SystemFontExtImpl$StaticExtImpl;-><init>(Landroid/graphics/fonts/SystemFontExtImpl$StaticExtImpl-IA;)V

    sput-object v0, Landroid/graphics/fonts/SystemFontExtImpl$StaticExtImpl$LazyHolder;->INSTANCE:Landroid/graphics/fonts/SystemFontExtImpl$StaticExtImpl;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
