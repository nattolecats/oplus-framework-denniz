.class public Lcom/oplus/app/OplusAppStaticFeatureData;
.super Ljava/lang/Object;
.source "OplusAppStaticFeatureData.java"


# instance fields
.field private blacklist mActivities:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mApplicationName:Ljava/lang/String;

.field private blacklist mFeatures:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIconHistogram:[F

.field private blacklist mLibraries:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mPermissions:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mProcesses:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mProviders:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mReceivers:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mServices:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSignature:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/oplus/app/OplusAppStaticFeatureData;->mPermissions:Landroid/util/ArraySet;

    .line 29
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/oplus/app/OplusAppStaticFeatureData;->mFeatures:Landroid/util/ArraySet;

    .line 30
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/oplus/app/OplusAppStaticFeatureData;->mActivities:Landroid/util/ArraySet;

    .line 31
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/oplus/app/OplusAppStaticFeatureData;->mServices:Landroid/util/ArraySet;

    .line 32
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/oplus/app/OplusAppStaticFeatureData;->mReceivers:Landroid/util/ArraySet;

    .line 33
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/oplus/app/OplusAppStaticFeatureData;->mProviders:Landroid/util/ArraySet;

    .line 34
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/oplus/app/OplusAppStaticFeatureData;->mLibraries:Landroid/util/ArraySet;

    .line 35
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/oplus/app/OplusAppStaticFeatureData;->mProcesses:Landroid/util/ArraySet;

    .line 41
    return-void
.end method


# virtual methods
.method public whitelist getActivities()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/oplus/app/OplusAppStaticFeatureData;->mActivities:Landroid/util/ArraySet;

    return-object v0
.end method

.method public whitelist getApplicationName()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/oplus/app/OplusAppStaticFeatureData;->mApplicationName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getFeatures()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/oplus/app/OplusAppStaticFeatureData;->mFeatures:Landroid/util/ArraySet;

    return-object v0
.end method

.method public whitelist getIconHistogram()[F
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/oplus/app/OplusAppStaticFeatureData;->mIconHistogram:[F

    return-object v0
.end method

.method public whitelist getLibraries()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/oplus/app/OplusAppStaticFeatureData;->mLibraries:Landroid/util/ArraySet;

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/oplus/app/OplusAppStaticFeatureData;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPermissions()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/oplus/app/OplusAppStaticFeatureData;->mPermissions:Landroid/util/ArraySet;

    return-object v0
.end method

.method public whitelist getProcesses()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/oplus/app/OplusAppStaticFeatureData;->mProcesses:Landroid/util/ArraySet;

    return-object v0
.end method

.method public whitelist getProviders()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/oplus/app/OplusAppStaticFeatureData;->mProviders:Landroid/util/ArraySet;

    return-object v0
.end method

.method public whitelist getReceivers()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/oplus/app/OplusAppStaticFeatureData;->mReceivers:Landroid/util/ArraySet;

    return-object v0
.end method

.method public whitelist getServices()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/oplus/app/OplusAppStaticFeatureData;->mServices:Landroid/util/ArraySet;

    return-object v0
.end method

.method public whitelist getSignature()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/oplus/app/OplusAppStaticFeatureData;->mSignature:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist setActivities(Landroid/util/ArraySet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 86
    .local p1, "activities":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/oplus/app/OplusAppStaticFeatureData;->mActivities:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 87
    iget-object v0, p0, Lcom/oplus/app/OplusAppStaticFeatureData;->mActivities:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 88
    return-void
.end method

.method public whitelist setApplicationName(Ljava/lang/String;)V
    .locals 0
    .param p1, "applicationName"    # Ljava/lang/String;

    .line 60
    iput-object p1, p0, Lcom/oplus/app/OplusAppStaticFeatureData;->mApplicationName:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public whitelist setFeatures(Landroid/util/ArraySet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 77
    .local p1, "features":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/oplus/app/OplusAppStaticFeatureData;->mFeatures:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 78
    iget-object v0, p0, Lcom/oplus/app/OplusAppStaticFeatureData;->mFeatures:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 79
    return-void
.end method

.method public whitelist setIconHistogram([F)V
    .locals 0
    .param p1, "iconHistogram"    # [F

    .line 140
    iput-object p1, p0, Lcom/oplus/app/OplusAppStaticFeatureData;->mIconHistogram:[F

    .line 141
    return-void
.end method

.method public whitelist setLibraries(Landroid/util/ArraySet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 122
    .local p1, "libraries":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/oplus/app/OplusAppStaticFeatureData;->mLibraries:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 123
    iget-object v0, p0, Lcom/oplus/app/OplusAppStaticFeatureData;->mLibraries:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 124
    return-void
.end method

.method public whitelist setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/oplus/app/OplusAppStaticFeatureData;->mPackageName:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public whitelist setPermissions(Landroid/util/ArraySet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 68
    .local p1, "permissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/oplus/app/OplusAppStaticFeatureData;->mPermissions:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 69
    iget-object v0, p0, Lcom/oplus/app/OplusAppStaticFeatureData;->mPermissions:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 70
    return-void
.end method

.method public whitelist setProcesses(Landroid/util/ArraySet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 131
    .local p1, "processes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/oplus/app/OplusAppStaticFeatureData;->mProcesses:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 132
    iget-object v0, p0, Lcom/oplus/app/OplusAppStaticFeatureData;->mProcesses:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 133
    return-void
.end method

.method public whitelist setProviders(Landroid/util/ArraySet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 113
    .local p1, "providers":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/oplus/app/OplusAppStaticFeatureData;->mProviders:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 114
    iget-object v0, p0, Lcom/oplus/app/OplusAppStaticFeatureData;->mProviders:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 115
    return-void
.end method

.method public whitelist setReceivers(Landroid/util/ArraySet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 104
    .local p1, "receivers":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/oplus/app/OplusAppStaticFeatureData;->mReceivers:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 105
    iget-object v0, p0, Lcom/oplus/app/OplusAppStaticFeatureData;->mReceivers:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 106
    return-void
.end method

.method public whitelist setServices(Landroid/util/ArraySet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 95
    .local p1, "services":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/oplus/app/OplusAppStaticFeatureData;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 96
    iget-object v0, p0, Lcom/oplus/app/OplusAppStaticFeatureData;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 97
    return-void
.end method

.method public whitelist setSignature(Ljava/lang/String;)V
    .locals 0
    .param p1, "signature"    # Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/oplus/app/OplusAppStaticFeatureData;->mSignature:Ljava/lang/String;

    .line 53
    return-void
.end method
