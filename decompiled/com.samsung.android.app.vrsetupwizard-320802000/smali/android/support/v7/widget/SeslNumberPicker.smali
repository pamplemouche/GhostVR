.class public Landroid/support/v7/widget/SeslNumberPicker;
.super Landroid/widget/LinearLayout;


# static fields
.field private static final b:Landroid/support/v7/widget/ie;


# instance fields
.field private a:Landroid/support/v7/widget/id;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v7/widget/ie;

    invoke-direct {v0}, Landroid/support/v7/widget/ie;-><init>()V

    sput-object v0, Landroid/support/v7/widget/SeslNumberPicker;->b:Landroid/support/v7/widget/ie;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/SeslNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/SeslNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/SeslNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v6, Landroid/support/v7/widget/if;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/if;-><init>(Landroid/support/v7/widget/SeslNumberPicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v6, p0, Landroid/support/v7/widget/SeslNumberPicker;->a:Landroid/support/v7/widget/id;

    return-void
.end method

.method public static final getTwoDigitFormatter()Landroid/support/v7/widget/hz;
    .locals 1

    sget-object v0, Landroid/support/v7/widget/SeslNumberPicker;->b:Landroid/support/v7/widget/ie;

    return-object v0
.end method


# virtual methods
.method a(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker;->a:Landroid/support/v7/widget/id;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/id;->f(Z)V

    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker;->a:Landroid/support/v7/widget/id;

    invoke-interface {v0}, Landroid/support/v7/widget/id;->b()Z

    move-result v0

    return v0
.end method

.method a(Landroid/graphics/Rect;)Z
    .locals 0

    invoke-static {p0, p1}, Landroid/support/v4/view/aw;->a(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker;->a:Landroid/support/v7/widget/id;

    invoke-interface {v0}, Landroid/support/v7/widget/id;->s()V

    return-void
.end method

.method public b(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/SeslNumberPicker;->setMeasuredDimension(II)V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker;->a:Landroid/support/v7/widget/id;

    invoke-interface {v0}, Landroid/support/v7/widget/id;->t()V

    return-void
.end method

.method public computeScroll()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker;->a:Landroid/support/v7/widget/id;

    invoke-interface {v0}, Landroid/support/v7/widget/id;->c()V

    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker;->a:Landroid/support/v7/widget/id;

    invoke-interface {v0}, Landroid/support/v7/widget/id;->f()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker;->a:Landroid/support/v7/widget/id;

    invoke-interface {v0}, Landroid/support/v7/widget/id;->d()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker;->a:Landroid/support/v7/widget/id;

    invoke-interface {v0}, Landroid/support/v7/widget/id;->e()I

    move-result v0

    return v0
.end method

.method d()Z
    .locals 1

    invoke-static {p0}, Landroid/support/v4/view/aw;->f(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker;->a:Landroid/support/v7/widget/id;

    invoke-interface {v0}, Landroid/support/v7/widget/id;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker;->a:Landroid/support/v7/widget/id;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/id;->f(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker;->a:Landroid/support/v7/widget/id;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/id;->b(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker;->a:Landroid/support/v7/widget/id;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/id;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker;->a:Landroid/support/v7/widget/id;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/id;->c(Landroid/view/MotionEvent;)Z

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker;->a:Landroid/support/v7/widget/id;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/id;->e(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker;->a:Landroid/support/v7/widget/id;

    invoke-interface {v0}, Landroid/support/v7/widget/id;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/LinearLayout;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker;->a:Landroid/support/v7/widget/id;

    invoke-interface {v0}, Landroid/support/v7/widget/id;->q()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    return-object v0
.end method

.method public getAmPm()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker;->a:Landroid/support/v7/widget/id;

    invoke-interface {v0}, Landroid/support/v7/widget/id;->a()Z

    move-result v0

    return v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker;->a:Landroid/support/v7/widget/id;

    invoke-interface {v0}, Landroid/support/v7/widget/id;->n()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker;->a:Landroid/support/v7/widget/id;

    invoke-interface {v0}, Landroid/support/v7/widget/id;->r()Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method getEnableStateSet()[I
    .locals 1

    sget-object v0, Landroid/support/v7/widget/SeslNumberPicker;->ENABLED_STATE_SET:[I

    return-object v0
.end method

.method public getMaxValue()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker;->a:Landroid/support/v7/widget/id;

    invoke-interface {v0}, Landroid/support/v7/widget/id;->m()I

    move-result v0

    return v0
.end method

.method public getMinValue()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker;->a:Landroid/support/v7/widget/id;

    invoke-interface {v0}, Landroid/support/v7/widget/id;->l()I

    move-result v0

    return v0
.end method

.method public getValue()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker;->a:Landroid/support/v7/widget/id;

    invoke-interface {v0}, Landroid/support/v7/widget/id;->k()I

    move-result v0

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker;->a:Landroid/support/v7/widget/id;

    invoke-interface {v0}, Landroid/support/v7/widget/id;->j()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker;->a:Landroid/support/v7/widget/id;

    invoke-interface {v0}, Landroid/support/v7/widget/id;->p()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker;->a:Landroid/support/v7/widget/id;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/id;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker;->a:Landroid/support/v7/widget/id;

    invoke-interface {v0}, Landroid/support/v7/widget/id;->o()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker;->a:Landroid/support/v7/widget/id;

    invoke-interface {v0}, Landroid/support/v7/widget/id;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker;->a:Landroid/support/v7/widget/id;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/id;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker;->a:Landroid/support/v7/widget/id;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v7/widget/id;->a(ZILandroid/graphics/Rect;)V

    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker;->a:Landroid/support/v7/widget/id;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/id;->d(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker;->a:Landroid/support/v7/widget/id;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/id;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker;->a:Landroid/support/v7/widget/id;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/id;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker;->a:Landroid/support/v7/widget/id;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/support/v7/widget/id;->a(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker;->a:Landroid/support/v7/widget/id;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/widget/id;->a(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker;->a:Landroid/support/v7/widget/id;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/id;->b(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker;->a:Landroid/support/v7/widget/id;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/id;->c(Z)V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker;->a:Landroid/support/v7/widget/id;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/id;->b(I)V

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method public performClick()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker;->a:Landroid/support/v7/widget/id;

    invoke-interface {v0}, Landroid/support/v7/widget/id;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker;->a:Landroid/support/v7/widget/id;

    invoke-interface {v0}, Landroid/support/v7/widget/id;->h()V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public performLongClick()Z
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->performLongClick()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker;->a:Landroid/support/v7/widget/id;

    invoke-interface {v0}, Landroid/support/v7/widget/id;->i()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public scrollBy(II)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker;->a:Landroid/support/v7/widget/id;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/widget/id;->b(II)V

    return-void
.end method

.method public setAmPm(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker;->a:Landroid/support/v7/widget/id;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/id;->a(Z)V

    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker;->a:Landroid/support/v7/widget/id;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/id;->a([Ljava/lang/String;)V

    return-void
.end method

.method public setEditTextMode(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker;->a:Landroid/support/v7/widget/id;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/id;->b(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker;->a:Landroid/support/v7/widget/id;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/id;->e(Z)V

    return-void
.end method

.method public setFormatter(Landroid/support/v7/widget/hz;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker;->a:Landroid/support/v7/widget/id;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/id;->a(Landroid/support/v7/widget/hz;)V

    return-void
.end method

.method public setImeOptions(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker;->a:Landroid/support/v7/widget/id;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/id;->a(I)V

    return-void
.end method

.method public setMaxInputLength(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker;->a:Landroid/support/v7/widget/id;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/id;->f(I)V

    return-void
.end method

.method public setMaxValue(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker;->a:Landroid/support/v7/widget/id;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/id;->e(I)V

    return-void
.end method

.method public setMinValue(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker;->a:Landroid/support/v7/widget/id;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/id;->d(I)V

    return-void
.end method

.method public setOnEditTextModeChangedListener(Landroid/support/v7/widget/ia;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker;->a:Landroid/support/v7/widget/id;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/id;->a(Landroid/support/v7/widget/ia;)V

    return-void
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker;->a:Landroid/support/v7/widget/id;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/widget/id;->a(J)V

    return-void
.end method

.method public setOnScrollListener(Landroid/support/v7/widget/ib;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker;->a:Landroid/support/v7/widget/id;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/id;->a(Landroid/support/v7/widget/ib;)V

    return-void
.end method

.method public setOnValueChangedListener(Landroid/support/v7/widget/ic;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker;->a:Landroid/support/v7/widget/id;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/id;->a(Landroid/support/v7/widget/ic;)V

    return-void
.end method

.method public setPickerContentDescription(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker;->a:Landroid/support/v7/widget/id;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/id;->a(Ljava/lang/String;)V

    return-void
.end method

.method public setSkipValuesOnLongPressEnabled(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker;->a:Landroid/support/v7/widget/id;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/id;->d(Z)V

    return-void
.end method

.method public setSubTextSize(F)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker;->a:Landroid/support/v7/widget/id;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/id;->b(F)V

    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker;->a:Landroid/support/v7/widget/id;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/id;->a(F)V

    return-void
.end method

.method public setTextTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker;->a:Landroid/support/v7/widget/id;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/id;->a(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public setValue(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker;->a:Landroid/support/v7/widget/id;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/id;->c(I)V

    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker;->a:Landroid/support/v7/widget/id;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/id;->g(Z)V

    return-void
.end method
