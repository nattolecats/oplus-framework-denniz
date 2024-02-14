.class public Lcom/oplus/util/OplusBaseFontUtils$FontLinkInfo;
.super Ljava/lang/Object;
.source "OplusBaseFontUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/util/OplusBaseFontUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "FontLinkInfo"
.end annotation


# instance fields
.field blacklist mDataFontName:Ljava/lang/String;

.field blacklist mSystemFontName:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "dataFontName"    # Ljava/lang/String;
    .param p2, "robotoFontName"    # Ljava/lang/String;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p1, p0, Lcom/oplus/util/OplusBaseFontUtils$FontLinkInfo;->mDataFontName:Ljava/lang/String;

    .line 165
    iput-object p2, p0, Lcom/oplus/util/OplusBaseFontUtils$FontLinkInfo;->mSystemFontName:Ljava/lang/String;

    .line 166
    return-void
.end method
