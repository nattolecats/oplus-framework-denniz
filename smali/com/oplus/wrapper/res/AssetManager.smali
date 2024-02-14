.class public Lcom/oplus/wrapper/res/AssetManager;
.super Ljava/lang/Object;
.source "AssetManager.java"


# instance fields
.field private final blacklist mAssetManager:Landroid/content/res/AssetManager;


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/content/res/AssetManager;

    invoke-direct {v0}, Landroid/content/res/AssetManager;-><init>()V

    iput-object v0, p0, Lcom/oplus/wrapper/res/AssetManager;->mAssetManager:Landroid/content/res/AssetManager;

    .line 37
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/res/AssetManager;)V
    .locals 0
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/oplus/wrapper/res/AssetManager;->mAssetManager:Landroid/content/res/AssetManager;

    .line 48
    return-void
.end method


# virtual methods
.method public whitelist addAssetPath(Ljava/lang/String;)I
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/oplus/wrapper/res/AssetManager;->mAssetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
