.class public interface abstract Lcom/oplus/widget/OplusBottomMenuCallback;
.super Ljava/lang/Object;
.source "OplusBottomMenuCallback.java"

# interfaces
.implements Lcom/oplus/widget/OplusPagerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/widget/OplusBottomMenuCallback$Updater;
    }
.end annotation


# static fields
.field public static final blacklist INVALID_POSITION:I = -0x1

.field public static final blacklist UPDATE_MODE_ANIMATE:I = 0x1

.field public static final blacklist UPDATE_MODE_DIRECT:I = 0x0

.field public static final blacklist UPDATE_MODE_OUTER:I = 0x2


# virtual methods
.method public abstract blacklist lockMenuUpdate()V
.end method

.method public abstract blacklist setMenuUpdateMode(I)V
.end method

.method public abstract blacklist unlockMenuUpdate()V
.end method

.method public abstract blacklist updateMenuScrollData()V
.end method

.method public abstract blacklist updateMenuScrollPosition(IF)V
.end method

.method public abstract blacklist updateMenuScrollState(I)V
.end method
