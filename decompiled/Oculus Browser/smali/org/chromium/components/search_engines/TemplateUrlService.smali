.class public Lorg/chromium/components/search_engines/TemplateUrlService;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:LWT;

.field public final b:LWT;

.field public c:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LWT;

    invoke-direct {v0}, LWT;-><init>()V

    iput-object v0, p0, Lorg/chromium/components/search_engines/TemplateUrlService;->a:LWT;

    .line 3
    new-instance v0, LWT;

    invoke-direct {v0}, LWT;-><init>()V

    iput-object v0, p0, Lorg/chromium/components/search_engines/TemplateUrlService;->b:LWT;

    .line 4
    iput-wide p1, p0, Lorg/chromium/components/search_engines/TemplateUrlService;->c:J

    return-void
.end method

.method public static addTemplateUrlToList(Ljava/util/List;Lorg/chromium/components/search_engines/TemplateUrl;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearNativePtr()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lorg/chromium/components/search_engines/TemplateUrlService;->c:J

    return-void
.end method

.method public static create(J)Lorg/chromium/components/search_engines/TemplateUrlService;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/components/search_engines/TemplateUrlService;

    invoke-direct {v0, p0, p1}, Lorg/chromium/components/search_engines/TemplateUrlService;-><init>(J)V

    return-object v0
.end method

.method private onTemplateURLServiceChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/components/search_engines/TemplateUrlService;->b:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LlU0;

    .line 2
    invoke-interface {v1}, LlU0;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private templateUrlServiceLoaded()V
    .locals 2

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    iget-object v0, p0, Lorg/chromium/components/search_engines/TemplateUrlService;->a:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LkU0;

    .line 3
    invoke-interface {v1}, LkU0;->d()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 9
    iget-wide v0, p0, Lorg/chromium/components/search_engines/TemplateUrlService;->c:J

    .line 10
    invoke-static {v0, v1, p0, p1}, LJ/N;->MjOvYRBS(JLjava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a()Lorg/chromium/components/search_engines/TemplateUrl;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/chromium/components/search_engines/TemplateUrlService;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-wide v0, p0, Lorg/chromium/components/search_engines/TemplateUrlService;->c:J

    .line 3
    invoke-static {v0, v1, p0}, LJ/N;->MxujzkW4(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/components/search_engines/TemplateUrl;

    return-object v0
.end method

.method public a(LkU0;)V
    .locals 4

    .line 4
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 5
    iget-object v0, p0, Lorg/chromium/components/search_engines/TemplateUrlService;->a:LWT;

    invoke-virtual {v0, p1}, LWT;->a(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {p0}, Lorg/chromium/components/search_engines/TemplateUrlService;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    sget-object v0, LZ01;->a:LFW;

    new-instance v1, LiU0;

    invoke-direct {v1, p0, p1}, LiU0;-><init>(Lorg/chromium/components/search_engines/TemplateUrlService;LkU0;)V

    const-wide/16 v2, 0x0

    .line 8
    invoke-static {v0, v1, v2, v3}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 5
    iget-wide v0, p0, Lorg/chromium/components/search_engines/TemplateUrlService;->c:J

    .line 6
    invoke-static {v0, v1, p0, p1}, LJ/N;->MA0BGHUQ(JLjava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(LkU0;)V
    .locals 1

    .line 3
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 4
    iget-object v0, p0, Lorg/chromium/components/search_engines/TemplateUrlService;->a:LWT;

    invoke-virtual {v0, p1}, LWT;->b(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/components/search_engines/TemplateUrlService;->c:J

    .line 2
    invoke-static {v0, v1, p0}, LJ/N;->MWMFuBEz(JLjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/components/search_engines/TemplateUrlService;->c:J

    .line 2
    invoke-static {v0, v1, p0}, LJ/N;->MELaF8Vs(JLjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 2

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    iget-wide v0, p0, Lorg/chromium/components/search_engines/TemplateUrlService;->c:J

    .line 3
    invoke-static {v0, v1, p0}, LJ/N;->M4Z0aoFH(JLjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public e()V
    .locals 2

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    iget-wide v0, p0, Lorg/chromium/components/search_engines/TemplateUrlService;->c:J

    .line 3
    invoke-static {v0, v1, p0}, LJ/N;->MVKcMDBb(JLjava/lang/Object;)V

    return-void
.end method
