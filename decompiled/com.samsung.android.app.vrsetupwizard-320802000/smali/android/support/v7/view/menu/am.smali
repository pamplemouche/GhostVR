.class final Landroid/support/v7/view/menu/am;
.super Landroid/support/v7/view/menu/ac;

# interfaces
.implements Landroid/support/v7/view/menu/af;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field final a:Landroid/support/v7/widget/dq;

.field b:Landroid/view/View;

.field private final c:Landroid/content/Context;

.field private final d:Landroid/support/v7/view/menu/p;

.field private final e:Landroid/support/v7/view/menu/o;

.field private final f:Z

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final k:Landroid/view/View$OnAttachStateChangeListener;

.field private l:Landroid/widget/PopupWindow$OnDismissListener;

.field private m:Landroid/view/View;

.field private n:Landroid/support/v7/view/menu/ag;

.field private o:Landroid/view/ViewTreeObserver;

.field private p:Z

.field private q:Z

.field private r:I

.field private s:I

.field private t:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/view/menu/p;Landroid/view/View;IIZ)V
    .locals 4

    invoke-direct {p0}, Landroid/support/v7/view/menu/ac;-><init>()V

    new-instance v0, Landroid/support/v7/view/menu/an;

    invoke-direct {v0, p0}, Landroid/support/v7/view/menu/an;-><init>(Landroid/support/v7/view/menu/am;)V

    iput-object v0, p0, Landroid/support/v7/view/menu/am;->j:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    new-instance v0, Landroid/support/v7/view/menu/ao;

    invoke-direct {v0, p0}, Landroid/support/v7/view/menu/ao;-><init>(Landroid/support/v7/view/menu/am;)V

    iput-object v0, p0, Landroid/support/v7/view/menu/am;->k:Landroid/view/View$OnAttachStateChangeListener;

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/view/menu/am;->s:I

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x10104a9

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v1, Landroid/util/TypedValue;->data:I

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v7/view/e;

    iget v1, v1, Landroid/util/TypedValue;->data:I

    invoke-direct {v0, p1, v1}, Landroid/support/v7/view/e;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/support/v7/view/menu/am;->c:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Landroid/support/v7/view/menu/am;->c:Landroid/content/Context;

    :goto_0
    iput-object p2, p0, Landroid/support/v7/view/menu/am;->d:Landroid/support/v7/view/menu/p;

    iput-boolean p6, p0, Landroid/support/v7/view/menu/am;->f:Z

    iget-object p1, p0, Landroid/support/v7/view/menu/am;->c:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    new-instance p6, Landroid/support/v7/view/menu/o;

    iget-boolean v0, p0, Landroid/support/v7/view/menu/am;->f:Z

    invoke-direct {p6, p2, p1, v0}, Landroid/support/v7/view/menu/o;-><init>(Landroid/support/v7/view/menu/p;Landroid/view/LayoutInflater;Z)V

    iput-object p6, p0, Landroid/support/v7/view/menu/am;->e:Landroid/support/v7/view/menu/o;

    iput p4, p0, Landroid/support/v7/view/menu/am;->h:I

    iput p5, p0, Landroid/support/v7/view/menu/am;->i:I

    iget-object p1, p0, Landroid/support/v7/view/menu/am;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Landroid/support/v7/view/menu/am;->g:I

    iput-object p3, p0, Landroid/support/v7/view/menu/am;->m:Landroid/view/View;

    new-instance p1, Landroid/support/v7/widget/dq;

    iget-object p3, p0, Landroid/support/v7/view/menu/am;->c:Landroid/content/Context;

    const/4 p4, 0x0

    iget p5, p0, Landroid/support/v7/view/menu/am;->h:I

    iget p6, p0, Landroid/support/v7/view/menu/am;->i:I

    invoke-direct {p1, p3, p4, p5, p6}, Landroid/support/v7/widget/dq;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object p1, p0, Landroid/support/v7/view/menu/am;->a:Landroid/support/v7/widget/dq;

    iget-object p1, p0, Landroid/support/v7/view/menu/am;->c:Landroid/content/Context;

    invoke-virtual {p2, p0, p1}, Landroid/support/v7/view/menu/p;->a(Landroid/support/v7/view/menu/af;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/view/menu/am;)Landroid/view/ViewTreeObserver;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/view/menu/am;->o:Landroid/view/ViewTreeObserver;

    return-object p0
.end method

.method static synthetic a(Landroid/support/v7/view/menu/am;Landroid/view/ViewTreeObserver;)Landroid/view/ViewTreeObserver;
    .locals 0

    iput-object p1, p0, Landroid/support/v7/view/menu/am;->o:Landroid/view/ViewTreeObserver;

    return-object p1
.end method

