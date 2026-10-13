.class public Lr60;
.super Lwa0;
.source "PG"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lja0;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;Lja0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lwa0;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 2
    iput-object p2, p0, Lr60;->a:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lr60;->b:Lja0;

    return-void
.end method


# virtual methods
.method public isIntentForTrustedCallingApp(Landroid/content/Intent;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lr60;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object p1, p0, Lr60;->b:Lja0;

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public startActivity(Landroid/content/Intent;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lwa0;->startActivity(Landroid/content/Intent;Z)V

    return-void
.end method

.method public startActivityIfNeeded(Landroid/content/Intent;Z)Z
    .locals 6

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LFO0;->b(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 2
    invoke-static {p1, v0}, LXT;->b(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v4, p0, Lwa0;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 4
    iget v5, v3, Landroid/content/pm/ResolveInfo;->match:I

    if-eqz v5, :cond_1

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_3

    .line 5
    :try_start_0
    iget-object v3, p0, Lr60;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lr60;->a:Ljava/lang/String;

    .line 6
    invoke-static {v3, p1}, Lwa0;->a(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7
    iget-object v1, p0, Lr60;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_2
    if-nez v1, :cond_3

    return v0

    :catch_0
    move-exception p2

    goto :goto_3

    :cond_3
    :goto_2
    if-eqz p2, :cond_4

    .line 8
    invoke-virtual {p0, p1}, Lwa0;->dispatchAuthenticatedIntent(Landroid/content/Intent;)V

    return v2

    .line 9
    :cond_4
    invoke-virtual {p0}, Lwa0;->getAvailableContext()Landroid/content/Context;

    move-result-object p2

    .line 10
    instance-of v1, p2, Landroid/app/Activity;

    if-eqz v1, :cond_5

    check-cast p2, Landroid/app/Activity;

    const/4 v1, -0x1

    .line 11
    invoke-virtual {p2, p1, v1}, Landroid/app/Activity;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_5

    return v2

    :cond_5
    return v0

    .line 12
    :goto_3
    invoke-static {p2, p1}, LCO0;->a(Ljava/lang/RuntimeException;Landroid/content/Intent;)V

    :catch_1
    return v0
.end method
