.class public Lcom/oplus/wrapper/telephony/CellInfoNr;
.super Ljava/lang/Object;
.source "CellInfoNr.java"


# instance fields
.field private final blacklist mCellInfoNr:Landroid/telephony/CellInfoNr;


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/telephony/CellInfoNr;

    invoke-direct {v0}, Landroid/telephony/CellInfoNr;-><init>()V

    iput-object v0, p0, Lcom/oplus/wrapper/telephony/CellInfoNr;->mCellInfoNr:Landroid/telephony/CellInfoNr;

    .line 38
    return-void
.end method


# virtual methods
.method public whitelist getCellInfoNr()Landroid/telephony/CellInfoNr;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/oplus/wrapper/telephony/CellInfoNr;->mCellInfoNr:Landroid/telephony/CellInfoNr;

    return-object v0
.end method

.method public whitelist setCellIdentity(Landroid/telephony/CellIdentityNr;)V
    .locals 1
    .param p1, "cid"    # Landroid/telephony/CellIdentityNr;

    .line 55
    iget-object v0, p0, Lcom/oplus/wrapper/telephony/CellInfoNr;->mCellInfoNr:Landroid/telephony/CellInfoNr;

    invoke-virtual {v0, p1}, Landroid/telephony/CellInfoNr;->setCellIdentity(Landroid/telephony/CellIdentityNr;)V

    .line 56
    return-void
.end method
