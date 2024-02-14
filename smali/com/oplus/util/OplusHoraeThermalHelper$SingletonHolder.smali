.class Lcom/oplus/util/OplusHoraeThermalHelper$SingletonHolder;
.super Ljava/lang/Object;
.source "OplusHoraeThermalHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/util/OplusHoraeThermalHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static blacklist instance:Lcom/oplus/util/OplusHoraeThermalHelper;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetinstance()Lcom/oplus/util/OplusHoraeThermalHelper;
    .locals 1

    sget-object v0, Lcom/oplus/util/OplusHoraeThermalHelper$SingletonHolder;->instance:Lcom/oplus/util/OplusHoraeThermalHelper;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 71
    new-instance v0, Lcom/oplus/util/OplusHoraeThermalHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/util/OplusHoraeThermalHelper;-><init>(Lcom/oplus/util/OplusHoraeThermalHelper-IA;)V

    sput-object v0, Lcom/oplus/util/OplusHoraeThermalHelper$SingletonHolder;->instance:Lcom/oplus/util/OplusHoraeThermalHelper;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
