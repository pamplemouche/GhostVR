.class public Lorg/chromium/chrome/browser/browserservices/ManageTrustedWebActivityDataActivity;
.super LQ8;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LQ8;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, LQ8;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Landroidx/browser/customtabs/CustomTabsSessionToken;->a(Landroid/content/Intent;)Landroidx/browser/customtabs/CustomTabsSessionToken;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, LKY;->c()LR60;

    move-result-object v1

    check-cast v1, LY60;

    if-eqz v1, :cond_4

    .line 4
    invoke-static {}, LmY;->a()Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->c:Lo60;

    invoke-virtual {v0, p1}, Lo60;->f(Landroidx/browser/customtabs/CustomTabsSessionToken;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 p1, 0x0

    if-nez v0, :cond_1

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "TwaDataActivity"

    const-string v1, "Package name for incoming intent couldn\'t be resolved. Was a CustomTabSession created and added to the intent?"

    .line 6
    invoke-static {v0, v1, p1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 8
    :cond_1
    invoke-static {}, LUg0;->e()LUg0;

    move-result-object v1

    .line 9
    sget-object v2, Lu20;->w:Ljava/lang/Runnable;

    .line 10
    invoke-virtual {v1, v2}, LUg0;->a(Ljava/lang/Runnable;)V

    .line 11
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    new-instance v0, Lg20;

    invoke-direct {v0}, Lg20;-><init>()V

    .line 13
    iget-object v1, v0, Lg20;->a:Landroid/content/SharedPreferences;

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".domain"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 16
    iget-object v0, v0, Lg20;->a:Landroid/content/SharedPreferences;

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".origin"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    .line 19
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 20
    :cond_2
    invoke-static {p0, p1, v1}, Lt20;->a(Landroid/content/Context;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 21
    :catch_0
    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 22
    :cond_4
    throw v0
.end method
