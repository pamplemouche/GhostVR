.class public LNq0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;


# instance fields
.field public A:LSJ0;

.field public B:Z

.field public final w:Lorg/chromium/chrome/browser/omnibox/status/StatusView;

.field public final x:LFq0;

.field public final y:Lle1;

.field public final z:Z


# direct methods
.method public constructor <init>(ZLorg/chromium/chrome/browser/omnibox/status/StatusView;LOp0;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, LNq0;->z:Z

    .line 3
    iput-object p2, p0, LNq0;->w:Lorg/chromium/chrome/browser/omnibox/status/StatusView;

    .line 4
    sget-object p1, LGq0;->p:[LUd1;

    .line 5
    invoke-static {p1}, Lle1;->a([LUd1;)Ljava/util/Map;

    move-result-object p1

    .line 6
    sget-object p2, LGq0;->c:Lje1;

    const v0, 0x7f0600ac

    .line 7
    new-instance v1, LZd1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, LZd1;-><init>(LVd1;)V

    .line 8
    iput v0, v1, LZd1;->a:I

    .line 9
    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance p2, Lle1;

    invoke-direct {p2, p1, v2}, Lle1;-><init>(Ljava/util/Map;LVd1;)V

    .line 11
    iput-object p2, p0, LNq0;->y:Lle1;

    .line 12
    iget-object p1, p0, LNq0;->w:Lorg/chromium/chrome/browser/omnibox/status/StatusView;

    new-instance v0, LMq0;

    invoke-direct {v0}, LMq0;-><init>()V

    invoke-static {p2, p1, v0}, Loe1;->a(Lqe1;Ljava/lang/Object;Lne1;)Loe1;

    .line 13
    new-instance p1, LFq0;

    iget-object p2, p0, LNq0;->y:Lle1;

    iget-object v0, p0, LNq0;->w:Lorg/chromium/chrome/browser/omnibox/status/StatusView;

    .line 14
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p1, p2, v0, p3}, LFq0;-><init>(Lle1;Landroid/content/res/Resources;LOp0;)V

    iput-object p1, p0, LNq0;->x:LFq0;

    .line 15
    iget-object p1, p0, LNq0;->w:Lorg/chromium/chrome/browser/omnibox/status/StatusView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 16
    iget-object p2, p0, LNq0;->x:LFq0;

    const p3, 0x7f07018b

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    const v0, 0x7f07018e

    .line 17
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v0, p3

    const p3, 0x7f07018a

    .line 18
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    mul-int/lit8 p3, p3, 0x2

    add-int/2addr p3, v0

    .line 19
    iput p3, p2, LFq0;->j:I

    .line 20
    iget-object p2, p0, LNq0;->x:LFq0;

    const p3, 0x7f070191

    .line 21
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    const v0, 0x7f070190

    .line 22
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v0, p3

    .line 23
    iput v0, p2, LFq0;->k:I

    .line 24
    iget-object p2, p0, LNq0;->x:LFq0;

    const p3, 0x7f07018c

    .line 25
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 26
    iput p1, p2, LFq0;->l:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, LNq0;->x:LFq0;

    iget-object v1, p0, LNq0;->A:LSJ0;

    iget-boolean v2, p0, LNq0;->z:Z

    invoke-interface {v1, v2}, LSJ0;->a(Z)I

    move-result v1

    .line 2
    iput v1, v0, LFq0;->n:I

    .line 3
    invoke-virtual {v0}, LFq0;->b()V

    .line 4
    iget-object v0, p0, LNq0;->x:LFq0;

    iget-object v1, p0, LNq0;->A:LSJ0;

    invoke-interface {v1}, LSJ0;->p()I

    move-result v1

    .line 5
    iput v1, v0, LFq0;->o:I

    .line 6
    invoke-virtual {v0}, LFq0;->b()V

    .line 7
    iget-object v0, p0, LNq0;->x:LFq0;

    iget-object v1, p0, LNq0;->A:LSJ0;

    .line 8
    invoke-interface {v1}, LSJ0;->j()I

    move-result v1

    .line 9
    iput v1, v0, LFq0;->p:I

    .line 10
    invoke-virtual {v0}, LFq0;->b()V

    .line 11
    invoke-virtual {p0}, LNq0;->b()V

    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, LNq0;->x:LFq0;

    iget-object v1, p0, LNq0;->A:LSJ0;

    invoke-interface {v1}, LSJ0;->k()I

    move-result v1

    .line 2
    iget v2, v0, LFq0;->m:I

    if-ne v2, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iput v1, v0, LFq0;->m:I

    .line 4
    invoke-virtual {v0}, LFq0;->c()V

    .line 5
    invoke-virtual {v0}, LFq0;->b()V

    .line 6
    :goto_0
    iget-object v0, p0, LNq0;->x:LFq0;

    iget-object v1, p0, LNq0;->A:LSJ0;

    invoke-interface {v1}, LSJ0;->o()Z

    move-result v1

    .line 7
    iget-boolean v2, v0, LFq0;->g:Z

    if-eq v2, v1, :cond_1

    .line 8
    iput-boolean v1, v0, LFq0;->g:Z

    .line 9
    invoke-virtual {v0}, LFq0;->c()V

    .line 10
    invoke-virtual {v0}, LFq0;->a()V

    .line 11
    :cond_1
    iget-object v0, p0, LNq0;->x:LFq0;

    iget-object v1, p0, LNq0;->A:LSJ0;

    invoke-interface {v1}, LSJ0;->n()Z

    move-result v1

    .line 12
    iget-boolean v2, v0, LFq0;->f:Z

    if-eq v2, v1, :cond_2

    .line 13
    iput-boolean v1, v0, LFq0;->f:Z

    .line 14
    invoke-virtual {v0}, LFq0;->c()V

    .line 15
    invoke-virtual {v0}, LFq0;->a()V

    :cond_2
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-boolean p1, p0, LNq0;->B:Z

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, LNq0;->A:LSJ0;

    invoke-interface {p1}, LSJ0;->h()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, LNq0;->A:LSJ0;

    .line 3
    invoke-interface {p1}, LSJ0;->g()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p1

    .line 4
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-nez p1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, LNq0;->A:LSJ0;

    invoke-interface {p1}, LSJ0;->g()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object p1

    iget-object v0, p0, LNq0;->A:LSJ0;

    .line 6
    invoke-interface {v0}, LSJ0;->g()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 7
    invoke-static {p1, v0, v1, v2}, Lorg/chromium/chrome/browser/page_info/PageInfoController;->a(Landroid/app/Activity;Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .line 1
    iget-object p2, p0, LNq0;->x:LFq0;

    .line 2
    iget-object p3, p2, LFq0;->u:LOp0;

    check-cast p3, LMp0;

    invoke-virtual {p3}, LMp0;->a()Ljava/lang/String;

    move-result-object p3

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_0

    const-string p3, ""

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p3, p1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result p4

    const/4 v0, -0x1

    if-le p4, v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    .line 6
    :goto_0
    iget-object p1, p2, LFq0;->v:Ljava/lang/String;

    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    iput-object p3, p2, LFq0;->v:Ljava/lang/String;

    .line 8
    iget-object p1, p2, LFq0;->r:LEq0;

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    .line 9
    invoke-static {p1}, LD01;->a(I)LF01;

    move-result-object p4

    .line 10
    invoke-interface {p4}, LF01;->a()Z

    move-result p4

    if-eqz p4, :cond_3

    .line 11
    invoke-static {p3}, Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;->nativeQualifyPartialURLQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 12
    :goto_1
    iget-boolean p3, p2, LFq0;->w:Z

    if-eq p1, p3, :cond_4

    .line 13
    iput-boolean p1, p2, LFq0;->w:Z

    .line 14
    invoke-virtual {p2}, LFq0;->b()V

    :cond_4
    :goto_2
    return-void

    :cond_5
    const/4 p1, 0x0

    .line 15
    throw p1
.end method
