.class public final synthetic Landroid/app/OplusActivityThreadExtImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:I


# direct methods
.method public synthetic constructor blacklist <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/OplusActivityThreadExtImpl$$ExternalSyntheticLambda0;->f$0:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 1

    iget v0, p0, Landroid/app/OplusActivityThreadExtImpl$$ExternalSyntheticLambda0;->f$0:I

    invoke-static {v0}, Landroid/app/OplusActivityThreadExtImpl;->lambda$onTransact$0(I)V

    return-void
.end method
