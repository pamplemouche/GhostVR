.class public Lorg/chromium/chrome/browser/signin/ProfileDownloader;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:LWT;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LWT;

    invoke-direct {v0}, LWT;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/signin/ProfileDownloader;->a:LWT;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/profiles/Profile;->b()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object p0

    .line 3
    invoke-static {}, LHE0;->a()Lorg/chromium/components/signin/AccountTrackerService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/components/signin/AccountTrackerService;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    sget-object p3, LME0;->d:LME0;

    if-nez p3, :cond_0

    .line 5
    new-instance p3, LME0;

    invoke-direct {p3}, LME0;-><init>()V

    sput-object p3, LME0;->d:LME0;

    .line 6
    invoke-static {}, LHE0;->a()Lorg/chromium/components/signin/AccountTrackerService;

    move-result-object p3

    sget-object v0, LME0;->d:LME0;

    invoke-virtual {p3, v0}, Lorg/chromium/components/signin/AccountTrackerService;->a(LEU0;)V

    .line 7
    :cond_0
    sget-object p3, LME0;->d:LME0;

    .line 8
    iget-object v0, p3, LME0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object p0, p3, LME0;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object p0, p3, LME0;->c:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 11
    :cond_1
    invoke-static {p0, p1, p2, p3}, LJ/N;->ME3$rLSB(Ljava/lang/Object;Ljava/lang/String;IZ)V

    return-void
.end method

.method public static onProfileDownloadSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    sget-object v0, Lorg/chromium/chrome/browser/signin/ProfileDownloader;->a:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LLE0;

    .line 3
    check-cast v1, LKE0;

    if-eqz v1, :cond_1

    .line 4
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 5
    iget-object v2, v1, LKE0;->f:Ljava/util/Map;

    new-instance v3, LGE0;

    .line 6
    invoke-virtual {v1, p3}, LKE0;->a(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v3, p0, v4, p1, p2}, LGE0;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v1, v1, LKE0;->e:LWT;

    invoke-virtual {v1}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LJE0;

    .line 9
    invoke-interface {v2, p0}, LJE0;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 10
    throw p0

    :cond_2
    return-void
.end method
