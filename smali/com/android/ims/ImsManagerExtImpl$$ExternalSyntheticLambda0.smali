.class public final synthetic Lcom/android/ims/ImsManagerExtImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/ims/ImsManagerExtImpl;

.field public final synthetic blacklist f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/ims/ImsManagerExtImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/ims/ImsManagerExtImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/ims/ImsManagerExtImpl;

    iput-object p2, p0, Lcom/android/ims/ImsManagerExtImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Lcom/android/ims/ImsManagerExtImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/ims/ImsManagerExtImpl;

    iget-object v1, p0, Lcom/android/ims/ImsManagerExtImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsManagerExtImpl;->lambda$updateImsUserAgent$0$com-android-ims-ImsManagerExtImpl(Ljava/lang/String;)V

    return-void
.end method
