.class public interface abstract Lcn/teddymobile/free/anteater/resources/RuleResourcesServer$QueryCallback;
.super Ljava/lang/Object;
.source "RuleResourcesServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/teddymobile/free/anteater/resources/RuleResourcesServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "QueryCallback"
.end annotation


# virtual methods
.method public abstract blacklist createWorkHandler(Landroid/content/Context;Ljava/lang/String;I)Landroid/os/Handler;
.end method

.method public abstract blacklist linkBinderToDeath(Landroid/os/IBinder$DeathRecipient;)V
.end method

.method public abstract blacklist onQueryResult(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract blacklist unlinkBinderToDeath(Landroid/os/IBinder$DeathRecipient;)V
.end method
