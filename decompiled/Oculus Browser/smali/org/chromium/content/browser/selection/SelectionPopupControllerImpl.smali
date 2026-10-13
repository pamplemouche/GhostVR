.class public Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;
.super LC01;
.source "PG"

# interfaces
.implements LK01;
.implements LX01;
.implements LcX0;
.implements LBW0;
.implements LxU;


# static fields
.field public static b0:Z


# instance fields
.field public A:Landroid/view/ActionMode$Callback;

.field public B:J

.field public C:LU01;

.field public final D:Landroid/graphics/Rect;

.field public E:Ljava/lang/Runnable;

.field public F:Landroid/view/View;

.field public G:Landroid/view/ActionMode;

.field public H:I

.field public I:Z

.field public J:Z

.field public K:Z

.field public L:Z

.field public M:Z

.field public N:Z

.field public O:Ljava/lang/String;

.field public P:I

.field public Q:Z

.field public R:Z

.field public S:LZZ0;

.field public T:Z

.field public U:LV01;

.field public V:Lm01;

.field public W:LEW0;

.field public X:LT01;

.field public Y:Z

.field public Z:Lc01;

.field public a0:LHZ0;

.field public x:Landroid/content/Context;

.field public y:Lorg/chromium/ui/base/WindowAndroid;

.field public z:Lorg/chromium/content/browser/webcontents/WebContentsImpl;


