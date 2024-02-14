.class public final synthetic Landroid/content/pm/RegisteredServicesCacheExtImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/util/ArraySet;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/util/ArraySet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/RegisteredServicesCacheExtImpl$$ExternalSyntheticLambda0;->f$0:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCacheExtImpl$$ExternalSyntheticLambda0;->f$0:Landroid/util/ArraySet;

    check-cast p1, Landroid/content/pm/ResolveInfo;

    invoke-static {v0, p1}, Landroid/content/pm/RegisteredServicesCacheExtImpl;->lambda$adjustGenerateServicesMap$0(Landroid/util/ArraySet;Landroid/content/pm/ResolveInfo;)V

    return-void
.end method
