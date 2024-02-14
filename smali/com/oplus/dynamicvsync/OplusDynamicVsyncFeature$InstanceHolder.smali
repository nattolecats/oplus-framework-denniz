.class Lcom/oplus/dynamicvsync/OplusDynamicVsyncFeature$InstanceHolder;
.super Ljava/lang/Object;
.source "OplusDynamicVsyncFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/dynamicvsync/OplusDynamicVsyncFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field static final blacklist INSTANCE:Lcom/oplus/dynamicvsync/OplusDynamicVsyncFeature;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Lcom/oplus/dynamicvsync/OplusDynamicVsyncFeature;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/dynamicvsync/OplusDynamicVsyncFeature;-><init>(Lcom/oplus/dynamicvsync/OplusDynamicVsyncFeature-IA;)V

    sput-object v0, Lcom/oplus/dynamicvsync/OplusDynamicVsyncFeature$InstanceHolder;->INSTANCE:Lcom/oplus/dynamicvsync/OplusDynamicVsyncFeature;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
