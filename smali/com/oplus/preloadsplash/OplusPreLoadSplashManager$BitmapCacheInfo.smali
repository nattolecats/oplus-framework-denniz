.class public Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$BitmapCacheInfo;
.super Ljava/lang/Object;
.source "OplusPreLoadSplashManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BitmapCacheInfo"
.end annotation


# instance fields
.field public blacklist mBitmapResourceID:I

.field public blacklist mResourceName:Ljava/lang/String;

.field final synthetic blacklist this$0:Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;


# direct methods
.method public constructor blacklist <init>(Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;

    .line 101
    iput-object p1, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$BitmapCacheInfo;->this$0:Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    return-void
.end method

.method public constructor blacklist <init>(Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "resourceID"    # I

    .line 104
    iput-object p1, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$BitmapCacheInfo;->this$0:Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p2, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$BitmapCacheInfo;->mResourceName:Ljava/lang/String;

    .line 106
    iput p3, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$BitmapCacheInfo;->mBitmapResourceID:I

    .line 107
    return-void
.end method


# virtual methods
.method public blacklist getResourceID()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$BitmapCacheInfo;->mBitmapResourceID:I

    return v0
.end method

.method public blacklist getResourceName()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$BitmapCacheInfo;->mResourceName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist setResourceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 122
    iput-object p1, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$BitmapCacheInfo;->mResourceName:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public blacklist setResourcesID(I)V
    .locals 0
    .param p1, "id"    # I

    .line 118
    iput p1, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$BitmapCacheInfo;->mBitmapResourceID:I

    .line 119
    return-void
.end method
