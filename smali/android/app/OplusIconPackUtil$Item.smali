.class final Landroid/app/OplusIconPackUtil$Item;
.super Ljava/lang/Object;
.source "OplusIconPackUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/OplusIconPackUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Item"
.end annotation


# static fields
.field private static final blacklist DEFAULT_DRAWABLE_ID:I = -0x1


# instance fields
.field blacklist mDrawableId:I

.field blacklist mDrawableName:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/OplusIconPackUtil$Item;->mDrawableId:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/OplusIconPackUtil$Item-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/OplusIconPackUtil$Item;-><init>()V

    return-void
.end method
