.class final Lcom/oplus/resolver/OplusResolverApkPreView$StagingAsyncTask;
.super Landroid/os/AsyncTask;
.source "OplusResolverApkPreView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/resolver/OplusResolverApkPreView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StagingAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mImageView:Landroid/widget/ImageView;

.field private blacklist mTextView:Landroid/widget/TextView;

.field final synthetic blacklist this$0:Lcom/oplus/resolver/OplusResolverApkPreView;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/resolver/OplusResolverApkPreView;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "textView"    # Landroid/widget/TextView;

    .line 101
    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverApkPreView$StagingAsyncTask;->this$0:Lcom/oplus/resolver/OplusResolverApkPreView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 102
    iput-object p2, p0, Lcom/oplus/resolver/OplusResolverApkPreView$StagingAsyncTask;->mImageView:Landroid/widget/ImageView;

    .line 103
    iput-object p3, p0, Lcom/oplus/resolver/OplusResolverApkPreView$StagingAsyncTask;->mTextView:Landroid/widget/TextView;

    .line 104
    return-void
.end method


# virtual methods
.method protected bridge synthetic whitelist doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 97
    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/oplus/resolver/OplusResolverApkPreView$StagingAsyncTask;->doInBackground([Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs blacklist doInBackground([Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p1, "params"    # [Landroid/net/Uri;

    .line 108
    if-eqz p1, :cond_1

    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 113
    .local v0, "packageUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverApkPreView$StagingAsyncTask;->this$0:Lcom/oplus/resolver/OplusResolverApkPreView;

    invoke-static {v1}, Lcom/oplus/resolver/OplusResolverApkPreView;->-$$Nest$fgetmContext(Lcom/oplus/resolver/OplusResolverApkPreView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/oplus/resolver/OplusResolverApkPreView$StagingAsyncTask;->getRealFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 109
    .end local v0    # "packageUri":Landroid/net/Uri;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getRealFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 162
    if-nez p2, :cond_0

    .line 163
    const/4 v0, 0x0

    return-object v0

    .line 166
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "scheme":Ljava/lang/String;
    const/4 v1, 0x0

    .line 169
    .local v1, "data":Ljava/lang/String;
    const-string v2, "OplusResolverApkPreView"

    if-nez v0, :cond_1

    .line 170
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 171
    :cond_1
    const-string v3, "file"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 172
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 173
    :cond_2
    const-string v3, "content"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 175
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, p2

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 176
    .local v3, "cursor":Landroid/database/Cursor;
    if-eqz v3, :cond_4

    .line 177
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 178
    const-string v4, "_data"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 179
    .local v4, "index":I
    const/4 v5, -0x1

    if-le v4, v5, :cond_3

    .line 180
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 183
    .end local v4    # "index":I
    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .end local v3    # "cursor":Landroid/database/Cursor;
    :cond_4
    goto :goto_0

    .line 185
    :catch_0
    move-exception v3

    .line 186
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRealFilePath error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v4, p0, Lcom/oplus/resolver/OplusResolverApkPreView$StagingAsyncTask;->this$0:Lcom/oplus/resolver/OplusResolverApkPreView;

    invoke-static {v4, p1, p2}, Lcom/oplus/resolver/OplusResolverApkPreView;->-$$Nest$mgetFPUriToPath(Lcom/oplus/resolver/OplusResolverApkPreView;Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 191
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-object v1
.end method

.method protected bridge synthetic whitelist onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 97
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/oplus/resolver/OplusResolverApkPreView$StagingAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected blacklist onPostExecute(Ljava/lang/String;)V
    .locals 12
    .param p1, "path"    # Ljava/lang/String;

    .line 118
    const v0, 0xc080063

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 119
    iget-object v2, p0, Lcom/oplus/resolver/OplusResolverApkPreView$StagingAsyncTask;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 121
    :cond_0
    iget-object v2, p0, Lcom/oplus/resolver/OplusResolverApkPreView$StagingAsyncTask;->this$0:Lcom/oplus/resolver/OplusResolverApkPreView;

    invoke-static {v2}, Lcom/oplus/resolver/OplusResolverApkPreView;->-$$Nest$fgetmContext(Lcom/oplus/resolver/OplusResolverApkPreView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 124
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 125
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_2

    .line 126
    const/4 v0, 0x0

    .line 128
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 135
    goto :goto_0

    .line 129
    :catch_0
    move-exception v4

    .line 130
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StagingAsyncTask: onPostExecute: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OplusResolverApkPreView"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 132
    iput-object p1, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 133
    iput-object p1, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 134
    iput-object p1, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 136
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 137
    .local v4, "applicationLabel":Ljava/lang/CharSequence;
    iget-object v5, v2, Landroid/content/pm/PackageManager;->mPackageManagerExt:Landroid/content/pm/IPackageManagerExt;

    .line 138
    invoke-interface {v5}, Landroid/content/pm/IPackageManagerExt;->getUxIconPackageManagerExt()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/IUxIconPackageManagerExt;

    .line 139
    .local v5, "uxIconPackageManagerExt":Landroid/content/res/IUxIconPackageManagerExt;
    if-nez v5, :cond_1

    .line 140
    sget-object v5, Landroid/content/res/IUxIconPackageManagerExt;->DEFAULT:Landroid/content/res/IUxIconPackageManagerExt;

    move-object v11, v5

    goto :goto_1

    .line 139
    :cond_1
    move-object v11, v5

    .line 142
    .end local v5    # "uxIconPackageManagerExt":Landroid/content/res/IUxIconPackageManagerExt;
    .local v11, "uxIconPackageManagerExt":Landroid/content/res/IUxIconPackageManagerExt;
    :goto_1
    sget-object v5, Landroid/content/res/IOplusThemeManager;->DEFAULT:Landroid/content/res/IOplusThemeManager;

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v5, v6}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v5

    check-cast v5, Landroid/content/res/IOplusThemeManager;

    iget-object v7, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget v8, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    const/4 v10, 0x0

    move-object v6, v11

    move-object v9, v0

    invoke-interface/range {v5 .. v10}, Landroid/content/res/IOplusThemeManager;->loadOverlayResolverDrawable(Landroid/content/res/IUxIconPackageManagerExt;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 145
    .local v5, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v6, p0, Lcom/oplus/resolver/OplusResolverApkPreView$StagingAsyncTask;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    iget-object v6, p0, Lcom/oplus/resolver/OplusResolverApkPreView$StagingAsyncTask;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "applicationLabel":Ljava/lang/CharSequence;
    .end local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v11    # "uxIconPackageManagerExt":Landroid/content/res/IUxIconPackageManagerExt;
    goto :goto_2

    .line 148
    :cond_2
    iget-object v4, p0, Lcom/oplus/resolver/OplusResolverApkPreView$StagingAsyncTask;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 151
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_2
    const-class v0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;

    iget-object v2, p0, Lcom/oplus/resolver/OplusResolverApkPreView$StagingAsyncTask;->mImageView:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lcom/oplus/util/OplusTypeCastingHelper;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;

    .line 153
    .local v0, "imageView":Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;
    if-eqz v0, :cond_3

    .line 154
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0xc0500cc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 155
    .local v2, "radius":I
    invoke-virtual {v0, v2}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->setRadius(I)V

    .line 157
    .end local v2    # "radius":I
    :cond_3
    iget-object v2, p0, Lcom/oplus/resolver/OplusResolverApkPreView$StagingAsyncTask;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    iget-object v2, p0, Lcom/oplus/resolver/OplusResolverApkPreView$StagingAsyncTask;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    return-void
.end method
