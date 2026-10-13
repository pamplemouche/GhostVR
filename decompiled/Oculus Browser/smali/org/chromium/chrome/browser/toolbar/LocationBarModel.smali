.class public Lorg/chromium/chrome/browser/toolbar/LocationBarModel;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LSJ0;
.implements LPJ0;


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Lorg/chromium/chrome/browser/tab/Tab;

.field public c:I

.field public d:Z

.field public e:Z

.field public f:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->a:Landroid/content/Context;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, LAO0;->a(Landroid/content/res/Resources;Z)I

    move-result p1

    iput p1, p0, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->c:I

    return-void
.end method

.method private getActiveWebContents()Lorg/chromium/content_public/browser/WebContents;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->h()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->b:Lorg/chromium/chrome/browser/tab/Tab;

    .line 3
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    return-object v0
.end method


# virtual methods
.method public a(Z)I
    .locals 4

    .line 16
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const p1, 0x7f08028f

    return p1

    .line 17
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->k()I

    move-result v0

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->o()Z

    move-result v1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->n()Z

    move-result v2

    const v3, 0x7f08028e

    if-eqz v2, :cond_1

    const v3, 0x7f0802af

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    const v3, 0x7f0801fc

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 p1, 0x2

    if-eq v0, p1, :cond_4

    const/4 p1, 0x3

    if-eq v0, p1, :cond_4

    const/4 p1, 0x4

    if-eq v0, p1, :cond_4

    const/4 p1, 0x5

    if-eq v0, p1, :cond_3

    const/4 p1, 0x6

    if-eq v0, p1, :cond_7

    goto :goto_0

    :cond_3
    const v3, 0x7f08028c

    goto :goto_1

    :cond_4
    const v3, 0x7f08028d

    goto :goto_1

    :cond_5
    if-eqz p1, :cond_7

    .line 18
    iget-boolean p1, p0, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->d:Z

    .line 19
    invoke-static {p1}, Lyp0;->a(Z)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 20
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->d()LMm0;

    goto :goto_1

    :cond_6
    :goto_0
    const/4 v3, 0x0

    :cond_7
    :goto_1
    return v3
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LNp0;
    .locals 8

    .line 1
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2
    iget-wide v0, p0, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->f:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_3

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    if-lez p2, :cond_3

    .line 3
    iget-object p2, p0, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->b:Lorg/chromium/chrome/browser/tab/Tab;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->b()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->b:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-static {p2}, Lorg/chromium/chrome/browser/tab/TrustedCdn;->a(Lorg/chromium/chrome/browser/tab/Tab;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    :goto_0
    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_3

    .line 5
    :try_start_0
    new-instance p2, Ljava/net/URI;

    invoke-direct {p2, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 6
    sget-object v2, LFO0;->a:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, p2

    goto :goto_2

    :catch_0
    const/4 v4, 0x0

    .line 7
    :goto_2
    iget-object p2, p0, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 8
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->c()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->k()I

    move-result v3

    .line 9
    iget v5, p0, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->c:I

    .line 10
    invoke-static {v5}, LAO0;->d(I)Z

    move-result v5

    xor-int/2addr v5, v1

    .line 11
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->q()Z

    move-result v6

    if-nez v6, :cond_2

    .line 12
    iget-boolean v6, p0, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->d:Z

    if-nez v6, :cond_2

    const/4 v6, 0x1

    goto :goto_3

    :cond_2
    const/4 v6, 0x0

    :goto_3
    move-object v0, v7

    move-object v1, p2

    .line 13
    invoke-static/range {v0 .. v6}, Lwp0;->a(Landroid/text/Spannable;Landroid/content/res/Resources;Lorg/chromium/chrome/browser/profiles/Profile;IZZZ)V

    .line 14
    :cond_3
    invoke-static {p1, v7, p3}, LNp0;->a(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;)LNp0;

    move-result-object p1

    return-object p1
.end method

.method public a()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->d:Z

    return v0
.end method

.method public b(Z)I
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->f:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->f:J

    .line 3
    invoke-static {v0, v1, p0, p1}, LJ/N;->MY48gn2Q(JLjava/lang/Object;Z)I

    move-result p1

    return p1
.end method

.method public b()Ljava/lang/String;
    .locals 6

    .line 4
    iget-wide v0, p0, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->f:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-nez v5, :cond_0

    return-object v4

    .line 5
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->b:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    return-object v4

    .line 6
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v4

    .line 7
    :cond_2
    iget-wide v0, p0, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->f:J

    .line 8
    invoke-static {v0, v1, p0}, LJ/N;->Mq9xeVda(JLjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Lorg/chromium/chrome/browser/profiles/Profile;
    .locals 2

    .line 1
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->d:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/profiles/Profile;->a()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/profiles/Profile;->b()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v0

    return-object v0
.end method

.method public d()LMm0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->b:Lorg/chromium/chrome/browser/tab/Tab;

    .line 2
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->f:Lsl0;

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->h()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->g()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->c:I

    return v0
.end method

.method public g()Lorg/chromium/chrome/browser/tab/Tab;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->b:Lorg/chromium/chrome/browser/tab/Tab;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->h()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->g()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->b:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j()I
    .locals 1

    invoke-static {p0}, LQJ0;->a(LSJ0;)I

    move-result v0

    return v0
.end method

.method public k()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->g()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->o()Z

    move-result v1

    invoke-static {v0}, Lorg/chromium/chrome/browser/tab/TrustedCdn;->a(Lorg/chromium/chrome/browser/tab/Tab;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_2

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->l()I

    move-result v0

    if-eqz v2, :cond_3

    .line 4
    invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :cond_1
    const/4 v0, 0x6

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :cond_3
    :goto_1
    return v0
.end method

.method public l()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public m()LNp0;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->h()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, LNp0;->h:LNp0;

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->e()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->d:Z

    .line 4
    invoke-static {v0, v1}, Lul0;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-static {v0}, LMm0;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_3

    .line 5
    :cond_1
    iget-wide v1, p0, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->f:J

    const-wide/16 v3, 0x0

    const-string v5, ""

    cmp-long v6, v1, v3

    if-nez v6, :cond_2

    move-object v1, v5

    goto :goto_0

    .line 6
    :cond_2
    invoke-static {v1, v2, p0}, LJ/N;->MvJvjGzq(JLjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 7
    :goto_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->b:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->q()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 8
    invoke-virtual {p0, v0, v1, v1}, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LNp0;

    move-result-object v0

    return-object v0

    .line 9
    :cond_3
    invoke-static {v0}, LZS0;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 10
    invoke-static {v0}, LZS0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 11
    invoke-static {v2}, LJ/N;->M5yzUycr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-virtual {p0, v0, v0, v0}, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LNp0;

    move-result-object v0

    return-object v0

    .line 13
    :cond_4
    invoke-virtual {p0, v0, v1, v1}, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LNp0;

    move-result-object v0

    return-object v0

    .line 14
    :cond_5
    invoke-static {}, LRC0;->a()LRC0;

    move-result-object v2

    .line 15
    iget-wide v6, v2, LRC0;->a:J

    .line 16
    invoke-static {v6, v7, v2, v0}, LJ/N;->Md_CUDy6(JLjava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    move-object v2, v0

    .line 17
    :cond_6
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 18
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->n()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v2}, LFO0;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_7
    move-object v0, v2

    .line 19
    :goto_1
    invoke-virtual {p0, v2, v0, v0}, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LNp0;

    move-result-object v0

    return-object v0

    .line 20
    :cond_8
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->n()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 21
    invoke-static {v0}, LFO0;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-virtual {p0, v0, v1, v1}, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LNp0;

    move-result-object v0

    return-object v0

    .line 23
    :cond_9
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->o()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 24
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->b:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->i()Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-static {v1}, LJ/N;->M5yzUycr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-static {v1}, LFO0;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 27
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->b:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-static {v2}, Lmn0;->c(Lorg/chromium/chrome/browser/tab/Tab;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 28
    invoke-virtual {p0, v0, v1, v5}, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LNp0;

    move-result-object v0

    return-object v0

    .line 29
    :cond_a
    invoke-virtual {p0, v0, v1, v1}, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LNp0;

    move-result-object v0

    return-object v0

    .line 30
    :cond_b
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 31
    invoke-virtual {p0, v0, v2, v2}, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LNp0;

    move-result-object v0

    return-object v0

    .line 32
    :cond_c
    iget-wide v6, p0, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->f:J

    cmp-long v2, v6, v3

    if-nez v2, :cond_d

    goto :goto_2

    .line 33
    :cond_d
    invoke-static {v6, v7, p0}, LJ/N;->Ml$ZWVQn(JLjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 34
    :goto_2
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 35
    invoke-virtual {p0, v0, v5, v1}, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LNp0;

    move-result-object v0

    return-object v0

    .line 36
    :cond_e
    invoke-virtual {p0, v0, v1, v1}, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LNp0;

    move-result-object v0

    return-object v0

    .line 37
    :cond_f
    :goto_3
    sget-object v0, LNp0;->h:LNp0;

    return-object v0
.end method

.method public n()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->b:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->b:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-static {v0}, Lmn0;->b(Lorg/chromium/chrome/browser/tab/Tab;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public p()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->k()I

    move-result v0

    .line 2
    iget v1, p0, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->c:I

    .line 3
    invoke-static {v1}, LAO0;->d(I)Z

    move-result v1

    .line 4
    iget-boolean v2, p0, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->d:Z

    if-nez v2, :cond_7

    if-eqz v1, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f0600f4

    return v0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->h()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->q()Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "OmniboxUIExperimentHideSteadyStateUrlScheme"

    .line 7
    invoke-static {v1}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "OmniboxUIExperimentHideSteadyStateUrlTrivialSubdomains"

    .line 8
    invoke-static {v1}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    const v0, 0x7f0600dc

    return v0

    .line 9
    :cond_3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->b()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    :cond_4
    const v0, 0x7f0600d9

    return v0

    .line 10
    :cond_5
    invoke-static {v2}, LAO0;->b(Z)I

    move-result v0

    return v0

    .line 11
    :cond_6
    :goto_0
    invoke-static {v2}, LAO0;->b(Z)I

    move-result v0

    return v0

    :cond_7
    :goto_1
    const/4 v0, 0x1

    .line 12
    invoke-static {v0}, LAO0;->b(Z)I

    move-result v0

    return v0
.end method

.method public q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final r()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->d:Z

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->c:I

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->a:Landroid/content/Context;

    .line 3
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 4
    iget-boolean v2, p0, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->d:Z

    .line 5
    invoke-static {v1, v2}, LAO0;->a(Landroid/content/res/Resources;Z)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 6
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->b:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->isNativePage()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->e:Z

    return-void
.end method
