.class public Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "PG"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;
.implements Le11;
.implements LcX0;
.implements LxU;


# instance fields
.field public A:J

.field public B:Landroid/graphics/Rect;

.field public C:Z

.field public D:I

.field public E:I

.field public F:Landroid/view/ViewGroup;

.field public G:Z

.field public H:Z

.field public I:Z

.field public J:I

.field public K:I

.field public L:I

.field public M:I

.field public N:I

.field public O:Ljava/lang/Runnable;

.field public P:Landroid/view/View;

.field public Q:Lorg/chromium/content/browser/accessibility/captioning/CaptioningController;

.field public R:Z

.field public S:Z

.field public T:Z

.field public U:Z

.field public final w:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

.field public x:Landroid/view/accessibility/AccessibilityManager;

.field public final y:Landroid/content/Context;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->D:I

    .line 3
    check-cast p1, Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    iput-object p1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->w:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    .line 4
    invoke-virtual {p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->p()Lorg/chromium/ui/base/ViewAndroidDelegate;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/ui/base/ViewAndroidDelegate;->getContainerView()Landroid/view/ViewGroup;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->F:Landroid/view/ViewGroup;

    .line 5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->y:Landroid/content/Context;

    .line 6
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->w:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    .line 7
    iget-object v0, v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->E:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->z:Ljava/lang/String;

    const-string v0, "accessibility"

    .line 9
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->x:Landroid/view/accessibility/AccessibilityManager;

    .line 10
    new-instance p1, Lorg/chromium/content/browser/accessibility/captioning/CaptioningController;

    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->w:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-direct {p1, v0}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningController;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    iput-object p1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->Q:Lorg/chromium/content/browser/accessibility/captioning/CaptioningController;

    .line 11
    iget-object p1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->w:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-static {p1}, LgX0;->a(Lorg/chromium/content_public/browser/WebContents;)LgX0;

    move-result-object p1

    .line 12
    iget-object v0, p1, LgX0;->w:LWT;

    invoke-virtual {v0, p0}, LWT;->a(Ljava/lang/Object;)Z

    .line 13
    iget-boolean p1, p1, LgX0;->z:Z

    if-eqz p1, :cond_0

    invoke-interface {p0}, LcX0;->onAttachedToWindow()V

    :cond_0
    return-void
.end method

.method public static a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;
    .locals 2

    .line 2
    check-cast p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    const-class v0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;

    .line 3
    sget-object v1, LpX0;->a:Lt01;

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->a(Ljava/lang/Class;Lt01;)LxU;

    move-result-object p0

    check-cast p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;

    return-object p0
.end method

.method public static synthetic a(Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->i()V

    return-void
.end method

.method private addAccessibilityNodeInfoActions(Landroid/view/accessibility/AccessibilityNodeInfo;IZZZZZZZZZZZZZZZ)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    const/16 v2, 0x400

    .line 1
    invoke-virtual {p0, p1, v2}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->a(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    const/16 v2, 0x800

    .line 2
    invoke-virtual {p0, p1, v2}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->a(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    const v2, 0x1020036

    .line 3
    invoke-virtual {p0, p1, v2}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->a(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    const v2, 0x102003c

    .line 4
    invoke-virtual {p0, p1, v2}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->a(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    if-eqz p17, :cond_0

    const/16 v2, 0x100

    .line 5
    invoke-virtual {p0, p1, v2}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->a(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    const/16 v2, 0x200

    .line 6
    invoke-virtual {p0, p1, v2}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->a(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    :cond_0
    if-eqz p10, :cond_1

    if-eqz p11, :cond_1

    const/high16 v2, 0x200000

    .line 7
    invoke-virtual {p0, p1, v2}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->a(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    const v2, 0x8000

    .line 8
    invoke-virtual {p0, p1, v2}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->a(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    if-eqz p16, :cond_1

    const/high16 v2, 0x20000

    .line 9
    invoke-virtual {p0, p1, v2}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->a(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    const/high16 v2, 0x10000

    .line 10
    invoke-virtual {p0, p1, v2}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->a(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    const/16 v2, 0x4000

    .line 11
    invoke-virtual {p0, p1, v2}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->a(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    :cond_1
    if-eqz p3, :cond_2

    const/16 v2, 0x1000

    .line 12
    invoke-virtual {p0, p1, v2}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->a(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    :cond_2
    if-eqz p4, :cond_3

    const/16 v2, 0x2000

    .line 13
    invoke-virtual {p0, p1, v2}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->a(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    :cond_3
    if-eqz p5, :cond_4

    const v2, 0x1020038

    .line 14
    invoke-virtual {p0, p1, v2}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->a(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    :cond_4
    if-eqz p6, :cond_5

    const v2, 0x102003a

    .line 15
    invoke-virtual {p0, p1, v2}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->a(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    :cond_5
    if-eqz p7, :cond_6

    const v2, 0x1020039

    .line 16
    invoke-virtual {p0, p1, v2}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->a(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    :cond_6
    if-eqz p8, :cond_7

    const v2, 0x102003b

    .line 17
    invoke-virtual {p0, p1, v2}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->a(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    :cond_7
    if-eqz p12, :cond_9

    if-eqz p13, :cond_8

    const/4 v2, 0x2

    .line 18
    invoke-virtual {p0, p1, v2}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->a(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    goto :goto_0

    :cond_8
    const/4 v2, 0x1

    .line 19
    invoke-virtual {p0, p1, v2}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->a(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    .line 20
    :cond_9
    :goto_0
    iget v2, v0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->M:I

    move v3, p2

    if-ne v2, v3, :cond_a

    const/16 v2, 0x80

    .line 21
    invoke-virtual {p0, p1, v2}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->a(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    goto :goto_1

    :cond_a
    const/16 v2, 0x40

    .line 22
    invoke-virtual {p0, p1, v2}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->a(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    :goto_1
    if-eqz p9, :cond_b

    const/16 v2, 0x10

    .line 23
    invoke-virtual {p0, p1, v2}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->a(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    :cond_b
    if-eqz p14, :cond_c

    const/high16 v2, 0x40000

    .line 24
    invoke-virtual {p0, p1, v2}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->a(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    :cond_c
    if-eqz p15, :cond_d

    const/high16 v2, 0x80000

    .line 25
    invoke-virtual {p0, p1, v2}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->a(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    :cond_d
    return-void
.end method

.method private addAccessibilityNodeInfoChild(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->F:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    return-void
.end method

.method private announceLiveRegionText(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->F:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private finishGranularityMove(Ljava/lang/String;ZIIZ)V
    .locals 8

    .line 1
    iget v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->N:I

    const/16 v1, 0x2000

    invoke-virtual {p0, v0, v1}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->a(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->N:I

    const/high16 v2, 0x20000

    invoke-virtual {p0, v1, v2}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->a(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    return-void

    :cond_1
    if-eqz p5, :cond_2

    .line 4
    iput p4, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->L:I

    goto :goto_0

    .line 5
    :cond_2
    iput p3, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->L:I

    :goto_0
    if-nez p2, :cond_3

    .line 6
    iget p2, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->L:I

    iput p2, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->K:I

    .line 7
    :cond_3
    iget-wide v2, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->A:J

    iget p2, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->N:I

    .line 8
    invoke-static {v2, v3, p0, p2}, LJ/N;->MCMbXu4W(JLjava/lang/Object;I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 9
    iget-wide v2, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->A:J

    iget p2, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->N:I

    .line 10
    invoke-static {v2, v3, p0, p2}, LJ/N;->M8UuMlLD(JLjava/lang/Object;I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 11
    iget-wide v2, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->A:J

    iget v5, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->N:I

    iget v6, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->K:I

    iget v7, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->L:I

    move-object v4, p0

    .line 12
    invoke-static/range {v2 .. v7}, LJ/N;->MVuu0R4P(JLjava/lang/Object;III)V

    .line 13
    :cond_4
    iget p2, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->K:I

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 14
    iget p2, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->K:I

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    if-eqz p5, :cond_5

    .line 16
    iget-wide v2, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->A:J

    iget p2, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->N:I

    .line 17
    invoke-static {v2, v3, p0, p2}, LJ/N;->MCMbXu4W(JLjava/lang/Object;I)Z

    move-result p2

    if-eqz p2, :cond_5

    add-int/lit8 p3, p3, -0x1

    .line 18
    invoke-virtual {v1, p3}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    add-int/lit8 p4, p4, -0x1

    .line 19
    invoke-virtual {v1, p4}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    goto :goto_1

    .line 20
    :cond_5
    invoke-virtual {v1, p3}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 21
    invoke-virtual {v1, p4}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 22
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 23
    iget p2, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->J:I

    invoke-virtual {v1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setMovementGranularity(I)V

    .line 24
    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz p5, :cond_6

    const/16 p1, 0x100

    .line 25
    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityEvent;->setAction(I)V

    goto :goto_2

    :cond_6
    const/16 p1, 0x200

    .line 26
    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityEvent;->setAction(I)V

    .line 27
    :goto_2
    iget-object p1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->F:Landroid/view/ViewGroup;

    invoke-virtual {p1, p1, v0}, Landroid/view/ViewGroup;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 28
    iget-object p1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->F:Landroid/view/ViewGroup;

    invoke-virtual {p1, p1, v1}, Landroid/view/ViewGroup;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    return-void
.end method

.method private getAccessibilityServiceEventTypeMask()I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->x:Landroid/view/accessibility/AccessibilityManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 2
    iget v2, v2, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method private getAccessibilityServiceFeedbackTypeMask()I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->x:Landroid/view/accessibility/AccessibilityManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 2
    iget v2, v2, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method private getAccessibilityServiceFlagsMask()I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->x:Landroid/view/accessibility/AccessibilityManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 2
    iget v2, v2, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method private handleCheckStateChanged(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->b(II)V

    return-void
.end method

.method private handleClicked(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->b(II)V

    return-void
.end method

.method private handleContentChanged(I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->A:J

    .line 2
    invoke-static {v0, v1, p0}, LJ/N;->MI8pU34f(JLjava/lang/Object;)I

    move-result v0

    .line 3
    iget v1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->E:I

    if-eq v0, v1, :cond_0

    .line 4
    iput v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->E:I

    .line 5
    invoke-virtual {p0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->i()V

    goto :goto_0

    :cond_0
    const/16 v0, 0x800

    .line 6
    invoke-virtual {p0, p1, v0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->b(II)V

    :goto_0
    return-void
.end method

.method private handleEditableTextChanged(I)V
    .locals 1

    const/16 v0, 0x10

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->b(II)V

    return-void
.end method

.method private handleFocusChanged(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->S:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->M:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    .line 2
    invoke-virtual {p0, p1, v0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->b(II)V

    .line 3
    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->b(I)Z

    return-void
.end method

.method private handleHover(I)V
    .locals 2

    .line 1
    iget v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->D:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->C:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/16 v0, 0x80

    .line 3
    invoke-virtual {p0, p1, v0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->b(II)V

    .line 4
    iget v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->D:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    const/16 v1, 0x100

    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->b(II)V

    .line 6
    :cond_2
    iput p1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->D:I

    return-void
.end method

.method private handleNavigate()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->M:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->B:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->G:Z

    .line 4
    invoke-virtual {p0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->i()V

    return-void
.end method

.method private handlePageLoaded(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->S:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->G:Z

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->c(I)V

    return-void
.end method

.method private handleScrollPositionChanged(I)V
    .locals 1

    const/16 v0, 0x1000

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->b(II)V

    return-void
.end method

.method private handleScrolledToAnchor(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->b(I)Z

    return-void
.end method

.method private handleSliderChanged(I)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->M:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, p1, v0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->b(II)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x1000

    .line 3
    invoke-virtual {p0, p1, v0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->b(II)V

    :goto_0
    return-void
.end method

.method private handleTextSelectionChanged(I)V
    .locals 1

    const/16 v0, 0x2000

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->b(II)V

    return-void
.end method

.method private notifyFrameInfoInitialized()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->I:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->I:Z

    .line 3
    invoke-virtual {p0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->i()V

    .line 4
    iget-boolean v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->S:Z

    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    iget v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->M:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 6
    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->c(I)V

    :cond_2
    return-void
.end method

.method private onHoverEvent(I)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0xa

    const/4 v2, 0x1

    if-ne p1, v0, :cond_3

    .line 2
    iput-boolean v1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->C:Z

    .line 3
    iget p1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->D:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/16 v3, 0x100

    .line 4
    invoke-virtual {p0, p1, v3}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->b(II)V

    .line 5
    iput v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->D:I

    .line 6
    :cond_1
    iget-boolean p1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->H:Z

    if-eqz p1, :cond_2

    .line 7
    iget-wide v3, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->A:J

    iget p1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->M:I

    .line 8
    invoke-static {v3, v4, p0, p1}, LJ/N;->MB302_MP(JLjava/lang/Object;I)V

    .line 9
    :cond_2
    iput-boolean v1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->H:Z

    return v2

    .line 10
    :cond_3
    iput-boolean v2, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->C:Z

    .line 11
    iput-boolean v2, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->G:Z

    return v2
.end method

.method private sendDelayedWindowContentChangedEvent()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->O:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, LnX0;

    invoke-direct {v0, p0}, LnX0;-><init>(Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;)V

    iput-object v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->O:Ljava/lang/Runnable;

    .line 3
    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->F:Landroid/view/ViewGroup;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setAccessibilityEventBooleanAttributes(Landroid/view/accessibility/AccessibilityEvent;ZZZZ)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 2
    invoke-virtual {p1, p3}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 3
    invoke-virtual {p1, p4}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    .line 4
    invoke-virtual {p1, p5}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    return-void
.end method

.method private setAccessibilityEventClassName(Landroid/view/accessibility/AccessibilityEvent;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setAccessibilityEventListAttributes(Landroid/view/accessibility/AccessibilityEvent;II)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 2
    invoke-virtual {p1, p3}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    return-void
.end method

.method private setAccessibilityEventScrollAttributes(Landroid/view/accessibility/AccessibilityEvent;IIII)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    .line 2
    invoke-virtual {p1, p3}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 3
    invoke-virtual {p1, p4}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    .line 4
    invoke-virtual {p1, p5}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    return-void
.end method

.method private setAccessibilityEventSelectionAttrs(Landroid/view/accessibility/AccessibilityEvent;IIILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 2
    invoke-virtual {p1, p3}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 3
    invoke-virtual {p1, p4}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 4
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private setAccessibilityEventTextChangedAttrs(Landroid/view/accessibility/AccessibilityEvent;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 2
    invoke-virtual {p1, p3}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 3
    invoke-virtual {p1, p4}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    .line 4
    invoke-virtual {p1, p5}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private setAccessibilityNodeInfoBooleanAttributes(Landroid/view/accessibility/AccessibilityNodeInfo;IZZZZZZZZZZ)V
    .locals 0

    .line 1
    invoke-virtual {p1, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 2
    invoke-virtual {p1, p4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 3
    invoke-virtual {p1, p5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 4
    invoke-virtual {p1, p6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 5
    invoke-virtual {p1, p7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 6
    invoke-virtual {p1, p8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    .line 7
    invoke-virtual {p1, p9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPassword(Z)V

    .line 8
    invoke-virtual {p1, p10}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 9
    invoke-virtual {p1, p11}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 10
    invoke-virtual {p1, p12}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    const/4 p3, 0x7

    .line 11
    invoke-virtual {p1, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    .line 12
    iget p3, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->M:I

    if-ne p3, p2, :cond_0

    const/4 p2, 0x1

    .line 13
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 14
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    :goto_0
    return-void
.end method

.method private setAccessibilityNodeInfoClassName(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setAccessibilityNodeInfoLocation(Landroid/view/accessibility/AccessibilityNodeInfo;IIIIIIIZ)V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    add-int v1, p5, p7

    add-int v2, p6, p8

    invoke-direct {v0, p5, p6, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz p9, :cond_0

    .line 2
    iget-object p5, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->w:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    .line 3
    iget-object p5, p5, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->C:LFW0;

    const/4 p6, 0x0

    .line 4
    iget p5, p5, LFW0;->k:F

    float-to-int p5, p5

    .line 5
    invoke-virtual {v0, p6, p5}, Landroid/graphics/Rect;->offset(II)V

    .line 6
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 7
    new-instance p5, Landroid/graphics/Rect;

    add-int/2addr p7, p3

    add-int/2addr p8, p4

    invoke-direct {p5, p3, p4, p7, p8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 8
    invoke-virtual {p0, p5}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->a(Landroid/graphics/Rect;)V

    .line 9
    invoke-virtual {p1, p5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 10
    iget p1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->M:I

    if-ne p2, p1, :cond_2

    iget p1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->E:I

    if-eq p2, p1, :cond_2

    .line 11
    iget-object p1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->B:Landroid/graphics/Rect;

    if-nez p1, :cond_1

    .line 12
    iput-object p5, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->B:Landroid/graphics/Rect;

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p1, p5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 14
    iput-object p5, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->B:Landroid/graphics/Rect;

    .line 15
    invoke-virtual {p0, p2}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->c(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setAccessibilityNodeInfoParent(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->F:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;I)V

    return-void
.end method

.method private setAccessibilityNodeInfoText(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2, p4, p5}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/accessibility/AccessibilityEvent;)Landroid/os/Bundle;
    .locals 1

    .line 64
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getParcelableData()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 66
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setParcelableData(Landroid/os/Parcelable;)V

    :cond_0
    return-object v0
.end method

.method public final a(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 8

    .line 56
    invoke-virtual {p0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->f()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->F:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->postInvalidate()V

    .line 58
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 59
    iget-object v2, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->y:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v2, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->F:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 61
    iget-wide v2, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->A:J

    move-object v4, p0

    move-object v5, v0

    move v6, p1

    move v7, p2

    .line 62
    invoke-static/range {v2 .. v7}, LJ/N;->M2E1dEU9(JLjava/lang/Object;Ljava/lang/Object;II)Z

    move-result p1

    if-nez p1, :cond_1

    .line 63
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    return-object v1

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    if-eqz p2, :cond_0

    .line 68
    new-instance p2, Landroid/text/SpannableString;

    invoke-direct {p2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 69
    new-instance p1, Landroid/text/style/URLSpan;

    const-string p3, ""

    invoke-direct {p1, p3}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/text/SpannableString;->length()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, p3, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object p2

    :cond_0
    return-object p1
.end method

.method public a()V
    .locals 2

    .line 47
    invoke-virtual {p0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->A:J

    .line 49
    invoke-static {v0, v1, p0}, LJ/N;->MdET073e(JLjava/lang/Object;)V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->P:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Rect;)V
    .locals 5

    .line 70
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->w:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    .line 71
    iget-object v0, v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->C:LFW0;

    .line 72
    iget v1, v0, LFW0;->a:F

    float-to-int v1, v1

    neg-int v1, v1

    .line 73
    iget v2, v0, LFW0;->b:F

    float-to-int v2, v2

    neg-int v2, v2

    .line 74
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 75
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, LFW0;->a(F)F

    move-result v1

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 76
    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, LFW0;->a(F)F

    move-result v1

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 77
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, LFW0;->a(F)F

    move-result v1

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 78
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, LFW0;->a(F)F

    move-result v1

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 79
    iget v1, v0, LFW0;->k:F

    float-to-int v1, v1

    const/4 v2, 0x0

    .line 80
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 81
    iget-object v3, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->F:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 82
    aget v2, v1, v2

    const/4 v3, 0x1

    aget v4, v1, v3

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 83
    aget v1, v1, v3

    .line 84
    iget v0, v0, LFW0;->k:F

    float-to-int v0, v0

    add-int/2addr v1, v0

    .line 85
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->F:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    add-int/2addr v0, v1

    .line 86
    iget v2, p1, Landroid/graphics/Rect;->top:I

    if-ge v2, v1, :cond_0

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 87
    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-le v1, v0, :cond_1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_1
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .line 43
    invoke-virtual {p0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iput-object p1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->P:Landroid/view/View;

    .line 45
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->A:J

    .line 46
    invoke-static {v0, v1, p0}, LJ/N;->MMiqVowe(JLjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/ViewStructure;Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;Z)V
    .locals 11

    .line 14
    iget-object v0, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/ViewStructure;->setClassName(Ljava/lang/String;)V

    .line 15
    iget-boolean v0, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->p:Z

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->g:Ljava/lang/String;

    iget v1, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->q:I

    iget v2, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->r:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;II)V

    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;)V

    .line 18
    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->w:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    .line 19
    iget-object v0, v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->C:LFW0;

    .line 20
    iget v1, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->a:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, LFW0;->a(F)F

    move-result v1

    float-to-int v1, v1

    .line 21
    iget v2, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->b:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, LFW0;->a(F)F

    move-result v2

    float-to-int v2, v2

    .line 22
    iget v3, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->c:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, LFW0;->a(F)F

    move-result v3

    float-to-int v9, v3

    .line 23
    iget v3, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->d:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, LFW0;->a(F)F

    move-result v3

    float-to-int v10, v3

    .line 24
    new-instance v3, Landroid/graphics/Rect;

    add-int v4, v1, v9

    add-int v5, v2, v10

    invoke-direct {v3, v1, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 25
    iget-boolean v1, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->e:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 26
    iget v1, v0, LFW0;->k:F

    float-to-int v1, v1

    .line 27
    invoke-virtual {v3, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    if-nez p3, :cond_1

    .line 28
    invoke-virtual {v0}, LFW0;->a()F

    move-result p3

    float-to-int p3, p3

    neg-int p3, p3

    .line 29
    invoke-virtual {v0}, LFW0;->b()F

    move-result v1

    float-to-int v1, v1

    neg-int v1, v1

    .line 30
    invoke-virtual {v3, p3, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 31
    :cond_1
    iget v5, v3, Landroid/graphics/Rect;->left:I

    iget v6, v3, Landroid/graphics/Rect;->top:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v10}, Landroid/view/ViewStructure;->setDimens(IIIIII)V

    .line 32
    iget-object p3, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->s:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/view/ViewStructure;->setChildCount(I)V

    .line 33
    iget-boolean p3, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->i:Z

    if-eqz p3, :cond_5

    .line 34
    iget p3, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->f:F

    invoke-virtual {v0, p3}, LFW0;->a(F)F

    move-result p3

    .line 35
    iget-boolean v0, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->l:Z

    .line 36
    iget-boolean v1, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->m:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    or-int/2addr v0, v1

    .line 37
    iget-boolean v1, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->n:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    or-int/2addr v0, v1

    .line 38
    iget-boolean v1, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->o:Z

    if-eqz v1, :cond_4

    const/16 v1, 0x8

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    or-int/2addr v0, v1

    .line 39
    iget v1, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->j:I

    iget v3, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->k:I

    invoke-virtual {p1, p3, v1, v3, v0}, Landroid/view/ViewStructure;->setTextStyle(FIII)V

    .line 40
    :cond_5
    :goto_4
    iget-object p3, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->s:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge v2, p3, :cond_6

    .line 41
    invoke-virtual {p1, v2}, Landroid/view/ViewStructure;->asyncNewChild(I)Landroid/view/ViewStructure;

    move-result-object p3

    iget-object v0, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;

    const/4 v1, 0x1

    invoke-virtual {p0, p3, v0, v1}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->a(Landroid/view/ViewStructure;Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 42
    :cond_6
    invoke-virtual {p1}, Landroid/view/ViewStructure;->asyncCommit()V

    return-void
.end method

.method public a(Landroid/view/ViewStructure;Z)V
    .locals 2

    .line 6
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->w:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p1, v1}, Landroid/view/ViewStructure;->setChildCount(I)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/ViewStructure;->setChildCount(I)V

    .line 9
    invoke-virtual {p1, v1}, Landroid/view/ViewStructure;->asyncNewChild(I)Landroid/view/ViewStructure;

    move-result-object p1

    .line 10
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->w:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    new-instance v1, LmX0;

    invoke-direct {v1, p0, p1, p2}, LmX0;-><init>(Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;Landroid/view/ViewStructure;Z)V

    .line 11
    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->b()V

    .line 12
    iget-wide p1, v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    .line 13
    invoke-static {p1, p2, v0, v1}, LJ/N;->M16eLpU9(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .locals 1

    const/high16 v0, 0x200000

    if-le p2, v0, :cond_0

    return-void

    .line 67
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    return-void
.end method

.method public a(Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->S:Z

    return-void
.end method

.method public a(ZZ)V
    .locals 0

    return-void
.end method

.method public a(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public a(ILandroid/os/Bundle;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final a(ILjava/lang/String;Z)Z
    .locals 6

    .line 51
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->A:J

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    .line 52
    invoke-static/range {v0 .. v5}, LJ/N;->MavOU0SM(JLjava/lang/Object;ILjava/lang/String;Z)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 53
    :cond_0
    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->b(I)Z

    .line 54
    iget-wide p1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->A:J

    iget p3, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->M:I

    .line 55
    invoke-static {p1, p2, p0, p3}, LJ/N;->MB302_MP(JLjava/lang/Object;I)V

    const/4 p1, 0x1

    return p1
.end method

.method public b()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->T:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->g()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    iget-boolean v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->R:Z

    if-nez v0, :cond_1

    return-object v1

    .line 4
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->w:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    .line 5
    invoke-static {p0, v0}, LJ/N;->MjYAnP1s(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v2

    .line 6
    iput-wide v2, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->A:J

    .line 7
    invoke-virtual {p0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->h()V

    .line 8
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v2, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->A:J

    .line 9
    invoke-static {v2, v3, p0}, LJ/N;->Mr9fGid2(JLjava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_4

    .line 10
    iget-wide v2, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->A:J

    .line 11
    invoke-static {v2, v3, p0}, LJ/N;->Mg$cuhZc(JLjava/lang/Object;)V

    return-object v1

    :cond_4
    return-object p0
.end method

.method public final b(II)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 30
    iget-object p1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->F:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    return-void

    .line 31
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->a(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 32
    iget-object p2, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->F:Landroid/view/ViewGroup;

    invoke-virtual {p2, p2, p1}, Landroid/view/ViewGroup;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_1
    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 12
    iget-boolean v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->T:Z

    if-eq p1, v0, :cond_0

    .line 13
    iput-boolean p1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->T:Z

    .line 14
    iget-object p1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->F:Landroid/view/ViewGroup;

    const/16 v0, 0x800

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public final b(I)Z
    .locals 4

    .line 15
    iget v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->M:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    .line 16
    :cond_0
    iget-wide v2, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->A:J

    .line 17
    invoke-static {v2, v3, p0, v0, p1}, LJ/N;->MPQKLw45(JLjava/lang/Object;II)V

    .line 18
    iput p1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->M:I

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->B:Landroid/graphics/Rect;

    .line 20
    iput p1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->N:I

    .line 21
    iput v1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->J:I

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->K:I

    .line 23
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->A:J

    .line 24
    invoke-static {v0, v1, p0, p1}, LJ/N;->MhMiVz6m(JLjava/lang/Object;I)I

    move-result p1

    .line 25
    iput p1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->L:I

    .line 26
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->A:J

    iget p1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->M:I

    .line 27
    invoke-static {v0, v1, p0, p1}, LJ/N;->M5uHFthk(JLjava/lang/Object;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 28
    iget-object p1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->P:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 29
    :cond_1
    iget p1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->M:I

    const v0, 0x8000

    invoke-virtual {p0, p1, v0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->b(II)V

    const/4 p1, 0x1

    return p1
.end method

.method public final c(I)V
    .locals 1

    .line 6
    iget v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->M:I

    if-ne p1, v0, :cond_0

    const/high16 v0, 0x10000

    .line 7
    invoke-virtual {p0, p1, v0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->b(II)V

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->M:I

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->b(I)Z

    return-void
.end method

.method public c(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->R:Z

    .line 3
    iput-boolean p1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->U:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->R:Z

    .line 5
    iget-object p1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->x:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->U:Z

    :goto_0
    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->U:Z

    return v0
.end method

.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-wide v2, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->A:J

    .line 3
    invoke-static {v2, v3, p0}, LJ/N;->MI8pU34f(JLjava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_3

    .line 4
    iget-object p1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->F:Landroid/view/ViewGroup;

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    .line 5
    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->F:Landroid/view/ViewGroup;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->F:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 7
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 8
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 9
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 10
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 11
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 12
    iget-object v2, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->F:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v2

    .line 13
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_1

    .line 14
    check-cast v2, Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 15
    :cond_1
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 16
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 17
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 18
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 19
    invoke-virtual {p0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 20
    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->F:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    :cond_2
    return-object p1

    .line 21
    :cond_3
    invoke-virtual {p0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->f()Z

    move-result v2

    if-nez v2, :cond_4

    return-object v1

    .line 22
    :cond_4
    iget-object v2, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->F:Landroid/view/ViewGroup;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 23
    iget-object v3, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->y:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 24
    iget-object v3, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->F:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    if-ne p1, v0, :cond_5

    .line 25
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->F:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 26
    :cond_5
    iget-wide v3, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->A:J

    .line 27
    invoke-static {v3, v4, p0, v2, p1}, LJ/N;->MJGtghd9(JLjava/lang/Object;Ljava/lang/Object;I)Z

    move-result p1

    if-eqz p1, :cond_6

    return-object v2

    .line 28
    :cond_6
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    return-object v1
.end method

.method public d()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->A:J

    .line 3
    invoke-static {v0, v1, p0}, LJ/N;->Mk31b3DX(JLjava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->b(I)Z

    .line 5
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->A:J

    iget v2, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->M:I

    .line 6
    invoke-static {v0, v1, p0, v2}, LJ/N;->MB302_MP(JLjava/lang/Object;I)V

    :cond_1
    return-void
.end method

.method public final d(I)V
    .locals 2

    .line 7
    iput p1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->J:I

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 8
    iput p1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->K:I

    .line 9
    iput p1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->L:I

    .line 10
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->A:J

    iget p1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->M:I

    .line 11
    invoke-static {v0, v1, p0, p1}, LJ/N;->MCMbXu4W(JLjava/lang/Object;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 12
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->A:J

    iget p1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->M:I

    .line 13
    invoke-static {v0, v1, p0, p1}, LJ/N;->M8UuMlLD(JLjava/lang/Object;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 14
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->A:J

    iget p1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->M:I

    .line 15
    invoke-static {v0, v1, p0, p1}, LJ/N;->MnVi6Frs(JLjava/lang/Object;I)I

    move-result p1

    .line 16
    iput p1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->K:I

    .line 17
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->A:J

    iget p1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->M:I

    .line 18
    invoke-static {v0, v1, p0, p1}, LJ/N;->Mxt_kc4Q(JLjava/lang/Object;I)I

    move-result p1

    .line 19
    iput p1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->L:I

    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public e()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->x:Landroid/view/accessibility/AccessibilityManager;

    .line 2
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final f()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->w:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->C:LFW0;

    .line 3
    iget v2, v0, LFW0;->c:F

    float-to-double v2, v2

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-nez v6, :cond_2

    .line 4
    iget v0, v0, LFW0;->d:F

    float-to-double v2, v0

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 0

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public g()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->A:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAccessibilityServiceCapabilitiesMask()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h()V
    .locals 2

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->M:I

    .line 2
    iput v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->N:I

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->C:Z

    .line 4
    iput v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->E:I

    return-void
.end method

.method public final i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->O:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->F:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->O:Ljava/lang/Runnable;

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->F:Landroid/view/ViewGroup;

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public onAccessibilityStateChanged(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->c(Z)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->x:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 2
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->x:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->c(Z)V

    .line 3
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->Q:Lorg/chromium/content/browser/accessibility/captioning/CaptioningController;

    .line 4
    iget-object v1, v0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningController;->a:LwX0;

    invoke-interface {v1, v0}, LwX0;->a(LvX0;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onCurrentModeChanged(Landroid/view/Display$Mode;)V
    .locals 0

    return-void
.end method

.method public onDIPScaleChanged(F)V
    .locals 0

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->x:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 2
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->Q:Lorg/chromium/content/browser/accessibility/captioning/CaptioningController;

    .line 3
    iget-object v1, v0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningController;->a:LwX0;

    invoke-interface {v1, v0}, LwX0;->c(LvX0;)V

    return-void
.end method

.method public onDisplayModesChanged(Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public onNativeObjectDestroyed()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->A:J

    return-void
.end method

.method public onRefreshRateChanged(F)V
    .locals 0

    return-void
.end method

.method public onRotationChanged(I)V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    return-void
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 10

    .line 1
    invoke-virtual {p0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->e()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1e

    .line 2
    iget-wide v7, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->A:J

    .line 3
    invoke-static {v7, v8, p0, p1}, LJ/N;->MTBNGzHX(JLjava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v6, 0x1

    if-eq p2, v6, :cond_1c

    const/4 v2, 0x2

    if-eq p2, v2, :cond_1b

    const-string v4, "ACTION_ARGUMENT_HTML_ELEMENT_STRING"

    const-string v7, "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

    const-string v8, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    const/4 v9, 0x4

    sparse-switch p2, :sswitch_data_0

    packed-switch p2, :pswitch_data_0

    return v3

    .line 4
    :sswitch_0
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->A:J

    .line 5
    invoke-static {v0, v1, p0, p1}, LJ/N;->MB302_MP(JLjava/lang/Object;I)V

    return v6

    .line 6
    :sswitch_1
    iget-wide v7, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->A:J

    .line 7
    invoke-static {v7, v8, p0, p1}, LJ/N;->MCMbXu4W(JLjava/lang/Object;I)Z

    move-result v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    if-nez p3, :cond_2

    return v3

    :cond_2
    const-string v0, "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE"

    .line 8
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    return v3

    .line 9
    :cond_3
    iget-wide v1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->A:J

    .line 10
    invoke-static {v1, v2, p0, p1, v0}, LJ/N;->MEJD7Boi(JLjava/lang/Object;ILjava/lang/String;)V

    .line 11
    iget-wide v1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->A:J

    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    move-wide v0, v1

    move-object v2, p0

    move v3, p1

    move v5, v7

    .line 14
    invoke-static/range {v0 .. v5}, LJ/N;->MVuu0R4P(JLjava/lang/Object;III)V

    return v6

    .line 15
    :sswitch_2
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->A:J

    .line 16
    invoke-static {v0, v1, p0, p1}, LJ/N;->MM4OAOXm(JLjava/lang/Object;I)V

    return v6

    .line 17
    :sswitch_3
    iget-wide v7, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->A:J

    .line 18
    invoke-static {v7, v8, p0, p1}, LJ/N;->MCMbXu4W(JLjava/lang/Object;I)Z

    move-result v0

    if-nez v0, :cond_4

    return v3

    :cond_4
    if-eqz p3, :cond_5

    const-string v0, "ACTION_ARGUMENT_SELECTION_START_INT"

    .line 19
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "ACTION_ARGUMENT_SELECTION_END_INT"

    .line 20
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    move v4, v0

    move v7, v1

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 21
    :goto_0
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->A:J

    move-object v2, p0

    move v3, p1

    move v5, v7

    .line 22
    invoke-static/range {v0 .. v5}, LJ/N;->MVuu0R4P(JLjava/lang/Object;III)V

    return v6

    .line 23
    :sswitch_4
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->w:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    if-eqz v0, :cond_6

    .line 24
    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->d()V

    return v6

    :cond_6
    return v3

    .line 25
    :sswitch_5
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->w:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    if-eqz v0, :cond_7

    .line 26
    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->r()V

    return v6

    :cond_7
    return v3

    .line 27
    :sswitch_6
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->w:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    if-eqz v0, :cond_8

    .line 28
    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->c()V

    return v6

    :cond_8
    return v3

    .line 29
    :sswitch_7
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->A:J

    .line 30
    invoke-static {v0, v1, p0, p1}, LJ/N;->MkaakTGI(JLjava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 31
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->A:J

    .line 32
    invoke-static {v0, v1, p0, p1, v3}, LJ/N;->MLjXc4lw(JLjava/lang/Object;IZ)Z

    move-result v0

    goto :goto_1

    .line 33
    :cond_9
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->A:J

    .line 34
    invoke-static {v0, v1, p0, p1, v6}, LJ/N;->MNch0m9c(JLjava/lang/Object;II)Z

    move-result v0

    :goto_1
    return v0

    .line 35
    :sswitch_8
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->A:J

    .line 36
    invoke-static {v0, v1, p0, p1}, LJ/N;->MkaakTGI(JLjava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 37
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->A:J

    .line 38
    invoke-static {v0, v1, p0, p1, v6}, LJ/N;->MLjXc4lw(JLjava/lang/Object;IZ)Z

    move-result v0

    goto :goto_2

    .line 39
    :cond_a
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->A:J

    .line 40
    invoke-static {v0, v1, p0, p1, v3}, LJ/N;->MNch0m9c(JLjava/lang/Object;II)Z

    move-result v0

    :goto_2
    return v0

    :sswitch_9
    if-nez p3, :cond_b

    return v3

    .line 41
    :cond_b
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    return v3

    .line 42
    :cond_c
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-virtual {p0, p1, v0, v3}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->a(ILjava/lang/String;Z)Z

    move-result v0

    return v0

    :sswitch_a
    if-nez p3, :cond_d

    return v3

    .line 44
    :cond_d
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    return v3

    .line 45
    :cond_e
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-virtual {p0, p1, v0, v6}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->a(ILjava/lang/String;Z)Z

    move-result v0

    return v0

    :sswitch_b
    if-nez p3, :cond_f

    return v3

    .line 47
    :cond_f
    invoke-virtual {p3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 48
    invoke-virtual {p3, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eq v0, v6, :cond_10

    if-eq v0, v2, :cond_10

    if-eq v0, v9, :cond_10

    const/4 v6, 0x0

    :cond_10
    if-nez v6, :cond_11

    return v3

    .line 49
    :cond_11
    iget v1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->N:I

    if-eq p1, v1, :cond_12

    goto :goto_3

    .line 50
    :cond_12
    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->d(I)V

    .line 51
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->A:J

    iget v3, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->J:I

    iget v6, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->L:I

    move-object v2, p0

    move v5, p1

    .line 52
    invoke-static/range {v0 .. v6}, LJ/N;->M3suD0ji(JLjava/lang/Object;IZII)Z

    move-result v3

    :goto_3
    return v3

    :sswitch_c
    if-nez p3, :cond_13

    return v3

    .line 53
    :cond_13
    invoke-virtual {p3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 54
    invoke-virtual {p3, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eq v0, v6, :cond_14

    if-eq v0, v2, :cond_14

    if-eq v0, v9, :cond_14

    const/4 v6, 0x0

    :cond_14
    if-nez v6, :cond_15

    return v3

    .line 55
    :cond_15
    iget v1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->N:I

    if-eq p1, v1, :cond_16

    goto :goto_4

    .line 56
    :cond_16
    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->d(I)V

    .line 57
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->A:J

    iget v3, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->J:I

    iget v6, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->K:I

    move-object v2, p0

    move v5, p1

    .line 58
    invoke-static/range {v0 .. v6}, LJ/N;->McKjfBnu(JLjava/lang/Object;IZII)Z

    move-result v3

    :goto_4
    return v3

    :sswitch_d
    const/high16 v0, 0x10000

    .line 59
    invoke-virtual {p0, p1, v0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->b(II)V

    .line 60
    iget v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->M:I

    if-ne v0, p1, :cond_17

    .line 61
    iget-wide v1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->A:J

    const/4 v3, -0x1

    .line 62
    invoke-static {v1, v2, p0, v0, v3}, LJ/N;->MPQKLw45(JLjava/lang/Object;II)V

    .line 63
    iput v3, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->M:I

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->B:Landroid/graphics/Rect;

    :cond_17
    return v6

    .line 65
    :sswitch_e
    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->b(I)Z

    move-result v0

    if-nez v0, :cond_18

    return v6

    .line 66
    :cond_18
    iget-boolean v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->C:Z

    if-nez v0, :cond_19

    .line 67
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->A:J

    iget v2, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->M:I

    .line 68
    invoke-static {v0, v1, p0, v2}, LJ/N;->MB302_MP(JLjava/lang/Object;I)V

    goto :goto_5

    .line 69
    :cond_19
    iput-boolean v6, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->H:Z

    :goto_5
    return v6

    .line 70
    :sswitch_f
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->F:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->F:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 71
    :cond_1a
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->A:J

    .line 72
    invoke-static {v0, v1, p0, p1}, LJ/N;->MM4OAOXm(JLjava/lang/Object;I)V

    return v6

    .line 73
    :pswitch_0
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->A:J

    .line 74
    invoke-static {v0, v1, p0, p1}, LJ/N;->MOikWIf9(JLjava/lang/Object;I)V

    return v6

    .line 75
    :pswitch_1
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->A:J

    const/4 v2, 0x5

    .line 76
    invoke-static {v0, v1, p0, p1, v2}, LJ/N;->MNch0m9c(JLjava/lang/Object;II)Z

    move-result v0

    return v0

    .line 77
    :pswitch_2
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->A:J

    const/4 v2, 0x3

    .line 78
    invoke-static {v0, v1, p0, p1, v2}, LJ/N;->MNch0m9c(JLjava/lang/Object;II)Z

    move-result v0

    return v0

    .line 79
    :pswitch_3
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->A:J

    .line 80
    invoke-static {v0, v1, p0, p1, v9}, LJ/N;->MNch0m9c(JLjava/lang/Object;II)Z

    move-result v0

    return v0

    .line 81
    :pswitch_4
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->A:J

    .line 82
    invoke-static {v0, v1, p0, p1, v2}, LJ/N;->MNch0m9c(JLjava/lang/Object;II)Z

    move-result v0

    return v0

    .line 83
    :cond_1b
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->A:J

    .line 84
    invoke-static {v0, v1, p0}, LJ/N;->MNm00fYN(JLjava/lang/Object;)V

    return v6

    .line 85
    :cond_1c
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->F:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->F:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 86
    :cond_1d
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->A:J

    .line 87
    invoke-static {v0, v1, p0, p1}, LJ/N;->MG_OiJKg(JLjava/lang/Object;I)V

    return v6

    :cond_1e
    :goto_6
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_f
        0x40 -> :sswitch_e
        0x80 -> :sswitch_d
        0x100 -> :sswitch_c
        0x200 -> :sswitch_b
        0x400 -> :sswitch_a
        0x800 -> :sswitch_9
        0x1000 -> :sswitch_8
        0x2000 -> :sswitch_7
        0x4000 -> :sswitch_6
        0x8000 -> :sswitch_5
        0x10000 -> :sswitch_4
        0x20000 -> :sswitch_3
        0x40000 -> :sswitch_2
        0x80000 -> :sswitch_2
        0x200000 -> :sswitch_1
        0x1020036 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1020038
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAccessibilityEventCollectionInfo(Landroid/view/accessibility/AccessibilityEvent;IIZ)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->a(Landroid/view/accessibility/AccessibilityEvent;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "AccessibilityNodeInfo.CollectionInfo.rowCount"

    .line 2
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "AccessibilityNodeInfo.CollectionInfo.columnCount"

    .line 3
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "AccessibilityNodeInfo.CollectionInfo.hierarchical"

    .line 4
    invoke-virtual {p1, p2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setAccessibilityEventCollectionItemInfo(Landroid/view/accessibility/AccessibilityEvent;IIII)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->a(Landroid/view/accessibility/AccessibilityEvent;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "AccessibilityNodeInfo.CollectionItemInfo.rowIndex"

    .line 2
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "AccessibilityNodeInfo.CollectionItemInfo.rowSpan"

    .line 3
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "AccessibilityNodeInfo.CollectionItemInfo.columnIndex"

    .line 4
    invoke-virtual {p1, p2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "AccessibilityNodeInfo.CollectionItemInfo.columnSpan"

    .line 5
    invoke-virtual {p1, p2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setAccessibilityEventHeadingFlag(Landroid/view/accessibility/AccessibilityEvent;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->a(Landroid/view/accessibility/AccessibilityEvent;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "AccessibilityNodeInfo.CollectionItemInfo.heading"

    .line 2
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setAccessibilityEventLollipopAttributes(Landroid/view/accessibility/AccessibilityEvent;ZZZZII)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->a(Landroid/view/accessibility/AccessibilityEvent;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "AccessibilityNodeInfo.canOpenPopup"

    .line 2
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "AccessibilityNodeInfo.contentInvalid"

    .line 3
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "AccessibilityNodeInfo.dismissable"

    .line 4
    invoke-virtual {p1, p2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "AccessibilityNodeInfo.multiLine"

    .line 5
    invoke-virtual {p1, p2, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "AccessibilityNodeInfo.inputType"

    .line 6
    invoke-virtual {p1, p2, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "AccessibilityNodeInfo.liveRegion"

    .line 7
    invoke-virtual {p1, p2, p7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setAccessibilityEventRangeInfo(Landroid/view/accessibility/AccessibilityEvent;IFFF)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->a(Landroid/view/accessibility/AccessibilityEvent;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "AccessibilityNodeInfo.RangeInfo.type"

    .line 2
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "AccessibilityNodeInfo.RangeInfo.min"

    .line 3
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string p2, "AccessibilityNodeInfo.RangeInfo.max"

    .line 4
    invoke-virtual {p1, p2, p4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string p2, "AccessibilityNodeInfo.RangeInfo.current"

    .line 5
    invoke-virtual {p1, p2, p5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public setAccessibilityNodeInfoCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo;IIZ)V
    .locals 0

    return-void
.end method

.method public setAccessibilityNodeInfoCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo;IIIIZ)V
    .locals 0

    return-void
.end method

.method public setAccessibilityNodeInfoKitKatAttributes(Landroid/view/accessibility/AccessibilityNodeInfo;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZ)V
    .locals 0

    return-void
.end method

.method public setAccessibilityNodeInfoLollipopAttributes(Landroid/view/accessibility/AccessibilityNodeInfo;ZZZZIILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setAccessibilityNodeInfoOAttributes(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V
    .locals 0

    return-void
.end method

.method public setAccessibilityNodeInfoRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;IFFF)V
    .locals 0

    return-void
.end method

.method public setAccessibilityNodeInfoViewIdResourceName(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public shouldExposePasswordText()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->y:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v1, v2, :cond_1

    const-string v1, "show_password"

    .line 3
    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3

    :cond_1
    const-string v1, "speak_password"

    .line 4
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_2

    const/4 v3, 0x1

    :cond_2
    return v3
.end method

.method public shouldRespectDisplayedPasswordText()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
