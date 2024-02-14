.class final Landroid/view/inputmethod/OplusInputMethodManagerInternal$OplusInputMethodManagerHolder;
.super Ljava/lang/Object;
.source "OplusInputMethodManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/OplusInputMethodManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OplusInputMethodManagerHolder"
.end annotation


# static fields
.field private static final blacklist INSTANCE:Landroid/view/inputmethod/OplusInputMethodManagerInternal;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetINSTANCE()Landroid/view/inputmethod/OplusInputMethodManagerInternal;
    .locals 1

    sget-object v0, Landroid/view/inputmethod/OplusInputMethodManagerInternal$OplusInputMethodManagerHolder;->INSTANCE:Landroid/view/inputmethod/OplusInputMethodManagerInternal;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Landroid/view/inputmethod/OplusInputMethodManagerInternal;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/inputmethod/OplusInputMethodManagerInternal;-><init>(Landroid/view/inputmethod/OplusInputMethodManagerInternal-IA;)V

    sput-object v0, Landroid/view/inputmethod/OplusInputMethodManagerInternal$OplusInputMethodManagerHolder;->INSTANCE:Landroid/view/inputmethod/OplusInputMethodManagerInternal;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
