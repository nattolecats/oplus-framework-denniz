.class public Landroid/graphics/drawable/VectorDrawableExtImpl$StaticExtImpl$SingleHolder;
.super Ljava/lang/Object;
.source "VectorDrawableExtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/VectorDrawableExtImpl$StaticExtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleHolder"
.end annotation


# static fields
.field private static final blacklist INSTACNE:Landroid/graphics/drawable/VectorDrawableExtImpl$StaticExtImpl;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetINSTACNE()Landroid/graphics/drawable/VectorDrawableExtImpl$StaticExtImpl;
    .locals 1

    sget-object v0, Landroid/graphics/drawable/VectorDrawableExtImpl$StaticExtImpl$SingleHolder;->INSTACNE:Landroid/graphics/drawable/VectorDrawableExtImpl$StaticExtImpl;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Landroid/graphics/drawable/VectorDrawableExtImpl$StaticExtImpl;

    invoke-direct {v0}, Landroid/graphics/drawable/VectorDrawableExtImpl$StaticExtImpl;-><init>()V

    sput-object v0, Landroid/graphics/drawable/VectorDrawableExtImpl$StaticExtImpl$SingleHolder;->INSTACNE:Landroid/graphics/drawable/VectorDrawableExtImpl$StaticExtImpl;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
