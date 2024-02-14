.class public Landroid/graphics/OplusDarkModeThirdPartyFilter;
.super Landroid/graphics/ColorFilter;
.source "OplusDarkModeThirdPartyFilter.java"


# static fields
.field public static final whitelist TYPE_MAKE_DARK_RANGE:I = 0x2

.field public static final whitelist TYPE_MAKE_FULL_DARK:I = 0x3

.field public static final whitelist TYPE_MAKE_FULL_LIGHT:I = 0x4

.field public static final whitelist TYPE_MAKE_LIGHT_RANGE:I = 0x1

.field public static final whitelist TYPE_UNKNOWN:I


# instance fields
.field private blacklist mHSLBgMaxL:F

.field private blacklist mHSLFgMinL:F

.field private blacklist mLABBgMaxL:F

.field private blacklist mLABFgMinL:F

.field private blacklist mType:I


# direct methods
.method public constructor whitelist <init>(IFFFF)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "HSLBgMaxL"    # F
    .param p3, "HSLFgMinL"    # F
    .param p4, "LABBgMaxL"    # F
    .param p5, "LABFgMinL"    # F

    .line 16
    invoke-direct {p0}, Landroid/graphics/ColorFilter;-><init>()V

    .line 17
    iput p1, p0, Landroid/graphics/OplusDarkModeThirdPartyFilter;->mType:I

    .line 18
    iput p2, p0, Landroid/graphics/OplusDarkModeThirdPartyFilter;->mHSLBgMaxL:F

    .line 19
    iput p3, p0, Landroid/graphics/OplusDarkModeThirdPartyFilter;->mHSLFgMinL:F

    .line 20
    iput p4, p0, Landroid/graphics/OplusDarkModeThirdPartyFilter;->mLABBgMaxL:F

    .line 21
    iput p5, p0, Landroid/graphics/OplusDarkModeThirdPartyFilter;->mLABFgMinL:F

    .line 22
    return-void
.end method

.method private static native blacklist native_CreateDarkModeThirdPartyFilter(IFF)J
.end method


# virtual methods
.method blacklist createNativeInstance()J
    .locals 3

    .line 38
    iget v0, p0, Landroid/graphics/OplusDarkModeThirdPartyFilter;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 45
    const-wide/16 v0, 0x0

    return-wide v0

    .line 43
    :pswitch_0
    iget v1, p0, Landroid/graphics/OplusDarkModeThirdPartyFilter;->mHSLBgMaxL:F

    iget v2, p0, Landroid/graphics/OplusDarkModeThirdPartyFilter;->mHSLFgMinL:F

    invoke-static {v0, v1, v2}, Landroid/graphics/OplusDarkModeThirdPartyFilter;->native_CreateDarkModeThirdPartyFilter(IFF)J

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist getLABBgMaxL()F
    .locals 1

    .line 25
    iget v0, p0, Landroid/graphics/OplusDarkModeThirdPartyFilter;->mLABBgMaxL:F

    return v0
.end method

.method public whitelist getLABFgMinL()F
    .locals 1

    .line 29
    iget v0, p0, Landroid/graphics/OplusDarkModeThirdPartyFilter;->mLABFgMinL:F

    return v0
.end method

.method public whitelist getType()I
    .locals 1

    .line 33
    iget v0, p0, Landroid/graphics/OplusDarkModeThirdPartyFilter;->mType:I

    return v0
.end method
