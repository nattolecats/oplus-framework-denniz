.class public final synthetic Lcom/oplus/resolver/OplusResolverDialogHelper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic blacklist f$0:Lcom/oplus/resolver/OplusResolverDialogHelper;

.field public final synthetic blacklist f$1:Landroid/content/SharedPreferences;

.field public final synthetic blacklist f$2:Ljava/lang/String;

.field public final synthetic blacklist f$3:Ljava/lang/String;

.field public final synthetic blacklist f$4:Lcom/android/internal/app/ResolverListAdapter;

.field public final synthetic blacklist f$5:Landroid/content/pm/ResolveInfo;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/oplus/resolver/OplusResolverDialogHelper;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/ResolverListAdapter;Landroid/content/pm/ResolveInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverDialogHelper$$ExternalSyntheticLambda3;->f$0:Lcom/oplus/resolver/OplusResolverDialogHelper;

    iput-object p2, p0, Lcom/oplus/resolver/OplusResolverDialogHelper$$ExternalSyntheticLambda3;->f$1:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/oplus/resolver/OplusResolverDialogHelper$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/oplus/resolver/OplusResolverDialogHelper$$ExternalSyntheticLambda3;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/oplus/resolver/OplusResolverDialogHelper$$ExternalSyntheticLambda3;->f$4:Lcom/android/internal/app/ResolverListAdapter;

    iput-object p6, p0, Lcom/oplus/resolver/OplusResolverDialogHelper$$ExternalSyntheticLambda3;->f$5:Landroid/content/pm/ResolveInfo;

    return-void
.end method


# virtual methods
.method public final whitelist onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverDialogHelper$$ExternalSyntheticLambda3;->f$0:Lcom/oplus/resolver/OplusResolverDialogHelper;

    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverDialogHelper$$ExternalSyntheticLambda3;->f$1:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/oplus/resolver/OplusResolverDialogHelper$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/oplus/resolver/OplusResolverDialogHelper$$ExternalSyntheticLambda3;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/oplus/resolver/OplusResolverDialogHelper$$ExternalSyntheticLambda3;->f$4:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v5, p0, Lcom/oplus/resolver/OplusResolverDialogHelper$$ExternalSyntheticLambda3;->f$5:Landroid/content/pm/ResolveInfo;

    move-object v6, p1

    move v7, p2

    invoke-virtual/range {v0 .. v7}, Lcom/oplus/resolver/OplusResolverDialogHelper;->lambda$showTargetDetails$0$com-oplus-resolver-OplusResolverDialogHelper(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/ResolverListAdapter;Landroid/content/pm/ResolveInfo;Landroid/content/DialogInterface;I)V

    return-void
.end method
