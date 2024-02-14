.class public Loplus/util/OplusDisplayUtils;
.super Ljava/lang/Object;
.source "OplusDisplayUtils.java"


# static fields
.field private static final blacklist DENSITIES:[I

.field public static final blacklist DENSITY_NONE:I = 0x1


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 25
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Loplus/util/OplusDisplayUtils;->DENSITIES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1e0
        0x140
        0x1
        0x0
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getBestDensityOrder(I)[I
    .locals 8
    .param p0, "density"    # I

    .line 29
    const/4 v0, 0x1

    if-gt p0, v0, :cond_0

    .line 30
    sget-object v0, Loplus/util/OplusDisplayUtils;->DENSITIES:[I

    return-object v0

    .line 32
    :cond_0
    const/4 v1, 0x0

    .line 33
    .local v1, "i":I
    const/4 v2, -0x1

    .line 34
    .local v2, "k":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    sget-object v4, Loplus/util/OplusDisplayUtils;->DENSITIES:[I

    array-length v5, v4

    if-ge v3, v5, :cond_3

    .line 35
    aget v5, v4, v3

    if-le p0, v5, :cond_1

    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 37
    move v2, v3

    .line 38
    goto :goto_1

    .line 40
    :cond_1
    if-ne p0, v5, :cond_2

    .line 41
    move v2, v3

    .line 42
    goto :goto_1

    .line 34
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 46
    .end local v3    # "j":I
    :cond_3
    :goto_1
    array-length v3, v4

    add-int/2addr v3, v1

    new-array v3, v3, [I

    .line 47
    .local v3, "array":[I
    packed-switch v2, :pswitch_data_0

    goto :goto_3

    .line 61
    :pswitch_0
    array-length v5, v3

    .line 62
    .local v5, "len":I
    const/4 v6, 0x0

    aput p0, v3, v6

    .line 63
    add-int/lit8 v7, v5, -0x1

    aput v6, v3, v7

    .line 64
    add-int/lit8 v6, v5, -0x2

    aput v0, v3, v6

    .line 65
    if-nez v1, :cond_4

    .line 66
    add-int/lit8 v0, v1, 0x1

    aget v4, v4, v1

    aput v4, v3, v0

    goto :goto_3

    .line 68
    :cond_4
    aget v0, v4, v1

    aput v0, v3, v1

    .line 69
    add-int/lit8 v0, v1, 0x1

    add-int/lit8 v6, v1, -0x1

    aget v4, v4, v6

    aput v4, v3, v0

    goto :goto_3

    .line 49
    .end local v5    # "len":I
    :pswitch_1
    if-nez v1, :cond_5

    .line 50
    return-object v4

    .line 52
    :cond_5
    aput p0, v3, v2

    .line 53
    :goto_2
    array-length v0, v3

    if-ge v1, v0, :cond_6

    .line 54
    sget-object v0, Loplus/util/OplusDisplayUtils;->DENSITIES:[I

    add-int/lit8 v4, v1, -0x1

    aget v0, v0, v4

    aput v0, v3, v1

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 73
    :cond_6
    :goto_3
    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist getDensityName(I)Ljava/lang/String;
    .locals 1
    .param p0, "density"    # I

    .line 79
    sparse-switch p0, :sswitch_data_0

    .line 102
    const-string v0, ""

    .local v0, "name":Ljava/lang/String;
    goto :goto_0

    .line 81
    .end local v0    # "name":Ljava/lang/String;
    :sswitch_0
    const-string v0, "xxxhdpi"

    .line 82
    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_0

    .line 84
    .end local v0    # "name":Ljava/lang/String;
    :sswitch_1
    const-string v0, "xxhdpi"

    .line 85
    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_0

    .line 87
    .end local v0    # "name":Ljava/lang/String;
    :sswitch_2
    const-string v0, "xhdpi"

    .line 88
    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_0

    .line 90
    .end local v0    # "name":Ljava/lang/String;
    :sswitch_3
    const-string v0, "hdpi"

    .line 91
    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_0

    .line 93
    .end local v0    # "name":Ljava/lang/String;
    :sswitch_4
    const-string v0, "mdpi"

    .line 94
    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_0

    .line 96
    .end local v0    # "name":Ljava/lang/String;
    :sswitch_5
    const-string v0, "ldpi"

    .line 97
    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_0

    .line 99
    .end local v0    # "name":Ljava/lang/String;
    :sswitch_6
    const-string v0, "nodpi"

    .line 100
    .restart local v0    # "name":Ljava/lang/String;
    nop

    .line 107
    :goto_0
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_6
        0x78 -> :sswitch_5
        0xa0 -> :sswitch_4
        0xf0 -> :sswitch_3
        0x140 -> :sswitch_2
        0x1e0 -> :sswitch_1
        0x280 -> :sswitch_0
    .end sparse-switch
.end method

.method public static blacklist getDensitySuffix(I)Ljava/lang/String;
    .locals 3
    .param p0, "i"    # I

    .line 111
    invoke-static {p0}, Loplus/util/OplusDisplayUtils;->getDensityName(I)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "s":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    :cond_0
    return-object v0
.end method

.method public static blacklist getDrawbleDensityFolder(I)Ljava/lang/String;
    .locals 2
    .param p0, "i"    # I

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "res/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Loplus/util/OplusDisplayUtils;->getDrawbleDensityName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getDrawbleDensityName(I)Ljava/lang/String;
    .locals 2
    .param p0, "i"    # I

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drawable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Loplus/util/OplusDisplayUtils;->getDensitySuffix(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
