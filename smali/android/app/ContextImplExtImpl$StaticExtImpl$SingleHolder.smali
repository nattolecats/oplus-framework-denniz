.class public Landroid/app/ContextImplExtImpl$StaticExtImpl$SingleHolder;
.super Ljava/lang/Object;
.source "ContextImplExtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImplExtImpl$StaticExtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleHolder"
.end annotation


# static fields
.field private static final blacklist INSTACNE:Landroid/app/ContextImplExtImpl$StaticExtImpl;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetINSTACNE()Landroid/app/ContextImplExtImpl$StaticExtImpl;
    .locals 1

    sget-object v0, Landroid/app/ContextImplExtImpl$StaticExtImpl$SingleHolder;->INSTACNE:Landroid/app/ContextImplExtImpl$StaticExtImpl;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 63
    new-instance v0, Landroid/app/ContextImplExtImpl$StaticExtImpl;

    invoke-direct {v0}, Landroid/app/ContextImplExtImpl$StaticExtImpl;-><init>()V

    sput-object v0, Landroid/app/ContextImplExtImpl$StaticExtImpl$SingleHolder;->INSTACNE:Landroid/app/ContextImplExtImpl$StaticExtImpl;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
