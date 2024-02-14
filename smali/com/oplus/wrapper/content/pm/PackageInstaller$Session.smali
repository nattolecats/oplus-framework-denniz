.class public Lcom/oplus/wrapper/content/pm/PackageInstaller$Session;
.super Ljava/lang/Object;
.source "PackageInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/wrapper/content/pm/PackageInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Session"
.end annotation


# instance fields
.field private final blacklist mSession:Landroid/content/pm/PackageInstaller$Session;


# direct methods
.method public constructor whitelist <init>(Landroid/content/pm/PackageInstaller$Session;)V
    .locals 0
    .param p1, "session"    # Landroid/content/pm/PackageInstaller$Session;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lcom/oplus/wrapper/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/PackageInstaller$Session;

    .line 122
    return-void
.end method


# virtual methods
.method public whitelist close()V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/oplus/wrapper/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/PackageInstaller$Session;

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$Session;->close()V

    .line 233
    return-void
.end method

.method public whitelist commit(Landroid/content/IntentSender;)V
    .locals 1
    .param p1, "statusReceiver"    # Landroid/content/IntentSender;

    .line 146
    iget-object v0, p0, Lcom/oplus/wrapper/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/PackageInstaller$Session;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V

    .line 147
    return-void
.end method

.method public whitelist fsync(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/oplus/wrapper/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/PackageInstaller$Session;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageInstaller$Session;->fsync(Ljava/io/OutputStream;)V

    .line 222
    return-void
.end method

.method public whitelist openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "offsetBytes"    # J
    .param p4, "lengthBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/oplus/wrapper/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/PackageInstaller$Session;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist write(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "offsetBytes"    # J
    .param p4, "lengthBytes"    # J
    .param p6, "fd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/oplus/wrapper/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/PackageInstaller$Session;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/PackageInstaller$Session;->write(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V

    .line 170
    return-void
.end method
