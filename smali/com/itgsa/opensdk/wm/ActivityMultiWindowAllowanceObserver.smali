.class public Lcom/itgsa/opensdk/wm/ActivityMultiWindowAllowanceObserver;
.super Ljava/lang/Object;
.source "ActivityMultiWindowAllowanceObserver.java"


# instance fields
.field private final blacklist mStub:Lcom/oplus/app/IActivityMultiWindowAllowanceObserver;


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/itgsa/opensdk/wm/ActivityMultiWindowAllowanceObserver$1;

    invoke-direct {v0, p0}, Lcom/itgsa/opensdk/wm/ActivityMultiWindowAllowanceObserver$1;-><init>(Lcom/itgsa/opensdk/wm/ActivityMultiWindowAllowanceObserver;)V

    iput-object v0, p0, Lcom/itgsa/opensdk/wm/ActivityMultiWindowAllowanceObserver;->mStub:Lcom/oplus/app/IActivityMultiWindowAllowanceObserver;

    return-void
.end method


# virtual methods
.method blacklist asObserver()Lcom/oplus/app/IActivityMultiWindowAllowanceObserver;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/itgsa/opensdk/wm/ActivityMultiWindowAllowanceObserver;->mStub:Lcom/oplus/app/IActivityMultiWindowAllowanceObserver;

    return-object v0
.end method

.method public whitelist onMultiWindowAllowanceChanged(Lcom/itgsa/opensdk/wm/ActivityMultiWindowAllowance;)V
    .locals 0
    .param p1, "allowance"    # Lcom/itgsa/opensdk/wm/ActivityMultiWindowAllowance;

    .line 56
    return-void
.end method
