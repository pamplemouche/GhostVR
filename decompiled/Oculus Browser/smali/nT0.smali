.class public LnT0;
.super Landroid/widget/FrameLayout;
.source "PG"

# interfaces
.implements La11;
.implements Lorg/chromium/content_public/browser/SmartClipProvider;
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# static fields
.field public static final D:I


# instance fields
.field public A:Lorg/chromium/ui/base/EventForwarder;

.field public B:I

.field public C:I

.field public final w:Lorg/chromium/content_public/browser/WebContents;

.field public final x:LWT;

.field public final y:LWT;

.field public z:Lb11;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LnT0;

    const/4 v0, 0x0

    .line 2
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    sput v0, LnT0;->D:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/chromium/content_public/browser/WebContents;)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x1010085

    .line 1
    invoke-direct {p0, p1, v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    new-instance p1, LWT;

    invoke-direct {p1}, LWT;-><init>()V

    iput-object p1, p0, LnT0;->x:LWT;

    .line 3
    new-instance p1, LWT;

    invoke-direct {p1}, LWT;-><init>()V

    iput-object p1, p0, LnT0;->y:LWT;

    .line 4
    sget p1, LnT0;->D:I

    iput p1, p0, LnT0;->B:I

    .line 5
    iput p1, p0, LnT0;->C:I

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollBarStyle()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setHorizontalScrollBarEnabled(Z)V

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVerticalScrollBarEnabled(Z)V

    .line 9
    :cond_0
    iput-object p2, p0, LnT0;->w:Lorg/chromium/content_public/browser/WebContents;

    const/4 p1, 0x1

    .line 10
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 11
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 12
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-lt p1, p2, :cond_1

    .line 13
    invoke-static {p0, v0}, LBU;->a(Landroid/view/View;Z)V

    .line 14
    :cond_1
    invoke-super {p0, p0}, Landroid/widget/FrameLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 15
    invoke-super {p0, p0}, Landroid/widget/FrameLayout;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lorg/chromium/content_public/browser/WebContents;)LnT0;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, LmT0;

    invoke-direct {v0, p0, p1}, LmT0;-><init>(Landroid/content/Context;Lorg/chromium/content_public/browser/WebContents;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, LnT0;

    invoke-direct {v0, p0, p1}, LnT0;-><init>(Landroid/content/Context;Lorg/chromium/content_public/browser/WebContents;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lorg/chromium/ui/base/EventForwarder;
    .locals 1

    .line 4
    iget-object v0, p0, LnT0;->A:Lorg/chromium/ui/base/EventForwarder;

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, LnT0;->w:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->K()Lorg/chromium/ui/base/EventForwarder;

    move-result-object v0

    iput-object v0, p0, LnT0;->A:Lorg/chromium/ui/base/EventForwarder;

    .line 6
    :cond_0
    iget-object v0, p0, LnT0;->A:Lorg/chromium/ui/base/EventForwarder;

    return-object v0
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 7
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 8
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 9
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public awakenScrollBars(IZ)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollBarStyle()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->awakenScrollBars(IZ)Z

    move-result p1

    return p1
.end method

.method public final b()Lb11;
    .locals 1

    .line 1
    iget-object v0, p0, LnT0;->z:Lb11;

    if-nez v0, :cond_0

    iget-object v0, p0, LnT0;->w:Lorg/chromium/content_public/browser/WebContents;

    .line 2
    invoke-static {v0}, LbX0;->a(Lorg/chromium/content_public/browser/WebContents;)LbX0;

    move-result-object v0

    .line 3
    iput-object v0, p0, LnT0;->z:Lb11;

    .line 4
    :cond_0
    iget-object v0, p0, LnT0;->z:Lb11;

    return-object v0
.end method

.method public c()Le11;
    .locals 1

    .line 1
    iget-object v0, p0, LnT0;->w:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->m()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LnT0;->w:Lorg/chromium/content_public/browser/WebContents;

    .line 2
    invoke-static {v0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public computeHorizontalScrollExtent()I
    .locals 2

    .line 1
    iget-object v0, p0, LnT0;->w:Lorg/chromium/content_public/browser/WebContents;

    .line 2
    check-cast v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    .line 3
    iget-object v0, v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->C:LFW0;

    if-eqz v0, :cond_0

    .line 4
    iget v1, v0, LFW0;->e:F

    invoke-virtual {v0, v1}, LFW0;->a(F)F

    move-result v0

    float-to-double v0, v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public computeHorizontalScrollOffset()I
    .locals 2

    .line 1
    iget-object v0, p0, LnT0;->w:Lorg/chromium/content_public/browser/WebContents;

    .line 2
    check-cast v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    .line 3
    iget-object v0, v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->C:LFW0;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, LFW0;->a()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public computeHorizontalScrollRange()I
    .locals 2

    .line 1
    iget-object v0, p0, LnT0;->w:Lorg/chromium/content_public/browser/WebContents;

    .line 2
    check-cast v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    .line 3
    iget-object v0, v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->C:LFW0;

    if-eqz v0, :cond_0

    .line 4
    iget v1, v0, LFW0;->c:F

    invoke-virtual {v0, v1}, LFW0;->a(F)F

    move-result v0

    float-to-double v0, v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public computeVerticalScrollExtent()I
    .locals 2

    .line 1
    iget-object v0, p0, LnT0;->w:Lorg/chromium/content_public/browser/WebContents;

    .line 2
    check-cast v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    .line 3
    iget-object v0, v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->C:LFW0;

    if-eqz v0, :cond_0

    .line 4
    iget v1, v0, LFW0;->f:F

    invoke-virtual {v0, v1}, LFW0;->a(F)F

    move-result v0

    float-to-double v0, v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public computeVerticalScrollOffset()I
    .locals 1

    .line 1
    iget-object v0, p0, LnT0;->w:Lorg/chromium/content_public/browser/WebContents;

    .line 2
    check-cast v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    .line 3
    iget-object v0, v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->C:LFW0;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, LFW0;->c()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public computeVerticalScrollRange()I
    .locals 2

    .line 1
    iget-object v0, p0, LnT0;->w:Lorg/chromium/content_public/browser/WebContents;

    .line 2
    check-cast v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    .line 3
    iget-object v0, v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->C:LFW0;

    if-eqz v0, :cond_0

    .line 4
    iget v1, v0, LFW0;->d:F

    invoke-virtual {v0, v1}, LFW0;->a(F)F

    move-result v0

    float-to-double v0, v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LnT0;->a()Lorg/chromium/ui/base/EventForwarder;

    move-result-object v0

    .line 2
    iget-wide v1, v0, Lorg/chromium/ui/base/EventForwarder;->b:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v1, v2, v0, p1}, LJ/N;->MZE$0qqv(JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 4
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public extractSmartClipData(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, LnT0;->w:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/chromium/content_public/browser/WebContents;->a(IIII)V

    return-void
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .line 1
    invoke-virtual {p0}, LnT0;->c()Le11;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Le11;->b()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-super {p0}, Landroid/widget/FrameLayout;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, LnT0;->b()Lb11;

    move-result-object v0

    check-cast v0, LbX0;

    invoke-virtual {v0}, LbX0;->a()V

    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    .line 1
    iget-object v0, p0, LnT0;->w:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, LnT0;->w:Lorg/chromium/content_public/browser/WebContents;

    .line 3
    invoke-static {v0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/input/ImeAdapterImpl;

    move-result-object v0

    .line 4
    invoke-interface {v0}, LJ01;->a()Z

    move-result v0

    return v0
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, LnT0;->x:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 2
    invoke-interface {v1, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, LnT0;->x:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 2
    invoke-interface {v1, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, LnT0;->b()Lb11;

    move-result-object v0

    check-cast v0, LbX0;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v2, "ViewEventSink.onConfigurationChanged"

    .line 2
    :try_start_0
    invoke-static {v2, v1}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, v0, LbX0;->w:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-static {v1}, LgX0;->a(Lorg/chromium/content_public/browser/WebContents;)LgX0;

    move-result-object v1

    .line 4
    iget-object v1, v1, LgX0;->w:LWT;

    invoke-virtual {v1}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LcX0;

    .line 5
    invoke-interface {v3, p1}, LcX0;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, v0, LbX0;->w:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->p()Lorg/chromium/ui/base/ViewAndroidDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lorg/chromium/ui/base/ViewAndroidDelegate;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_1
    invoke-static {v2}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    .line 9
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    :catchall_0
    move-exception p1

    .line 10
    invoke-static {v2}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_2
    throw v1
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    .line 1
    iget-object v0, p0, LnT0;->w:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, LnT0;->w:Lorg/chromium/content_public/browser/WebContents;

    .line 3
    invoke-static {v0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/input/ImeAdapterImpl;

    move-result-object v0

    .line 4
    invoke-interface {v0, p1}, LJ01;->a(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    return-object p1
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    invoke-virtual {p0}, LnT0;->b()Lb11;

    move-result-object v0

    check-cast v0, LbX0;

    invoke-virtual {v0}, LbX0;->b()V

    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 17

    .line 1
    invoke-virtual/range {p0 .. p0}, LnT0;->a()Lorg/chromium/ui/base/EventForwarder;

    move-result-object v2

    .line 2
    iget-wide v0, v2, Lorg/chromium/ui/base/EventForwarder;->b:J

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x1

    cmp-long v6, v0, v3

    if-eqz v6, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v0

    if-nez v0, :cond_1

    new-array v0, v5, [Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v1, "text/*"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->filterMimeTypes(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v8, v0

    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    if-ne v0, v10, :cond_2

    if-eqz v8, :cond_4

    .line 6
    array-length v0, v8

    if-lez v0, :cond_4

    iget-boolean v0, v2, Lorg/chromium/ui/base/EventForwarder;->a:Z

    if-eqz v0, :cond_4

    const/4 v5, 0x1

    goto/16 :goto_2

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_3

    .line 9
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    .line 11
    invoke-virtual {v1, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v6

    .line 12
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/ClipData$Item;->coerceToStyledText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x2

    new-array v1, v1, [I

    move-object/from16 v11, p0

    .line 13
    invoke-virtual {v11, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 14
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v3

    iget v4, v2, Lorg/chromium/ui/base/EventForwarder;->c:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 15
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v4

    iget v6, v2, Lorg/chromium/ui/base/EventForwarder;->d:F

    add-float/2addr v4, v6

    float-to-int v4, v4

    .line 16
    aget v5, v1, v5

    add-int/2addr v5, v3

    .line 17
    aget v1, v1, v10

    add-int/2addr v1, v4

    .line 18
    invoke-virtual {v2}, Lorg/chromium/ui/base/EventForwarder;->a()F

    move-result v6

    .line 19
    iget-wide v12, v2, Lorg/chromium/ui/base/EventForwarder;->b:J

    .line 20
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v7

    int-to-float v3, v3

    div-float/2addr v3, v6

    float-to-int v9, v3

    int-to-float v3, v4

    div-float/2addr v3, v6

    float-to-int v14, v3

    int-to-float v3, v5

    div-float/2addr v3, v6

    float-to-int v15, v3

    int-to-float v1, v1

    div-float/2addr v1, v6

    float-to-int v6, v1

    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-wide v0, v12

    move v3, v7

    move v4, v9

    move v5, v14

    move v7, v6

    move v6, v15

    move-object/from16 v9, v16

    .line 22
    invoke-static/range {v0 .. v9}, LJ/N;->MZ1ZkPta(JLjava/lang/Object;IIIII[Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    :goto_2
    move-object/from16 v11, p0

    :goto_3
    return v5
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2

    const-string v0, "ContentView.onFocusChanged"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {v0, v1}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 3
    invoke-virtual {p0}, LnT0;->b()Lb11;

    move-result-object p2

    const/4 p3, 0x1

    check-cast p2, LbX0;

    .line 4
    iput-boolean p3, p2, LbX0;->A:Z

    .line 5
    invoke-virtual {p0}, LnT0;->b()Lb11;

    move-result-object p2

    check-cast p2, LbX0;

    .line 6
    iget-object p3, p2, LbX0;->x:Ljava/lang/Boolean;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-ne p3, p1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p2, LbX0;->x:Ljava/lang/Boolean;

    .line 8
    invoke-virtual {p2}, LbX0;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :goto_0
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    throw p1
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, LnT0;->a()Lorg/chromium/ui/base/EventForwarder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/ui/base/EventForwarder;->b(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 23

    .line 1
    invoke-virtual/range {p0 .. p0}, LnT0;->a()Lorg/chromium/ui/base/EventForwarder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    const-string v15, "onHoverEvent"

    .line 2
    invoke-static {v15, v1}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x0

    .line 3
    :try_start_0
    invoke-virtual {v0}, Lorg/chromium/ui/base/EventForwarder;->b()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move-object/from16 v13, p1

    .line 4
    invoke-virtual {v0, v13}, Lorg/chromium/ui/base/EventForwarder;->a(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-object v12, v1

    const/16 v17, 0x1

    goto :goto_1

    :goto_0
    move-object/from16 v18, v15

    const/4 v1, 0x0

    goto/16 :goto_5

    :cond_0
    move-object/from16 v13, p1

    move-object v12, v13

    const/16 v17, 0x0

    .line 5
    :goto_1
    :try_start_1
    invoke-virtual {v12}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/16 v3, 0x9

    if-ne v1, v3, :cond_2

    .line 6
    :try_start_2
    iget v1, v0, Lorg/chromium/ui/base/EventForwarder;->e:I

    if-ne v1, v2, :cond_1

    .line 7
    invoke-virtual {v0}, Lorg/chromium/ui/base/EventForwarder;->a()F

    move-result v1

    .line 8
    iget-wide v2, v0, Lorg/chromium/ui/base/EventForwarder;->b:J

    .line 9
    invoke-virtual {v12}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    const/16 v6, 0xc

    .line 10
    invoke-virtual {v12}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    div-float/2addr v7, v1

    invoke-virtual {v12}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    div-float/2addr v8, v1

    invoke-virtual {v12, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    .line 11
    invoke-virtual {v12, v14}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v10

    invoke-virtual {v12, v14}, Landroid/view/MotionEvent;->getOrientation(I)F

    move-result v11

    const/16 v1, 0x19

    .line 12
    invoke-virtual {v12, v1, v14}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v16

    const/16 v18, 0x1

    .line 13
    invoke-virtual {v12}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v19

    .line 14
    invoke-virtual {v12}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v20

    invoke-virtual {v12, v14}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-wide v1, v2

    move-object v3, v0

    move-object/from16 v22, v12

    move/from16 v12, v16

    move/from16 v13, v18

    move/from16 v14, v19

    move-object/from16 v18, v15

    move/from16 v15, v20

    move/from16 v16, v21

    .line 15
    :try_start_3
    invoke-static/range {v1 .. v16}, LJ/N;->M$2oj6EQ(JLjava/lang/Object;JIFFIFFFIIII)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object/from16 v22, v12

    move-object/from16 v18, v15

    goto :goto_6

    :cond_1
    move-object/from16 v22, v12

    move-object/from16 v18, v15

    :goto_2
    const/4 v1, 0x0

    .line 16
    iput v1, v0, Lorg/chromium/ui/base/EventForwarder;->e:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v1, v22

    goto :goto_3

    :cond_2
    move-object/from16 v18, v15

    move-object v1, v12

    .line 17
    :goto_3
    :try_start_4
    invoke-virtual {v0, v1}, Lorg/chromium/ui/base/EventForwarder;->c(Landroid/view/MotionEvent;)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v17, :cond_3

    .line 18
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 19
    :cond_3
    invoke-static/range {v18 .. v18}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    .line 20
    invoke-virtual/range {p0 .. p0}, LnT0;->c()Le11;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 21
    invoke-interface {v1}, Le11;->c()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    :cond_4
    return v0

    :catchall_2
    move-exception v0

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v1, v12

    move-object/from16 v18, v15

    :goto_4
    move-object/from16 v22, v1

    goto :goto_6

    :catchall_4
    move-exception v0

    goto/16 :goto_0

    :goto_5
    move-object/from16 v22, p1

    const/16 v17, 0x0

    :goto_6
    if-eqz v17, :cond_5

    .line 22
    invoke-virtual/range {v22 .. v22}, Landroid/view/MotionEvent;->recycle()V

    .line 23
    :cond_5
    invoke-static/range {v18 .. v18}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_6
    throw v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, LnT0;->a()Lorg/chromium/ui/base/EventForwarder;

    move-result-object v0

    .line 2
    iget-wide v1, v0, Lorg/chromium/ui/base/EventForwarder;->b:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v1, v2, v0, p2, p1}, LJ/N;->MRbfSEI1(JLjava/lang/Object;Ljava/lang/Object;I)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public onMeasure(II)V
    .locals 2

    .line 1
    iget v0, p0, LnT0;->B:I

    sget v1, LnT0;->D:I

    if-eq v0, v1, :cond_0

    move p1, v0

    .line 2
    :cond_0
    iget v0, p0, LnT0;->C:I

    sget v1, LnT0;->D:I

    if-eq v0, v1, :cond_1

    move p2, v0

    .line 3
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onScrollChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onScrollChanged(IIII)V

    return-void
.end method

.method public onSystemUiVisibilityChange(I)V
    .locals 2

    .line 1
    iget-object v0, p0, LnT0;->y:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View$OnSystemUiVisibilityChangeListener;

    .line 2
    invoke-interface {v1, p1}, Landroid/view/View$OnSystemUiVisibilityChangeListener;->onSystemUiVisibilityChange(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 42

    move-object/from16 v1, p1

    .line 1
    invoke-virtual/range {p0 .. p0}, LnT0;->a()Lorg/chromium/ui/base/EventForwarder;

    move-result-object v3

    const/4 v0, 0x0

    if-eqz v3, :cond_18

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-ne v4, v6, :cond_7

    .line 3
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v8

    if-nez v8, :cond_1

    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    if-eqz v8, :cond_0

    .line 6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    if-eq v8, v5, :cond_0

    .line 7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    if-ne v8, v7, :cond_1

    :cond_0
    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    :goto_0
    const/16 v9, 0x17

    if-lt v4, v9, :cond_7

    if-nez v8, :cond_7

    const-string v4, "sendMouseEvent"

    .line 8
    invoke-static {v4, v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :try_start_0
    invoke-virtual {v3}, Lorg/chromium/ui/base/EventForwarder;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v3, v1}, Lorg/chromium/ui/base/EventForwarder;->a(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    move-object v1, v0

    const/4 v2, 0x1

    .line 11
    :cond_2
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v5, 0xb

    if-eq v0, v5, :cond_3

    const/16 v5, 0xc

    if-ne v0, v5, :cond_4

    .line 12
    :cond_3
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    iput v0, v3, Lorg/chromium/ui/base/EventForwarder;->e:I

    .line 13
    :cond_4
    invoke-virtual {v3, v1}, Lorg/chromium/ui/base/EventForwarder;->c(Landroid/view/MotionEvent;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_5

    .line 14
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 15
    :cond_5
    invoke-static {v4}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    goto/16 :goto_e

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_6

    .line 16
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 17
    :cond_6
    invoke-static {v4}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    throw v0

    :cond_7
    const/16 v31, 0x0

    const-string v15, "sendTouchEvent"

    .line 18
    invoke-static {v15, v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    if-lez v0, :cond_8

    .line 20
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v8

    goto :goto_1

    .line 21
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    .line 22
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 23
    invoke-static {v0}, LLc1;->a(I)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v0, :cond_a

    if-eq v0, v7, :cond_a

    if-eq v0, v6, :cond_a

    if-eq v0, v5, :cond_a

    const/4 v4, 0x5

    if-eq v0, v4, :cond_a

    const/4 v4, 0x6

    if-ne v0, v4, :cond_9

    goto :goto_2

    :cond_9
    const/4 v4, 0x0

    goto :goto_3

    :cond_a
    :goto_2
    const/4 v4, 0x1

    :goto_3
    if-nez v4, :cond_b

    .line 24
    invoke-static {v15}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto/16 :goto_e

    .line 25
    :cond_b
    :try_start_2
    invoke-virtual {v3}, Lorg/chromium/ui/base/EventForwarder;->b()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 26
    invoke-virtual {v3, v1}, Lorg/chromium/ui/base/EventForwarder;->a(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    move-object v14, v1

    const/16 v32, 0x1

    goto :goto_4

    :cond_c
    move-object v14, v1

    const/16 v32, 0x0

    .line 27
    :goto_4
    invoke-virtual {v14}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    new-array v1, v5, [F

    .line 28
    invoke-virtual {v14}, Landroid/view/MotionEvent;->getTouchMajor()F

    move-result v4

    aput v4, v1, v2

    const/4 v4, 0x0

    if-le v10, v7, :cond_d

    invoke-virtual {v14, v7}, Landroid/view/MotionEvent;->getTouchMajor(I)F

    move-result v6

    goto :goto_5

    :cond_d
    const/4 v6, 0x0

    :goto_5
    aput v6, v1, v7

    new-array v6, v5, [F

    .line 29
    invoke-virtual {v14}, Landroid/view/MotionEvent;->getTouchMinor()F

    move-result v11

    aput v11, v6, v2

    if-le v10, v7, :cond_e

    invoke-virtual {v14, v7}, Landroid/view/MotionEvent;->getTouchMinor(I)F

    move-result v11

    goto :goto_6

    :cond_e
    const/4 v11, 0x0

    :goto_6
    aput v11, v6, v7

    const/4 v11, 0x0

    :goto_7
    if-ge v11, v5, :cond_10

    .line 30
    aget v12, v1, v11

    aget v13, v6, v11

    cmpg-float v12, v12, v13

    if-gez v12, :cond_f

    .line 31
    aget v12, v1, v11

    .line 32
    aget v13, v6, v11

    aput v13, v1, v11

    .line 33
    aput v12, v6, v11

    :cond_f
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_10
    if-le v10, v7, :cond_11

    .line 34
    invoke-virtual {v14, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    goto :goto_8

    :cond_11
    const/4 v5, 0x0

    :goto_8
    if-le v10, v7, :cond_12

    .line 35
    invoke-virtual {v14, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    goto :goto_9

    :cond_12
    const/4 v11, 0x0

    .line 36
    :goto_9
    invoke-virtual {v3}, Lorg/chromium/ui/base/EventForwarder;->a()F

    move-result v12

    move-wide/from16 v16, v8

    .line 37
    iget-wide v7, v3, Lorg/chromium/ui/base/EventForwarder;->b:J

    .line 38
    invoke-virtual {v14}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v9

    invoke-virtual {v14}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v18

    invoke-virtual {v14}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    div-float v19, v19, v12

    .line 39
    invoke-virtual {v14}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    div-float v20, v20, v12

    div-float v21, v5, v12

    div-float v22, v11, v12

    .line 40
    invoke-virtual {v14, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v23

    const/4 v5, 0x1

    if-le v10, v5, :cond_13

    invoke-virtual {v14, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    move/from16 v24, v11

    goto :goto_a

    :cond_13
    const/4 v11, -0x1

    const/16 v24, -0x1

    :goto_a
    aget v11, v1, v2

    div-float v25, v11, v12

    aget v1, v1, v5

    div-float v26, v1, v12

    aget v1, v6, v2

    div-float v27, v1, v12

    aget v1, v6, v5

    div-float v28, v1, v12

    .line 41
    invoke-virtual {v14}, Landroid/view/MotionEvent;->getOrientation()F

    move-result v29

    if-le v10, v5, :cond_14

    .line 42
    invoke-virtual {v14, v5}, Landroid/view/MotionEvent;->getOrientation(I)F

    move-result v1

    move/from16 v30, v1

    goto :goto_b

    :cond_14
    const/16 v30, 0x0

    :goto_b
    const/16 v1, 0x19

    .line 43
    invoke-virtual {v14, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v33

    if-le v10, v5, :cond_15

    .line 44
    invoke-virtual {v14, v1, v5}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v1

    move/from16 v34, v1

    goto :goto_c

    :cond_15
    const/16 v34, 0x0

    .line 45
    :goto_c
    invoke-virtual {v14}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    div-float v35, v1, v12

    invoke-virtual {v14}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    div-float v36, v1, v12

    invoke-virtual {v14, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v37

    const/4 v1, 0x1

    if-le v10, v1, :cond_16

    .line 46
    invoke-virtual {v14, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    move/from16 v38, v1

    goto :goto_d

    :cond_16
    const/16 v38, 0x0

    .line 47
    :goto_d
    invoke-virtual {v14}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v39

    invoke-virtual {v14}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v40
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-wide v1, v7

    move-object v4, v14

    move-wide/from16 v5, v16

    move v7, v0

    move v8, v10

    move/from16 v10, v18

    move/from16 v11, v19

    move/from16 v12, v20

    move/from16 v13, v21

    move-object v0, v14

    move/from16 v14, v22

    move-object/from16 v41, v15

    move/from16 v15, v23

    move/from16 v16, v24

    move/from16 v17, v25

    move/from16 v18, v26

    move/from16 v19, v27

    move/from16 v20, v28

    move/from16 v21, v29

    move/from16 v22, v30

    move/from16 v23, v33

    move/from16 v24, v34

    move/from16 v25, v35

    move/from16 v26, v36

    move/from16 v27, v37

    move/from16 v28, v38

    move/from16 v29, v39

    move/from16 v30, v40

    .line 48
    :try_start_3
    invoke-static/range {v1 .. v31}, LJ/N;->Mcw1yi1C(JLjava/lang/Object;Ljava/lang/Object;JIIIIFFFFIIFFFFFFFFFFIIIIZ)Z

    move-result v2

    if-eqz v32, :cond_17

    .line 49
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 50
    :cond_17
    invoke-static/range {v41 .. v41}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    move v0, v2

    :goto_e
    return v0

    :catchall_1
    move-exception v0

    goto :goto_f

    :catchall_2
    move-exception v0

    move-object/from16 v41, v15

    :goto_f
    invoke-static/range {v41 .. v41}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_18
    throw v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 2
    invoke-virtual {p0}, LnT0;->b()Lb11;

    move-result-object v0

    check-cast v0, LbX0;

    invoke-virtual {v0, p1}, LbX0;->a(Z)V

    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, LnT0;->c()Le11;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Le11;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0, p1, p2}, Le11;->a(ILandroid/os/Bundle;)Z

    move-result p1

    goto :goto_0

    .line 4
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public performLongClick()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public scrollBy(II)V
    .locals 6

    .line 1
    invoke-virtual {p0}, LnT0;->a()Lorg/chromium/ui/base/EventForwarder;

    move-result-object v0

    int-to-float p1, p1

    int-to-float p2, p2

    .line 2
    iget-wide v1, v0, Lorg/chromium/ui/base/EventForwarder;->b:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v1, v2, v0, p1, p2}, LJ/N;->MMwH$VBb(JLjava/lang/Object;FF)V

    :goto_0
    return-void
.end method

.method public scrollTo(II)V
    .locals 6

    .line 1
    invoke-virtual {p0}, LnT0;->a()Lorg/chromium/ui/base/EventForwarder;

    move-result-object v0

    int-to-float p1, p1

    int-to-float p2, p2

    .line 2
    iget-wide v1, v0, Lorg/chromium/ui/base/EventForwarder;->b:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v1, v2, v0, p1, p2}, LJ/N;->M6lTZ5w8(JLjava/lang/Object;FF)V

    :goto_0
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method public setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    return-void
.end method

.method public setSmartClipResultHandler(Landroid/os/Handler;)V
    .locals 1

    .line 1
    iget-object v0, p0, LnT0;->w:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v0, p1}, Lorg/chromium/content_public/browser/WebContents;->setSmartClipResultHandler(Landroid/os/Handler;)V

    return-void
.end method
