.class public Lwa0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpa0;


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field public static final PDF_EXTENSION:Ljava/lang/String; = "pdf"

.field public static final PDF_MIME:Ljava/lang/String; = "application/pdf"

.field public static final PDF_SUFFIX:Ljava/lang/String; = ".pdf"

.field public static final PDF_VIEWER:Ljava/lang/String; = "com.google.android.apps.docs"


# instance fields
.field public final mApplicationContext:Landroid/content/Context;

.field public mIsTabDestroyed:Z

.field public final mTab:Lorg/chromium/chrome/browser/tab/Tab;

.field public final mTabObserver:LpH0;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lwa0;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 3
    sget-object p1, LzT;->a:Landroid/content/Context;

    .line 4
    iput-object p1, p0, Lwa0;->mApplicationContext:Landroid/content/Context;

    .line 5
    new-instance p1, Lqa0;

    invoke-direct {p1, p0}, Lqa0;-><init>(Lwa0;)V

    iput-object p1, p0, Lwa0;->mTabObserver:LpH0;

    .line 6
    iget-object v0, p0, Lwa0;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 7
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {v0, p1}, LWT;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 20
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 21
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_2

    :cond_1
    :goto_1
    const/4 v3, 0x0

    goto :goto_3

    .line 22
    :cond_2
    invoke-virtual {v2}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v2}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    .line 23
    :cond_3
    invoke-virtual {v2}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    if-eqz v2, :cond_5

    .line 24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/IntentFilter$AuthorityEntry;

    .line 26
    invoke-virtual {v5}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v5

    const-string v6, "*"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_6

    goto :goto_1

    .line 27
    :cond_6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_1

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 28
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_7
    :goto_3
    if-nez v3, :cond_8

    goto :goto_0

    .line 29
    :cond_8
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_d

    .line 30
    invoke-static {}, LSh0;->a()LSh0;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 31
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_9

    .line 32
    iget-boolean v4, v1, Landroid/content/pm/ResolveInfo;->isInstantAppAvailable:Z

    goto :goto_4

    .line 33
    :cond_9
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_a

    .line 34
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v3, "com.google.android.gms.instantapps.routing.EphemeralInstallerActivity"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    :cond_a
    :goto_4
    if-eqz v4, :cond_b

    goto :goto_0

    .line 35
    :cond_b
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_c
    const/4 p0, 0x0

    .line 36
    throw p0

    :cond_d
    const-string v1, ""

    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_e
    return-object v0
.end method

