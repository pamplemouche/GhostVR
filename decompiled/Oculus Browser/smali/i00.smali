.class public Li00;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static i:Li00;


# instance fields
.field public final a:Ljava/util/Set;

.field public final b:Ljava/util/Map;

.field public c:I

.field public d:Landroid/view/ViewGroup;

.field public e:Lorg/chromium/content_public/browser/WebContents;

.field public f:J

.field public g:Lh00;

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Li00;->a:Ljava/util/Set;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Li00;->b:Ljava/util/Map;

    return-void
.end method

.method public static a()Li00;
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    sget-object v0, Li00;->i:Li00;

    if-nez v0, :cond_0

    new-instance v0, Li00;

    invoke-direct {v0}, Li00;-><init>()V

    sput-object v0, Li00;->i:Li00;

    .line 3
    :cond_0
    sget-object v0, Li00;->i:Li00;

    return-object v0
.end method

.method public static synthetic a(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 28
    :try_start_0
    iget-object p1, p1, Lorg/chromium/base/TraceEvent;->w:Ljava/lang/String;

    invoke-static {p1}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 29
    sget-object v0, LRB;->a:LLB;

    invoke-virtual {v0, p0, p1}, LLB;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 30
    :cond_0
    iget-object p0, p1, Lorg/chromium/base/TraceEvent;->w:Ljava/lang/String;

    invoke-static {p0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(ZZZ)Lorg/chromium/content_public/browser/WebContents;
    .locals 2

    .line 38
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return-object v0

    .line 39
    :cond_0
    iget-object p1, p0, Li00;->e:Lorg/chromium/content_public/browser/WebContents;

    if-nez p1, :cond_1

    return-object v0

    .line 40
    :cond_1
    iput-object v0, p0, Li00;->e:Lorg/chromium/content_public/browser/WebContents;

    .line 41
    iget-object v1, p0, Li00;->g:Lh00;

    invoke-interface {p1, v1}, Lorg/chromium/content_public/browser/WebContents;->b(Lg11;)V

    .line 42
    iput-object v0, p0, Li00;->g:Lh00;

    if-nez p2, :cond_2

    .line 43
    invoke-interface {p1}, Lorg/chromium/content_public/browser/WebContents;->w()V

    .line 44
    :cond_2
    iget-boolean p2, p0, Li00;->h:Z

    if-ne p2, p3, :cond_3

    const/4 p2, 0x1

    goto :goto_0

    :cond_3
    const/4 p2, 0x4

    :goto_0
    invoke-virtual {p0, p2}, Li00;->a(I)V

    return-object p1
.end method

.method public final a(I)V
    .locals 2

    .line 45
    iget-boolean v0, p0, Li00;->h:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "CustomTabs.SpareWebContents.Status2"

    const/4 v1, 0x5

    .line 46
    invoke-static {v0, p1, v1}, LfV;->a(Ljava/lang/String;II)V

    return-void
.end method

.method public a(Landroid/content/Context;II)V
    .locals 5

    .line 4
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 5
    iget-object v0, p0, Li00;->d:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget v0, p0, Li00;->c:I

    if-ne v0, p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "WarmupManager.inflateViewHierarchy"

    .line 6
    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->c(Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object v1
    :try_end_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :try_start_1
    invoke-static {}, LqU;->a()LqU;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 8
    :try_start_2
    new-instance v3, Landroid/view/ContextThemeWrapper;

    .line 9
    invoke-static {}, Lorg/chromium/chrome/browser/ChromeActivity;->r1()I

    move-result v4

    invoke-direct {v3, p1, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 10
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-direct {p1, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 11
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0e00ff

    invoke-virtual {v3, v4, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v3, -0x1

    if-eq p2, v3, :cond_1

    const v4, 0x7f0b0118

    .line 12
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewStub;

    .line 13
    invoke-virtual {v4, p2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 14
    invoke-virtual {v4}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_1
    const v4, 0x7f0b0117

    .line 15
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, LDJ0;

    if-eq p3, v3, :cond_2

    if-eqz v4, :cond_2

    .line 16
    invoke-interface {v4, p3}, LDJ0;->a(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    :cond_2
    :try_start_3
    invoke-virtual {v2}, LqU;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v1, :cond_4

    .line 18
    :try_start_4
    invoke-static {v0, v1}, Li00;->a(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V
    :try_end_4
    .catch Landroid/view/InflateException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 19
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p3

    .line 20
    :try_start_6
    invoke-virtual {v2}, LqU;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v2

    .line 21
    :try_start_7
    sget-object v3, LRB;->a:LLB;

    invoke-virtual {v3, p1, v2}, LLB;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 22
    :goto_0
    throw p3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p1

    .line 23
    :try_start_8
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception p3

    if-eqz v1, :cond_3

    .line 24
    :try_start_9
    invoke-static {p1, v1}, Li00;->a(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V

    :cond_3
    throw p3
    :try_end_9
    .catch Landroid/view/InflateException; {:try_start_9 .. :try_end_9} :catch_0

    :catch_0
    move-exception p1

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, p3, v1

    const-string p1, "WarmupManager"

    const-string v1, "Inflation exception."

    .line 25
    invoke-static {p1, v1, p3}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object p1, v0

    .line 26
    :cond_4
    :goto_1
    iput-object p1, p0, Li00;->d:Landroid/view/ViewGroup;

    .line 27
    iput p2, p0, Li00;->c:I

    return-void
.end method

.method public a(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;)V
    .locals 2

    .line 31
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 32
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 33
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 35
    :cond_1
    iget-object v0, p0, Li00;->a:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 36
    iget-object v0, p0, Li00;->b:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 37
    :cond_2
    invoke-static {p1, p2}, LJ/N;->Mw6Ub3GC(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
