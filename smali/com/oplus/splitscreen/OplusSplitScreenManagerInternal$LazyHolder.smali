.class Lcom/oplus/splitscreen/OplusSplitScreenManagerInternal$LazyHolder;
.super Ljava/lang/Object;
.source "OplusSplitScreenManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/splitscreen/OplusSplitScreenManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static final blacklist INSTANCE:Lcom/oplus/splitscreen/OplusSplitScreenManagerInternal;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetINSTANCE()Lcom/oplus/splitscreen/OplusSplitScreenManagerInternal;
    .locals 1

    sget-object v0, Lcom/oplus/splitscreen/OplusSplitScreenManagerInternal$LazyHolder;->INSTANCE:Lcom/oplus/splitscreen/OplusSplitScreenManagerInternal;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 295
    new-instance v0, Lcom/oplus/splitscreen/OplusSplitScreenManagerInternal;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/splitscreen/OplusSplitScreenManagerInternal;-><init>(Lcom/oplus/splitscreen/OplusSplitScreenManagerInternal-IA;)V

    sput-object v0, Lcom/oplus/splitscreen/OplusSplitScreenManagerInternal$LazyHolder;->INSTANCE:Lcom/oplus/splitscreen/OplusSplitScreenManagerInternal;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
