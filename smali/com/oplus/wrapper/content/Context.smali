.class public Lcom/oplus/wrapper/content/Context;
.super Ljava/lang/Object;
.source "Context.java"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/oplus/wrapper/content/Context;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method


# virtual methods
.method public whitelist getDisplayId()I
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/oplus/wrapper/content/Context;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    return v0
.end method

.method public whitelist getSharedPreferencesPath(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/oplus/wrapper/content/Context;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSharedPreferencesPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
