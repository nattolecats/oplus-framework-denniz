.class public Landroid/app/AppOpsManagerExtImpl;
.super Ljava/lang/Object;
.source "AppOpsManagerExtImpl.java"

# interfaces
.implements Landroid/app/IAppOpsManagerExt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AppOpsManagerExtImpl$LazyHolder;
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/AppOpsManagerExtImpl-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/AppOpsManagerExtImpl;-><init>()V

    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Landroid/app/AppOpsManagerExtImpl;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .line 20
    invoke-static {}, Landroid/app/AppOpsManagerExtImpl$LazyHolder;->-$$Nest$sfgetINSTANCE()Landroid/app/AppOpsManagerExtImpl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist getAllOpStrs([Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "strs"    # [Ljava/lang/String;

    .line 117
    array-length v0, p1

    sget-object v1, Landroid/app/AppOpsManagerExtImpl;->sCustomOpToString:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    .line 118
    .local v0, "allOpStrs":[Ljava/lang/String;
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    sget-object v1, Landroid/app/AppOpsManagerExtImpl;->sCustomOpToString:[Ljava/lang/String;

    array-length v3, p1

    sget-object v4, Landroid/app/AppOpsManagerExtImpl;->sCustomOpToString:[Ljava/lang/String;

    array-length v4, v4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    return-object v0
.end method

.method public blacklist getCustomOpAllowReset(I)Z
    .locals 2
    .param p1, "op"    # I

    .line 101
    const/16 v0, 0x2710

    if-le p1, v0, :cond_0

    .line 102
    sget-object v0, Landroid/app/AppOpsManagerExtImpl;->sCustomOpDisableReset:[Z

    add-int/lit16 v1, p1, -0x2711

    aget-boolean v0, v0, v1

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 104
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCustomOpAllowSystemBypassRestriction(I)Landroid/app/AppOpsManager$RestrictionBypass;
    .locals 2
    .param p1, "op"    # I

    .line 125
    const/16 v0, 0x2710

    if-le p1, v0, :cond_0

    .line 126
    sget-object v0, Landroid/app/AppOpsManagerExtImpl;->sCustomOpAllowSystemRestrictionBypass:[Landroid/app/AppOpsManager$RestrictionBypass;

    add-int/lit16 v1, p1, -0x2711

    aget-object v0, v0, v1

    return-object v0

    .line 128
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCustomOpToDefaultMode(I)Ljava/lang/Integer;
    .locals 2
    .param p1, "op"    # I

    .line 50
    const/16 v0, 0x2710

    if-le p1, v0, :cond_0

    .line 51
    sget-object v0, Landroid/app/AppOpsManagerExtImpl;->sCustomOpDefaultMode:[I

    add-int/lit16 v1, p1, -0x2711

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 53
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCustomOpToName(I)Ljava/lang/String;
    .locals 2
    .param p1, "op"    # I

    .line 58
    const/16 v0, 0x2710

    if-le p1, v0, :cond_1

    .line 59
    add-int/lit16 v0, p1, -0x2711

    sget-object v1, Landroid/app/AppOpsManagerExtImpl;->sCustomOpNames:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 60
    sget-object v0, Landroid/app/AppOpsManagerExtImpl;->sCustomOpNames:[Ljava/lang/String;

    add-int/lit16 v1, p1, -0x2711

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    :goto_0
    return-object v0

    .line 62
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCustomOpToPermission(I)Ljava/lang/String;
    .locals 2
    .param p1, "op"    # I

    .line 93
    const/16 v0, 0x2710

    if-le p1, v0, :cond_0

    .line 94
    sget-object v0, Landroid/app/AppOpsManagerExtImpl;->sCustomOpPerms:[Ljava/lang/String;

    add-int/lit16 v1, p1, -0x2711

    aget-object v0, v0, v1

    return-object v0

    .line 96
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCustomOpToPublicName(I)Ljava/lang/String;
    .locals 2
    .param p1, "op"    # I

    .line 67
    const/16 v0, 0x2710

    if-le p1, v0, :cond_0

    .line 68
    sget-object v0, Landroid/app/AppOpsManagerExtImpl;->sCustomOpToString:[Ljava/lang/String;

    add-int/lit16 v1, p1, -0x2711

    aget-object v0, v0, v1

    return-object v0

    .line 70
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCustomOpToRestriction(I)Ljava/lang/String;
    .locals 2
    .param p1, "op"    # I

    .line 75
    const/16 v0, 0x2710

    if-le p1, v0, :cond_0

    .line 76
    sget-object v0, Landroid/app/AppOpsManagerExtImpl;->sCustomOpRestrictions:[Ljava/lang/String;

    add-int/lit16 v1, p1, -0x2711

    aget-object v0, v0, v1

    return-object v0

    .line 78
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCustomOpToSwitch(I)Ljava/lang/Integer;
    .locals 3
    .param p1, "op"    # I

    .line 42
    const/16 v0, 0x2710

    if-le p1, v0, :cond_0

    .line 43
    new-instance v0, Ljava/lang/Integer;

    sget-object v1, Landroid/app/AppOpsManagerExtImpl;->sCustomOpToSwitch:[I

    add-int/lit16 v2, p1, -0x2711

    aget v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0

    .line 45
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCustomPermissionToOp(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 3
    .param p1, "opCode"    # Ljava/lang/Integer;

    .line 109
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x2710

    if-le v0, v1, :cond_0

    .line 110
    sget-object v0, Landroid/app/AppOpsManagerExtImpl;->sCustomOpToString:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    return-object v0

    .line 112
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCustomStrDebugOpToOp(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .param p1, "op"    # Ljava/lang/String;

    .line 83
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Landroid/app/AppOpsManagerExtImpl;->sCustomOpNames:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 84
    sget-object v1, Landroid/app/AppOpsManagerExtImpl;->sCustomOpNames:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    add-int/lit16 v1, v0, 0x2711

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 83
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onCustomOpChanged(Landroid/app/AppOpsManager$OnOpChangedListener;ILjava/lang/String;)Z
    .locals 4
    .param p1, "callback"    # Landroid/app/AppOpsManager$OnOpChangedListener;
    .param p2, "op"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 133
    const/16 v0, 0x2710

    if-ge p2, v0, :cond_0

    .line 134
    const/4 v0, 0x0

    return v0

    .line 137
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Landroid/app/AppOpsManagerExtImpl;->sCustomOpToString:[Ljava/lang/String;

    add-int/lit16 v2, p2, -0x2711

    aget-object v1, v1, v2

    .line 138
    .local v1, "cusOpName":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 139
    invoke-interface {p1, v1, p3}, Landroid/app/AppOpsManager$OnOpChangedListener;->onOpChanged(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    return v0

    .line 145
    .end local v1    # "cusOpName":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 142
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "opChanged Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 144
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Cus op = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 143
    const-string v3, "AppOpsManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public blacklist putCustomOpStrToOp(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 35
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    sget-object v0, Landroid/app/AppOpsManagerExtImpl;->sCustomOpStrToOp:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 36
    sget-object v0, Landroid/app/AppOpsManagerExtImpl;->sCustomOpStrToOp:Ljava/util/HashMap;

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 38
    :cond_0
    return-void
.end method

.method public blacklist putCustomRuntimeOps(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 26
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    sget-object v0, Landroid/app/AppOpsManagerExtImpl;->sCustomRuntimeOps:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    .line 27
    .local v3, "op":I
    sget-object v4, Landroid/app/AppOpsManagerExtImpl;->sCustomOpPerms:[Ljava/lang/String;

    add-int/lit16 v5, v3, -0x2710

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    if-eqz v4, :cond_0

    .line 28
    sget-object v4, Landroid/app/AppOpsManagerExtImpl;->sCustomOpPerms:[Ljava/lang/String;

    add-int/lit16 v5, v3, -0x2711

    aget-object v4, v4, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .end local v3    # "op":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 31
    :cond_1
    return-void
.end method
