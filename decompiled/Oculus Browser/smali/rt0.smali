.class public Lrt0;
.super LkW;
.source "PG"


# instance fields
.field public a:Z

.field public b:Z

.field public final synthetic c:Lst0;

.field public final synthetic d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lst0;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrt0;->c:Lst0;

    iput-object p2, p0, Lrt0;->d:Landroid/content/Context;

    invoke-direct {p0}, LkW;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->d:Z

    .line 2
    sget-object v1, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->e:Ljava/util/List;

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 4
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 5
    :cond_0
    sget-object v1, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->e:Ljava/util/List;

    .line 6
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 7
    iget-boolean v1, p0, Lrt0;->b:Z

    if-eqz v1, :cond_1

    .line 8
    invoke-static {}, Lpt0;->f()Lpt0;

    move-result-object v1

    invoke-virtual {v1}, Lpt0;->c()V

    .line 9
    :cond_1
    iget-boolean v1, p0, Lrt0;->a:Z

    if-eqz v1, :cond_2

    .line 10
    sput-boolean v0, Lmt0;->k:Z

    .line 11
    sget-boolean v0, Lmt0;->j:Z

    if-eqz v0, :cond_2

    .line 12
    invoke-static {}, LJ/N;->McEggOd3()V

    :cond_2
    return-void
.end method

.method public final d()V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    :try_start_0
    iget-object v2, p0, Lrt0;->c:Lst0;

    check-cast v2, Ltt0;

    .line 2
    invoke-virtual {v2}, Ltt0;->a()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    .line 3
    :cond_0
    sget-object v2, LzT;->a:Landroid/content/Context;

    .line 4
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v2, "disablebookmarksediting"

    .line 5
    invoke-static {v2}, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 6
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 7
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 8
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 9
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 10
    :cond_2
    :goto_1
    sget-boolean v2, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->c:Z

    if-eq v3, v2, :cond_3

    .line 11
    iput-boolean v1, p0, Lrt0;->a:Z

    .line 12
    :cond_3
    sput-boolean v3, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    const-string v0, "PartnerCustomize"

    const-string v2, "Partner disable bookmarks editing read failed : "

    .line 13
    invoke-static {v0, v2, v1}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public doInBackground()Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lrt0;->d:Landroid/content/Context;

    .line 2
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v2, v0

    if-eq v2, v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p0}, LkW;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    invoke-virtual {p0}, Lrt0;->f()V

    .line 5
    invoke-virtual {p0}, LkW;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 6
    :cond_3
    invoke-virtual {p0}, Lrt0;->d()V

    .line 7
    invoke-virtual {p0}, LkW;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    .line 8
    :cond_4
    invoke-virtual {p0}, Lrt0;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    const-string v1, "PartnerCustomize"

    const-string v2, "Fetching partner customizations failed"

    .line 9
    invoke-static {v1, v2, v0}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    :try_start_0
    iget-object v2, p0, Lrt0;->c:Lst0;

    check-cast v2, Ltt0;

    .line 2
    invoke-virtual {v2}, Ltt0;->a()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v4, v3

    goto :goto_1

    .line 3
    :cond_0
    sget-object v2, LzT;->a:Landroid/content/Context;

    .line 4
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v2, "homepage"

    .line 5
    invoke-static {v2}, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 6
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 7
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    if-ne v4, v1, :cond_1

    .line 8
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v3

    :goto_0
    if-eqz v2, :cond_2

    .line 9
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 10
    :cond_2
    :goto_1
    invoke-static {v4}, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    move-object v3, v4

    .line 11
    :goto_2
    sget-object v2, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->a:Ljava/lang/String;

    .line 12
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 13
    iput-boolean v1, p0, Lrt0;->b:Z

    .line 14
    :cond_4
    sput-object v3, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    const-string v0, "PartnerCustomize"

    const-string v2, "Partner homepage provider URL read failed : "

    .line 15
    invoke-static {v0, v2, v1}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    return-void
.end method

.method public final f()V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    :try_start_0
    iget-object v2, p0, Lrt0;->c:Lst0;

    check-cast v2, Ltt0;

    .line 2
    invoke-virtual {v2}, Ltt0;->a()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    .line 3
    :cond_0
    sget-object v2, LzT;->a:Landroid/content/Context;

    .line 4
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v2, "disableincognitomode"

    .line 5
    invoke-static {v2}, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 6
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 7
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 8
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 9
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 10
    :cond_2
    :goto_1
    sput-boolean v3, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    const-string v0, "PartnerCustomize"

    const-string v2, "Partner disable incognito mode read failed : "

    .line 11
    invoke-static {v0, v2, v1}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public onCancelled(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    invoke-virtual {p0}, Lrt0;->c()V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    invoke-virtual {p0}, Lrt0;->c()V

    return-void
.end method