.method static synthetic b(Landroid/support/v7/view/menu/am;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/view/menu/am;->j:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object p0
.end method

.method private j()Z
    .locals 7

    invoke-virtual {p0}, Landroid/support/v7/view/menu/am;->f()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/view/menu/am;->p:Z

    const/4 v2, 0x0

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/support/v7/view/menu/am;->m:Landroid/view/View;

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    iput-object v0, p0, Landroid/support/v7/view/menu/am;->b:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v7/view/menu/am;->a:Landroid/support/v7/widget/dq;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/dq;->a(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v0, p0, Landroid/support/v7/view/menu/am;->a:Landroid/support/v7/widget/dq;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/dq;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Landroid/support/v7/view/menu/am;->a:Landroid/support/v7/widget/dq;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/dq;->a(Z)V

    iget-object v0, p0, Landroid/support/v7/view/menu/am;->b:Landroid/view/View;

    iget-object v3, p0, Landroid/support/v7/view/menu/am;->o:Landroid/view/ViewTreeObserver;

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v7/view/menu/am;->o:Landroid/view/ViewTreeObserver;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/support/v7/view/menu/am;->o:Landroid/view/ViewTreeObserver;

    iget-object v4, p0, Landroid/support/v7/view/menu/am;->j:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3
    iget-object v3, p0, Landroid/support/v7/view/menu/am;->k:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v3, p0, Landroid/support/v7/view/menu/am;->a:Landroid/support/v7/widget/dq;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/dq;->b(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/v7/view/menu/am;->a:Landroid/support/v7/widget/dq;

    iget v3, p0, Landroid/support/v7/view/menu/am;->s:I

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/dq;->e(I)V

    iget-boolean v0, p0, Landroid/support/v7/view/menu/am;->q:Z

    const/4 v3, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/view/menu/am;->e:Landroid/support/v7/view/menu/o;

    iget-object v4, p0, Landroid/support/v7/view/menu/am;->c:Landroid/content/Context;

    iget v5, p0, Landroid/support/v7/view/menu/am;->g:I

    invoke-static {v0, v3, v4, v5}, Landroid/support/v7/view/menu/am;->a(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/menu/am;->r:I

    iput-boolean v1, p0, Landroid/support/v7/view/menu/am;->q:Z

    :cond_4
    iget-object v0, p0, Landroid/support/v7/view/menu/am;->a:Landroid/support/v7/widget/dq;

    iget v4, p0, Landroid/support/v7/view/menu/am;->r:I

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/dq;->g(I)V

    iget-object v0, p0, Landroid/support/v7/view/menu/am;->a:Landroid/support/v7/widget/dq;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/dq;->h(I)V

    iget-object v0, p0, Landroid/support/v7/view/menu/am;->a:Landroid/support/v7/widget/dq;

    invoke-virtual {p0}, Landroid/support/v7/view/menu/am;->i()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/dq;->a(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/support/v7/view/menu/am;->a:Landroid/support/v7/widget/dq;

    invoke-virtual {v0}, Landroid/support/v7/widget/dq;->d()V

    iget-object v0, p0, Landroid/support/v7/view/menu/am;->a:Landroid/support/v7/widget/dq;

    invoke-virtual {v0}, Landroid/support/v7/widget/dq;->g()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-boolean v4, p0, Landroid/support/v7/view/menu/am;->t:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroid/support/v7/view/menu/am;->d:Landroid/support/v7/view/menu/p;

    invoke-virtual {v4}, Landroid/support/v7/view/menu/p;->m()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroid/support/v7/view/menu/am;->c:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Landroid/support/v7/b/i;->sesl_popup_menu_header_item_layout:I

    invoke-virtual {v4, v5, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    const v5, 0x1020016

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_5

    iget-object v6, p0, Landroid/support/v7/view/menu/am;->d:Landroid/support/v7/view/menu/p;

    invoke-virtual {v6}, Landroid/support/v7/view/menu/p;->m()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    invoke-virtual {v0, v4, v3, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_6
    iget-object v0, p0, Landroid/support/v7/view/menu/am;->a:Landroid/support/v7/widget/dq;

    iget-object v2, p0, Landroid/support/v7/view/menu/am;->e:Landroid/support/v7/view/menu/o;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/dq;->a(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Landroid/support/v7/view/menu/am;->a:Landroid/support/v7/widget/dq;

    invoke-virtual {v0}, Landroid/support/v7/widget/dq;->d()V

    return v1

    :cond_7
    :goto_1
    return v2
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Landroid/support/v7/view/menu/am;->s:I

    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/support/v7/view/menu/ag;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/view/menu/am;->n:Landroid/support/v7/view/menu/ag;

    return-void
.end method

.method public a(Landroid/support/v7/view/menu/p;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/support/v7/view/menu/p;Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/menu/am;->d:Landroid/support/v7/view/menu/p;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/view/menu/am;->e()V

    iget-object v0, p0, Landroid/support/v7/view/menu/am;->n:Landroid/support/v7/view/menu/ag;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/menu/ag;->a(Landroid/support/v7/view/menu/p;Z)V

    :cond_1
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/view/menu/am;->m:Landroid/view/View;

    return-void
.end method

.method public a(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/view/menu/am;->l:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public a(Z)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/v7/view/menu/am;->q:Z

    iget-object p1, p0, Landroid/support/v7/view/menu/am;->e:Landroid/support/v7/view/menu/o;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/view/menu/o;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/support/v7/view/menu/ap;)Z
    .locals 9

    invoke-virtual {p1}, Landroid/support/v7/view/menu/ap;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/v7/view/menu/ad;

    iget-object v3, p0, Landroid/support/v7/view/menu/am;->c:Landroid/content/Context;

    iget-object v5, p0, Landroid/support/v7/view/menu/am;->b:Landroid/view/View;

    iget-boolean v6, p0, Landroid/support/v7/view/menu/am;->f:Z

    iget v7, p0, Landroid/support/v7/view/menu/am;->h:I

    iget v8, p0, Landroid/support/v7/view/menu/am;->i:I

    move-object v2, v0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Landroid/support/v7/view/menu/ad;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/p;Landroid/view/View;ZII)V

    iget-object v2, p0, Landroid/support/v7/view/menu/am;->n:Landroid/support/v7/view/menu/ag;

    invoke-virtual {v0, v2}, Landroid/support/v7/view/menu/ad;->a(Landroid/support/v7/view/menu/ag;)V

    invoke-static {p1}, Landroid/support/v7/view/menu/ac;->b(Landroid/support/v7/view/menu/p;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/v7/view/menu/ad;->a(Z)V

    iget v2, p0, Landroid/support/v7/view/menu/am;->s:I

    invoke-virtual {v0, v2}, Landroid/support/v7/view/menu/ad;->a(I)V

    iget-object v2, p0, Landroid/support/v7/view/menu/am;->l:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v2}, Landroid/support/v7/view/menu/ad;->a(Landroid/widget/PopupWindow$OnDismissListener;)V

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/support/v7/view/menu/am;->l:Landroid/widget/PopupWindow$OnDismissListener;

    iget-object v2, p0, Landroid/support/v7/view/menu/am;->d:Landroid/support/v7/view/menu/p;

    invoke-virtual {v2, v1}, Landroid/support/v7/view/menu/p;->b(Z)V

    iget-object v2, p0, Landroid/support/v7/view/menu/am;->a:Landroid/support/v7/widget/dq;

    invoke-virtual {v2}, Landroid/support/v7/widget/dq;->j()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/view/menu/am;->a:Landroid/support/v7/widget/dq;

    invoke-virtual {v3}, Landroid/support/v7/widget/dq;->k()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/view/menu/ad;->a(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/view/menu/am;->n:Landroid/support/v7/view/menu/ag;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/support/v7/view/menu/ag;->a(Landroid/support/v7/view/menu/p;)Z

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/menu/am;->a:Landroid/support/v7/widget/dq;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/dq;->c(I)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/menu/am;->e:Landroid/support/v7/view/menu/o;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/o;->a(Z)V

    return-void
.end method

.method public c()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/menu/am;->a:Landroid/support/v7/widget/dq;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/dq;->d(I)V

    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/view/menu/am;->t:Z

    return-void
.end method

.method public d()V
    .locals 2

    invoke-direct {p0}, Landroid/support/v7/view/menu/am;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StandardMenuPopup cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/view/menu/am;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/am;->a:Landroid/support/v7/widget/dq;

    invoke-virtual {v0}, Landroid/support/v7/widget/dq;->e()V

    :cond_0
    return-void
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/view/menu/am;->p:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/am;->a:Landroid/support/v7/widget/dq;

    invoke-virtual {v0}, Landroid/support/v7/widget/dq;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/menu/am;->a:Landroid/support/v7/widget/dq;

    invoke-virtual {v0}, Landroid/support/v7/widget/dq;->g()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public onDismiss()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/view/menu/am;->p:Z

    iget-object v0, p0, Landroid/support/v7/view/menu/am;->d:Landroid/support/v7/view/menu/p;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/p;->close()V

    iget-object v0, p0, Landroid/support/v7/view/menu/am;->o:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/am;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/menu/am;->o:Landroid/view/ViewTreeObserver;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/am;->o:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Landroid/support/v7/view/menu/am;->j:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/view/menu/am;->o:Landroid/view/ViewTreeObserver;

    :cond_1
    iget-object v0, p0, Landroid/support/v7/view/menu/am;->b:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/view/menu/am;->k:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v0, p0, Landroid/support/v7/view/menu/am;->l:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_2
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/16 p1, 0x52

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/view/menu/am;->e()V

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
