.class public LiJ0;
.super LbI0;
.source "PG"


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, LbI0;-><init>()V

    .line 2
    iput-boolean p1, p0, LiJ0;->a:Z

    return-void
.end method


# virtual methods
.method public final a(LhJ0;IZ)Landroid/content/Intent;
    .locals 6

    .line 3
    invoke-static {}, LnH0;->a()LnH0;

    move-result-object v0

    .line 4
    iget-object v1, v0, LnH0;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    .line 5
    invoke-virtual {v0, v2}, LnH0;->a(I)V

    .line 6
    sget-object v0, LOH0;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7
    sget-boolean v0, LOH0;->b:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 8
    sget-object v0, LSe0;->b:LSe0;

    if-nez v0, :cond_0

    .line 9
    new-instance v0, LSe0;

    invoke-direct {v0}, LSe0;-><init>()V

    sput-object v0, LSe0;->b:LSe0;

    .line 10
    :cond_0
    sget-object v0, LSe0;->b:LSe0;

    .line 11
    new-instance v4, LNH0;

    invoke-direct {v4, v3}, LNH0;-><init>(LMH0;)V

    .line 12
    iget-object v0, v0, LSe0;->a:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    sput-boolean v2, LOH0;->b:Z

    .line 14
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .line 15
    iget-object v4, p1, LhJ0;->a:Lorg/chromium/content_public/browser/LoadUrlParams;

    .line 16
    iget-object v4, v4, Lorg/chromium/content_public/browser/LoadUrlParams;->a:Ljava/lang/String;

    .line 17
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v0, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 18
    iget-object v4, p1, LhJ0;->d:Landroid/content/ComponentName;

    if-nez v4, :cond_2

    .line 19
    sget-object v4, LzT;->a:Landroid/content/Context;

    .line 20
    const-class v5, Lw70;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 21
    :cond_2
    invoke-static {v0, v4}, LTY;->a(Landroid/content/Intent;Landroid/content/ComponentName;)V

    .line 22
    :goto_0
    iget-object v4, p1, LhJ0;->a:Lorg/chromium/content_public/browser/LoadUrlParams;

    .line 23
    iget-object v4, v4, Lorg/chromium/content_public/browser/LoadUrlParams;->f:Ljava/util/Map;

    .line 24
    invoke-static {v4, v0}, LqZ;->a(Ljava/util/Map;Landroid/content/Intent;)V

    const-string v4, "com.android.chrome.tab_id"

    .line 25
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 26
    iget-boolean v1, p0, LiJ0;->a:Z

    const-string v4, "com.google.android.apps.chrome.EXTRA_OPEN_NEW_INCOGNITO_TAB"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "com.android.chrome.parent_tab_id"

    .line 27
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 28
    iget-boolean v1, p0, LiJ0;->a:Z

    if-nez v1, :cond_3

    if-eqz p3, :cond_4

    .line 29
    :cond_3
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 30
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "com.android.browser.application_id"

    .line 31
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    if-eqz p3, :cond_5

    const-string p3, "create_new_tab"

    .line 32
    invoke-virtual {v0, p3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_5
    const/4 p3, -0x1

    if-ne p2, p3, :cond_6

    goto :goto_2

    .line 33
    :cond_6
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->b()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_7
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 34
    instance-of v2, v1, Lorg/chromium/chrome/browser/ChromeActivity;

    if-nez v2, :cond_8

    goto :goto_1

    .line 35
    :cond_8
    check-cast v1, Lorg/chromium/chrome/browser/ChromeActivity;

    .line 36
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/ChromeActivity;->getTabModelSelector()LpI0;

    move-result-object v2

    check-cast v2, LrI0;

    invoke-virtual {v2, p2}, LrI0;->a(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v2

    if-eqz v2, :cond_7

    goto :goto_3

    :cond_9
    :goto_2
    move-object v1, v3

    :goto_3
    if-eqz v1, :cond_a

    .line 37
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 38
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string p3, "com.android.chrome.parent_intent"

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 39
    :cond_a
    iget-object p1, p1, LhJ0;->c:Ljava/lang/Integer;

    if-eqz p1, :cond_b

    .line 40
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "org.chromium.chrome.browser.ServiceTabLauncher.LAUNCH_REQUEST_ID"

    .line 41
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_b
    const/high16 p1, 0x10000000

    .line 42
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public a(LhJ0;II)V
    .locals 1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0, p1, p3, p2}, LiJ0;->a(LhJ0;IZ)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x0

    .line 2
    invoke-static {p1, p2}, LqZ;->b(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public createFrozenTab(LtH0;II)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 1

    .line 1
    new-instance p3, LhH0;

    invoke-direct {p3}, LhH0;-><init>()V

    const/4 v0, 0x3

    .line 2
    invoke-virtual {p3, v0}, LhH0;->b(I)LhH0;

    const/4 v0, 0x2

    .line 3
    invoke-virtual {p3, v0}, LhH0;->a(I)LhH0;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p3, LhH0;->g:Z

    .line 5
    iput p2, p3, LhH0;->a:I

    .line 6
    iget-boolean p1, p1, LtH0;->h:Z

    .line 7
    iput-boolean p1, p3, LhH0;->c:Z

    .line 8
    invoke-virtual {p3}, LhH0;->a()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p1

    return-object p1
.end method

.method public createNewTab(Lorg/chromium/content_public/browser/LoadUrlParams;ILorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 1

    .line 1
    new-instance v0, LhJ0;

    invoke-direct {v0, p1}, LhJ0;-><init>(Lorg/chromium/content_public/browser/LoadUrlParams;)V

    if-nez p3, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p3}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result p1

    :goto_0
    invoke-virtual {p0, v0, p2, p1}, LiJ0;->a(LhJ0;II)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public createTabWithWebContents(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/content_public/browser/WebContents;ILjava/lang/String;)Z
    .locals 3

    if-nez p4, :cond_0

    const-string p4, ""

    .line 1
    :cond_0
    new-instance v0, LhJ0;

    new-instance v1, Lorg/chromium/content_public/browser/LoadUrlParams;

    const/4 v2, 0x6

    invoke-direct {v1, p4, v2}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, p2}, LhJ0;-><init>(Lorg/chromium/content_public/browser/LoadUrlParams;Lorg/chromium/content_public/browser/WebContents;)V

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    invoke-virtual {p0, v0, p3, p1}, LiJ0;->a(LhJ0;II)V

    const/4 p1, 0x1

    return p1
.end method

.method public createsTabsAsynchronously()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public launchUrl(Ljava/lang/String;I)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 2

    .line 1
    new-instance v0, Lorg/chromium/content_public/browser/LoadUrlParams;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, p1, v1}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, v0, p2, p1}, LiJ0;->createNewTab(Lorg/chromium/content_public/browser/LoadUrlParams;ILorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/tab/Tab;

    return-object p1
.end method