.method public static synthetic a(Lwa0;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/tab/Tab;ZZ)V
    .locals 3

    if-eqz p0, :cond_9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p4, :cond_2

    .line 62
    iget-boolean v2, p4, Lorg/chromium/chrome/browser/tab/Tab;->n:Z

    if-nez v2, :cond_2

    .line 63
    invoke-virtual {p4}, Lorg/chromium/chrome/browser/tab/Tab;->r()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, p5

    if-eqz p5, :cond_1

    const/4 p5, 0x1

    goto :goto_1

    :cond_1
    const/4 p5, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p5, 0x1

    const/4 v2, 0x0

    :goto_1
    if-eqz p3, :cond_3

    goto :goto_2

    .line 64
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p3

    .line 65
    :goto_2
    invoke-static {p3}, LFO0;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    if-eqz v2, :cond_8

    .line 66
    invoke-virtual {p0}, Lwa0;->a()V

    goto :goto_3

    :cond_4
    if-eqz p5, :cond_6

    .line 67
    new-instance p1, Landroid/content/Intent;

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p1, p3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 68
    sget-object p2, LzT;->a:Landroid/content/Context;

    .line 69
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "com.android.browser.application_id"

    .line 70
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p6, :cond_5

    const-string p3, "com.google.android.apps.chrome.EXTRA_OPEN_NEW_INCOGNITO_TAB"

    .line 71
    invoke-virtual {p1, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_5
    const-string p3, "android.intent.category.BROWSABLE"

    .line 72
    invoke-virtual {p1, p3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-class p3, Lw70;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 74
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 75
    invoke-static {p1}, LqZ;->a(Landroid/content/Intent;)V

    .line 76
    invoke-virtual {p0, p1, v0}, Lwa0;->startActivity(Landroid/content/Intent;Z)V

    if-eqz v2, :cond_8

    .line 77
    invoke-virtual {p0}, Lwa0;->a()V

    goto :goto_3

    .line 78
    :cond_6
    new-instance p0, Lorg/chromium/content_public/browser/LoadUrlParams;

    const/4 p1, 0x6

    invoke-direct {p0, p3, p1}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;I)V

    .line 79
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 80
    new-instance p1, Lh11;

    invoke-direct {p1, p2, v0}, Lh11;-><init>(Ljava/lang/String;I)V

    .line 81
    iput-object p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->e:Lh11;

    .line 82
    :cond_7
    invoke-virtual {p4, p0}, Lorg/chromium/chrome/browser/tab/Tab;->a(Lorg/chromium/content_public/browser/LoadUrlParams;)I

    :cond_8
    :goto_3
    return-void

    :cond_9
    const/4 p0, 0x0

    .line 83
    throw p0
.end method

.method public static a(Landroid/content/Intent;Z)Z
    .locals 8

    .line 1
    sget-object v0, LzT;->a:Landroid/content/Context;

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, v1}, LXT;->b(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-nez v2, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget v3, v2, Landroid/content/pm/ResolveInfo;->match:I

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    if-nez p1, :cond_1

    .line 5
    iget-object p0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    const/high16 v2, 0x10000

    .line 6
    invoke-static {p0, v2}, LXT;->a(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 7
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    .line 8
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_5
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 9
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v3, 0x1

    goto :goto_0

    :cond_6
    const-string v7, "com.google.android.apps.docs"

    .line 11
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 12
    invoke-static {p0}, Lwa0;->b(Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 13
    iget-object v2, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v6, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v5, "android-app"

    .line 15
    invoke-virtual {v2, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 16
    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    const-string v2, "android.intent.extra.REFERRER"

    .line 18
    invoke-virtual {p0, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p0, 0x1

    goto :goto_1

    :cond_7
    const/4 p0, 0x0

    :goto_1
    if-eqz v3, :cond_8

    if-nez p1, :cond_8

    if-eqz p0, :cond_9

    :cond_8
    const/4 v1, 0x1

    :cond_9
    :goto_2
    return v1
.end method

.method public static a(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 1

    const/16 v0, 0x40

    .line 38
    invoke-static {p1, v0}, LXT;->a(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 39
    invoke-static {p1, p0}, Lwa0;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static b(Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 9
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, ".pdf"

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 12
    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object p0

    const-string v1, "application/pdf"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    :goto_0
    return v0
.end method

.method public static b(Landroid/content/Intent;Z)Z
    .locals 4

    .line 1
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    .line 3
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/high16 p1, 0x10000

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 7
    :goto_0
    invoke-static {p0, p1}, LXT;->b(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 8
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    :goto_1
    return v2
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 56
    invoke-virtual {p0}, Lwa0;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lwa0;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 58
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->e:Lorg/chromium/ui/base/WindowAndroid;

    .line 59
    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getContext()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 60
    instance-of v1, v0, Lorg/chromium/chrome/browser/ChromeActivity;

    if-eqz v1, :cond_1

    .line 61
    check-cast v0, Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->getTabModelSelector()LpI0;

    move-result-object v0

    iget-object v1, p0, Lwa0;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    check-cast v0, LrI0;

    invoke-virtual {v0, v1}, LrI0;->a(Lorg/chromium/chrome/browser/tab/Tab;)Z

    :cond_1
    return-void
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "org.chromium.chrome.browser.eenp"

    .line 40
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 41
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    const-string p1, "MobileExternalNavigationDispatched"

    .line 42
    invoke-static {p1}, LhV;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 10

    .line 43
    invoke-virtual {p0}, Lwa0;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 44
    :cond_0
    iget-object v0, p0, Lwa0;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 45
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->e:Lorg/chromium/ui/base/WindowAndroid;

    .line 46
    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getContext()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 47
    instance-of v2, v0, Landroid/app/Activity;

    if-nez v2, :cond_1

    return v1

    .line 48
    :cond_1
    check-cast v0, Landroid/app/Activity;

    .line 49
    new-instance v1, Ltc1;

    const v2, 0x7f140245

    invoke-direct {v1, v0, v2}, Ltc1;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f13030f

    .line 50
    invoke-virtual {v1, v0}, LO8;->b(I)LO8;

    const v0, 0x7f13030e

    .line 51
    invoke-virtual {v1, v0}, LO8;->a(I)LO8;

    const v0, 0x7f13030c

    new-instance v9, Lta0;

    move-object v2, v9

    move-object v3, p0

    move-object v4, p1

    move v5, p5

    move v6, p4

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v2 .. v8}, Lta0;-><init>(Lwa0;Landroid/content/Intent;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v1, v0, v9}, LO8;->b(ILandroid/content/DialogInterface$OnClickListener;)LO8;

    const p5, 0x7f13030d

    new-instance v0, Lsa0;

    move-object v2, v0

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lsa0;-><init>(Lwa0;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 53
    invoke-virtual {v1, p5, v0}, LO8;->a(ILandroid/content/DialogInterface$OnClickListener;)LO8;

    new-instance p5, Lra0;

    move-object v2, p5

    invoke-direct/range {v2 .. v7}, Lra0;-><init>(Lwa0;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 54
    iget-object p1, v1, LO8;->a:LK8;

    iput-object p5, p1, LK8;->n:Landroid/content/DialogInterface$OnCancelListener;

    .line 55
    invoke-virtual {v1}, LO8;->b()LP8;

    const/4 p1, 0x1

    return p1
.end method

.method public applyWebappScopePolicyForUrl(Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lwa0;->getAvailableContext()Landroid/content/Context;

    const/4 p1, 0x0

    return p1
.end method

.method public final b()Z
    .locals 1

    .line 13
    iget-object v0, p0, Lwa0;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lwa0;->mIsTabDestroyed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public clobberCurrentTab(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 1
    new-instance v0, Lorg/chromium/content_public/browser/LoadUrlParams;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;I)V

    .line 2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    new-instance v2, Lh11;

    invoke-direct {v2, p2, v1}, Lh11;-><init>(Ljava/lang/String;I)V

    .line 4
    iput-object v2, v0, Lorg/chromium/content_public/browser/LoadUrlParams;->e:Lh11;

    .line 5
    :cond_0
    invoke-virtual {p0}, Lwa0;->b()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    sget-object p1, LZ01;->a:LFW;

    new-instance p2, Lva0;

    invoke-direct {p2, p0, v0}, Lva0;-><init>(Lwa0;Lorg/chromium/content_public/browser/LoadUrlParams;)V

    const-wide/16 v0, 0x0

    .line 7
    invoke-static {p1, p2, v0, v1}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    const/4 p1, 0x1

    return p1

    .line 8
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 9
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 10
    sget-object p1, LzT;->a:Landroid/content/Context;

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.android.browser.application_id"

    .line 12
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.BROWSABLE"

    .line 13
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    invoke-virtual {p0, p2, v1}, Lwa0;->startActivity(Landroid/content/Intent;Z)V

    return v1
.end method

.method public countSpecializedHandlers(Ljava/util/List;)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Lwa0;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    return p1
.end method

.method public dispatchAuthenticatedIntent(Landroid/content/Intent;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lwa0;->getAvailableContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, LRh0;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 3
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "org.chromium.chrome.browser.instantapps.AUTH_INTENT"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0}, Lwa0;->getAvailableContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final getAvailableContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lwa0;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 2
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->e:Lorg/chromium/ui/base/WindowAndroid;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lwa0;->mApplicationContext:Landroid/content/Context;

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getContext()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, LzT;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lwa0;->mApplicationContext:Landroid/content/Context;

    :cond_1
    return-object v0
.end method

.method public getDefaultSmsPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lwa0;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreviousUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lwa0;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isChromeAppInForeground()Z
    .locals 2

    .line 1
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getStateForApplication()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isIntentForTrustedCallingApp(Landroid/content/Intent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isPdfDownload(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string v0, "pdf"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isSerpReferrer()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lwa0;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lwa0;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 2
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->g()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lorg/chromium/content_public/browser/NavigationController;->c()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    return v1

    .line 5
    :cond_1
    invoke-interface {v0, v2}, Lorg/chromium/content_public/browser/NavigationController;->c(I)Lorg/chromium/content_public/browser/NavigationEntry;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 6
    :cond_2
    iget-object v0, v0, Lorg/chromium/content_public/browser/NavigationEntry;->b:Ljava/lang/String;

    .line 7
    invoke-static {v0}, LJ/N;->MCF9pcXT(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public isValidWebApk(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 2
    invoke-static {v0, p1}, LHf1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public maybeLaunchInstantApp(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 10

    .line 1
    invoke-virtual {p0}, Lwa0;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lwa0;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 2
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-nez v0, :cond_0

    goto/16 :goto_a

    .line 3
    :cond_0
    invoke-static {}, LSh0;->a()LSh0;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lwa0;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 5
    iget-object v2, v2, Lorg/chromium/chrome/browser/tab/Tab;->I:LyU;

    .line 6
    sget-object v3, LrH0;->USER_DATA_KEY:Ljava/lang/Class;

    invoke-virtual {v2, v3}, LyU;->a(Ljava/lang/Class;)LxU;

    move-result-object v2

    check-cast v2, LrH0;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v2}, LrH0;->getInitialIntent()Landroid/content/Intent;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    const/4 v4, 0x1

    if-eqz p3, :cond_11

    if-eqz v2, :cond_11

    .line 8
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.action.VIEW"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 9
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 10
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 11
    invoke-virtual {p0}, Lwa0;->getAvailableContext()Landroid/content/Context;

    move-result-object p1

    .line 12
    invoke-static {p2}, LtZ;->a(Landroid/content/Intent;)Z

    move-result p3

    if-eqz v0, :cond_10

    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const/16 v0, 0x1a

    const-string v2, "InstantAppsHandler"

    if-eqz p3, :cond_2

    const-string v7, "android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS"

    .line 14
    invoke-static {p2, v7, v1}, LCO0;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_2

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "Not handling with Instant Apps (missing CUSTOM_APPS_INSTANT_APP_EXTRA)"

    .line 15
    invoke-static {v2, p2, p1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_2
    const-string v7, "com.google.android.gms.instantapps.DO_NOT_LAUNCH_INSTANT_APP"

    .line 16
    invoke-static {p2, v7, v1}, LCO0;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v8

    const-string v9, "org.chromium.chrome.INSTANT_APP_START_TIME"

    if-nez v8, :cond_c

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v0, :cond_3

    .line 17
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_3

    goto/16 :goto_4

    :cond_3
    const-string v0, "com.google.android.apps.chrome.EXTRA_OPEN_NEW_INCOGNITO_TAB"

    .line 18
    invoke-static {p2, v0, v1}, LCO0;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "org.chromium.chrome.browser.webapp_source"

    .line 19
    invoke-static {p2, v0}, LCO0;->e(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.android.browser.application_id"

    invoke-static {p2, v0}, LCO0;->d(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 21
    invoke-static {p2}, LqZ;->n(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 p1, 0x1

    :goto_2
    if-nez p1, :cond_b

    .line 22
    invoke-static {p2}, LqZ;->h(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_3

    .line 23
    :cond_6
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 24
    invoke-virtual {p1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 25
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 26
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_7
    if-nez p3, :cond_8

    .line 27
    sget-object p3, Lay0;->a:Lcy0;

    const-string v0, "applink.chrome_default_browser"

    .line 28
    invoke-virtual {p3, v0, v1}, Lcy0;->a(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 29
    :cond_8
    invoke-static {v3, p1}, Lwa0;->a(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_a

    :cond_9
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "Not handling with Instant Apps because Chrome is not default or there\'s a specialized handler"

    .line 30
    invoke-static {v2, p2, p1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    .line 31
    :cond_a
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 32
    invoke-virtual {p1, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 33
    invoke-virtual {p1, v9, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_6

    :cond_b
    :goto_3
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "Not handling with Instant Apps (other)"

    .line 34
    invoke-static {v2, p2, p1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    :cond_c
    :goto_4
    const-wide/16 v3, 0x0

    .line 35
    invoke-static {p2, v9, v3, v4}, LCO0;->a(Landroid/content/Intent;Ljava/lang/String;J)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long p3, v7, v3

    if-lez p3, :cond_d

    .line 37
    sget-object p3, LSh0;->e:LdV;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v3, v7

    invoke-virtual {p3, v3, v4}, LdV;->a(J)V

    .line 38
    invoke-virtual {p2, v9}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_d
    const-string p1, "com.google.android.gms.instantapps.BROWSER_LAUNCH_REASON"

    .line 39
    invoke-static {p2, p1, v1}, LCO0;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result p3

    const/4 v0, 0x3

    if-lez p3, :cond_e

    if-ge p3, v0, :cond_e

    .line 40
    sget-object v0, LSh0;->f:LaV;

    invoke-virtual {v0, p3}, LaV;->a(I)V

    .line 41
    invoke-virtual {p2, p1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_5

    :cond_e
    if-lt p3, v0, :cond_f

    const-string p1, "Unexpected call source constant for Instant Apps: "

    .line 42
    invoke-static {p1, p3}, LZi;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, p2}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_f
    :goto_5
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "Not handling with Instant Apps (DO_NOT_LAUNCH_EXTRA)"

    .line 43
    invoke-static {v2, p2, p1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    :goto_6
    sget-object p1, LSh0;->d:LdV;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    sub-long/2addr p2, v5

    invoke-virtual {p1, p2, p3}, LdV;->a(J)V

    return v1

    .line 45
    :cond_10
    throw v3

    :cond_11
    if-nez p3, :cond_18

    .line 46
    invoke-virtual {p0}, Lwa0;->isSerpReferrer()Z

    move-result p3

    if-eqz p3, :cond_12

    return v1

    .line 47
    :cond_12
    invoke-virtual {p0}, Lwa0;->getAvailableContext()Landroid/content/Context;

    .line 48
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_13

    move-object p2, v3

    goto :goto_7

    :cond_13
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    :goto_7
    iget-object p3, p0, Lwa0;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v0, :cond_17

    .line 49
    iget-object v0, p3, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 50
    invoke-static {v0, p1}, LJ/N;->MaqKlsVX(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    .line 51
    iget-object p3, p3, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-nez v0, :cond_14

    goto :goto_9

    .line 52
    :cond_14
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_15

    if-eqz p1, :cond_15

    .line 53
    invoke-virtual {p2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_8

    :cond_15
    const/4 v4, 0x0

    :goto_8
    if-eqz v4, :cond_16

    .line 54
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    :cond_16
    :goto_9
    return v1

    .line 55
    :cond_17
    throw v3

    :cond_18
    :goto_a
    return v1
.end method

.method public maybeRecordAppHandlersInIntent(Landroid/content/Intent;Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p2, v0}, Lwa0;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    const-string v0, "org.chromium.chrome.browser.eenp"

    .line 2
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-void
.end method

.method public maybeSetWindowId(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lwa0;->getAvailableContext()Landroid/content/Context;

    return-void
.end method

.method public queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;
    .locals 1

    const/16 v0, 0x40

    .line 1
    invoke-static {p1, v0}, LXT;->a(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public shouldRequestFileAccess(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lwa0;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "file://"

    .line 2
    invoke-static {v0}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lorg/chromium/base/PathUtils;->getDataDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object p1, p0, Lwa0;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 4
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->e:Lorg/chromium/ui/base/WindowAndroid;

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 5
    invoke-virtual {p1, v0}, Lorg/chromium/ui/base/WindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lwa0;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 6
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->e:Lorg/chromium/ui/base/WindowAndroid;

    .line 7
    invoke-virtual {p1, v0}, Lorg/chromium/ui/base/WindowAndroid;->canRequestPermission(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public startActivity(Landroid/content/Intent;Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    :try_start_0
    invoke-static {p1}, Lwa0;->b(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0}, Lwa0;->a(Landroid/content/Intent;Z)Z

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_2

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 3
    invoke-virtual {p0, p1}, Lwa0;->dispatchAuthenticatedIntent(Landroid/content/Intent;)V

    goto :goto_1

    .line 4
    :cond_2
    invoke-virtual {p0}, Lwa0;->getAvailableContext()Landroid/content/Context;

    move-result-object p2

    .line 5
    instance-of v0, p2, Landroid/app/Activity;

    if-nez v0, :cond_3

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6
    :cond_3
    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_1
    const-string p2, "org.chromium.chrome.browser.eenp"

    .line 7
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 8
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_4

    const-string p2, "MobileExternalNavigationDispatched"

    .line 9
    invoke-static {p2}, LhV;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 10
    :goto_2
    invoke-static {p2, p1}, LCO0;->a(Ljava/lang/RuntimeException;Landroid/content/Intent;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public startActivityIfNeeded(Landroid/content/Intent;Z)Z
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 2
    :try_start_0
    invoke-static {p1}, Lwa0;->b(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1, v2}, Lwa0;->a(Landroid/content/Intent;Z)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p2

    goto :goto_2

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 4
    invoke-virtual {p0, p1}, Lwa0;->dispatchAuthenticatedIntent(Landroid/content/Intent;)V

    const/4 p2, 0x1

    goto :goto_1

    .line 5
    :cond_2
    invoke-virtual {p0}, Lwa0;->getAvailableContext()Landroid/content/Context;

    move-result-object p2

    .line 6
    instance-of v2, p2, Landroid/app/Activity;

    if-eqz v2, :cond_3

    .line 7
    check-cast p2, Landroid/app/Activity;

    const/4 v2, -0x1

    invoke-virtual {p2, p1, v2}, Landroid/app/Activity;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    move-result p2

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_4

    .line 8
    invoke-virtual {p0, p1}, Lwa0;->a(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_4
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return p2

    .line 10
    :goto_2
    :try_start_1
    invoke-static {p2, p1}, LCO0;->a(Ljava/lang/RuntimeException;Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return v1

    :goto_3
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p1

    :catch_1
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return v1
.end method

.method public startFileIntent(Landroid/content/Intent;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    new-instance v0, Lua0;

    invoke-direct {v0, p0, p1, p2, p3}, Lua0;-><init>(Lwa0;Landroid/content/Intent;Ljava/lang/String;Z)V

    .line 2
    invoke-virtual {p0}, Lwa0;->b()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lwa0;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 4
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->e:Lorg/chromium/ui/base/WindowAndroid;

    const-string p2, "android.permission.READ_EXTERNAL_STORAGE"

    .line 5
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lorg/chromium/ui/base/WindowAndroid;->requestPermissions([Ljava/lang/String;LKc1;)V

    return-void
.end method

.method public startIncognitoIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/tab/Tab;ZZ)Z
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move v5, p6

    .line 1
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lwa0;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result p1
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public willChromeHandleIntent(Landroid/content/Intent;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Lwa0;->b(Landroid/content/Intent;Z)Z

    move-result p1

    return p1
.end method
