.class public abstract LiR0;
.super Lorg/chromium/ui/widget/ViewLookupCachingFrameLayout;
.source "PG"

# interfaces
.implements Landroid/widget/Checkable;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements LqR0;


# instance fields
.field public A:Ljava/lang/Object;

.field public B:Ljava/lang/Boolean;

.field public C:Z

.field public D:F

.field public E:F

.field public z:LrR0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LiR0;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/chromium/ui/widget/ViewLookupCachingFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, LiR0;->C:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1

    .line 2
    iget-object p1, p0, LiR0;->z:LrR0;

    iget-object v0, p0, LiR0;->A:Ljava/lang/Object;

    invoke-virtual {p1, v0}, LrR0;->a(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p1}, LiR0;->setChecked(Z)V

    return-void
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, LiR0;->z:LrR0;

    invoke-virtual {v0, p1}, LrR0;->b(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public abstract b(Z)V
.end method

.method public abstract c()V
.end method

.method public isChecked()Z
    .locals 1

    .line 1
    iget-object v0, p0, LiR0;->B:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, LiR0;->z:LrR0;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, LiR0;->A:Ljava/lang/Object;

    invoke-virtual {v0, v1}, LrR0;->a(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, LiR0;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, LiR0;->C:Z

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, LiR0;->A:Ljava/lang/Object;

    invoke-virtual {p0, p1}, LiR0;->a(Ljava/lang/Object;)Z

    move-result p1

    .line 3
    invoke-virtual {p0, p1}, LiR0;->setChecked(Z)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, LiR0;->z:LrR0;

    invoke-virtual {v0}, LrR0;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0, p1}, LiR0;->onLongClick(Landroid/view/View;)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, LiR0;->c()V

    :goto_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, LiR0;->setChecked(Z)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, LiR0;->B:Ljava/lang/Boolean;

    return-void
.end method

.method public onFinishInflate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    invoke-virtual {p0, p0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3
    invoke-virtual {p0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-virtual {p0, p0}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 1
    iget p1, p0, LiR0;->E:F

    iget v0, p0, LiR0;->D:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x42c80000    # 100.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    .line 2
    iget-object p1, p0, LiR0;->A:Ljava/lang/Object;

    invoke-virtual {p0, p1}, LiR0;->a(Ljava/lang/Object;)Z

    move-result p1

    .line 3
    invoke-virtual {p0, p1}, LiR0;->setChecked(Z)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, LiR0;->E:F

    iput p1, p0, LiR0;->D:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, LiR0;->E:F

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public setChecked(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, LiR0;->B:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, LiR0;->B:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, LiR0;->B:Ljava/lang/Boolean;

    .line 4
    invoke-virtual {p0, v0}, LiR0;->b(Z)V

    return-void
.end method

.method public toggle()V
    .locals 1

    .line 1
    invoke-virtual {p0}, LiR0;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, LiR0;->setChecked(Z)V

    return-void
.end method
