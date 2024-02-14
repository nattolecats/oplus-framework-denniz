.class public interface abstract Lcom/oplus/favorite/IOplusBaseFavoriteManager;
.super Ljava/lang/Object;
.source "IOplusBaseFavoriteManager.java"

# interfaces
.implements Lcom/oplus/favorite/IOplusFavoriteConstans;
.implements Landroid/common/IOplusCommonFeature;


# static fields
.field public static final blacklist NAME:Ljava/lang/String; = "OplusFavoriteManager"


# virtual methods
.method public abstract blacklist getWorkHandler()Landroid/os/Handler;
.end method

.method public abstract blacklist isSaved(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract blacklist logActivityInfo(Landroid/app/Activity;)V
.end method

.method public abstract blacklist logViewInfo(Landroid/view/View;)V
.end method

.method public abstract blacklist processClick(Landroid/view/View;Lcom/oplus/favorite/OplusFavoriteCallback;)V
.end method

.method public abstract blacklist processCrawl(Landroid/view/View;Lcom/oplus/favorite/OplusFavoriteCallback;Ljava/lang/String;)V
.end method

.method public abstract blacklist processSave(Landroid/view/View;Lcom/oplus/favorite/OplusFavoriteCallback;)V
.end method

.method public abstract blacklist release()V
.end method

.method public abstract blacklist setEngine(Lcom/oplus/favorite/OplusFavoriteEngines;)V
.end method
