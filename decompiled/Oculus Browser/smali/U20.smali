.class public LU20;
.super LSG0;
.source "PG"


# instance fields
.field public final synthetic w:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, LU20;->w:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    invoke-direct {p0}, LSG0;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .line 1
    iget-object p1, p0, LU20;->w:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public onWebContentsSwapped(Lorg/chromium/chrome/browser/tab/Tab;ZZ)V
    .locals 0

    .line 1
    iget-object p1, p0, LU20;->w:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    .line 2
    iget-object p1, p1, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->L:Landroid/view/View;

    .line 3
    new-instance p2, LT20;

    invoke-direct {p2, p0}, LT20;-><init>(LU20;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method
