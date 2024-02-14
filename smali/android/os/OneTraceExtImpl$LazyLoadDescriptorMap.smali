.class Landroid/os/OneTraceExtImpl$LazyLoadDescriptorMap;
.super Ljava/lang/Object;
.source "OneTraceExtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/OneTraceExtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyLoadDescriptorMap"
.end annotation


# static fields
.field private static final blacklist DESCRIPTOR_ID_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetDESCRIPTOR_ID_MAP()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Landroid/os/OneTraceExtImpl$LazyLoadDescriptorMap;->DESCRIPTOR_ID_MAP:Ljava/util/HashMap;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 5

    .line 338
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/OneTraceExtImpl$LazyLoadDescriptorMap;->DESCRIPTOR_ID_MAP:Ljava/util/HashMap;

    .line 341
    invoke-static {}, Landroid/os/OneTraceExtImpl;->-$$Nest$sfgetINTERFACE_LIST()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    .line 342
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 343
    sget-object v2, Landroid/os/OneTraceExtImpl$LazyLoadDescriptorMap;->DESCRIPTOR_ID_MAP:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/OneTraceExtImpl;->-$$Nest$sfgetINTERFACE_LIST()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 345
    .end local v0    # "length":I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
