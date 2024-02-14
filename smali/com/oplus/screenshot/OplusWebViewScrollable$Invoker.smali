.class interface abstract Lcom/oplus/screenshot/OplusWebViewScrollable$Invoker;
.super Ljava/lang/Object;
.source "OplusWebViewScrollable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/screenshot/OplusWebViewScrollable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "Invoker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final blacklist FLOAT_INVOKER:Lcom/oplus/screenshot/OplusWebViewScrollable$Invoker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/screenshot/OplusWebViewScrollable$Invoker<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist INTEGER_INVOKER:Lcom/oplus/screenshot/OplusWebViewScrollable$Invoker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/screenshot/OplusWebViewScrollable$Invoker<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 122
    new-instance v0, Lcom/oplus/screenshot/OplusWebViewScrollable$Invoker$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/oplus/screenshot/OplusWebViewScrollable$Invoker$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/oplus/screenshot/OplusWebViewScrollable$Invoker;->INTEGER_INVOKER:Lcom/oplus/screenshot/OplusWebViewScrollable$Invoker;

    .line 124
    new-instance v0, Lcom/oplus/screenshot/OplusWebViewScrollable$Invoker$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/oplus/screenshot/OplusWebViewScrollable$Invoker$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/oplus/screenshot/OplusWebViewScrollable$Invoker;->FLOAT_INVOKER:Lcom/oplus/screenshot/OplusWebViewScrollable$Invoker;

    return-void
.end method

.method public static varargs blacklist invokes(Landroid/view/View;Lcom/oplus/screenshot/OplusWebViewScrollable$Invoker;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p2, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/View;",
            "Lcom/oplus/screenshot/OplusWebViewScrollable$Invoker<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 129
    .local p1, "invoker":Lcom/oplus/screenshot/OplusWebViewScrollable$Invoker;, "Lcom/oplus/screenshot/OplusWebViewScrollable$Invoker<TT;>;"
    .local p3, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p4, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 130
    .local v0, "method":Ljava/lang/reflect/Method;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v1, :cond_1

    .line 132
    :try_start_0
    invoke-virtual {v1, p2, p4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 135
    nop

    .line 136
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    if-ne v2, p3, :cond_0

    .line 137
    goto :goto_2

    .line 139
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 133
    :catch_0
    move-exception v2

    .line 134
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    nop

    .line 130
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 141
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :goto_2
    if-eqz v0, :cond_2

    .line 144
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, p0, v1}, Lcom/oplus/screenshot/OplusWebViewScrollable$Invoker;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 142
    :cond_2
    new-instance v1, Ljava/lang/NoSuchMethodException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Return type of method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not match"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static synthetic blacklist lambda$static$0(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 1
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 122
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public static synthetic blacklist lambda$static$1(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Float;
    .locals 1
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 124
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    return-object v0
.end method


# virtual methods
.method public varargs abstract blacklist invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation
.end method
