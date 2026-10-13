.class public Lma;
.super LT7;
.source "PG"


# instance fields
.field public final synthetic a:Lqa;


# direct methods
.method public constructor <init>(Lqa;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lma;->a:Lqa;

    invoke-direct {p0}, LT7;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lma;->a:Lqa;

    iget-boolean v0, p1, Lqa;->p:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, Lqa;->g:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 3
    iget-object p1, p0, Lma;->a:Lqa;

    iget-object p1, p1, Lqa;->d:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 4
    :cond_0
    iget-object p1, p0, Lma;->a:Lqa;

    iget-object p1, p1, Lqa;->d:Landroid/support/v7/widget/ActionBarContainer;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActionBarContainer;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lma;->a:Lqa;

    iget-object p1, p1, Lqa;->d:Landroid/support/v7/widget/ActionBarContainer;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p1, Landroid/support/v7/widget/ActionBarContainer;->w:Z

    const/high16 v0, 0x40000

    .line 7
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V

    .line 8
    iget-object p1, p0, Lma;->a:Lqa;

    const/4 v0, 0x0

    iput-object v0, p1, Lqa;->u:LXc;

    .line 9
    iget-object v1, p1, Lqa;->k:LMc;

    if-eqz v1, :cond_1

    .line 10
    iget-object v2, p1, Lqa;->j:LNc;

    invoke-interface {v1, v2}, LMc;->a(LNc;)V

    .line 11
    iput-object v0, p1, Lqa;->j:LNc;

    .line 12
    iput-object v0, p1, Lqa;->k:LMc;

    .line 13
    :cond_1
    iget-object p1, p0, Lma;->a:Lqa;

    iget-object p1, p1, Lqa;->c:Landroid/support/v7/widget/ActionBarOverlayLayout;

    if-eqz p1, :cond_2

    .line 14
    invoke-static {p1}, LA7;->x(Landroid/view/View;)V

    :cond_2
    return-void
.end method
