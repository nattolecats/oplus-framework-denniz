.class Lcom/android/server/OplusBootAeeLogUtil$MTKDBExceptionId;
.super Ljava/lang/Object;
.source "OplusBootAeeLogUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OplusBootAeeLogUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MTKDBExceptionId"
.end annotation


# static fields
.field private static final blacklist MTK_OLC_HANG_ExceptionId:I = 0x1001e014

.field private static final blacklist MTK_OLC_HARDWARE_REBOOT_ExceptionId:I = 0x1001e013

.field private static final blacklist MTK_OLC_HWT_ExceptionId:I = 0x1001e012

.field private static final blacklist MTK_OLC_JE_ExceptionId:I = 0x1001e002

.field private static final blacklist MTK_OLC_KE_ExceptionId:I = 0x1001e011

.field private static final blacklist MTK_OLC_NE_ExceptionId:I = 0x1001e001

.field private static final blacklist MTK_OLC_SWT_ExceptionId:I = 0x1001e003


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
