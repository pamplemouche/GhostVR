.class public LIc1;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:LHc1;


# direct methods
.method public constructor <init>(LHc1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LIc1;->a:LHc1;

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 2

    .line 7
    iget-object v0, p0, LIc1;->a:LHc1;

    check-cast v0, LS20;

    .line 8
    iget-object v0, v0, LS20;->b:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    .line 9
    iget-object v0, v0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->K:Lorg/chromium/chrome/browser/tab/Tab;

    if-nez v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-nez v0, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->K()Lorg/chromium/ui/base/EventForwarder;

    move-result-object v0

    const/4 v1, 0x0

    .line 12
    iput v1, v0, Lorg/chromium/ui/base/EventForwarder;->c:F

    .line 13
    iput p1, v0, Lorg/chromium/ui/base/EventForwarder;->d:F

    :goto_0
    return-void
.end method

.method public final a(Landroid/view/MotionEvent;Z)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    invoke-static {p1}, LLc1;->a(I)I

    move-result p1

    if-eqz p1, :cond_2

    const/16 v0, 0x9

    if-eq p1, v0, :cond_2

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_3

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/16 p2, 0xa

    if-ne p1, p2, :cond_3

    :cond_1
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, LIc1;->a(F)V

    goto :goto_1

    .line 3
    :cond_2
    :goto_0
    iget-object p1, p0, LIc1;->a:LHc1;

    check-cast p1, LS20;

    .line 4
    iget-object p2, p1, LS20;->b:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    invoke-static {p2}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->a(Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;)V

    .line 5
    iget-object p1, p1, LS20;->a:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    neg-float p1, p1

    .line 6
    invoke-virtual {p0, p1}, LIc1;->a(F)V

    :cond_3
    :goto_1
    return-void
.end method
