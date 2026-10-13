.class public Liu0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LTu0;


# instance fields
.field public final a:Lorg/chromium/content_public/browser/WebContents;

.field public final b:Ljava/util/Set;

.field public final c:Ljava/util/Set;

.field public final d:Lorg/chromium/components/payments/PaymentManifestDownloader;

.field public final e:Lorg/chromium/chrome/browser/payments/PaymentManifestWebDataService;

.field public final f:Lorg/chromium/components/payments/PaymentManifestParser;

.field public final g:LIu0;

.field public final h:Lorg/chromium/chrome/browser/payments/PaymentAppFactory$PaymentAppCreatedCallback;

.field public final i:Z

.field public final j:Ljava/util/Map;

.field public final k:Ljava/util/Map;

.field public final l:Ljava/util/Map;

.field public final m:Ljava/util/Map;

.field public n:I

.field public o:I


# direct methods
.method public constructor <init>(Lorg/chromium/content_public/browser/WebContents;Ljava/util/Set;Lorg/chromium/chrome/browser/payments/PaymentManifestWebDataService;Lorg/chromium/components/payments/PaymentManifestDownloader;Lorg/chromium/components/payments/PaymentManifestParser;LIu0;Lorg/chromium/chrome/browser/payments/PaymentAppFactory$PaymentAppCreatedCallback;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Liu0;->j:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Liu0;->k:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Liu0;->l:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Liu0;->m:Ljava/util/Map;

    .line 6
    iput-object p1, p0, Liu0;->a:Lorg/chromium/content_public/browser/WebContents;

    .line 7
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    const-string v0, "basic-card"

    .line 8
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v0, "interledger"

    .line 9
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v0, "payee-credit-transfer"

    .line 10
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v0, "payer-credit-transfer"

    .line 11
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v0, "tokenized-card"

    .line 12
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Liu0;->b:Ljava/util/Set;

    .line 14
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Liu0;->c:Ljava/util/Set;

    .line 15
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 16
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 17
    iget-object v1, p0, Liu0;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18
    :cond_1
    invoke-static {v0}, LQv0;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    invoke-static {v0}, LQv0;->b(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 20
    iget-object v1, p0, Liu0;->c:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 21
    :cond_2
    iput-object p4, p0, Liu0;->d:Lorg/chromium/components/payments/PaymentManifestDownloader;

    .line 22
    iput-object p3, p0, Liu0;->e:Lorg/chromium/chrome/browser/payments/PaymentManifestWebDataService;

    .line 23
    iput-object p5, p0, Liu0;->f:Lorg/chromium/components/payments/PaymentManifestParser;

    .line 24
    iput-object p6, p0, Liu0;->g:LIu0;

    .line 25
    iput-object p7, p0, Liu0;->h:Lorg/chromium/chrome/browser/payments/PaymentAppFactory$PaymentAppCreatedCallback;

    .line 26
    iget-object p1, p0, Liu0;->a:Lorg/chromium/content_public/browser/WebContents;

    invoke-static {p1}, Lorg/chromium/chrome/browser/ChromeActivity;->a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 27
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ChromeActivity;->w0()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object p1

    invoke-interface {p1}, LdI0;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Liu0;->i:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/net/URI;)Lhu0;
    .locals 2

    .line 1
    iget-object v0, p0, Liu0;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhu0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lhu0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lhu0;-><init>(Lgu0;)V

    .line 3
    iget-object v1, p0, Liu0;->m:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public final a()V
    .locals 5

    .line 4
    iget-boolean v0, p0, Liu0;->i:Z

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Liu0;->g:LIu0;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "org.chromium.intent.action.IS_READY_TO_PAY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 7
    :try_start_0
    sget-object v2, LzT;->a:Landroid/content/Context;

    .line 8
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 10
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    .line 11
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 12
    iget-object v2, p0, Liu0;->j:Ljava/util/Map;

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leu0;

    if-eqz v2, :cond_0

    .line 13
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 14
    iget-object v2, v2, Leu0;->K:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 15
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1

    :cond_1
    const/4 v0, 0x0

    .line 16
    throw v0

    .line 17
    :cond_2
    iget-object v0, p0, Liu0;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 18
    iget-object v2, p0, Liu0;->h:Lorg/chromium/chrome/browser/payments/PaymentAppFactory$PaymentAppCreatedCallback;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LLu0;

    invoke-interface {v2, v1}, Lorg/chromium/chrome/browser/payments/PaymentAppFactory$PaymentAppCreatedCallback;->a(LLu0;)V

    goto :goto_1

    .line 19
    :cond_3
    iget-object v0, p0, Liu0;->h:Lorg/chromium/chrome/browser/payments/PaymentAppFactory$PaymentAppCreatedCallback;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/payments/PaymentAppFactory$PaymentAppCreatedCallback;->e()V

    return-void
.end method

.method public final a(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)V
    .locals 10

    .line 20
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 21
    iget-object v1, p0, Liu0;->j:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leu0;

    if-nez v1, :cond_5

    .line 22
    iget-object v1, p0, Liu0;->g:LIu0;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 23
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 24
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 25
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object v0, p1, p2

    const-string p2, "PaymentAppFinder"

    const-string v0, "Skipping \"%s\" because of empty label."

    .line 26
    invoke-static {p2, v0, p1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 27
    :cond_0
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v3, :cond_1

    move-object v3, v2

    goto :goto_0

    :cond_1
    const-string v4, "org.chromium.default_payment_method_name"

    .line 28
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 29
    :goto_0
    new-instance v9, Leu0;

    iget-object v4, p0, Liu0;->a:Lorg/chromium/content_public/browser/WebContents;

    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 30
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Liu0;->g:LIu0;

    if-eqz v1, :cond_3

    .line 31
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 32
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 33
    iget-boolean v7, p0, Liu0;->i:Z

    if-nez v3, :cond_2

    move-object v8, v2

    goto :goto_1

    .line 34
    :cond_2
    invoke-static {v3}, LQv0;->b(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    move-object v8, v1

    :goto_1
    move-object v1, v9

    move-object v2, v4

    move-object v3, v0

    move-object v4, v5

    move-object v5, v6

    move-object v6, p1

    invoke-direct/range {v1 .. v8}, Leu0;-><init>(Lorg/chromium/content_public/browser/WebContents;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/net/URI;)V

    .line 35
    iget-object p1, p0, Liu0;->j:Ljava/util/Map;

    invoke-interface {p1, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 36
    :cond_3
    throw v2

    .line 37
    :cond_4
    throw v2

    .line 38
    :cond_5
    :goto_2
    iget-object p1, v1, Leu0;->M:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()V
    .locals 8

    .line 1
    iget v0, p0, Liu0;->o:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Liu0;->o:I

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Liu0;->e:Lorg/chromium/chrome/browser/payments/PaymentManifestWebDataService;

    .line 3
    iget-wide v2, v0, Lorg/chromium/chrome/browser/payments/PaymentManifestWebDataService;->a:J

    .line 4
    invoke-static {v2, v3, v0}, LJ/N;->MX7AwTCa(JLjava/lang/Object;)V

    const-wide/16 v2, 0x0

    .line 5
    iput-wide v2, v0, Lorg/chromium/chrome/browser/payments/PaymentManifestWebDataService;->a:J

    .line 6
    iget-object v0, p0, Liu0;->d:Lorg/chromium/components/payments/PaymentManifestDownloader;

    const/4 v4, 0x0

    if-eqz v0, :cond_8

    .line 7
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 8
    iget-wide v5, v0, Lorg/chromium/components/payments/PaymentManifestDownloader;->a:J

    const/4 v0, 0x0

    cmp-long v7, v5, v2

    if-eqz v7, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_3

    .line 9
    iget-object v5, p0, Liu0;->d:Lorg/chromium/components/payments/PaymentManifestDownloader;

    if-eqz v5, :cond_2

    .line 10
    iget-wide v6, v5, Lorg/chromium/components/payments/PaymentManifestDownloader;->a:J

    .line 11
    invoke-static {v6, v7, v5}, LJ/N;->MJUrxDH$(JLjava/lang/Object;)V

    .line 12
    iput-wide v2, v5, Lorg/chromium/components/payments/PaymentManifestDownloader;->a:J

    goto :goto_1

    .line 13
    :cond_2
    throw v4

    .line 14
    :cond_3
    :goto_1
    iget-object v5, p0, Liu0;->f:Lorg/chromium/components/payments/PaymentManifestParser;

    if-eqz v5, :cond_7

    .line 15
    iget-wide v5, v5, Lorg/chromium/components/payments/PaymentManifestParser;->a:J

    cmp-long v7, v5, v2

    if-eqz v7, :cond_4

    const/4 v0, 0x1

    :cond_4
    if-eqz v0, :cond_6

    .line 16
    iget-object v0, p0, Liu0;->f:Lorg/chromium/components/payments/PaymentManifestParser;

    if-eqz v0, :cond_5

    .line 17
    iget-wide v4, v0, Lorg/chromium/components/payments/PaymentManifestParser;->a:J

    .line 18
    invoke-static {v4, v5}, LJ/N;->MFuu4tOD(J)V

    .line 19
    iput-wide v2, v0, Lorg/chromium/components/payments/PaymentManifestParser;->a:J

    goto :goto_2

    .line 20
    :cond_5
    throw v4

    :cond_6
    :goto_2
    return-void

    .line 21
    :cond_7
    throw v4

    .line 22
    :cond_8
    throw v4
.end method

.method public c()V
    .locals 7

    .line 1
    iget v0, p0, Liu0;->n:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Liu0;->n:I

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Liu0;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/URI;

    .line 4
    iget-object v3, p0, Liu0;->c:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhu0;

    .line 6
    iget-object v3, v1, Lhu0;->a:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 7
    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Liu0;->a(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)V

    goto :goto_1

    .line 8
    :cond_3
    iget-boolean v3, v1, Lhu0;->c:Z

    if-eqz v3, :cond_5

    .line 9
    iget-object v1, p0, Liu0;->l:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-nez v1, :cond_4

    goto :goto_0

    .line 10
    :cond_4
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 11
    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Liu0;->a(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)V

    goto :goto_2

    .line 12
    :cond_5
    iget-object v1, v1, Lhu0;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/URI;

    .line 13
    iget-object v4, p0, Liu0;->k:Ljava/util/Map;

    .line 14
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    if-nez v3, :cond_7

    goto :goto_3

    .line 15
    :cond_7
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/URI;

    .line 16
    iget-object v5, p0, Liu0;->m:Ljava/util/Map;

    .line 17
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lhu0;

    if-nez v4, :cond_9

    goto :goto_4

    .line 18
    :cond_9
    iget-object v4, v4, Lhu0;->a:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 19
    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Liu0;->a(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)V

    goto :goto_5

    .line 20
    :cond_a
    invoke-virtual {p0}, Liu0;->a()V

    return-void
.end method
