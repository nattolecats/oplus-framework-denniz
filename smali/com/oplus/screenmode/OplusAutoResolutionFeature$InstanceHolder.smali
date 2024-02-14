.class Lcom/oplus/screenmode/OplusAutoResolutionFeature$InstanceHolder;
.super Ljava/lang/Object;
.source "OplusAutoResolutionFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/screenmode/OplusAutoResolutionFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field static final blacklist INSTANCE:Lcom/oplus/screenmode/OplusAutoResolutionFeature;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 59
    new-instance v0, Lcom/oplus/screenmode/OplusAutoResolutionFeature;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/screenmode/OplusAutoResolutionFeature;-><init>(Lcom/oplus/screenmode/OplusAutoResolutionFeature-IA;)V

    sput-object v0, Lcom/oplus/screenmode/OplusAutoResolutionFeature$InstanceHolder;->INSTANCE:Lcom/oplus/screenmode/OplusAutoResolutionFeature;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
