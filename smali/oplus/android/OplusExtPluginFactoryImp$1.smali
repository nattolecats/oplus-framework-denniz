.class synthetic Loplus/android/OplusExtPluginFactoryImp$1;
.super Ljava/lang/Object;
.source "OplusExtPluginFactoryImp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loplus/android/OplusExtPluginFactoryImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic blacklist $SwitchMap$android$common$OplusFeatureList$OplusIndex:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 23
    invoke-static {}, Landroid/common/OplusFeatureList$OplusIndex;->values()[Landroid/common/OplusFeatureList$OplusIndex;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Loplus/android/OplusExtPluginFactoryImp$1;->$SwitchMap$android$common$OplusFeatureList$OplusIndex:[I

    :try_start_0
    sget-object v1, Landroid/common/OplusFeatureList$OplusIndex;->ITypefaceExt:Landroid/common/OplusFeatureList$OplusIndex;

    invoke-virtual {v1}, Landroid/common/OplusFeatureList$OplusIndex;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method
