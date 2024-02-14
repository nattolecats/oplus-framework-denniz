.class Lcom/oplus/darkmode/OplusDarkModeManager$Holder;
.super Ljava/lang/Object;
.source "OplusDarkModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/darkmode/OplusDarkModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final blacklist INSTANCE:Lcom/oplus/darkmode/OplusDarkModeManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetINSTANCE()Lcom/oplus/darkmode/OplusDarkModeManager;
    .locals 1

    sget-object v0, Lcom/oplus/darkmode/OplusDarkModeManager$Holder;->INSTANCE:Lcom/oplus/darkmode/OplusDarkModeManager;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 78
    new-instance v0, Lcom/oplus/darkmode/OplusDarkModeManager;

    invoke-direct {v0}, Lcom/oplus/darkmode/OplusDarkModeManager;-><init>()V

    sput-object v0, Lcom/oplus/darkmode/OplusDarkModeManager$Holder;->INSTANCE:Lcom/oplus/darkmode/OplusDarkModeManager;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
