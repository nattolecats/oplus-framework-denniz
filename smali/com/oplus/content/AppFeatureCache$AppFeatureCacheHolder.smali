.class Lcom/oplus/content/AppFeatureCache$AppFeatureCacheHolder;
.super Ljava/lang/Object;
.source "AppFeatureCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/content/AppFeatureCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppFeatureCacheHolder"
.end annotation


# static fields
.field static final blacklist INSTANCE:Lcom/oplus/content/AppFeatureCache;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Lcom/oplus/content/AppFeatureCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/content/AppFeatureCache;-><init>(Lcom/oplus/content/AppFeatureCache-IA;)V

    sput-object v0, Lcom/oplus/content/AppFeatureCache$AppFeatureCacheHolder;->INSTANCE:Lcom/oplus/content/AppFeatureCache;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
