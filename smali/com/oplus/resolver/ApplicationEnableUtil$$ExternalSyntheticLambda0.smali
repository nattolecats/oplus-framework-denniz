.class public final synthetic Lcom/oplus/resolver/ApplicationEnableUtil$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic blacklist f$0:Landroid/content/pm/PackageManager;

.field public final synthetic blacklist f$1:Ljava/lang/String;

.field public final synthetic blacklist f$2:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/resolver/ApplicationEnableUtil$$ExternalSyntheticLambda0;->f$0:Landroid/content/pm/PackageManager;

    iput-object p2, p0, Lcom/oplus/resolver/ApplicationEnableUtil$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/resolver/ApplicationEnableUtil$$ExternalSyntheticLambda0;->f$2:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method


# virtual methods
.method public final whitelist onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/oplus/resolver/ApplicationEnableUtil$$ExternalSyntheticLambda0;->f$0:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/oplus/resolver/ApplicationEnableUtil$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/oplus/resolver/ApplicationEnableUtil$$ExternalSyntheticLambda0;->f$2:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/oplus/resolver/ApplicationEnableUtil;->lambda$showApplicationEnableDialog$0(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface;I)V

    return-void
.end method
