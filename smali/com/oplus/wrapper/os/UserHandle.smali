.class public Lcom/oplus/wrapper/os/UserHandle;
.super Ljava/lang/Object;
.source "UserHandle.java"


# static fields
.field public static final whitelist CURRENT:Landroid/os/UserHandle;

.field public static final whitelist OWNER:Landroid/os/UserHandle;

.field public static final whitelist USER_CURRENT:I

.field public static final whitelist USER_SYSTEM:I


# instance fields
.field private final blacklist mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 34
    invoke-static {}, Lcom/oplus/wrapper/os/UserHandle;->getCurrent()Landroid/os/UserHandle;

    move-result-object v0

    sput-object v0, Lcom/oplus/wrapper/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 44
    invoke-static {}, Lcom/oplus/wrapper/os/UserHandle;->getOwner()Landroid/os/UserHandle;

    move-result-object v0

    sput-object v0, Lcom/oplus/wrapper/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    .line 52
    invoke-static {}, Lcom/oplus/wrapper/os/UserHandle;->getUserCurrent()I

    move-result v0

    sput v0, Lcom/oplus/wrapper/os/UserHandle;->USER_CURRENT:I

    .line 60
    invoke-static {}, Lcom/oplus/wrapper/os/UserHandle;->getUserSystem()I

    move-result v0

    sput v0, Lcom/oplus/wrapper/os/UserHandle;->USER_SYSTEM:I

    return-void
.end method

.method public constructor whitelist <init>(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    iput-object v0, p0, Lcom/oplus/wrapper/os/UserHandle;->mUserHandle:Landroid/os/UserHandle;

    .line 80
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/oplus/wrapper/os/UserHandle;->mUserHandle:Landroid/os/UserHandle;

    .line 71
    return-void
.end method

.method private static blacklist getCurrent()Landroid/os/UserHandle;
    .locals 1

    .line 83
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    return-object v0
.end method

.method private static blacklist getOwner()Landroid/os/UserHandle;
    .locals 1

    .line 87
    sget-object v0, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    return-object v0
.end method

.method private static blacklist getUserCurrent()I
    .locals 1

    .line 91
    const/4 v0, -0x2

    return v0
.end method

.method public static whitelist getUserId(I)I
    .locals 1
    .param p0, "uid"    # I

    .line 115
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method private static blacklist getUserSystem()I
    .locals 1

    .line 95
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public whitelist getIdentifier()I
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/oplus/wrapper/os/UserHandle;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    return v0
.end method