# direct methods
.method public constructor <init>(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 3

    .line 1
    invoke-direct {p0}, LC01;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->D:Landroid/graphics/Rect;

    .line 3
    check-cast p1, Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    iput-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->z:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->W:LEW0;

    .line 5
    invoke-virtual {p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->h()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->x:Landroid/content/Context;

    .line 6
    iget-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->z:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->t()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->y:Lorg/chromium/ui/base/WindowAndroid;

    .line 7
    iget-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->z:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->p()Lorg/chromium/ui/base/ViewAndroidDelegate;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Lorg/chromium/ui/base/ViewAndroidDelegate;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->F:Landroid/view/View;

    .line 9
    iget-object p1, p1, Lorg/chromium/ui/base/ViewAndroidDelegate;->c:LWT;

    invoke-virtual {p1, p0}, LWT;->a(Ljava/lang/Object;)Z

    :cond_0
    const/4 p1, 0x7

    .line 10
    iput p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->H:I

    .line 11
    new-instance p1, Le01;

    invoke-direct {p1, p0}, Le01;-><init>(Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;)V

    iput-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->E:Ljava/lang/Runnable;

    .line 12
    iget-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->z:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-static {p1}, LgX0;->a(Lorg/chromium/content_public/browser/WebContents;)LgX0;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 13
    iget-object v1, p1, LgX0;->w:LWT;

    invoke-virtual {v1, p0}, LWT;->a(Ljava/lang/Object;)Z

    .line 14
    iget-boolean p1, p1, LgX0;->z:Z

    if-eqz p1, :cond_1

    invoke-interface {p0}, LcX0;->onAttachedToWindow()V

    .line 15
    :cond_1
    iget-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->z:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    .line 16
    invoke-static {p0, p1}, LJ/N;->MJHXNa8U(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v1

    .line 17
    iput-wide v1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->B:J

    .line 18
    iget-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->z:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-static {p1}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/input/ImeAdapterImpl;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 19
    iget-object p1, p1, Lorg/chromium/content/browser/input/ImeAdapterImpl;->E:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_2
    new-instance p1, Li01;

    invoke-direct {p1, p0, v0}, Li01;-><init>(Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;Le01;)V

    iput-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->C:LU01;

    const-string p1, ""

    .line 21
    iput-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->O:Ljava/lang/String;

    .line 22
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->u()V

    .line 23
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 24
    sget-object p1, LiW0;->a:LiW0;

    if-nez p1, :cond_3

    new-instance p1, LiW0;

    invoke-direct {p1}, LiW0;-><init>()V

    sput-object p1, LiW0;->a:LiW0;

    .line 25
    :cond_3
    sget-object p1, LiW0;->a:LiW0;

    if-eqz p1, :cond_5

    .line 26
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge p1, v1, :cond_4

    goto :goto_0

    .line 27
    :cond_4
    new-instance v0, LJZ0;

    invoke-direct {v0}, LJZ0;-><init>()V

    .line 28
    :goto_0
    iput-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->a0:LHZ0;

    .line 29
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->s()LEW0;

    move-result-object p1

    .line 30
    iget-object p1, p1, LEW0;->w:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object p1, LC01;->w:LB01;

    .line 32
    iput-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->A:Landroid/view/ActionMode$Callback;

    return-void

    .line 33
    :cond_5
    throw v0
.end method

.method public static synthetic a(Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;)J
    .locals 2

    .line 37
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->l()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 38
    invoke-static {}, LzU;->a()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x7d0

    :goto_0
    return-wide v0
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    .line 4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Truncating oversized query ("

    .line 5
    invoke-static {v0}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "SelectionPopupCtlr"

    invoke-static {v3, v0, v2}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\u2026"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;
    .locals 2

    .line 1
    check-cast p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    const-class v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    .line 2
    sget-object v1, Lk01;->a:Lt01;

    .line 3
    invoke-virtual {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->a(Ljava/lang/Class;Lt01;)LxU;

    move-result-object p0

    check-cast p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/view/ActionMode;Landroid/view/Menu;)V
    .locals 1

    const v0, 0x7f0f000a

    .line 39
    :try_start_0
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 40
    :catch_0
    new-instance p1, Landroid/view/MenuInflater;

    invoke-direct {p1, p0}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :goto_0
    return-void
.end method

.method public static synthetic b(Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->m()Z

    move-result p0

    return p0
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->x:Landroid/content/Context;

    return-object v0
.end method

.method private nativeSelectionPopupControllerDestroyed()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->B:J

    return-void
.end method

.method private onSelectWordAroundCaretAck(ZII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->U:LV01;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, LV01;->a(ZII)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 13
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->p()V

    return-void
.end method

.method public final a(II)V
    .locals 6

    .line 8
    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->z:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->q()Lorg/chromium/content/browser/RenderWidgetHostViewImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->z:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->q()Lorg/chromium/content/browser/RenderWidgetHostViewImpl;

    move-result-object v0

    .line 10
    iget-wide v1, v0, Lorg/chromium/content/browser/RenderWidgetHostViewImpl;->a:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 11
    invoke-static {v1, v2, v0, p1, p2}, LJ/N;->McU85DFE(JLjava/lang/Object;II)V

    goto :goto_0

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object p2, v0, Lorg/chromium/content/browser/RenderWidgetHostViewImpl;->b:Ljava/lang/Throwable;

    const-string v0, "Native RenderWidgetHostViewAndroid already destroyed"

    invoke-direct {p1, v0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public a(LV01;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->U:LV01;

    if-eqz p1, :cond_0

    .line 47
    invoke-interface {p1}, LV01;->a()LW01;

    move-result-object p1

    check-cast p1, Lm01;

    iput-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->V:Lm01;

    :cond_0
    const/4 p1, 0x0

    .line 48
    iput-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->X:LT01;

    return-void
.end method

.method public a(Landroid/view/ActionMode$Callback;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->A:Landroid/view/ActionMode$Callback;

    return-void
.end method

.method public a(Landroid/view/KeyEvent;)V
    .locals 0

    return-void
.end method

.method public a(Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->y:Lorg/chromium/ui/base/WindowAndroid;

    .line 15
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->u()V

    .line 16
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->p()V

    return-void
.end method

.method public final a(Z)V
    .locals 3

    .line 30
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->v()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 31
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->I:Z

    if-ne v0, p1, :cond_1

    return-void

    .line 32
    :cond_1
    iput-boolean p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->I:Z

    if-eqz p1, :cond_2

    .line 33
    iget-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->E:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 34
    :cond_2
    iget-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->F:Landroid/view/View;

    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->E:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const-wide/16 v0, 0x12c

    .line 35
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt p1, v2, :cond_3

    .line 36
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->k()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->G:Landroid/view/ActionMode;

    invoke-static {p1, v0, v1}, LzU;->a(Landroid/view/ActionMode;J)V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    .line 17
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->restoreSelectionPopupsIfNecessary()V

    goto :goto_1

    .line 18
    :cond_0
    iget-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->z:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-static {p1}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/input/ImeAdapterImpl;

    move-result-object p1

    .line 19
    iget-object p1, p1, Lorg/chromium/content/browser/input/ImeAdapterImpl;->L:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 20
    iget-boolean p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->Y:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->Y:Z

    .line 22
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->hidePopupsAndPreserveSelection()V

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->N:Z

    .line 24
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->j()V

    .line 25
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->q()V

    .line 26
    iget-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->z:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    if-nez p1, :cond_2

    goto :goto_0

    .line 27
    :cond_2
    invoke-static {p1}, LEW0;->a(Lorg/chromium/content_public/browser/WebContents;)LEW0;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 28
    invoke-virtual {p1}, LEW0;->a()V

    .line 29
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->f()V

    :goto_1
    return-void
.end method

.method public final a(I)Z
    .locals 3

    .line 41
    iget v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->H:I

    and-int/2addr v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne p1, v2, :cond_2

    if-eqz v0, :cond_1

    .line 42
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "text/plain"

    .line 43
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000

    .line 44
    invoke-static {p1, v0}, LXT;->a(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 45
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    return v0
.end method

.method public b()LU01;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->C:LU01;

    return-object v0
.end method

.method public b(Z)V
    .locals 6

    xor-int/lit8 v0, p1, 0x1

    .line 3
    iget-wide v1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->B:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v1, v2, p0, v0}, LJ/N;->M01adZlM(JLjava/lang/Object;Z)V

    :goto_0
    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->restoreSelectionPopupsIfNecessary()V

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->o()V

    .line 7
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->s()LEW0;

    move-result-object p1

    invoke-virtual {p1}, LEW0;->a()V

    :goto_1
    return-void
.end method

.method public b(ZZ)V
    .locals 1

    if-nez p1, :cond_0

    .line 8
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->p()V

    .line 9
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->J:Z

    if-ne p1, v0, :cond_1

    .line 10
    iget-boolean v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->K:Z

    if-eq p2, v0, :cond_2

    .line 11
    :cond_1
    iput-boolean p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->J:Z

    .line 12
    iput-boolean p2, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->K:Z

    .line 13
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->k()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->G:Landroid/view/ActionMode;

    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    :cond_2
    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->j()V

    return-void
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->J:Z

    return v0
.end method

.method public f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->z:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->A:Landroid/view/ActionMode$Callback;

    sget-object v1, LC01;->w:LB01;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_2

    .line 3
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->z:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    .line 4
    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->m()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    iget-wide v1, v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    .line 6
    invoke-static {v1, v2, v0}, LJ/N;->MDK_KK0z(JLjava/lang/Object;)V

    :goto_1
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->X:LT01;

    :cond_3
    :goto_2
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->O:Ljava/lang/String;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->k()Z

    move-result v0

    return v0
.end method

.method public hidePopupsAndPreserveSelection()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->o()V

    .line 2
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->s()LEW0;

    move-result-object v0

    invoke-virtual {v0}, LEW0;->a()V

    return-void
.end method

.method public i()LC01;
    .locals 0

    return-object p0
.end method

.method public j()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->I:Z

    .line 2
    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->F:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->E:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->G:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->G:Landroid/view/ActionMode;

    :cond_1
    return-void
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->G:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final m()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->x:Landroid/content/Context;

    const-string v1, "clipboard"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 3
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v0

    return v0
.end method

.method public n()Z
    .locals 10

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->M:Z

    if-nez v0, :cond_1

    return v2

    .line 3
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->x:Landroid/content/Context;

    const-string v1, "clipboard"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 5
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 6
    :cond_2
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v1

    .line 8
    invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v3, "text/plain"

    .line 9
    invoke-virtual {v1, v3}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 10
    instance-of v3, v0, Landroid/text/Spanned;

    if-eqz v3, :cond_5

    .line 11
    check-cast v0, Landroid/text/Spanned;

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    .line 12
    const-class v5, Landroid/text/style/CharacterStyle;

    aput-object v5, v4, v2

    const-class v5, Landroid/text/style/ParagraphStyle;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    const-class v7, Landroid/text/style/UpdateAppearance;

    aput-object v7, v4, v5

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_4

    .line 13
    aget-object v7, v4, v5

    const/4 v8, -0x1

    .line 14
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v9

    invoke-interface {v0, v8, v9, v7}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v7

    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v8

    if-ge v7, v8, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    return v6

    :cond_5
    const-string v0, "text/html"

    .line 15
    invoke-virtual {v1, v0}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public o()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->N:Z

    .line 2
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->j()V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->b(Z)V

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
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->b(Z)V

    return-void
.end method

.method public onDisplayModesChanged(Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public onDragUpdate(FF)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->Z:Lc01;

    if-eqz v0, :cond_5

    .line 2
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->r()F

    move-result v0

    mul-float p1, p1, v0

    mul-float p2, p2, v0

    .line 3
    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->z:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    .line 4
    iget-object v0, v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->C:LFW0;

    .line 5
    iget v0, v0, LFW0;->k:F

    add-float/2addr p2, v0

    .line 6
    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->Z:Lc01;

    check-cast v0, LVZ0;

    .line 7
    iget-object v1, v0, LVZ0;->a:LWZ0;

    check-cast v1, LXZ0;

    .line 8
    iget-object v1, v1, LXZ0;->b:Lh01;

    check-cast v1, Ld01;

    invoke-virtual {v1}, Ld01;->a()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    goto :goto_3

    .line 9
    :cond_1
    iget-boolean v1, v0, LVZ0;->c:Z

    if-eqz v1, :cond_3

    iget v1, v0, LVZ0;->i:F

    cmpl-float v1, p2, v1

    if-eqz v1, :cond_3

    .line 10
    iget-object v1, v0, LVZ0;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    iget-object v1, v0, LVZ0;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 12
    invoke-virtual {v0}, LVZ0;->a()V

    .line 13
    iget v1, v0, LVZ0;->d:F

    iput v1, v0, LVZ0;->f:F

    .line 14
    iget v1, v0, LVZ0;->e:F

    iput v1, v0, LVZ0;->g:F

    goto :goto_1

    .line 15
    :cond_2
    iget v1, v0, LVZ0;->h:F

    iput v1, v0, LVZ0;->f:F

    .line 16
    iget v1, v0, LVZ0;->i:F

    iput v1, v0, LVZ0;->g:F

    .line 17
    :goto_1
    iget-object v1, v0, LVZ0;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    .line 18
    :cond_3
    iget-object v1, v0, LVZ0;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, LVZ0;->a:LWZ0;

    check-cast v1, LXZ0;

    invoke-virtual {v1, p1, p2}, LXZ0;->a(FF)V

    .line 19
    :cond_4
    :goto_2
    iput p1, v0, LVZ0;->h:F

    .line 20
    iput p2, v0, LVZ0;->i:F

    .line 21
    iput-boolean v2, v0, LVZ0;->c:Z

    :cond_5
    :goto_3
    return-void
.end method

.method public onRefreshRateChanged(F)V
    .locals 0

    return-void
.end method

.method public onRotationChanged(I)V
    .locals 1

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->k()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->hidePopupsAndPreserveSelection()V

    .line 3
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->y()V

    :cond_0
    return-void
.end method

.method public onSelectionChanged(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->R:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->V:Lm01;

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->O:Ljava/lang/String;

    iget v2, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->P:I

    const/16 v3, 0x6b

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lm01;->a(Ljava/lang/String;IILT01;)V

    .line 5
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->o()V

    .line 6
    :cond_2
    iput-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->O:Ljava/lang/String;

    .line 7
    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->U:LV01;

    if-eqz v0, :cond_3

    .line 8
    invoke-interface {v0, p1}, LV01;->a(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onSelectionEvent(IIIII)V
    .locals 3

    if-ne p2, p4, :cond_0

    add-int/lit8 p4, p4, 0x1

    :cond_0
    if-ne p3, p5, :cond_1

    add-int/lit8 p5, p5, 0x1

    :cond_1
    const/16 v0, 0x9

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 1
    :pswitch_0
    iget-boolean p2, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->T:Z

    if-eqz p2, :cond_2

    .line 2
    iget-object p2, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->D:Landroid/graphics/Rect;

    iget p3, p2, Landroid/graphics/Rect;->left:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p3, p2}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->a(II)V

    .line 3
    :cond_2
    iput-boolean v1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->T:Z

    .line 4
    iget-object p2, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->Z:Lc01;

    if-eqz p2, :cond_3

    .line 5
    check-cast p2, LVZ0;

    invoke-virtual {p2}, LVZ0;->b()V

    .line 6
    :cond_3
    iput-boolean v1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->Q:Z

    goto/16 :goto_2

    .line 7
    :pswitch_1
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->w()Z

    move-result p2

    iput-boolean p2, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->T:Z

    .line 8
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->p()V

    .line 9
    iput-boolean v2, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->Q:Z

    goto/16 :goto_2

    .line 10
    :pswitch_2
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->p()V

    .line 11
    iget-boolean p2, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->R:Z

    if-nez p2, :cond_9

    .line 12
    iget-object p2, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->D:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_2

    .line 13
    :pswitch_3
    iget-boolean p2, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->T:Z

    if-eqz p2, :cond_4

    .line 14
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->p()V

    goto :goto_0

    .line 15
    :cond_4
    iget-object p2, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->D:Landroid/graphics/Rect;

    iget p3, p2, Landroid/graphics/Rect;->left:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p3, p2}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->a(II)V

    .line 16
    :goto_0
    iput-boolean v1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->T:Z

    goto/16 :goto_2

    .line 17
    :pswitch_4
    iget-object v1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->D:Landroid/graphics/Rect;

    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 18
    iget-object p2, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->z:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-static {p2}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/GestureListenerManagerImpl;

    move-result-object p2

    .line 19
    invoke-virtual {p2}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->a()Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->w()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 20
    :try_start_0
    iget-object p2, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->S:LZZ0;

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->t()Landroid/graphics/Rect;

    move-result-object p3

    invoke-interface {p2, p3}, LZZ0;->a(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    goto :goto_1

    .line 21
    :cond_5
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->p()V

    .line 22
    :goto_1
    iget-boolean p2, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->Q:Z

    if-eqz p2, :cond_9

    .line 23
    invoke-static {}, Lorg/chromium/base/BuildInfo;->a()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 24
    iget-object p2, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->F:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_2

    .line 25
    :pswitch_5
    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->D:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2

    .line 26
    :pswitch_6
    invoke-virtual {p0, p2, p5}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->a(II)V

    .line 27
    iget-object p2, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->Z:Lc01;

    if-eqz p2, :cond_6

    .line 28
    check-cast p2, LVZ0;

    invoke-virtual {p2}, LVZ0;->b()V

    .line 29
    :cond_6
    iput-boolean v1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->Q:Z

    goto :goto_2

    .line 30
    :pswitch_7
    invoke-virtual {p0, v2}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->a(Z)V

    .line 31
    iput-boolean v2, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->Q:Z

    goto :goto_2

    :pswitch_8
    const-string p2, ""

    .line 32
    iput-object p2, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->O:Ljava/lang/String;

    .line 33
    iput v1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->P:I

    .line 34
    iput-boolean v1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->R:Z

    .line 35
    iput-boolean v1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->N:Z

    .line 36
    iget-object p2, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->D:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 37
    iget-object p2, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->U:LV01;

    if-eqz p2, :cond_7

    invoke-interface {p2}, LV01;->b()V

    .line 38
    :cond_7
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->j()V

    goto :goto_2

    .line 39
    :pswitch_9
    iget-object v1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->D:Landroid/graphics/Rect;

    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 40
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->l()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->k()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 41
    iget-object p2, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->G:Landroid/view/ActionMode;

    invoke-static {p2}, LzU;->b(Landroid/view/ActionMode;)V

    .line 42
    :cond_8
    iget-boolean p2, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->Q:Z

    if-eqz p2, :cond_9

    .line 43
    invoke-static {}, Lorg/chromium/base/BuildInfo;->a()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 44
    iget-object p2, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->F:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_2

    .line 45
    :pswitch_a
    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->D:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 46
    :cond_9
    :goto_2
    iget-object p2, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->U:LV01;

    if-eqz p2, :cond_a

    .line 47
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->r()F

    move-result p2

    .line 48
    iget-object p3, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->D:Landroid/graphics/Rect;

    iget p4, p3, Landroid/graphics/Rect;->left:I

    int-to-float p4, p4

    mul-float p4, p4, p2

    float-to-int p4, p4

    .line 49
    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    int-to-float p3, p3

    mul-float p3, p3, p2

    float-to-int p2, p3

    .line 50
    iget-object p3, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->U:LV01;

    int-to-float p4, p4

    int-to-float p2, p2

    invoke-interface {p3, p1, p4, p2}, LV01;->a(IFF)V

    :cond_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->G:Landroid/view/ActionMode;

    invoke-static {v0, p1}, LzU;->a(Landroid/view/ActionMode;Z)V

    :cond_0
    return-void
.end method

.method public p()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->S:LZZ0;

    invoke-interface {v0}, LZZ0;->a()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->S:LZZ0;

    :cond_0
    return-void
.end method

.method public final q()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->z:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->q()Lorg/chromium/content/browser/RenderWidgetHostViewImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->z:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->q()Lorg/chromium/content/browser/RenderWidgetHostViewImpl;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderWidgetHostViewImpl;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-wide v1, v0, Lorg/chromium/content/browser/RenderWidgetHostViewImpl;->a:J

    .line 5
    invoke-static {v1, v2, v0}, LJ/N;->MQWja$xA(JLjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final r()F
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->z:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    .line 2
    iget-object v0, v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->C:LFW0;

    .line 3
    iget v0, v0, LFW0;->j:F

    return v0
.end method

.method public restoreSelectionPopupsIfNecessary()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->R:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->y()V

    :cond_0
    return-void
.end method

.method public final s()LEW0;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->W:LEW0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->z:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-static {v0}, LEW0;->a(Lorg/chromium/content_public/browser/WebContents;)LEW0;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->W:LEW0;

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->W:LEW0;

    return-object v0
.end method

.method public showSelectionMenu(IIIIIZZLjava/lang/String;IZZZI)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/2addr p4, p5

    .line 2
    :cond_0
    iget-object p5, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->D:Landroid/graphics/Rect;

    invoke-virtual {p5, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 3
    iput-boolean p6, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->J:Z

    .line 4
    iput-object p8, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->O:Ljava/lang/String;

    .line 5
    iput p9, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->P:I

    .line 6
    invoke-virtual {p8}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->R:Z

    .line 7
    iput-boolean p7, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->K:Z

    .line 8
    iput-boolean p10, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->L:Z

    .line 9
    iput-boolean p11, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->M:Z

    .line 10
    iput-boolean p3, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->N:Z

    const/4 p4, 0x0

    if-eqz p1, :cond_9

    .line 11
    iget-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->V:Lm01;

    const/16 p5, 0x9

    if-eqz p1, :cond_6

    const/4 p7, 0x7

    if-eq p13, p7, :cond_6

    if-eq p13, p5, :cond_5

    const/16 p7, 0xa

    if-eq p13, p7, :cond_4

    .line 12
    iget-object p7, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->O:Ljava/lang/String;

    iget p8, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->P:I

    .line 13
    iget-object p9, p1, Lm01;->a:Landroid/content/Context;

    .line 14
    :try_start_0
    sget-object p10, Lm01;->g:Ljava/lang/reflect/Constructor;

    const/4 p11, 0x2

    new-array v0, p11, [Ljava/lang/Object;

    aput-object p9, v0, p2

    if-eqz p6, :cond_2

    const/4 p11, 0x4

    .line 15
    :cond_2
    invoke-static {p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    aput-object p6, v0, p3

    .line 16
    invoke-virtual {p10, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object p6, p4

    .line 17
    :goto_1
    iput-object p6, p1, Lm01;->b:Ljava/lang/Object;

    .line 18
    new-instance p6, Lb01;

    invoke-direct {p6}, Lb01;-><init>()V

    iput-object p6, p1, Lm01;->d:Lb01;

    .line 19
    invoke-virtual {p6, p7, p8}, Lb01;->a(Ljava/lang/String;I)Z

    .line 20
    iget-object p6, p1, Lm01;->d:Lb01;

    .line 21
    iput p8, p6, Lb01;->e:I

    .line 22
    iget-object p6, p1, Lm01;->c:Ll01;

    check-cast p6, La01;

    if-eqz p6, :cond_3

    .line 23
    :try_start_1
    sget-object p6, La01;->b:Ljava/lang/reflect/Method;

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p7

    aput-object p7, p3, p2

    invoke-virtual {p6, p4, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 24
    :catch_1
    invoke-virtual {p1, p4}, Lm01;->a(Ljava/lang/Object;)V

    goto :goto_2

    .line 25
    :cond_3
    throw p4

    .line 26
    :cond_4
    iget-object p2, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->O:Ljava/lang/String;

    iget p3, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->P:I

    const/16 p6, 0xc9

    invoke-virtual {p1, p2, p3, p6, p4}, Lm01;->a(Ljava/lang/String;IILT01;)V

    goto :goto_2

    .line 27
    :cond_5
    iget-object p2, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->O:Ljava/lang/String;

    iget p3, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->P:I

    iget-object p4, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->X:LT01;

    invoke-virtual {p1, p2, p3, p4}, Lm01;->a(Ljava/lang/String;ILT01;)V

    :cond_6
    :goto_2
    if-ne p13, p5, :cond_7

    .line 28
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->y()V

    return-void

    .line 29
    :cond_7
    iget-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->U:LV01;

    if-eqz p1, :cond_8

    .line 30
    invoke-interface {p1, p12}, LV01;->a(Z)Z

    move-result p1

    if-nez p1, :cond_e

    .line 31
    :cond_8
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->y()V

    goto :goto_4

    .line 32
    :cond_9
    iget-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->F:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->F:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_4

    .line 33
    :cond_a
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->l()Z

    move-result p1

    if-nez p1, :cond_b

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->m()Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_4

    .line 34
    :cond_b
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->p()V

    .line 35
    new-instance p1, Lf01;

    invoke-direct {p1, p0}, Lf01;-><init>(Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;)V

    .line 36
    iget-object p2, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->y:Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {p2}, Lorg/chromium/ui/base/WindowAndroid;->getContext()Ljava/lang/ref/WeakReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    if-nez p2, :cond_c

    goto :goto_4

    .line 37
    :cond_c
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->l()Z

    move-result p3

    if-eqz p3, :cond_d

    .line 38
    new-instance p3, LNZ0;

    iget-object p5, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->F:Landroid/view/View;

    invoke-direct {p3, p2, p5, p1, p4}, LNZ0;-><init>(Landroid/content/Context;Landroid/view/View;LYZ0;Landroid/view/ActionMode$Callback;)V

    iput-object p3, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->S:LZZ0;

    goto :goto_3

    .line 39
    :cond_d
    new-instance p3, LTZ0;

    iget-object p4, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->F:Landroid/view/View;

    invoke-direct {p3, p2, p4, p1}, LTZ0;-><init>(Landroid/content/Context;Landroid/view/View;LYZ0;)V

    iput-object p3, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->S:LZZ0;

    .line 40
    :goto_3
    :try_start_2
    iget-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->S:LZZ0;

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->t()Landroid/graphics/Rect;

    move-result-object p2

    invoke-interface {p1, p2}, LZZ0;->a(Landroid/graphics/Rect;)V
    :try_end_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_e
    :goto_4
    return-void
.end method

.method public final t()Landroid/graphics/Rect;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->r()F

    move-result v0

    .line 2
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->D:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    mul-float v3, v3, v0

    float-to-int v3, v3

    iget v4, v2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    mul-float v4, v4, v0

    float-to-int v4, v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    mul-float v5, v5, v0

    float-to-int v5, v5

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    mul-float v2, v2, v0

    float-to-int v0, v2

    invoke-direct {v1, v3, v4, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 3
    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->z:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    .line 4
    iget-object v0, v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->C:LFW0;

    .line 5
    iget v0, v0, LFW0;->k:F

    float-to-int v0, v0

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v2, v0}, Landroid/graphics/Rect;->offset(II)V

    return-object v1
.end method

.method public final u()V
    .locals 4

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    sget-object v0, LiW0;->a:LiW0;

    if-nez v0, :cond_0

    new-instance v0, LiW0;

    invoke-direct {v0}, LiW0;-><init>()V

    sput-object v0, LiW0;->a:LiW0;

    .line 3
    :cond_0
    sget-object v0, LiW0;->a:LiW0;

    .line 4
    new-instance v1, Ld01;

    invoke-direct {v1, p0}, Ld01;-><init>(Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;)V

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-ge v0, v3, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    new-instance v2, LVZ0;

    new-instance v0, LXZ0;

    invoke-direct {v0, v1}, LXZ0;-><init>(Lh01;)V

    invoke-direct {v2, v0}, LVZ0;-><init>(LWZ0;)V

    .line 7
    :goto_0
    iput-object v2, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->Z:Lc01;

    return-void

    .line 8
    :cond_2
    throw v2
.end method

.method public final v()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->l()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->G:Landroid/view/ActionMode;

    .line 2
    invoke-static {v0}, LzU;->a(Landroid/view/ActionMode;)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public w()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->S:LZZ0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public x()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->z:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    .line 2
    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->b()V

    .line 3
    iget-wide v1, v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    .line 4
    invoke-static {v1, v2, v0}, LJ/N;->MNvj1u1S(JLjava/lang/Object;)V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->X:LT01;

    .line 6
    iget-boolean v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->J:Z

    if-eqz v0, :cond_0

    const-string v0, "MobileActionMode.SelectAllWasEditable"

    .line 7
    invoke-static {v0}, LhV;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "MobileActionMode.SelectAllWasNonEditable"

    .line 8
    invoke-static {v0}, LhV;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public y()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->A:Landroid/view/ActionMode$Callback;

    sget-object v1, LC01;->w:LB01;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    .line 2
    iget-boolean v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->R:Z

    if-nez v0, :cond_1

    goto :goto_3

    .line 3
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->v()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->G:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v0, "SelectionPopupCtlr"

    const-string v3, "Ignoring NPE from ActionMode.invalidate() as workaround for L"

    .line 5
    invoke-static {v0, v3, v1}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    :goto_1
    invoke-virtual {p0, v2}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->a(Z)V

    return-void

    .line 7
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->o()V

    .line 8
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->F:Landroid/view/View;

    iget-object v1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->A:Landroid/view/ActionMode$Callback;

    invoke-static {v0, p0, v1}, LhW0;->a(Landroid/view/View;Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    goto :goto_2

    .line 10
    :cond_3
    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->F:Landroid/view/View;

    iget-object v1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->A:Landroid/view/ActionMode$Callback;

    invoke-virtual {v0, v1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_4

    .line 11
    iget-object v1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->x:Landroid/content/Context;

    invoke-static {v1, v0}, LSZ0;->a(Landroid/content/Context;Landroid/view/ActionMode;)V

    .line 12
    :cond_4
    iput-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->G:Landroid/view/ActionMode;

    .line 13
    iput-boolean v3, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->N:Z

    .line 14
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->k()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->f()V

    :cond_5
    :goto_3
    return-void
.end method
