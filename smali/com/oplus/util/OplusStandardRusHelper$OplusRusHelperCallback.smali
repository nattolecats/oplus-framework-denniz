.class public abstract Lcom/oplus/util/OplusStandardRusHelper$OplusRusHelperCallback;
.super Ljava/lang/Object;
.source "OplusStandardRusHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/util/OplusStandardRusHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "OplusRusHelperCallback"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/util/OplusStandardRusHelper;


# direct methods
.method public constructor blacklist <init>(Lcom/oplus/util/OplusStandardRusHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/util/OplusStandardRusHelper;

    .line 40
    iput-object p1, p0, Lcom/oplus/util/OplusStandardRusHelper$OplusRusHelperCallback;->this$0:Lcom/oplus/util/OplusStandardRusHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onUpdate()V
    .locals 0

    .line 41
    return-void
.end method
