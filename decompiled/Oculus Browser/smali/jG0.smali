.class public abstract LjG0;
.super Landroid/support/v7/widget/RecyclerView;
.source "PG"


# static fields
.field public static final i1:Landroid/view/animation/Interpolator;


# instance fields
.field public final d1:Landroid/view/GestureDetector;

.field public final e1:Landroid/support/v7/widget/LinearLayoutManager;

.field public f1:I

.field public final g1:Ljava/util/Map;

.field public h1:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LjG0;

    .line 2
    sget-object v0, LNM0;->b:Lb8;

    sput-object v0, LjG0;->i1:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2
    invoke-direct {v0, v2, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(IZ)V

    .line 3
    new-instance v3, LPc;

    const v4, 0x7f140117

    invoke-direct {v3, p1, v4}, LPc;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    invoke-direct {p0, v3, p1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, LjG0;->g1:Ljava/util/Map;

    .line 5
    iput-boolean v2, p0, LjG0;->h1:Z

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06016c

    .line 7
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 8
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 9
    new-instance v4, LRg;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, LRg;-><init>(II)V

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 11
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    const v4, 0x7f1300eb

    .line 12
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 13
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->setClipToPadding(Z)V

    .line 14
    new-instance v3, Landroid/view/GestureDetector;

    .line 15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, LhG0;

    invoke-direct {v5, p0}, LhG0;-><init>(LjG0;)V

    invoke-direct {v3, v4, v5}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v3, p0, LjG0;->d1:Landroid/view/GestureDetector;

    .line 16
    iput-object v0, p0, LjG0;->e1:Landroid/support/v7/widget/LinearLayoutManager;

    .line 17
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->a(LQg;)V

    .line 18
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->O:Z

    .line 19
    new-instance v0, Lxi;

    new-instance v2, LiG0;

    invoke-direct {v2, p0, p1}, LiG0;-><init>(LjG0;LhG0;)V

    invoke-direct {v0, v2}, Lxi;-><init>(Lsi;)V

    .line 20
    invoke-virtual {v0, p0}, Lxi;->a(Landroid/support/v7/widget/RecyclerView;)V

    .line 21
    new-instance p1, LgG0;

    invoke-direct {p1}, LgG0;-><init>()V

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->a(LUg;)V

    .line 22
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_0

    .line 23
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setDefaultFocusHighlightEnabled(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->c(Z)V

    .line 4
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final e(Ldh;)Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ldh;->c()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->H:LBg;

    .line 5
    check-cast p1, LUm0;

    const/4 p1, 0x0

    .line 6
    throw p1
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    const/high16 v0, 0x2000000

    .line 1
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    return-object p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, LjG0;->d1:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    move-object v0, p0

    check-cast v0, LVm0;

    .line 3
    iget-boolean v0, v0, LjG0;->h1:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lorg/chromium/ui/base/DeviceFormFactor;->isTablet()Z

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    return v1

    .line 5
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onLayout(ZIIII)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 2
    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/RecyclerView;->onLayout(ZIIII)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->d(Landroid/view/View;)Ldh;

    move-result-object p1

    check-cast p1, LWm0;

    const/4 p1, 0x0

    throw p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    move-object v0, p0

    check-cast v0, LVm0;

    .line 2
    iget-boolean v0, v0, LjG0;->h1:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lorg/chromium/ui/base/DeviceFormFactor;->isTablet()Z

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    return v1

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, LjG0;->d1:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 6
    :cond_2
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
