.class Lcom/oplus/animation/FloatPropertyCompat$1;
.super Lcom/oplus/animation/FloatPropertyCompat;
.source "FloatPropertyCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/animation/FloatPropertyCompat;->createFloatPropertyCompat(Landroid/util/FloatProperty;)Lcom/oplus/animation/FloatPropertyCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/animation/FloatPropertyCompat<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$property:Landroid/util/FloatProperty;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Landroid/util/FloatProperty;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/oplus/animation/FloatPropertyCompat$1;->val$property:Landroid/util/FloatProperty;

    invoke-direct {p0, p1}, Lcom/oplus/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist getValue(Ljava/lang/Object;)F
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)F"
        }
    .end annotation

    .line 63
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/oplus/animation/FloatPropertyCompat$1;->val$property:Landroid/util/FloatProperty;

    invoke-virtual {v0, p1}, Landroid/util/FloatProperty;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public whitelist setValue(Ljava/lang/Object;F)V
    .locals 1
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    .line 68
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/oplus/animation/FloatPropertyCompat$1;->val$property:Landroid/util/FloatProperty;

    invoke-virtual {v0, p1, p2}, Landroid/util/FloatProperty;->setValue(Ljava/lang/Object;F)V

    .line 69
    return-void
.end method
