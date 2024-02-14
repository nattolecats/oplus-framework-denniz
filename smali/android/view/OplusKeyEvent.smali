.class public Landroid/view/OplusKeyEvent;
.super Landroid/view/KeyEvent;
.source "OplusKeyEvent.java"


# static fields
.field public static final blacklist KEYCODE_GIMBAL_POWER:I = 0x2cd

.field public static final blacklist KEYCODE_GIMBAL_SWITCH_CAMERA:I = 0x2c2

.field public static final blacklist KEYCODE_SHOULDER_DOWN:I = 0x2f8

.field public static final blacklist KEYCODE_SHOULDER_UP:I = 0x2f9


# direct methods
.method private constructor blacklist <init>(II)V
    .locals 0
    .param p1, "action"    # I
    .param p2, "code"    # I

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 35
    return-void
.end method
