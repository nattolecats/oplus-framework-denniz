.class public interface abstract Lcom/oplus/favorite/IOplusFavoriteEngine;
.super Ljava/lang/Object;
.source "IOplusFavoriteEngine.java"

# interfaces
.implements Lcom/oplus/favorite/IOplusFavoriteConstans;


# virtual methods
.method public abstract blacklist getWorkHandler()Landroid/os/Handler;
.end method

.method public abstract blacklist init()V
.end method

.method public abstract blacklist isDebugOn()Z
.end method

.method public abstract blacklist isLogOn()Z
.end method

.method public abstract blacklist isTestOn()Z
.end method

.method public abstract blacklist loadRule(Landroid/content/Context;Ljava/lang/String;Lcom/oplus/favorite/OplusFavoriteCallback;)V
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
