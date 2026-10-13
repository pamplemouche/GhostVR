.class public Lorg/chromium/content/browser/webcontents/WebContentsImpl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/content_public/browser/WebContents;
.implements Lorg/chromium/content/browser/framehost/RenderFrameHostDelegate;
.implements LcX0;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static H:Ljava/util/UUID;


# instance fields
.field public A:Lorg/chromium/content/browser/webcontents/WebContentsImpl$SmartClipCallback;

.field public B:Lorg/chromium/ui/base/EventForwarder;

.field public C:LFW0;

.field public D:Ld11;

.field public E:Ljava/lang/String;

.field public F:Z

.field public G:Ljava/lang/Throwable;

.field public final w:Ljava/util/List;

.field public x:J

.field public y:Lorg/chromium/content_public/browser/NavigationController;

.field public z:Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    .line 2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->H:Ljava/util/UUID;

    .line 3
    new-instance v0, Ls01;

    invoke-direct {v0}, Ls01;-><init>()V

    sput-object v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLorg/chromium/content_public/browser/NavigationController;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->w:Ljava/util/List;

    .line 3
    iput-wide p1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    .line 4
    iput-object p3, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->y:Lorg/chromium/content_public/browser/NavigationController;

    return-void
.end method

.method public static addAccessibilityNodeAsChild(Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->s:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static addToBitmapList(Ljava/util/List;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearNativePtr()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "clearNativePtr"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->G:Ljava/lang/Throwable;

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->y:Lorg/chromium/content_public/browser/NavigationController;

    .line 4
    iget-object v1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->z:Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->destroy()V

    .line 6
    iput-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->z:Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;

    :cond_0
    return-void
.end method

.method public static create(JLorg/chromium/content_public/browser/NavigationController;)Lorg/chromium/content/browser/webcontents/WebContentsImpl;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;-><init>(JLorg/chromium/content_public/browser/NavigationController;)V

    return-object v0
.end method

.method public static createAccessibilitySnapshotNode(IIIIZLjava/lang/String;IIFZZZZLjava/lang/String;)Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;
    .locals 7

    move v0, p8

    .line 1
    new-instance v1, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;

    move-object v2, p5

    move-object/from16 v3, p13

    invoke-direct {v1, p5, v3}, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    float-to-double v2, v0

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-ltz v6, :cond_0

    move v2, p6

    .line 2
    iput v2, v1, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->j:I

    move v2, p7

    .line 3
    iput v2, v1, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->k:I

    .line 4
    iput v0, v1, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->f:F

    move/from16 v0, p9

    .line 5
    iput-boolean v0, v1, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->l:Z

    move/from16 v0, p10

    .line 6
    iput-boolean v0, v1, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->m:Z

    move/from16 v0, p11

    .line 7
    iput-boolean v0, v1, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->n:Z

    move/from16 v0, p12

    .line 8
    iput-boolean v0, v1, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->o:Z

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, v1, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->i:Z

    :cond_0
    move v0, p0

    .line 10
    iput v0, v1, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->a:I

    move v0, p1

    .line 11
    iput v0, v1, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->b:I

    move v0, p2

    .line 12
    iput v0, v1, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->c:I

    move v0, p3

    .line 13
    iput v0, v1, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->d:I

    move v0, p4

    .line 14
    iput-boolean v0, v1, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->e:Z

    return-object v1
.end method

.method public static createBitmapList()Ljava/util/List;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static createSize(II)Landroid/graphics/Rect;
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static createSizeAndAddToList(Ljava/util/List;II)V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static createSizeList()Ljava/util/List;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method private getNativePointer()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    return-wide v0
.end method

.method public static onAccessibilitySnapshot(Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;Lorg/chromium/content_public/browser/AccessibilitySnapshotCallback;)V
    .locals 2

    .line 1
    check-cast p1, LmX0;

    .line 2
    iget-object v0, p1, LmX0;->a:Landroid/view/ViewStructure;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/view/ViewStructure;->setClassName(Ljava/lang/String;)V

    .line 3
    iget-object v0, p1, LmX0;->a:Landroid/view/ViewStructure;

    iget-object v1, p1, LmX0;->c:Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;

    .line 4
    iget-object v1, v1, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->z:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/ViewStructure;->setHint(Ljava/lang/CharSequence;)V

    if-nez p0, :cond_0

    .line 6
    iget-object p0, p1, LmX0;->a:Landroid/view/ViewStructure;

    invoke-virtual {p0}, Landroid/view/ViewStructure;->asyncCommit()V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p1, LmX0;->c:Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;

    iget-object v1, p1, LmX0;->a:Landroid/view/ViewStructure;

    iget-boolean p1, p1, LmX0;->b:Z

    .line 8
    invoke-virtual {v0, v1, p0, p1}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->a(Landroid/view/ViewStructure;Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;Z)V

    :goto_0
    return-void
.end method

.method private onDownloadImageFinished(Lorg/chromium/content_public/browser/ImageDownloadCallback;IILjava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-interface/range {p1 .. p6}, Lorg/chromium/content_public/browser/ImageDownloadCallback;->a(IILjava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static onEvaluateJavaScriptResult(Ljava/lang/String;Lorg/chromium/content_public/browser/JavaScriptCallback;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lorg/chromium/content_public/browser/JavaScriptCallback;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static onSmartClipDataExtracted(Ljava/lang/String;Ljava/lang/String;IIIILorg/chromium/content/browser/webcontents/WebContentsImpl$SmartClipCallback;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2
    iget-object p2, p6, Lorg/chromium/content/browser/webcontents/WebContentsImpl$SmartClipCallback;->b:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    .line 3
    iget-object p2, p2, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->C:LFW0;

    .line 4
    iget p3, p2, LFW0;->k:F

    .line 5
    iget p2, p2, LFW0;->j:F

    div-float/2addr p3, p2

    float-to-int p2, p3

    const/4 p3, 0x0

    .line 6
    invoke-virtual {v0, p3, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 7
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 8
    iget-object p4, p6, Lorg/chromium/content/browser/webcontents/WebContentsImpl$SmartClipCallback;->b:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p4}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->j()Ljava/lang/String;

    move-result-object p4

    const-string p5, "url"

    invoke-virtual {p2, p5, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p4, p6, Lorg/chromium/content/browser/webcontents/WebContentsImpl$SmartClipCallback;->b:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p4}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getTitle()Ljava/lang/String;

    move-result-object p4

    const-string p5, "title"

    invoke-virtual {p2, p5, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "text"

    .line 10
    invoke-virtual {p2, p4, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "html"

    .line 11
    invoke-virtual {p2, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "rect"

    .line 12
    invoke-virtual {p2, p0, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 13
    iget-object p0, p6, Lorg/chromium/content/browser/webcontents/WebContentsImpl$SmartClipCallback;->a:Landroid/os/Handler;

    invoke-static {p0, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p0

    .line 14
    invoke-virtual {p0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 15
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public static setAccessibilitySnapshotSelection(Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;II)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->p:Z

    .line 2
    iput p1, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->q:I

    .line 3
    iput p2, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->r:I

    return-void
.end method

.method private final setMediaSession(Lorg/chromium/content/browser/MediaSessionImpl;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public C()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->b()V

    .line 2
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    .line 3
    invoke-static {v0, v1, p0}, LJ/N;->MPePqASo(JLjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public D()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->b()V

    .line 2
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    .line 3
    invoke-static {v0, v1, p0}, LJ/N;->MS0xMYL9(JLjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public E()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->b()V

    .line 2
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    .line 3
    invoke-static {v0, v1, p0}, LJ/N;->MSOsA4Ii(JLjava/lang/Object;)V

    return-void
.end method

.method public G()[Lorg/chromium/content_public/browser/MessagePort;
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/content/browser/AppWebMessagePort;->c()[Lorg/chromium/content/browser/AppWebMessagePort;

    move-result-object v0

    return-object v0
.end method

.method public H()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->b()V

    .line 2
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    .line 3
    invoke-static {v0, v1, p0}, LJ/N;->M6c69Eq5(JLjava/lang/Object;)V

    return-void
.end method

.method public I()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->b()V

    .line 2
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    .line 3
    invoke-static {v0, v1, p0}, LJ/N;->MGZCJ6jO(JLjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public J()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    .line 3
    invoke-static {v0, v1, p0}, LJ/N;->M0iG1Oc2(JLjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public K()Lorg/chromium/ui/base/EventForwarder;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->B:Lorg/chromium/ui/base/EventForwarder;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->b()V

    .line 3
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    .line 4
    invoke-static {v0, v1, p0}, LJ/N;->MJJFrmZs(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/base/EventForwarder;

    .line 5
    iput-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->B:Lorg/chromium/ui/base/EventForwarder;

    .line 6
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->B:Lorg/chromium/ui/base/EventForwarder;

    return-object v0
.end method

.method public L()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 2
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    .line 3
    invoke-static {v0, v1, p0}, LJ/N;->Mzsx8Sk2(JLjava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;ZIZLorg/chromium/content_public/browser/ImageDownloadCallback;)I
    .locals 8

    .line 65
    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->b()V

    .line 66
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    .line 67
    invoke-static/range {v0 .. v7}, LJ/N;->Mi3V1mlO(JLjava/lang/Object;Ljava/lang/String;ZIZLjava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/Class;Lt01;)LxU;
    .locals 2

    .line 71
    iget-boolean v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->F:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 72
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->D:Ld11;

    if-nez v0, :cond_1

    :goto_0
    move-object v0, v1

    goto :goto_1

    .line 73
    :cond_1
    check-cast v0, Lc11;

    .line 74
    iget-object v0, v0, Lc11;->a:Lf11;

    if-nez v0, :cond_2

    goto :goto_0

    .line 75
    :cond_2
    check-cast v0, Lu01;

    iget-object v0, v0, Lu01;->a:LyU;

    :goto_1
    if-nez v0, :cond_3

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "cr_WebContentsImpl"

    const-string v0, "UserDataHost can\'t be found"

    .line 76
    invoke-static {p2, v0, p1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 77
    :cond_3
    iget-object v1, v0, LyU;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LxU;

    if-nez v1, :cond_4

    if-eqz p2, :cond_4

    .line 78
    invoke-interface {p2, p0}, Lt01;->a(Lorg/chromium/content_public/browser/WebContents;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LxU;

    .line 79
    invoke-virtual {v0, p1, p2}, LyU;->a(Ljava/lang/Class;LxU;)LxU;

    move-result-object v1

    .line 80
    :cond_4
    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LxU;

    return-object p1
.end method

.method public a(II)V
    .locals 2

    .line 68
    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->b()V

    .line 69
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    .line 70
    invoke-static {v0, v1, p0, p1, p2}, LJ/N;->M7tTrJ_X(JLjava/lang/Object;II)V

    return-void
.end method

.method public a(IIII)V
    .locals 10

    .line 52
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->A:Lorg/chromium/content/browser/webcontents/WebContentsImpl$SmartClipCallback;

    if-nez v0, :cond_0

    return-void

    .line 53
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->b()V

    .line 54
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->C:LFW0;

    .line 55
    iget v1, v0, LFW0;->j:F

    .line 56
    iget v0, v0, LFW0;->k:F

    float-to-int v0, v0

    sub-int/2addr p2, v0

    .line 57
    iget-wide v2, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    iget-object v5, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->A:Lorg/chromium/content/browser/webcontents/WebContentsImpl$SmartClipCallback;

    int-to-float p1, p1

    div-float/2addr p1, v1

    float-to-int v6, p1

    int-to-float p1, p2

    div-float/2addr p1, v1

    float-to-int v7, p1

    int-to-float p1, p3

    div-float/2addr p1, v1

    float-to-int v8, p1

    int-to-float p1, p4

    div-float/2addr p1, v1

    float-to-int v9, p1

    move-object v4, p0

    .line 58
    invoke-static/range {v2 .. v9}, LJ/N;->MHF1rPTW(JLjava/lang/Object;Ljava/lang/Object;IIII)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 2

    .line 41
    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->b()V

    .line 42
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    .line 43
    invoke-static {v0, v1, p0, p1, p2}, LJ/N;->MseJ7A4a(JLjava/lang/Object;ILjava/lang/String;)V

    return-void
.end method

.method public a(Landroid/graphics/Rect;)V
    .locals 12

    .line 81
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 82
    :cond_0
    iget-wide v5, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    iget v8, p1, Landroid/graphics/Rect;->top:I

    iget v9, p1, Landroid/graphics/Rect;->left:I

    iget v10, p1, Landroid/graphics/Rect;->bottom:I

    iget v11, p1, Landroid/graphics/Rect;->right:I

    move-object v7, p0

    .line 83
    invoke-static/range {v5 .. v11}, LJ/N;->MtjP03pj(JLjava/lang/Object;IIII)V

    return-void
.end method

.method public a(Lg11;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->z:Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;-><init>(Lorg/chromium/content/browser/webcontents/WebContentsImpl;)V

    iput-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->z:Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;

    .line 60
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->z:Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;

    .line 61
    iget-object v0, v0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->b:LWT;

    invoke-virtual {v0, p1}, LWT;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/chromium/content_public/browser/MessagePort;)V
    .locals 7

    if-eqz p4, :cond_2

    .line 44
    array-length v0, p4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p4, v1

    .line 45
    invoke-interface {v2}, Lorg/chromium/content_public/browser/MessagePort;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lorg/chromium/content_public/browser/MessagePort;->a()Z

    move-result v3

    if-nez v3, :cond_1

    .line 46
    invoke-interface {v2}, Lorg/chromium/content_public/browser/MessagePort;->b()Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Port is already started"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Port is already closed or transferred"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const-string v0, "*"

    .line 49
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p3, ""

    :cond_3
    move-object v5, p3

    .line 50
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p4

    .line 51
    invoke-static/range {v0 .. v6}, LJ/N;->MZFXk0el(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lorg/chromium/ui/base/ViewAndroidDelegate;La11;Lorg/chromium/ui/base/WindowAndroid;Ld11;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->E:Ljava/lang/String;

    .line 2
    iput-object p5, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->D:Ld11;

    .line 3
    new-instance p1, Lu01;

    const/4 p5, 0x0

    invoke-direct {p1, p5}, Lu01;-><init>(Ls01;)V

    .line 4
    new-instance p5, LyU;

    invoke-direct {p5}, LyU;-><init>()V

    iput-object p5, p1, Lu01;->a:LyU;

    .line 5
    iget-object p5, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->D:Ld11;

    check-cast p5, Lc11;

    .line 6
    iput-object p1, p5, Lc11;->a:Lf11;

    .line 7
    new-instance p1, LFW0;

    invoke-direct {p1}, LFW0;-><init>()V

    iput-object p1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->C:LFW0;

    const/4 p5, 0x0

    .line 8
    iput p5, p1, LFW0;->b:F

    iput p5, p1, LFW0;->a:F

    const/high16 p5, 0x3f800000    # 1.0f

    .line 9
    iput p5, p1, LFW0;->g:F

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->F:Z

    .line 11
    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->b()V

    .line 12
    iget-object p1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->D:Ld11;

    check-cast p1, Lc11;

    .line 13
    iget-object p1, p1, Lc11;->a:Lf11;

    .line 14
    check-cast p1, Lu01;

    .line 15
    iput-object p2, p1, Lu01;->b:Lorg/chromium/ui/base/ViewAndroidDelegate;

    .line 16
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    .line 17
    invoke-static {v0, v1, p0, p2}, LJ/N;->MgyWdCWB(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 18
    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->b()V

    .line 19
    iget-wide p1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    .line 20
    invoke-static {p1, p2, p0, p4}, LJ/N;->MOKG_Wbb(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 21
    invoke-static {p0}, LgX0;->a(Lorg/chromium/content_public/browser/WebContents;)LgX0;

    move-result-object p1

    invoke-virtual {p1, p4}, LgX0;->a(Lorg/chromium/ui/base/WindowAndroid;)V

    .line 22
    invoke-static {p0}, LbX0;->a(Lorg/chromium/content_public/browser/WebContents;)LbX0;

    move-result-object p1

    .line 23
    iget-object p2, p1, LbX0;->w:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-static {p2}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/GestureListenerManagerImpl;

    move-result-object p2

    .line 24
    iput-object p3, p2, Lorg/chromium/content/browser/GestureListenerManagerImpl;->A:La11;

    .line 25
    iget-object p1, p1, LbX0;->w:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    .line 26
    const-class p2, Lorg/chromium/content/browser/ContentUiEventHandler;

    .line 27
    sget-object p5, LkW0;->a:Lt01;

    .line 28
    invoke-virtual {p1, p2, p5}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->a(Ljava/lang/Class;Lt01;)LxU;

    move-result-object p1

    check-cast p1, Lorg/chromium/content/browser/ContentUiEventHandler;

    .line 29
    iput-object p3, p1, Lorg/chromium/content/browser/ContentUiEventHandler;->x:La11;

    .line 30
    iget-object p1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->C:LFW0;

    .line 31
    invoke-virtual {p4}, Lorg/chromium/ui/base/WindowAndroid;->getDisplay()Lcd1;

    move-result-object p2

    .line 32
    iget p2, p2, Lcd1;->d:F

    .line 33
    iput p2, p1, LFW0;->j:F

    return-void
.end method

.method public a(Lorg/chromium/content/browser/framehost/RenderFrameHostImpl;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->w:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lorg/chromium/ui/OverscrollRefreshHandler;)V
    .locals 2

    .line 62
    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->b()V

    .line 63
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    .line 64
    invoke-static {v0, v1, p0, p1}, LJ/N;->MTTB8znA(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 35
    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->b()V

    .line 36
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    .line 37
    invoke-static {v0, v1, p0, p1}, LJ/N;->M4fkbrQM(JLjava/lang/Object;Z)V

    return-void
.end method

.method public a(ZZ)V
    .locals 0

    return-void
.end method

.method public a()Z
    .locals 2

    .line 38
    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->b()V

    .line 39
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    .line 40
    invoke-static {v0, v1, p0}, LJ/N;->MZbfAARG(JLjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 5

    .line 8
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-void

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->G:Ljava/lang/Throwable;

    const-string v2, "Native WebContents already destroyed"

    invoke-direct {v0, v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public b(Lg11;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->z:Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;

    if-nez v0, :cond_0

    return-void

    .line 7
    :cond_0
    iget-object v0, v0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->b:LWT;

    invoke-virtual {v0, p1}, LWT;->b(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lorg/chromium/content/browser/framehost/RenderFrameHostImpl;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->w:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->b()V

    .line 3
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    .line 4
    invoke-static {v0, v1, p0, p1}, LJ/N;->MOKG_Wbb(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 5
    invoke-static {p0}, LgX0;->a(Lorg/chromium/content_public/browser/WebContents;)LgX0;

    move-result-object v0

    invoke-virtual {v0, p1}, LgX0;->a(Lorg/chromium/ui/base/WindowAndroid;)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->b()V

    .line 2
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    .line 3
    invoke-static {v0, v1, p0}, LJ/N;->MpfMxfut(JLjava/lang/Object;)V

    return-void
.end method

.method public c(Z)V
    .locals 2

    .line 4
    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->b()V

    .line 5
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    .line 6
    invoke-static {v0, v1, p0, p1}, LJ/N;->M12SiBFk(JLjava/lang/Object;Z)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->b()V

    .line 2
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    .line 3
    invoke-static {v0, v1, p0}, LJ/N;->MhIiCaN7(JLjava/lang/Object;)V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public destroy()V
    .locals 5

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 3
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    .line 4
    invoke-static {v0, v1}, LJ/N;->MxxzO9Pe(J)V

    :cond_0
    return-void

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempting to destroy WebContents on non-UI thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->b()V

    .line 2
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    .line 3
    invoke-static {v0, v1, p0}, LJ/N;->MtSTkEp2(JLjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->b()V

    .line 2
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    .line 3
    invoke-static {v0, v1, p0}, LJ/N;->MrqMRJsG(JLjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Lorg/chromium/content_public/browser/NavigationController;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->y:Lorg/chromium/content_public/browser/NavigationController;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->b()V

    .line 2
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    .line 3
    invoke-static {v0, v1, p0}, LJ/N;->M7OgjMU8(JLjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->t()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getContext()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public i()Landroid/graphics/Rect;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->b()V

    .line 2
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    .line 3
    invoke-static {v0, v1, p0}, LJ/N;->MN9JdEk5(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->b()V

    .line 2
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    .line 3
    invoke-static {v0, v1, p0}, LJ/N;->M8927Uaf(JLjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->b()V

    .line 2
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    .line 3
    invoke-static {v0, v1, p0}, LJ/N;->MoQgY_pw(JLjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public l()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->b()V

    .line 2
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    .line 3
    invoke-static {v0, v1, p0}, LJ/N;->MZao1OQG(JLjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public m()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 2
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    .line 3
    invoke-static {v0, v1, p0}, LJ/N;->M5A4vDoy(JLjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public n()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->b()V

    .line 2
    invoke-static {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->hidePopupsAndPreserveSelection()V

    .line 4
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    .line 5
    invoke-static {v0, v1, p0}, LJ/N;->MHNkuuGQ(JLjava/lang/Object;)V

    return-void
.end method

.method public o()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->b()V

    .line 2
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    .line 3
    invoke-static {v0, v1, p0}, LJ/N;->MlfwWHGJ(JLjava/lang/Object;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

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
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v2, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->C:LFW0;

    .line 3
    iput p1, v2, LFW0;->j:F

    .line 4
    invoke-static {v0, v1, p0}, LJ/N;->MqhGkzSt(JLjava/lang/Object;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    return-void
.end method

.method public onDisplayModesChanged(Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public onRefreshRateChanged(F)V
    .locals 0

    return-void
.end method

.method public onRotationChanged(I)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    const/16 p1, -0x5a

    goto :goto_0

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Display.getRotation() shouldn\'t return that value"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/16 p1, 0xb4

    goto :goto_0

    :cond_3
    const/16 p1, 0x5a

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 3
    :goto_0
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    .line 4
    invoke-static {v0, v1, p0, p1}, LJ/N;->MlztHl3v(JLjava/lang/Object;I)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    return-void
.end method

.method public p()Lorg/chromium/ui/base/ViewAndroidDelegate;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->D:Ld11;

    check-cast v0, Lc11;

    .line 2
    iget-object v0, v0, Lc11;->a:Lf11;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    check-cast v0, Lu01;

    iget-object v0, v0, Lu01;->b:Lorg/chromium/ui/base/ViewAndroidDelegate;

    return-object v0
.end method

.method public q()Lorg/chromium/content/browser/RenderWidgetHostViewImpl;
    .locals 6

    .line 1
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-nez v5, :cond_0

    return-object v4

    .line 2
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    .line 3
    invoke-static {v0, v1, p0}, LJ/N;->Mj9slq6o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/RenderWidgetHostViewImpl;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderWidgetHostViewImpl;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    return-object v4
.end method

.method public r()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->b()V

    .line 2
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    .line 3
    invoke-static {v0, v1, p0}, LJ/N;->MYRJ_nNk(JLjava/lang/Object;)V

    return-void
.end method

.method public s()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->b()V

    .line 2
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    .line 3
    invoke-static {v0, v1, p0}, LJ/N;->MgbVQff0(JLjava/lang/Object;)V

    return-void
.end method

.method public setImportance(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->b()V

    .line 2
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    .line 3
    invoke-static {v0, v1, p0, p1}, LJ/N;->MkBVGSRs(JLjava/lang/Object;I)V

    return-void
.end method

.method public setSmartClipResultHandler(Landroid/os/Handler;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->A:Lorg/chromium/content/browser/webcontents/WebContentsImpl$SmartClipCallback;

    return-void

    .line 2
    :cond_0
    new-instance v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl$SmartClipCallback;

    invoke-direct {v0, p0, p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl$SmartClipCallback;-><init>(Lorg/chromium/content/browser/webcontents/WebContentsImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->A:Lorg/chromium/content/browser/webcontents/WebContentsImpl$SmartClipCallback;

    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->b()V

    .line 2
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    .line 3
    invoke-static {v0, v1, p0}, LJ/N;->M$$25N5$(JLjava/lang/Object;)V

    return-void
.end method

.method public t()Lorg/chromium/ui/base/WindowAndroid;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->b()V

    .line 2
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    .line 3
    invoke-static {v0, v1, p0}, LJ/N;->MunY3e38(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/base/WindowAndroid;

    return-object v0
.end method

.method public u()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->b()V

    .line 2
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    .line 3
    invoke-static {v0, v1, p0}, LJ/N;->MQnLkNkP(JLjava/lang/Object;)V

    return-void
.end method

.method public v()Lorg/chromium/content_public/browser/RenderFrameHost;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->b()V

    .line 2
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    .line 3
    invoke-static {v0, v1, p0}, LJ/N;->MjidYpBx(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/RenderFrameHost;

    return-object v0
.end method

.method public w()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->b()V

    .line 2
    invoke-static {p0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, v0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->x:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->c(Z)V

    .line 4
    :cond_0
    invoke-static {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->restoreSelectionPopupsIfNecessary()V

    .line 6
    :cond_1
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    .line 7
    invoke-static {v0, v1, p0}, LJ/N;->MtakfqIH(JLjava/lang/Object;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "version"

    const-wide/16 v1, 0x0

    .line 2
    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3
    new-instance v0, Landroid/os/ParcelUuid;

    sget-object v1, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->H:Ljava/util/UUID;

    invoke-direct {v0, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    const-string v1, "processguard"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    const-string v2, "webcontents"

    invoke-virtual {p2, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 5
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method

.method public x()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->b()V

    .line 2
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    .line 3
    invoke-static {v0, v1, p0}, LJ/N;->M93b11tE(JLjava/lang/Object;)Z

    move-result v0

    return v0
.end method
