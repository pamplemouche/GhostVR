.class public Lf50;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LV01;


# instance fields
.field public final synthetic a:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;LZ40;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf50;->a:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LW01;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(IFF)V
    .locals 9

    .line 3
    iget-object v0, p0, Lf50;->a:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    .line 4
    iget-object v0, v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->b:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->A0()Lbd0;

    move-result-object v0

    invoke-virtual {v0}, Lkd0;->isOverlayVideoMode()Z

    move-result v0

    if-nez v0, :cond_5

    .line 5
    iget-object v0, p0, Lf50;->a:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    .line 6
    iget-object v0, v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->f:Lo50;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iput-boolean v2, v0, Lo50;->r:Z

    goto :goto_1

    .line 8
    :cond_1
    iput-boolean v3, v0, Lo50;->s:Z

    .line 9
    iget-object p1, v0, Lo50;->b:Lp50;

    invoke-interface {p1}, Lp50;->f()V

    .line 10
    invoke-virtual {v0}, Lo50;->c()V

    :goto_0
    const/4 v2, 0x0

    goto :goto_1

    .line 11
    :cond_2
    iput-boolean v2, v0, Lo50;->s:Z

    .line 12
    iput-boolean v3, v0, Lo50;->g:Z

    const-string p1, "ContextualSearchLongpressResolve"

    .line 13
    invoke-static {p1}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x3

    .line 14
    :cond_3
    iput v1, v0, Lo50;->f:I

    .line 15
    invoke-virtual {v0}, Lo50;->b()LX01;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 16
    invoke-interface {p1}, LX01;->g()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lo50;->e:Ljava/lang/String;

    .line 17
    :cond_4
    iput-boolean v3, v0, Lo50;->r:Z

    .line 18
    :goto_1
    iput p2, v0, Lo50;->j:F

    .line 19
    iput p3, v0, Lo50;->k:F

    if-eqz v2, :cond_5

    .line 20
    iget-object v4, v0, Lo50;->e:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 21
    iget v6, v0, Lo50;->f:I

    .line 22
    invoke-virtual {v0, v4}, Lo50;->a(Ljava/lang/String;)Z

    move-result v5

    .line 23
    iget-object v3, v0, Lo50;->b:Lp50;

    iget v7, v0, Lo50;->j:F

    iget v8, v0, Lo50;->k:F

    invoke-interface/range {v3 .. v8}, Lp50;->a(Ljava/lang/String;ZIFF)V

    :cond_5
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lf50;->a:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    .line 2
    iget-object p1, p1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->b:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ChromeActivity;->A0()Lbd0;

    move-result-object p1

    invoke-virtual {p1}, Lkd0;->isOverlayVideoMode()Z

    return-void
.end method

.method public a(ZII)V
    .locals 2

    .line 24
    iget-object v0, p0, Lf50;->a:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    .line 25
    iget v1, v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->p:I

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 26
    iput v1, v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->p:I

    .line 27
    :cond_0
    iget-object v0, p0, Lf50;->a:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    .line 28
    iget v1, v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->p:I

    if-gtz v1, :cond_6

    .line 29
    iget-object v0, v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->i:LX40;

    const/16 v1, 0xb

    .line 30
    invoke-virtual {v0, v1}, LX40;->b(I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_5

    .line 31
    iget-object p1, p0, Lf50;->a:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    .line 32
    iget-object p1, p1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->m:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;

    .line 33
    invoke-virtual {p1, p2, p3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->a(II)V

    .line 34
    iget-object p1, p0, Lf50;->a:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    .line 35
    iget-object p1, p1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->m:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;

    .line 36
    iget-object p2, p1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->c:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    iget p2, p1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->e:I

    iget p3, p1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->d:I

    if-lt p2, p3, :cond_3

    if-ltz p3, :cond_3

    iget-object p3, p1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->c:Ljava/lang/String;

    .line 37
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-le p2, p3, :cond_2

    goto :goto_0

    .line 38
    :cond_2
    iget-object p2, p1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->c:Ljava/lang/String;

    iget p3, p1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->d:I

    iget p1, p1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->e:I

    invoke-virtual {p2, p3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    :goto_0
    const-string p1, ""

    .line 39
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 40
    iget-object p2, p0, Lf50;->a:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    .line 41
    iget-object p2, p2, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->f:Lo50;

    .line 42
    iput-object p1, p2, Lo50;->e:Ljava/lang/String;

    .line 43
    :cond_4
    iget-object p1, p0, Lf50;->a:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    .line 44
    iget-object p2, p1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->f:Lo50;

    .line 45
    iget-object p2, p2, Lo50;->e:Ljava/lang/String;

    .line 46
    iget-object p1, p1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->i:LX40;

    .line 47
    invoke-virtual {p1, v1}, LX40;->c(I)V

    goto :goto_2

    .line 48
    :cond_5
    iget-object p1, p0, Lf50;->a:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->a(I)V

    :cond_6
    :goto_2
    return-void
.end method

.method public a(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .locals 0

    return-void
.end method
