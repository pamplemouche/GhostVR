.class public LZY;
.super LkW;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LkW;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 9

    .line 1
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 2
    new-instance v1, LaZ;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, LaZ;-><init>(LYY;)V

    .line 3
    new-instance v2, Landroid/content/Intent;

    const-string v3, "https://www.madeupdomainforcheck123.chrome/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v4, 0x0

    .line 4
    invoke-static {v2, v4}, LXT;->b(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    const/4 v6, 0x1

    if-eqz v2, :cond_1

    .line 5
    iget v7, v2, Landroid/content/pm/ResolveInfo;->match:I

    if-eqz v7, :cond_1

    .line 6
    iput-boolean v6, v1, LaZ;->d:Z

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 8
    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    .line 9
    iput-boolean v7, v1, LaZ;->b:Z

    .line 10
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v2, v6

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 11
    :goto_0
    iput-boolean v2, v1, LaZ;->c:Z

    .line 12
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 13
    new-instance v7, Landroid/content/Intent;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v7, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v3, 0x20000

    .line 14
    invoke-static {v7, v3}, LXT;->a(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 15
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 16
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 17
    invoke-virtual {v2, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_1

    .line 18
    :cond_3
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v7, v6

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_2

    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 20
    invoke-static {v7, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 21
    iput-boolean v6, v1, LaZ;->a:Z

    .line 22
    :cond_5
    iget v5, v1, LaZ;->f:I

    add-int/2addr v5, v6

    iput v5, v1, LaZ;->f:I

    goto :goto_1

    .line 23
    :cond_6
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v0

    iput v0, v1, LaZ;->e:I

    return-object v1
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, LaZ;

    if-nez p1, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    iget-boolean v0, p1, LaZ;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "Mobile.DefaultBrowser.SystemBrowserCount.ChromeSystem"

    goto :goto_0

    :cond_1
    const-string v0, "Mobile.DefaultBrowser.SystemBrowserCount.ChromeNotSystem"

    .line 3
    :goto_0
    iget v1, p1, LaZ;->f:I

    .line 4
    invoke-static {v0, v1}, LfV;->b(Ljava/lang/String;I)V

    .line 5
    iget-boolean v0, p1, LaZ;->d:Z

    if-nez v0, :cond_2

    const-string v0, "Mobile.DefaultBrowser.BrowserCount.NoDefault"

    goto :goto_1

    .line 6
    :cond_2
    iget-boolean v0, p1, LaZ;->b:Z

    if-eqz v0, :cond_3

    const-string v0, "Mobile.DefaultBrowser.BrowserCount.ChromeDefault"

    goto :goto_1

    :cond_3
    const-string v0, "Mobile.DefaultBrowser.BrowserCount.OtherDefault"

    .line 7
    :goto_1
    iget v1, p1, LaZ;->e:I

    .line 8
    invoke-static {v0, v1}, LfV;->b(Ljava/lang/String;I)V

    .line 9
    iget-boolean v0, p1, LaZ;->d:Z

    if-nez v0, :cond_4

    const/4 p1, 0x0

    goto :goto_2

    .line 10
    :cond_4
    iget-boolean v0, p1, LaZ;->b:Z

    if-eqz v0, :cond_6

    .line 11
    iget-boolean p1, p1, LaZ;->c:Z

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    goto :goto_2

    :cond_5
    const/4 p1, 0x2

    goto :goto_2

    .line 12
    :cond_6
    iget-boolean p1, p1, LaZ;->c:Z

    if-eqz p1, :cond_7

    const/4 p1, 0x3

    goto :goto_2

    :cond_7
    const/4 p1, 0x4

    :goto_2
    const/4 v0, 0x5

    const-string v1, "Mobile.DefaultBrowser.State"

    .line 13
    invoke-static {v1, p1, v0}, LfV;->a(Ljava/lang/String;II)V

    :goto_3
    return-void
.end method
