.class public Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lu50;
.implements Lh50;
.implements Lp50;


# static fields
.field public static final q:Ljava/util/regex/Pattern;


# instance fields
.field public final a:LWT;

.field public final b:Lorg/chromium/chrome/browser/ChromeActivity;

.field public final c:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

.field public final d:LW40;

.field public final e:Lf50;

.field public f:Lo50;

.field public g:Lh50;

.field public h:Lj50;

.field public i:LX40;

.field public j:Lv50;

.field public k:J

.field public l:LS40;

.field public m:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;

.field public n:Z

.field public o:LD50;

.field public p:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "\\s"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->q:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/ChromeActivity;Lg50;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p2, LWT;

    invoke-direct {p2}, LWT;-><init>()V

    iput-object p2, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->a:LWT;

    .line 3
    iput-object p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->b:Lorg/chromium/chrome/browser/ChromeActivity;

    const p2, 0x7f0b0117

    .line 4
    invoke-virtual {p1, p2}, LQ8;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 5
    new-instance v0, LZ40;

    invoke-direct {v0, p0, p2}, LZ40;-><init>(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;Landroid/view/View;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->c:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    .line 6
    new-instance p2, Lo50;

    invoke-direct {p2, p1, p0}, Lo50;-><init>(Lorg/chromium/chrome/browser/ChromeActivity;Lp50;)V

    iput-object p2, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->f:Lo50;

    .line 7
    iput-object p0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->g:Lh50;

    .line 8
    new-instance p1, Lj50;

    iget-object p2, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->f:Lo50;

    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->g:Lh50;

    invoke-direct {p1, p2, v0}, Lj50;-><init>(Lo50;Lh50;)V

    iput-object p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->h:Lj50;

    const-string p2, "ContextualSearchTranslationModel"

    .line 9
    invoke-static {p2}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 10
    invoke-virtual {p1}, Lj50;->b()Z

    move-result p2

    if-nez p2, :cond_0

    .line 11
    new-instance p2, Lx50;

    invoke-direct {p2, p1}, Lx50;-><init>(Lj50;)V

    goto :goto_0

    .line 12
    :cond_0
    new-instance p2, Lt50;

    invoke-direct {p2, p1, p0}, Lt50;-><init>(Lj50;Lu50;)V

    .line 13
    :goto_0
    iput-object p2, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->j:Lv50;

    .line 14
    new-instance p1, LX40;

    iget-object p2, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->h:Lj50;

    .line 15
    new-instance v0, Le50;

    invoke-direct {v0, p0}, Le50;-><init>(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;)V

    .line 16
    invoke-direct {p1, p2, v0}, LX40;-><init>(Lj50;LY40;)V

    iput-object p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->i:LX40;

    .line 17
    new-instance p1, Lk50;

    invoke-direct {p1}, Lk50;-><init>()V

    iput-object p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->d:LW40;

    .line 18
    new-instance p1, Lf50;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lf50;-><init>(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;LZ40;)V

    iput-object p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->e:Lf50;

    .line 19
    new-instance p1, LS40;

    invoke-direct {p1}, LS40;-><init>()V

    iput-object p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->l:LS40;

    return-void
.end method

.method public static synthetic a(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->k()V

    return-void
.end method

.method public static synthetic b(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;)Lorg/chromium/content_public/browser/WebContents;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->l()Lorg/chromium/content_public/browser/WebContents;

    move-result-object p0

    return-object p0
.end method

.method private onChangeOverlayPosition(I)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    throw p1
.end method

.method private onSetCaption(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 38
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->f:Lo50;

    .line 39
    iget v0, v0, Lo50;->f:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 40
    throw v0
.end method

.method public a(I)V
    .locals 1

    .line 4
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->i:LX40;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, LX40;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method public a(J)V
    .locals 6

    .line 41
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->n:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 42
    invoke-static {v0}, LP40;->b(I)I

    move-result v1

    const-wide/16 v2, 0x0

    if-lez v1, :cond_1

    cmp-long v1, p1, v2

    if-lez v1, :cond_1

    .line 43
    invoke-static {v0}, LP40;->b(I)I

    move-result v0

    int-to-long v0, v0

    .line 44
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, p1

    const-wide/32 p1, 0xf4240

    div-long/2addr v4, p1

    sub-long p1, v0, v4

    goto :goto_0

    :cond_1
    move-wide p1, v2

    :goto_0
    cmp-long v0, p1, v2

    if-gtz v0, :cond_2

    .line 45
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->k()V

    goto :goto_1

    .line 46
    :cond_2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, La50;

    invoke-direct {v1, p0}, La50;-><init>(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void
.end method

.method public a(LF50;)V
    .locals 3

    .line 18
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->i:LX40;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, LX40;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 19
    :cond_0
    iget-boolean v0, p1, LF50;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 20
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->b:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, LQ8;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f130254

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    goto :goto_2

    .line 21
    :cond_1
    iget v0, p1, LF50;->b:I

    if-lez v0, :cond_3

    const/16 v2, 0x190

    if-lt v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_4

    .line 22
    iget-object v0, p1, LF50;->d:Ljava/lang/String;

    .line 23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 24
    iget-object v0, p1, LF50;->d:Ljava/lang/String;

    goto :goto_2

    .line 25
    :cond_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->h:Lj50;

    if-eqz v0, :cond_6

    .line 26
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->f:Lo50;

    .line 27
    iget-object v0, v0, Lo50;->e:Ljava/lang/String;

    .line 28
    :goto_2
    iget-object v0, p1, LF50;->l:Ljava/lang/String;

    .line 29
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 30
    iget-object v0, p1, LF50;->k:Ljava/lang/String;

    .line 31
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    :cond_5
    iget-object v0, p1, LF50;->k:Ljava/lang/String;

    .line 33
    iget-object v0, p1, LF50;->m:Ljava/lang/String;

    .line 34
    iget v0, p1, LF50;->n:I

    .line 35
    iget p1, p1, LF50;->r:I

    .line 36
    throw v1

    .line 37
    :cond_6
    throw v1
.end method

.method public a(LR40;)V
    .locals 0

    .line 2
    iget-object p1, p1, LR40;->b:LD50;

    .line 3
    iput-object p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->o:LD50;

    return-void
.end method

.method public a(LW40;)V
    .locals 3

    .line 51
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->h:Lj50;

    invoke-virtual {v0}, Lj50;->c()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 52
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    check-cast p1, Lk50;

    const/16 v1, 0xc

    invoke-virtual {p1, v1, v0}, Lk50;->a(ILjava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->h:Lj50;

    .line 54
    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->f:Lo50;

    invoke-virtual {v1}, Lo50;->a()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-interface {v1}, Lorg/chromium/content_public/browser/WebContents;->j()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :goto_0
    const/4 v2, 0x0

    .line 56
    :goto_1
    invoke-virtual {v0, v2}, Lj50;->a(Ljava/net/URL;)Z

    move-result v0

    const/16 v1, 0x14

    .line 57
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lk50;->a(ILjava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->m:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;

    .line 59
    iget-object v1, v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->f:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 60
    iget-wide v1, v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->a:J

    .line 61
    invoke-static {v1, v2, v0}, LJ/N;->Mi_5NNCP(JLjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 62
    iput-object v1, v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->f:Ljava/lang/String;

    .line 63
    :cond_1
    iget-object v0, v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->f:Ljava/lang/String;

    .line 64
    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->j:Lv50;

    invoke-interface {v1, v0}, Lv50;->a(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x16

    .line 65
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 66
    invoke-virtual {p1, v1, v0}, Lk50;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 2

    .line 5
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->l()Lorg/chromium/content_public/browser/WebContents;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->m:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;

    if-eqz p1, :cond_2

    .line 7
    iget-boolean v1, p1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->b:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 8
    iget-object p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->m:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;

    .line 9
    iget-object p2, p1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->h:Ljava/lang/String;

    iput-object p2, p1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->c:Ljava/lang/String;

    .line 10
    iput v0, p1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->d:I

    .line 11
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    iput p2, p1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->e:I

    .line 12
    iget-wide v0, p1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->a:J

    .line 13
    invoke-static {v0, v1, p1}, LJ/N;->MoyK$JCa(JLjava/lang/Object;)V

    .line 14
    :cond_1
    iget-wide p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->k:J

    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->m:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;

    .line 15
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->l()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v1

    .line 16
    invoke-static {p1, p2, p0, v0, v1}, LJ/N;->MciyR$hg(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 17
    :cond_2
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->a(I)V

    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;ZIFF)V
    .locals 0

    .line 47
    iget-boolean p3, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->n:Z

    if-eqz p3, :cond_0

    return-void

    .line 48
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 49
    invoke-static {p2}, Lz50;->e(Z)V

    const/4 p1, 0x5

    .line 50
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->a(I)V

    :cond_1
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .line 2
    iget-wide v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->k:J

    .line 3
    invoke-static {v0, v1, p0}, LJ/N;->MFSDbCR_(JLjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->n:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x7

    .line 2
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->a(I)V

    return-void
.end method

.method public clearNativeManager()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->k:J

    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/net/NetworkChangeNotifier;->b()Z

    move-result v0

    return v0
.end method

.method public e()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->n:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x14

    .line 2
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->a(I)V

    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->n:Z

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->n:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->i:LX40;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, LX40;->a(I)V

    return-void
.end method

.method public h()Ljava/net/URL;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->l()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->f()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    return-object v1
.end method

.method public i()Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->k:J

    .line 2
    invoke-static {v0, v1, p0}, LJ/N;->MAPf_NIE(JLjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->n:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    .line 2
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->a(I)V

    return-void
.end method

.method public final k()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->i:LX40;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, LX40;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->i:LX40;

    invoke-virtual {v0, v1}, LX40;->c(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->d:LW40;

    check-cast v0, Lk50;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lk50;->b:Z

    .line 5
    iput-boolean v1, v0, Lk50;->d:Z

    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, Lk50;->f:Ljava/util/Map;

    .line 7
    iput-object v2, v0, Lk50;->c:Lorg/chromium/content_public/browser/WebContents;

    .line 8
    iput v1, v0, Lk50;->e:I

    :goto_0
    return-void
.end method

.method public final l()Lorg/chromium/content_public/browser/WebContents;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->f:Lo50;

    invoke-virtual {v0}, Lo50;->a()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    return-object v0
.end method

.method public onSearchTermResolutionResponse(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;I)V
    .locals 20

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move/from16 v14, p14

    move-wide/from16 v15, p15

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move/from16 v19, p19

    .line 1
    new-instance v0, LF50;

    move-object/from16 p1, v0

    invoke-direct/range {v0 .. v19}, LF50;-><init>(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->g:Lh50;

    move-object/from16 v2, p1

    invoke-interface {v1, v2}, Lh50;->a(LF50;)V

    return-void
.end method

.method public onTextSurroundingSelectionAvailable(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->i:LX40;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, LX40;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->i:LX40;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, LX40;->a(Ljava/lang/Integer;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->m:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;

    const/4 v7, 0x0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    .line 5
    invoke-virtual/range {v2 .. v7}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->a(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 6
    iget-object p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->i:LX40;

    invoke-virtual {p1, v1}, LX40;->c(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setNativeManager(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->k:J

    return-void
.end method
