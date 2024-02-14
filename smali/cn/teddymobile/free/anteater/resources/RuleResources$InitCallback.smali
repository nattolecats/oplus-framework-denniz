.class public interface abstract Lcn/teddymobile/free/anteater/resources/RuleResources$InitCallback;
.super Ljava/lang/Object;
.source "RuleResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/teddymobile/free/anteater/resources/RuleResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InitCallback"
.end annotation


# virtual methods
.method public abstract blacklist createWorkHandler(Landroid/content/Context;Ljava/lang/String;I)Landroid/os/Handler;
.end method

.method public abstract blacklist onLoadResult(Landroid/content/Context;ZLjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
