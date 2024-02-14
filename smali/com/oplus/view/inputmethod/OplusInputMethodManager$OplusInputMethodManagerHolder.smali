.class final Lcom/oplus/view/inputmethod/OplusInputMethodManager$OplusInputMethodManagerHolder;
.super Ljava/lang/Object;
.source "OplusInputMethodManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/view/inputmethod/OplusInputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OplusInputMethodManagerHolder"
.end annotation


# static fields
.field private static final blacklist INSTANCE:Lcom/oplus/view/inputmethod/OplusInputMethodManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetINSTANCE()Lcom/oplus/view/inputmethod/OplusInputMethodManager;
    .locals 1

    sget-object v0, Lcom/oplus/view/inputmethod/OplusInputMethodManager$OplusInputMethodManagerHolder;->INSTANCE:Lcom/oplus/view/inputmethod/OplusInputMethodManager;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lcom/oplus/view/inputmethod/OplusInputMethodManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/view/inputmethod/OplusInputMethodManager;-><init>(Lcom/oplus/view/inputmethod/OplusInputMethodManager-IA;)V

    sput-object v0, Lcom/oplus/view/inputmethod/OplusInputMethodManager$OplusInputMethodManagerHolder;->INSTANCE:Lcom/oplus/view/inputmethod/OplusInputMethodManager;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
