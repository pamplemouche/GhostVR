.class public Lorg/chromium/chrome/browser/signin/SyncPromoView;
.super Landroid/widget/LinearLayout;
.source "PG"

# interfaces
.implements LmV0;


# instance fields
.field public w:Landroid/widget/TextView;

.field public x:Landroid/widget/Button;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/chrome/browser/signin/SyncPromoView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    sget-object v0, LZ01;->a:LFW;

    new-instance v1, LNF0;

    invoke-direct {v1, p0}, LNF0;-><init>(Lorg/chromium/chrome/browser/signin/SyncPromoView;)V

    invoke-static {v0, v1}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()V
    .locals 4

    .line 1
    invoke-static {}, LnV0;->d()LnV0;

    move-result-object v0

    .line 2
    iget-boolean v0, v0, LnV0;->g:Z

    if-nez v0, :cond_0

    const v0, 0x7f130519

    .line 3
    new-instance v1, LQF0;

    const v2, 0x7f130453

    new-instance v3, LLF0;

    invoke-direct {v3, p0}, LLF0;-><init>(Lorg/chromium/chrome/browser/signin/SyncPromoView;)V

    invoke-direct {v1, v2, v3}, LQF0;-><init>(ILandroid/view/View$OnClickListener;)V

    .line 4
    new-instance v2, LSF0;

    invoke-direct {v2, v0, v1}, LSF0;-><init>(ILRF0;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, LnV0;->d()LnV0;

    move-result-object v0

    .line 6
    iget-boolean v0, v0, LnV0;->f:Z

    if-nez v0, :cond_1

    const v0, 0x7f13051a

    .line 7
    new-instance v1, LQF0;

    const v2, 0x7f1302f6

    new-instance v3, LMF0;

    invoke-direct {v3, p0}, LMF0;-><init>(Lorg/chromium/chrome/browser/signin/SyncPromoView;)V

    invoke-direct {v1, v2, v3}, LQF0;-><init>(ILandroid/view/View$OnClickListener;)V

    .line 8
    new-instance v2, LSF0;

    invoke-direct {v2, v0, v1}, LSF0;-><init>(ILRF0;)V

    goto :goto_0

    .line 9
    :cond_1
    new-instance v2, LSF0;

    new-instance v0, LPF0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LPF0;-><init>(LOF0;)V

    const v1, 0x7f130438

    invoke-direct {v2, v1, v0}, LSF0;-><init>(ILRF0;)V

    .line 10
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SyncPromoView;->w:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/chromium/chrome/browser/signin/SyncPromoView;->x:Landroid/widget/Button;

    .line 11
    iget v3, v2, LSF0;->a:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 12
    iget-object v0, v2, LSF0;->b:LRF0;

    invoke-interface {v0, v1}, LRF0;->a(Landroid/widget/Button;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 2
    invoke-static {}, LnV0;->d()LnV0;

    move-result-object v0

    invoke-virtual {v0, p0}, LnV0;->a(LmV0;)V

    .line 3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/SyncPromoView;->b()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 2
    invoke-static {}, LnV0;->d()LnV0;

    move-result-object v0

    invoke-virtual {v0, p0}, LnV0;->b(LmV0;)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0b0494

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v0, 0x7f0b0151

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/signin/SyncPromoView;->w:Landroid/widget/TextView;

    const v0, 0x7f0b03ef

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/chromium/chrome/browser/signin/SyncPromoView;->x:Landroid/widget/Button;

    return-void
.end method
