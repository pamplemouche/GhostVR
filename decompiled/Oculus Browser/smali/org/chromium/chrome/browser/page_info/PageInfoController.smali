.class public Lorg/chromium/chrome/browser/page_info/PageInfoController;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LDd1;
.implements Let0;


# instance fields
.field public A:J

.field public B:LZs0;

.field public final C:LWs0;

.field public D:Ljava/lang/String;

.field public E:Z

.field public F:I

.field public G:Ljava/lang/String;

.field public H:I

.field public I:I

.field public J:Ljava/lang/String;

.field public K:Lg11;

.field public L:Ljava/lang/Runnable;

.field public final w:Landroid/content/Context;

.field public final x:Lorg/chromium/ui/base/WindowAndroid;

.field public final y:Lorg/chromium/chrome/browser/tab/Tab;

.field public final z:Ldt0;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lorg/chromium/chrome/browser/tab/Tab;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->w:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->y:Lorg/chromium/chrome/browser/tab/Tab;

    .line 4
    iput p3, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->F:I

    .line 5
    iput p6, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->I:I

    .line 6
    iput p7, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->H:I

    .line 7
    new-instance p1, LXs0;

    invoke-direct {p1}, LXs0;-><init>()V

    .line 8
    iget p2, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->I:I

    const/4 p3, 0x1

    if-eq p2, p3, :cond_0

    .line 9
    iput-object p5, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->G:Ljava/lang/String;

    .line 10
    :cond_0
    iget-object p2, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->y:Lorg/chromium/chrome/browser/tab/Tab;

    .line 11
    iget-object p2, p2, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 12
    invoke-interface {p2}, Lorg/chromium/content_public/browser/WebContents;->t()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object p2

    iput-object p2, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->x:Lorg/chromium/ui/base/WindowAndroid;

    .line 13
    iput-object p8, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->J:Ljava/lang/String;

    .line 14
    new-instance p2, LBs0;

    invoke-direct {p2, p0}, LBs0;-><init>(Lorg/chromium/chrome/browser/page_info/PageInfoController;)V

    iput-object p2, p1, LXs0;->h:Ljava/lang/Runnable;

    .line 15
    new-instance p2, LGs0;

    invoke-direct {p2, p0}, LGs0;-><init>(Lorg/chromium/chrome/browser/page_info/PageInfoController;)V

    iput-object p2, p1, LXs0;->i:Ljava/lang/Runnable;

    .line 16
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/page_info/PageInfoController;->c()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->y:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/tab/Tab;->i()Ljava/lang/String;

    move-result-object p4

    :goto_0
    iput-object p4, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->D:Ljava/lang/String;

    const-string p2, ""

    if-nez p4, :cond_2

    .line 17
    iput-object p2, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->D:Ljava/lang/String;

    .line 18
    :cond_2
    :try_start_0
    new-instance p4, Ljava/net/URI;

    iget-object p5, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->D:Ljava/lang/String;

    invoke-direct {p4, p5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 19
    sget-object p5, LFO0;->a:Ljava/util/HashSet;

    invoke-virtual {p4}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p5, p4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p4

    .line 20
    iput-boolean p4, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->E:Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 21
    :goto_1
    iget-object p4, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->D:Ljava/lang/String;

    .line 22
    invoke-static {p4}, LJ/N;->MWcP3rTG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 23
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/page_info/PageInfoController;->c()Z

    move-result p5

    if-eqz p5, :cond_3

    .line 24
    iget-object p4, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->D:Ljava/lang/String;

    invoke-static {p4}, LFO0;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 25
    :cond_3
    new-instance p5, Landroid/text/SpannableStringBuilder;

    invoke-direct {p5, p4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 26
    iget p4, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->F:I

    const/4 p6, 0x3

    const/4 p7, 0x0

    if-ne p4, p6, :cond_4

    .line 27
    iget-object p4, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->y:Lorg/chromium/chrome/browser/tab/Tab;

    .line 28
    invoke-virtual {p4}, Lorg/chromium/chrome/browser/tab/Tab;->j()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object p4

    invoke-virtual {p5}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p8

    .line 29
    invoke-static {p4, p8}, Lwp0;->a(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;)Lup0;

    move-result-object p4

    .line 30
    iget p8, p4, Lup0;->b:I

    if-lez p8, :cond_4

    .line 31
    new-instance p8, Landroid/text/style/TextAppearanceSpan;

    iget-object v0, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->w:Landroid/content/Context;

    const v1, 0x7f140213

    invoke-direct {p8, v0, v1}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iget p4, p4, Lup0;->b:I

    const/16 v0, 0x22

    invoke-virtual {p5, p8, p7, p4, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 32
    :cond_4
    iget-object p4, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->y:Lorg/chromium/chrome/browser/tab/Tab;

    .line 33
    invoke-virtual {p4}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object p4

    invoke-virtual {p4}, LOY;->H()LIl0;

    move-result-object p4

    invoke-interface {p4}, LIl0;->b()Z

    move-result p4

    xor-int/lit8 v5, p4, 0x1

    .line 34
    iget-object p4, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->w:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object p4, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->y:Lorg/chromium/chrome/browser/tab/Tab;

    .line 35
    invoke-virtual {p4}, Lorg/chromium/chrome/browser/tab/Tab;->j()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v2

    iget v3, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->F:I

    iget-boolean v4, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->E:Z

    const/4 v6, 0x1

    move-object v0, p5

    .line 36
    invoke-static/range {v0 .. v6}, Lwp0;->a(Landroid/text/Spannable;Landroid/content/res/Resources;Lorg/chromium/chrome/browser/profiles/Profile;IZZZ)V

    .line 37
    iput-object p5, p1, LXs0;->n:Ljava/lang/CharSequence;

    .line 38
    invoke-virtual {p5}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    iget-object p5, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->y:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {p5}, Lorg/chromium/chrome/browser/tab/Tab;->j()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object p5

    .line 39
    invoke-virtual {p4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p8

    invoke-static {p5, p8}, Lwp0;->a(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;)Lup0;

    move-result-object p5

    .line 40
    invoke-virtual {p5}, Lup0;->a()Z

    move-result p8

    const-string v0, "https"

    const-string v1, "http"

    if-nez p8, :cond_5

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    goto :goto_3

    .line 41
    :cond_5
    invoke-virtual {p5, p4}, Lup0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p8

    .line 42
    invoke-virtual {p8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {p8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    const-string p5, "data"

    .line 43
    invoke-virtual {p8, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_7

    const/4 p4, 0x0

    goto :goto_3

    .line 44
    :cond_7
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    goto :goto_3

    .line 45
    :cond_8
    :goto_2
    iget p4, p5, Lup0;->c:I

    iget p5, p5, Lup0;->d:I

    add-int/2addr p4, p5

    .line 46
    :goto_3
    iput p4, p1, LXs0;->q:I

    .line 47
    iget-object p4, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->y:Lorg/chromium/chrome/browser/tab/Tab;

    .line 48
    invoke-static {p4}, Lmn0;->a(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;

    move-result-object p5

    if-eqz p5, :cond_9

    const/4 p5, 0x1

    goto :goto_4

    :cond_9
    const/4 p5, 0x0

    .line 49
    :goto_4
    invoke-static {}, LRC0;->a()LRC0;

    move-result-object p8

    .line 50
    iget-object v2, p4, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 51
    invoke-virtual {p8, v2}, LRC0;->b(Lorg/chromium/content_public/browser/WebContents;)Z

    move-result p8

    .line 52
    invoke-virtual {p4}, Lorg/chromium/chrome/browser/tab/Tab;->i()Ljava/lang/String;

    move-result-object p4

    .line 53
    invoke-static {p4}, LJ/N;->M$mITdbo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    if-nez p5, :cond_b

    if-nez p8, :cond_b

    .line 54
    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_a

    .line 55
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_b

    :cond_a
    const/4 p4, 0x1

    goto :goto_5

    :cond_b
    const/4 p4, 0x0

    :goto_5
    if-eqz p4, :cond_c

    .line 56
    new-instance p4, LHs0;

    invoke-direct {p4, p0}, LHs0;-><init>(Lorg/chromium/chrome/browser/page_info/PageInfoController;)V

    iput-object p4, p1, LXs0;->k:Ljava/lang/Runnable;

    goto :goto_6

    .line 57
    :cond_c
    iput-boolean p7, p1, LXs0;->d:Z

    .line 58
    :goto_6
    invoke-static {}, LRC0;->a()LRC0;

    move-result-object p4

    .line 59
    iget p5, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->H:I

    if-ne p5, p6, :cond_d

    const/4 p5, 0x1

    goto :goto_7

    :cond_d
    const/4 p5, 0x0

    :goto_7
    iput-boolean p5, p1, LXs0;->g:Z

    .line 60
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/page_info/PageInfoController;->d()Z

    move-result p5

    iput-boolean p5, p1, LXs0;->f:Z

    .line 61
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/page_info/PageInfoController;->d()Z

    move-result p5

    const/4 p6, 0x0

    if-eqz p5, :cond_10

    .line 62
    iput-boolean p7, p1, LXs0;->a:Z

    .line 63
    iput-boolean p7, p1, LXs0;->b:Z

    .line 64
    new-instance p5, LKs0;

    invoke-direct {p5, p0, p4}, LKs0;-><init>(Lorg/chromium/chrome/browser/page_info/PageInfoController;LRC0;)V

    iput-object p5, p1, LXs0;->m:Ljava/lang/Runnable;

    .line 65
    iget-object p5, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->y:Lorg/chromium/chrome/browser/tab/Tab;

    .line 66
    iget-object p5, p5, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 67
    invoke-interface {p5}, Lorg/chromium/content_public/browser/WebContents;->j()Ljava/lang/String;

    move-result-object p5

    if-eqz p4, :cond_f

    .line 68
    :try_start_1
    new-instance p8, Ljava/net/URI;

    .line 69
    iget-wide v0, p4, LRC0;->a:J

    .line 70
    invoke-static {v0, v1, p4, p5}, LJ/N;->Md_CUDy6(JLjava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    goto :goto_8

    :cond_e
    move-object p5, v0

    .line 71
    :goto_8
    invoke-direct {p8, p5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {p8}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p2
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    .line 72
    :catch_1
    iget-object p5, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->w:Landroid/content/Context;

    const p8, 0x7f130472

    new-array v0, p3, [Ljava/lang/Object;

    aput-object p2, v0, p7

    invoke-virtual {p5, p8, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-array p3, p3, [LWe1;

    .line 73
    new-instance p5, LWe1;

    new-instance p8, LVe1;

    iget-object v0, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->w:Landroid/content/Context;

    .line 74
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, LLs0;->a:Lorg/chromium/base/Callback;

    invoke-direct {p8, v0, v1}, LVe1;-><init>(Landroid/content/res/Resources;Lorg/chromium/base/Callback;)V

    const-string v0, "<link>"

    const-string v1, "</link>"

    invoke-direct {p5, v0, v1, p8}, LWe1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    aput-object p5, p3, p7

    .line 75
    invoke-static {p2, p3}, LXe1;->a(Ljava/lang/String;[LWe1;)Landroid/text/SpannableString;

    move-result-object p2

    .line 76
    iput-object p2, p1, LXs0;->o:Ljava/lang/CharSequence;

    .line 77
    iget-object p2, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->y:Lorg/chromium/chrome/browser/tab/Tab;

    .line 78
    iget-object p2, p2, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 79
    iget-wide v0, p4, LRC0;->a:J

    .line 80
    invoke-static {v0, v1, p4, p2}, LJ/N;->MLFrTUbq(JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 81
    iput-object p2, p1, LXs0;->p:Ljava/lang/CharSequence;

    goto :goto_9

    .line 82
    :cond_f
    throw p6

    .line 83
    :cond_10
    :goto_9
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/page_info/PageInfoController;->c()Z

    move-result p2

    if-eqz p2, :cond_11

    invoke-static {}, Lmn0;->b()Z

    move-result p2

    if-eqz p2, :cond_11

    .line 84
    new-instance p2, LIs0;

    invoke-direct {p2, p0}, LIs0;-><init>(Lorg/chromium/chrome/browser/page_info/PageInfoController;)V

    iput-object p2, p1, LXs0;->l:Ljava/lang/Runnable;

    goto :goto_a

    .line 85
    :cond_11
    iput-boolean p7, p1, LXs0;->e:Z

    .line 86
    :goto_a
    invoke-static {}, LSh0;->a()LSh0;

    move-result-object p2

    .line 87
    iget-boolean p3, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->E:Z

    if-nez p3, :cond_13

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/page_info/PageInfoController;->c()Z

    move-result p3

    if-nez p3, :cond_13

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/page_info/PageInfoController;->d()Z

    move-result p3

    if-nez p3, :cond_13

    if-eqz p2, :cond_12

    goto :goto_b

    .line 88
    :cond_12
    throw p6

    .line 89
    :cond_13
    :goto_b
    iput-boolean p7, p1, LXs0;->c:Z

    .line 90
    new-instance p2, LZs0;

    iget-object p3, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->w:Landroid/content/Context;

    invoke-direct {p2, p3, p1}, LZs0;-><init>(Landroid/content/Context;LXs0;)V

    iput-object p2, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->B:LZs0;

    .line 91
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/page_info/PageInfoController;->b()Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->B:LZs0;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 92
    :cond_14
    new-instance p1, Ldt0;

    iget-object v1, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->w:Landroid/content/Context;

    iget-object v2, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->x:Lorg/chromium/ui/base/WindowAndroid;

    iget-object v3, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->D:Ljava/lang/String;

    iget-object p2, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->B:LZs0;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    new-instance v5, LJs0;

    invoke-direct {v5, p2}, LJs0;-><init>(LZs0;)V

    move-object v0, p1

    move-object v4, p0

    .line 94
    invoke-direct/range {v0 .. v5}, Ldt0;-><init>(Landroid/content/Context;LEc1;Ljava/lang/String;Let0;Lorg/chromium/base/Callback;)V

    iput-object p1, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->z:Ldt0;

    .line 95
    iget-object p1, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->y:Lorg/chromium/chrome/browser/tab/Tab;

    .line 96
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 97
    invoke-static {p0, p1}, LJ/N;->Mi71ivGE(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide p1

    .line 98
    iput-wide p1, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->A:J

    .line 99
    new-instance p1, LOs0;

    iget-object p2, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->y:Lorg/chromium/chrome/browser/tab/Tab;

    .line 100
    iget-object p2, p2, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 101
    invoke-direct {p1, p0, p2}, LOs0;-><init>(Lorg/chromium/chrome/browser/page_info/PageInfoController;Lorg/chromium/content_public/browser/WebContents;)V

    iput-object p1, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->K:Lg11;

    .line 102
    new-instance p1, LWs0;

    iget-object v1, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->w:Landroid/content/Context;

    iget-object v2, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->B:LZs0;

    iget-object p2, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->y:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/tab/Tab;->n()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/page_info/PageInfoController;->b()Z

    move-result v4

    iget-object p2, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->y:Lorg/chromium/chrome/browser/tab/Tab;

    .line 103
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object p2

    invoke-virtual {p2}, LBg0;->o()LBd1;

    move-result-object v5

    move-object v0, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, LWs0;-><init>(Landroid/content/Context;LZs0;Landroid/view/View;ZLBd1;LDd1;)V

    iput-object p1, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->C:LWs0;

    .line 104
    iget-boolean p2, p1, LWs0;->b:Z

    if-eqz p2, :cond_15

    .line 105
    iget-object p1, p1, LWs0;->c:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_c

    .line 106
    :cond_15
    iget-object p2, p1, LWs0;->e:LBd1;

    iget-object p1, p1, LWs0;->d:Lle1;

    .line 107
    invoke-virtual {p2, p1, p7, p7}, LBd1;->a(Lle1;IZ)V

    :goto_c
    return-void
.end method

.method public static a(Landroid/app/Activity;Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;I)V
    .locals 12

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 13
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, LA7;->t(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p3, v2, :cond_1

    const-string p3, "MobileWebsiteSettingsOpenedFromMenu"

    .line 14
    invoke-static {p3}, LhV;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-ne p3, v1, :cond_2

    const-string p3, "MobileWebsiteSettingsOpenedFromToolbar"

    .line 15
    invoke-static {p3}, LhV;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-ne p3, v0, :cond_3

    const-string p3, "MobileWebsiteSettingsOpenedFromVR"

    .line 16
    invoke-static {p3}, LhV;->a(Ljava/lang/String;)V

    .line 17
    :cond_3
    :goto_0
    iget-object p3, p1, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 18
    invoke-static {p3}, LfG0;->a(Lorg/chromium/content_public/browser/WebContents;)I

    move-result v6

    .line 19
    invoke-static {}, LRC0;->a()LRC0;

    move-result-object p3

    .line 20
    iget-object v3, p1, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 21
    invoke-virtual {p3, v3}, LRC0;->b(Lorg/chromium/content_public/browser/WebContents;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-ne v6, v0, :cond_4

    const/4 v3, 0x2

    goto :goto_1

    :cond_4
    const/4 v3, 0x3

    .line 22
    :goto_1
    iget-object v4, p1, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 23
    invoke-virtual {p3, v4}, LRC0;->a(Lorg/chromium/content_public/browser/WebContents;)Ljava/lang/String;

    move-result-object p3

    .line 24
    invoke-static {p3, v2}, LSC0;->a(Ljava/lang/String;I)V

    .line 25
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object p3

    invoke-static {p3}, LJa0;->a(Lorg/chromium/chrome/browser/profiles/Profile;)LoT0;

    move-result-object p3

    const-string v4, "previews_verbose_status_opened"

    .line 26
    invoke-interface {p3, v4}, LoT0;->c(Ljava/lang/String;)V

    move v10, v3

    goto :goto_2

    :cond_5
    const/4 v10, 0x1

    .line 27
    :goto_2
    invoke-static {p1}, Lmn0;->a(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;

    move-result-object p3

    const/4 v3, 0x0

    if-eqz p3, :cond_8

    .line 28
    iget-object v2, p3, Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;->a:Ljava/lang/String;

    .line 29
    invoke-static {p1}, Lmn0;->c(Lorg/chromium/chrome/browser/tab/Tab;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v0, 0x2

    .line 30
    :cond_6
    iget-wide v4, p3, Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;->g:J

    const-wide/16 v7, 0x0

    cmp-long v9, v4, v7

    if-eqz v9, :cond_7

    .line 31
    new-instance v3, Ljava/util/Date;

    .line 32
    iget-wide v4, p3, Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;->g:J

    .line 33
    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 34
    invoke-static {v1}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object p3

    .line 35
    invoke-virtual {p3, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p3

    move-object v8, p3

    move v9, v0

    move-object v7, v2

    goto :goto_3

    :cond_7
    move v9, v0

    move-object v7, v2

    move-object v8, v3

    goto :goto_3

    :cond_8
    move-object v7, v3

    move-object v8, v7

    const/4 v9, 0x1

    .line 36
    :goto_3
    new-instance v3, Lorg/chromium/chrome/browser/page_info/PageInfoController;

    move-object v4, p0

    move-object v5, p1

    move-object v11, p2

    invoke-direct/range {v3 .. v11}, Lorg/chromium/chrome/browser/page_info/PageInfoController;-><init>(Landroid/app/Activity;Lorg/chromium/chrome/browser/tab/Tab;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    :cond_9
    :goto_4
    return-void
.end method

.method private addPermissionSection(Ljava/lang/String;II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->z:Ldt0;

    .line 2
    iget-object v0, v0, Ldt0;->a:Ljava/util/List;

    new-instance v1, Lct0;

    invoke-direct {v1, p1, p2, p3}, Lct0;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private setSecurityDescription(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->J:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 3
    iget-object p1, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->w:Landroid/content/Context;

    const p2, 0x7f130468

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v4

    .line 4
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_0
    :goto_0
    move-object p1, v3

    goto :goto_2

    .line 6
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/page_info/PageInfoController;->d()Z

    move-result v1

    const/4 v5, 0x3

    if-eqz v1, :cond_2

    .line 7
    iget p2, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->H:I

    if-ne p2, v5, :cond_0

    goto :goto_2

    .line 8
    :cond_2
    iget v1, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->I:I

    const/4 v6, 0x2

    if-ne v1, v6, :cond_3

    .line 9
    iget-object p1, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->w:Landroid/content/Context;

    const p2, 0x7f130467

    .line 10
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->G:Ljava/lang/String;

    aput-object v1, p2, v4

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    :cond_3
    if-ne v1, v5, :cond_5

    .line 12
    iget-object p1, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->G:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 13
    iget-object p1, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->w:Landroid/content/Context;

    const p2, 0x7f13046d

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 14
    :cond_4
    iget-object p1, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->w:Landroid/content/Context;

    const p2, 0x7f13046c

    .line 15
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->G:Ljava/lang/String;

    aput-object v1, p2, v4

    .line 16
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 17
    :cond_5
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_1

    :cond_6
    move-object p1, v3

    .line 18
    :goto_1
    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 19
    :goto_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/page_info/PageInfoController;->a()Z

    move-result p2

    if-eqz p2, :cond_7

    const-string p2, " "

    .line 20
    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 21
    new-instance p2, Landroid/text/SpannableString;

    iget-object v1, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->w:Landroid/content/Context;

    const v2, 0x7f13029d

    .line 22
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 23
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget-object v2, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->w:Landroid/content/Context;

    .line 24
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f060093

    .line 25
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 26
    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 27
    invoke-virtual {p2}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/16 v5, 0x11

    .line 28
    invoke-virtual {p2, v1, v4, v2, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 29
    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 30
    :cond_7
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    if-lez p2, :cond_8

    goto :goto_3

    :cond_8
    move-object v0, v3

    .line 31
    :goto_3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/page_info/PageInfoController;->a()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 32
    new-instance p2, LMs0;

    invoke-direct {p2, p0}, LMs0;-><init>(Lorg/chromium/chrome/browser/page_info/PageInfoController;)V

    goto :goto_4

    :cond_9
    move-object p2, v3

    .line 33
    :goto_4
    iget-object v1, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->B:LZs0;

    if-eqz v1, :cond_c

    if-eqz p1, :cond_a

    .line 34
    iget-object v2, v1, LZs0;->x:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 35
    iget-object v2, v1, LZs0;->x:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    if-eqz v0, :cond_b

    .line 36
    iget-object p1, v1, LZs0;->y:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 37
    iget-object p1, v1, LZs0;->y:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_b

    .line 38
    iget-object p1, v1, LZs0;->y:Landroid/widget/TextView;

    const v0, 0x7f0b0305

    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 39
    iget-object p1, v1, LZs0;->y:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    return-void

    .line 40
    :cond_c
    throw v3
.end method

.method private updatePermissionDisplay()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->B:LZs0;

    iget-object v1, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->z:Ldt0;

    invoke-virtual {v1}, Ldt0;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LZs0;->a(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 1

    .line 2
    new-instance v0, LNs0;

    invoke-direct {v0, p0, p1}, LNs0;-><init>(Lorg/chromium/chrome/browser/page_info/PageInfoController;Landroid/content/Intent;)V

    .line 3
    iput-object v0, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->L:Ljava/lang/Runnable;

    .line 4
    iget-object p1, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->C:LWs0;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, LWs0;->a(Z)V

    return-void
.end method

.method public a(Lle1;I)V
    .locals 0

    .line 5
    iget-object p1, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->L:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->L:Ljava/lang/Runnable;

    .line 8
    :cond_0
    iget-object p1, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->K:Lg11;

    invoke-virtual {p1}, Lg11;->destroy()V

    .line 9
    iget-wide p1, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->A:J

    .line 10
    invoke-static {p1, p2, p0}, LJ/N;->MP$mkR42(JLjava/lang/Object;)V

    const-wide/16 p1, 0x0

    .line 11
    iput-wide p1, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->A:J

    return-void
.end method

.method public final a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->J:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/page_info/PageInfoController;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/page_info/PageInfoController;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->E:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b(Lle1;I)V
    .locals 0

    return-void
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->w:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/ui/base/DeviceFormFactor;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lorg/chromium/chrome/browser/vr/VrModuleProvider;->a()LJO0;

    move-result-object v0

    check-cast v0, LKO0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    throw v0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final c()Z
    .locals 2

    .line 1
    iget v0, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->I:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/page_info/PageInfoController;->d()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final d()Z
    .locals 2

    .line 1
    iget v0, p0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->H:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
