.class public interface abstract Lcom/oplus/view/IOplusScrollBarEffect;
.super Ljava/lang/Object;
.source "IOplusScrollBarEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/view/IOplusScrollBarEffect$ViewCallback;
    }
.end annotation


# virtual methods
.method public abstract blacklist getDrawRect(Landroid/graphics/Rect;)V
.end method

.method public abstract blacklist getThumbLength(IIII)I
.end method

.method public abstract blacklist isTouchPressed()Z
.end method

.method public abstract blacklist onOverScrolled(IIII)V
.end method

.method public abstract blacklist onTouchEvent(Landroid/view/MotionEvent;)V
.end method
