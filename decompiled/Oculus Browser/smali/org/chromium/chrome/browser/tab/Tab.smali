.class public Lorg/chromium/chrome/browser/tab/Tab;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public A:J

.field public B:Ljava/lang/String;

.field public C:Z

.field public D:LlH0;

.field public E:Landroid/view/View$OnAttachStateChangeListener;

.field public F:Z

.field public G:Z

.field public H:LeI0;

.field public final I:LyU;

.field public a:J

.field public final b:I

.field public final c:Z

.field public final d:Landroid/content/Context;

.field public e:Lorg/chromium/ui/base/WindowAndroid;

.field public f:Lsl0;

.field public g:Lorg/chromium/content_public/browser/WebContents;

.field public h:Landroid/view/ViewGroup;

.field public final i:LWT;

.field public j:Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;

.field public final k:I

.field public final l:I

.field public m:I

.field public n:Z

.field public o:Z

.field public p:Z

.field public final q:Ljava/lang/Integer;

.field public r:Ljava/lang/Integer;

.field public s:LsH0;

.field public t:Lorg/chromium/content_public/browser/LoadUrlParams;

.field public u:Ljava/lang/String;

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:I

.field public z:Z


# direct methods
.method public constructor <init>(ILorg/chromium/chrome/browser/tab/Tab;ZLjava/lang/Integer;LeI0;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LWT;

    invoke-direct {v0}, LWT;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->p:Z

    .line 4
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->x:Z

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->y:I

    const-wide/16 v0, -0x1

    .line 6
    iput-wide v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->A:J

    .line 7
    new-instance v0, LyU;

    invoke-direct {v0}, LyU;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->I:LyU;

    .line 8
    invoke-static {}, LnH0;->a()LnH0;

    move-result-object v0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 9
    iget-object p1, v0, LnH0;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    :cond_0
    add-int/lit8 v2, p1, 0x1

    .line 10
    invoke-virtual {v0, v2}, LnH0;->a(I)V

    .line 11
    iput p1, p0, Lorg/chromium/chrome/browser/tab/Tab;->b:I

    .line 12
    iput-boolean p3, p0, Lorg/chromium/chrome/browser/tab/Tab;->c:Z

    if-nez p2, :cond_1

    .line 13
    iput v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->k:I

    .line 14
    iput v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->l:I

    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result p1

    iput p1, p0, Lorg/chromium/chrome/browser/tab/Tab;->k:I

    .line 16
    iget-boolean p2, p2, Lorg/chromium/chrome/browser/tab/Tab;->c:Z

    if-ne p2, p3, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    .line 17
    :goto_0
    iput p1, p0, Lorg/chromium/chrome/browser/tab/Tab;->l:I

    .line 18
    :goto_1
    iget p1, p0, Lorg/chromium/chrome/browser/tab/Tab;->b:I

    iput p1, p0, Lorg/chromium/chrome/browser/tab/Tab;->m:I

    .line 19
    sget-object p1, LzT;->a:Landroid/content/Context;

    .line 20
    invoke-static {}, Lorg/chromium/chrome/browser/ChromeActivity;->r1()I

    move-result p2

    .line 21
    new-instance p3, Landroid/view/ContextThemeWrapper;

    invoke-direct {p3, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 22
    new-instance p1, Landroid/content/res/Configuration;

    invoke-direct {p1}, Landroid/content/res/Configuration;-><init>()V

    const/4 p2, 0x0

    .line 23
    iput p2, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 24
    iget p2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p2, p2, -0x31

    or-int/lit8 p2, p2, 0x10

    iput p2, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 25
    invoke-virtual {p3, p1}, Landroid/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V

    .line 26
    iput-object p3, p0, Lorg/chromium/chrome/browser/tab/Tab;->d:Landroid/content/Context;

    .line 27
    iput-object p4, p0, Lorg/chromium/chrome/browser/tab/Tab;->q:Ljava/lang/Integer;

    .line 28
    iput-object p5, p0, Lorg/chromium/chrome/browser/tab/Tab;->H:LeI0;

    .line 29
    new-instance p1, LbH0;

    invoke-direct {p1, p0}, LbH0;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    iput-object p1, p0, Lorg/chromium/chrome/browser/tab/Tab;->E:Landroid/view/View$OnAttachStateChangeListener;

    return-void
.end method

.method private clearNativePtr()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->a:J

    return-void
.end method

.method private deleteNavigationEntriesFromFrozenState(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->s:LsH0;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, v0, LsH0;->a:Ljava/nio/ByteBuffer;

    iget v0, v0, LsH0;->b:I

    .line 3
    invoke-static {v1, v0, p1, p2}, LJ/N;->MVpvmEdB(Ljava/lang/Object;IJ)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_1
    new-instance p2, LsH0;

    invoke-direct {p2, p1}, LsH0;-><init>(Ljava/nio/ByteBuffer;)V

    const/4 p1, 0x2

    .line 5
    iput p1, p2, LsH0;->b:I

    move-object p1, p2

    :goto_0
    if-eqz p1, :cond_2

    .line 6
    iput-object p1, p0, Lorg/chromium/chrome/browser/tab/Tab;->s:LsH0;

    .line 7
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->y()V

    :cond_2
    return-void
.end method

.method private getNativePtr()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->a:J

    return-wide v0
.end method

.method private setNativePtr(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/chromium/chrome/browser/tab/Tab;->a:J

    return-void
.end method


# virtual methods
.method public A()V
    .locals 2

    .line 1
    invoke-static {p0}, Lmn0;->b(Lorg/chromium/chrome/browser/tab/Tab;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lmn0;->d(Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->g()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/chromium/content_public/browser/NavigationController;->a(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public B()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->G()V

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->f:Lsl0;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    instance-of v1, v0, Lrl0;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 4
    check-cast v0, Lrl0;

    if-eqz v0, :cond_1

    throw v2

    .line 5
    :cond_1
    throw v2

    .line 6
    :cond_2
    iput-object v2, p0, Lorg/chromium/chrome/browser/tab/Tab;->f:Lsl0;

    .line 7
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->x()V

    return-void
.end method

.method public C()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->m()LVT;

    move-result-object v0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LpH0;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p0, v2}, LpH0;->onPageLoadFinished(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->stop()V

    :cond_1
    return-void
.end method

.method public final D()V
    .locals 5

    const-string v0, "Tab.unfreezeContents"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {v0, v1}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/Tab;->s:LsH0;

    .line 3
    iget-boolean v3, p0, Lorg/chromium/chrome/browser/tab/Tab;->x:Z

    .line 4
    iget-object v4, v2, LsH0;->a:Ljava/nio/ByteBuffer;

    iget v2, v2, LsH0;->b:I

    .line 5
    invoke-static {v4, v2, v3}, LJ/N;->MICPd5BY(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/content_public/browser/WebContents;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 6
    iget-boolean v2, p0, Lorg/chromium/chrome/browser/tab/Tab;->c:Z

    .line 7
    iget-boolean v3, p0, Lorg/chromium/chrome/browser/tab/Tab;->x:Z

    .line 8
    invoke-static {v2, v3}, Lj00;->a(ZZ)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v2

    const/4 v3, 0x4

    .line 9
    invoke-static {p0, v3}, LzH0;->a(Lorg/chromium/chrome/browser/tab/Tab;I)LzH0;

    const/4 v3, 0x1

    .line 10
    :cond_0
    iput-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->s:LsH0;

    .line 11
    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/tab/Tab;->a(Lorg/chromium/content_public/browser/WebContents;)V

    if-eqz v3, :cond_2

    .line 12
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->u:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "chrome-native://newtab/"

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->u:Ljava/lang/String;

    .line 13
    :goto_0
    new-instance v2, Lorg/chromium/content_public/browser/LoadUrlParams;

    const/4 v3, 0x5

    invoke-direct {v2, v1, v3}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/tab/Tab;->a(Lorg/chromium/content_public/browser/LoadUrlParams;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :cond_2
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    throw v1
.end method

.method public E()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->n()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/ChromeActivity;->X0()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    .line 4
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v4

    if-eq v4, v3, :cond_2

    .line 5
    invoke-virtual {v0, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    const/16 v3, 0x800

    .line 6
    invoke-virtual {v0, v3}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 7
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v0, :cond_3

    .line 8
    invoke-static {v0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;

    move-result-object v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_7

    .line 9
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 10
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/ChromeActivity;->X0()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    if-nez v3, :cond_5

    .line 11
    invoke-static {p0}, LaH0;->a(Lorg/chromium/chrome/browser/tab/Tab;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    const/4 v1, 0x1

    .line 12
    :cond_6
    invoke-interface {v0, v1}, Le11;->b(Z)V

    :cond_7
    return-void
.end method

.method public final F()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->x:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->q()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->G:Z

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lorg/chromium/chrome/browser/vr/VrModuleProvider;->a()LJO0;

    move-result-object v0

    check-cast v0, LKO0;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    throw v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 4
    :goto_1
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->F:Z

    if-ne v0, v1, :cond_3

    return-void

    .line 5
    :cond_3
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->F:Z

    .line 6
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {v1}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LpH0;

    invoke-interface {v2, v0}, LpH0;->onInteractabilityChanged(Z)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public G()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->isNativePage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->f:Lsl0;

    check-cast v0, Lrl0;

    .line 4
    iget-object v0, v0, Lrl0;->x:Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    .line 7
    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->B:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->p:Z

    .line 9
    iput-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->B:Ljava/lang/String;

    .line 10
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->z()V

    :goto_1
    return-void
.end method

.method public a(Lorg/chromium/content_public/browser/LoadUrlParams;)I
    .locals 24

    move-object/from16 v15, p0

    move-object/from16 v0, p1

    const-string v14, "Tab.loadUrl"

    const/4 v1, 0x0

    .line 41
    :try_start_0
    invoke-static {v14, v1}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-boolean v2, v15, Lorg/chromium/chrome/browser/tab/Tab;->C:Z

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 43
    iget-object v2, v0, Lorg/chromium/content_public/browser/LoadUrlParams;->a:Ljava/lang/String;

    .line 44
    invoke-virtual {v15, v2, v3}, Lorg/chromium/chrome/browser/tab/Tab;->a(Ljava/lang/String;Z)Z

    iput-boolean v3, v15, Lorg/chromium/chrome/browser/tab/Tab;->C:Z

    :cond_0
    const-string v2, "chrome://java-crash/"

    .line 45
    iget-object v4, v0, Lorg/chromium/content_public/browser/LoadUrlParams;->a:Ljava/lang/String;

    .line 46
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 47
    iget-wide v4, v15, Lorg/chromium/chrome/browser/tab/Tab;->a:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_4

    .line 48
    iget-wide v4, v15, Lorg/chromium/chrome/browser/tab/Tab;->a:J

    .line 49
    iget-object v6, v0, Lorg/chromium/content_public/browser/LoadUrlParams;->a:Ljava/lang/String;

    .line 50
    iget-object v7, v0, Lorg/chromium/content_public/browser/LoadUrlParams;->b:Ljava/lang/String;

    .line 51
    iget-object v8, v0, Lorg/chromium/content_public/browser/LoadUrlParams;->g:Ljava/lang/String;

    .line 52
    iget-object v9, v0, Lorg/chromium/content_public/browser/LoadUrlParams;->i:Lorg/chromium/content_public/common/ResourceRequestBody;

    .line 53
    iget v10, v0, Lorg/chromium/content_public/browser/LoadUrlParams;->d:I

    .line 54
    iget-object v2, v0, Lorg/chromium/content_public/browser/LoadUrlParams;->e:Lh11;

    if-eqz v2, :cond_1

    iget-object v1, v0, Lorg/chromium/content_public/browser/LoadUrlParams;->e:Lh11;

    .line 55
    iget-object v1, v1, Lh11;->a:Ljava/lang/String;

    :cond_1
    move-object v11, v1

    .line 56
    iget-object v1, v0, Lorg/chromium/content_public/browser/LoadUrlParams;->e:Lh11;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lorg/chromium/content_public/browser/LoadUrlParams;->e:Lh11;

    .line 57
    iget v1, v1, Lh11;->b:I

    move v12, v1

    goto :goto_0

    :cond_2
    const/4 v12, 0x0

    .line 58
    :goto_0
    iget-boolean v13, v0, Lorg/chromium/content_public/browser/LoadUrlParams;->m:Z

    .line 59
    iget-boolean v3, v0, Lorg/chromium/content_public/browser/LoadUrlParams;->n:Z

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 60
    iget-wide v1, v0, Lorg/chromium/content_public/browser/LoadUrlParams;->p:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object/from16 v18, v14

    .line 61
    :try_start_1
    iget-wide v14, v0, Lorg/chromium/content_public/browser/LoadUrlParams;->o:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-wide/from16 v19, v1

    move-wide v1, v4

    move/from16 v21, v3

    move-object/from16 v3, p0

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move v8, v10

    move-object v9, v11

    move v10, v12

    move v11, v13

    move/from16 v12, v21

    move/from16 v13, v16

    move-wide/from16 v22, v14

    move-object/from16 v21, v18

    move/from16 v14, v17

    move-wide/from16 v15, v19

    move-wide/from16 v17, v22

    .line 62
    :try_start_2
    invoke-static/range {v1 .. v18}, LJ/N;->MWLnwNiT(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/String;IZZZZJJ)I

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v2, p0

    .line 63
    :try_start_3
    iget-object v3, v2, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {v3}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LpH0;

    .line 64
    invoke-interface {v4, v2, v0, v1}, LpH0;->onLoadUrl(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/content_public/browser/LoadUrlParams;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    .line 65
    :cond_3
    invoke-static/range {v21 .. v21}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    return v1

    :catchall_0
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v2, p0

    move-object/from16 v21, v18

    goto :goto_2

    :cond_4
    move-object/from16 v21, v14

    move-object v2, v15

    .line 66
    :try_start_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Tab.loadUrl called when no native side exists"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move-object/from16 v21, v14

    move-object v2, v15

    .line 67
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Intentional Java Crash"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object/from16 v21, v14

    move-object v2, v15

    .line 68
    :goto_2
    invoke-static/range {v21 .. v21}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    throw v0
.end method

.method public a(I)V
    .locals 2

    .line 79
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LpH0;

    .line 80
    invoke-interface {v1, p0, p1}, LpH0;->onPageLoadFailed(Lorg/chromium/chrome/browser/tab/Tab;I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 81
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/tab/Tab;->w:Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->p:Z

    .line 76
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->G()V

    .line 77
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LpH0;

    invoke-interface {v1, p0, p1}, LpH0;->onPageLoadFinished(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 78
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/tab/Tab;->w:Z

    return-void
.end method

.method public a(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 11

    const-string v0, "ChromeTab.initWebContents"

    const/4 v1, 0x0

    .line 14
    :try_start_0
    invoke-static {v0, v1}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 16
    iput-object p1, p0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 17
    iget-object v3, p0, Lorg/chromium/chrome/browser/tab/Tab;->d:Landroid/content/Context;

    invoke-static {v3, p1}, LnT0;->a(Landroid/content/Context;Lorg/chromium/content_public/browser/WebContents;)LnT0;

    move-result-object v7

    .line 18
    iget-object v3, p0, Lorg/chromium/chrome/browser/tab/Tab;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1300d9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 19
    iput-object v7, p0, Lorg/chromium/chrome/browser/tab/Tab;->h:Landroid/view/ViewGroup;

    const-string v5, "79.0.3945.126"

    .line 20
    new-instance v6, LAH0;

    invoke-direct {v6, p0, v7}, LAH0;-><init>(Lorg/chromium/chrome/browser/tab/Tab;Landroid/view/ViewGroup;)V

    .line 21
    iget-object v8, p0, Lorg/chromium/chrome/browser/tab/Tab;->e:Lorg/chromium/ui/base/WindowAndroid;

    .line 22
    new-instance v9, Lc11;

    invoke-direct {v9}, Lc11;-><init>()V

    move-object v4, p1

    .line 23
    invoke-interface/range {v4 .. v9}, Lorg/chromium/content_public/browser/WebContents;->a(Ljava/lang/String;Lorg/chromium/ui/base/ViewAndroidDelegate;La11;Lorg/chromium/ui/base/WindowAndroid;Ld11;)V

    .line 24
    iput-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->f:Lsl0;

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    .line 25
    invoke-interface {v2, v1}, Lorg/chromium/content_public/browser/WebContents;->setImportance(I)V

    .line 26
    invoke-static {v2}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;

    move-result-object v2

    .line 27
    invoke-interface {v2, v1}, Le11;->b(Z)V

    .line 28
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    iget v2, p0, Lorg/chromium/chrome/browser/tab/Tab;->y:I

    invoke-interface {v1, v2}, Lorg/chromium/content_public/browser/WebContents;->setImportance(I)V

    .line 29
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 30
    invoke-static {v1}, LJ/N;->Mt4iWzCb(Ljava/lang/Object;)V

    .line 31
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->h:Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/Tab;->E:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 32
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->F()V

    .line 33
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->D:LlH0;

    invoke-interface {v1, p0}, LlH0;->a(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->j:Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;

    .line 34
    iget-wide v2, p0, Lorg/chromium/chrome/browser/tab/Tab;->a:J

    iget-boolean v5, p0, Lorg/chromium/chrome/browser/tab/Tab;->c:Z

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->p()Z

    move-result v6

    iget v8, p0, Lorg/chromium/chrome/browser/tab/Tab;->l:I

    iget-object v9, p0, Lorg/chromium/chrome/browser/tab/Tab;->j:Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;

    new-instance v10, LkH0;

    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->D:LlH0;

    .line 35
    invoke-interface {v1, p0}, LlH0;->c(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/contextmenu/ContextMenuPopulator;

    move-result-object v1

    invoke-direct {v10, v1, p0}, LkH0;-><init>(Lorg/chromium/chrome/browser/contextmenu/ContextMenuPopulator;Lorg/chromium/chrome/browser/tab/Tab;)V

    move-object v4, p0

    move-object v7, p1

    .line 36
    invoke-static/range {v2 .. v10}, LJ/N;->MfWqmyLZ(JLjava/lang/Object;ZZLjava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 37
    iget-object p1, p0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {p1}, Lorg/chromium/content_public/browser/WebContents;->L()V

    .line 38
    invoke-static {p0}, LmH0;->a(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 39
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->x()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 1

    .line 71
    iput-object p1, p0, Lorg/chromium/chrome/browser/tab/Tab;->e:Lorg/chromium/ui/base/WindowAndroid;

    .line 72
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v0, :cond_0

    .line 73
    invoke-interface {v0, p1}, Lorg/chromium/content_public/browser/WebContents;->b(Lorg/chromium/ui/base/WindowAndroid;)V

    .line 74
    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->L()V

    :cond_0
    return-void
.end method

.method public a(LtH0;)V
    .locals 3

    .line 1
    iget-object v0, p1, LtH0;->a:LsH0;

    iput-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->s:LsH0;

    .line 2
    iget-wide v1, p1, LtH0;->d:J

    iput-wide v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->A:J

    .line 3
    iget-object v1, v0, LsH0;->a:Ljava/nio/ByteBuffer;

    .line 4
    iget v0, v0, LsH0;->b:I

    .line 5
    invoke-static {v1, v0}, LJ/N;->Moc0rhMh(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    .line 6
    iput-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->u:Ljava/lang/String;

    .line 7
    iget-object v0, p1, LtH0;->a:LsH0;

    .line 8
    iget-object v1, v0, LsH0;->a:Ljava/nio/ByteBuffer;

    .line 9
    iget v0, v0, LsH0;->b:I

    .line 10
    invoke-static {v1, v0}, LJ/N;->M7EZHstc(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    .line 11
    iput-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->B:Ljava/lang/String;

    .line 12
    iget-object v0, p1, LtH0;->g:Ljava/lang/Integer;

    iput-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->r:Ljava/lang/Integer;

    .line 13
    iget p1, p1, LtH0;->c:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget p1, p0, Lorg/chromium/chrome/browser/tab/Tab;->b:I

    :cond_0
    iput p1, p0, Lorg/chromium/chrome/browser/tab/Tab;->m:I

    return-void
.end method

.method public final a(Z)V
    .locals 4

    .line 84
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-nez v0, :cond_0

    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->h:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->E:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->h:Landroid/view/ViewGroup;

    .line 87
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->F()V

    .line 88
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 89
    iput-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 90
    iput-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->j:Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;

    if-eqz p1, :cond_1

    .line 91
    iget-wide v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->a:J

    .line 92
    invoke-static {v0, v1, p0}, LJ/N;->MFTxJarE(JLjava/lang/Object;)V

    goto :goto_0

    .line 93
    :cond_1
    iget-wide v2, p0, Lorg/chromium/chrome/browser/tab/Tab;->a:J

    .line 94
    invoke-static {v2, v3, p0}, LJ/N;->MnID6L_J(JLjava/lang/Object;)V

    .line 95
    invoke-interface {v1}, Lorg/chromium/content_public/browser/WebContents;->J()V

    :goto_0
    return-void
.end method

.method public a()Z
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v0, :cond_0

    .line 70
    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->g()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/NavigationController;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 1

    .line 82
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->p()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 83
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    return v0
.end method

.method public final b(I)V
    .locals 5

    const-string v0, "Tab.hide"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {v0, v1}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean v2, p0, Lorg/chromium/chrome/browser/tab/Tab;->x:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 3
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v2, 0x1

    .line 4
    :try_start_1
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/tab/Tab;->x:Z

    .line 5
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->F()V

    .line 6
    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 7
    invoke-interface {v2}, Lorg/chromium/content_public/browser/WebContents;->n()V

    .line 8
    :cond_1
    sget-object v2, Ltl0;->b:Ltl0;

    .line 9
    iget-object v3, v2, Ltl0;->a:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v3, v2, Ltl0;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x3

    if-gt v3, v4, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    iget-object v2, v2, Ltl0;->a:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/chrome/browser/tab/Tab;

    if-nez v2, :cond_3

    goto :goto_0

    .line 12
    :cond_3
    iget-object v2, v2, Lorg/chromium/chrome/browser/tab/Tab;->f:Lsl0;

    if-eqz v2, :cond_5

    .line 13
    instance-of v2, v2, Lrl0;

    if-eqz v2, :cond_4

    goto :goto_0

    .line 14
    :cond_4
    throw v1

    .line 15
    :cond_5
    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {v1}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LpH0;

    invoke-interface {v2, p0, p1}, LpH0;->onHidden(Lorg/chromium/chrome/browser/tab/Tab;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 16
    :cond_6
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 19
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->G()V

    .line 20
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->z:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/tab/Tab;->b(Z)V

    .line 21
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LpH0;

    invoke-interface {v1, p0, p1}, LpH0;->onPageLoadStarted(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(Z)V
    .locals 2

    xor-int/lit8 v0, p1, 0x1

    .line 22
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->z:Z

    .line 23
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LpH0;

    .line 24
    invoke-interface {v1, p0, p1}, LpH0;->onRendererResponsiveStateChanged(Lorg/chromium/chrome/browser/tab/Tab;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .line 17
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v0, :cond_0

    .line 18
    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->g()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/NavigationController;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->G()V

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LpH0;

    invoke-interface {v1, p0}, LpH0;->onDestroyed(Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {v0}, LWT;->clear()V

    .line 4
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->I:LyU;

    .line 5
    iget-object v1, v0, LyU;->b:Ljava/util/HashMap;

    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, LyU;->b:Ljava/util/HashMap;

    .line 7
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LxU;

    invoke-interface {v1}, LxU;->destroy()V

    goto :goto_1

    .line 8
    :cond_1
    iput-object v2, p0, Lorg/chromium/chrome/browser/tab/Tab;->f:Lsl0;

    const/4 v0, 0x1

    .line 9
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/tab/Tab;->a(Z)V

    .line 10
    invoke-static {p0}, LoH0;->a(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 11
    iget-wide v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 12
    iget-wide v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->a:J

    .line 13
    invoke-static {v0, v1, p0}, LJ/N;->M2jiWjAU(JLjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public c(I)V
    .locals 2

    .line 14
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LpH0;

    invoke-interface {v1, p0, p1}, LpH0;->onLoadProgressChanged(Lorg/chromium/chrome/browser/tab/Tab;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 2

    .line 15
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/tab/Tab;->n:Z

    .line 16
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LpH0;

    invoke-interface {v1, p0, p1}, LpH0;->onClosingStateChanged(Lorg/chromium/chrome/browser/tab/Tab;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .line 24
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->m()LVT;

    move-result-object v0

    .line 25
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LpH0;

    invoke-interface {v1, p0}, LpH0;->onExitFullscreenMode(Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d(I)V
    .locals 4

    const-string v0, "Tab.show"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {v0, v1}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->x:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 4
    :try_start_1
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->x:Z

    .line 5
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->F()V

    .line 6
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->v()Z

    .line 7
    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 8
    invoke-interface {v2}, Lorg/chromium/content_public/browser/WebContents;->w()V

    .line 9
    :cond_1
    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/Tab;->f:Lsl0;

    .line 10
    instance-of v3, v2, Lrl0;

    if-eqz v3, :cond_2

    .line 11
    check-cast v2, Lrl0;

    .line 12
    iget-object v2, v2, Lrl0;->w:Ljava/lang/String;

    const/4 v3, 0x1

    .line 13
    invoke-virtual {p0, v2, v3}, Lorg/chromium/chrome/browser/tab/Tab;->a(Ljava/lang/String;Z)Z

    .line 14
    :cond_2
    sget-object v2, Ltl0;->b:Ltl0;

    .line 15
    :goto_0
    iget-object v3, v2, Ltl0;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 16
    iget-object v3, v2, Ltl0;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/chromium/chrome/browser/tab/Tab;

    if-ne v3, p0, :cond_3

    .line 17
    iget-object v3, v2, Ltl0;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 18
    :cond_4
    invoke-static {p0}, LoH0;->b(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 19
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->k()I

    move-result v1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_5

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->u()Z

    move-result v1

    if-nez v1, :cond_5

    .line 20
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->k()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->c(I)V

    .line 21
    :cond_5
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {v1}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LpH0;

    invoke-interface {v2, p0, p1}, LpH0;->onShown(Lorg/chromium/chrome/browser/tab/Tab;I)V

    goto :goto_1

    .line 22
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->A:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    throw p1
.end method

.method public e()Lorg/chromium/chrome/browser/ChromeActivity;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->e:Lorg/chromium/ui/base/WindowAndroid;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getContext()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, LzT;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 3
    instance-of v2, v0, Lorg/chromium/chrome/browser/ChromeActivity;

    if-eqz v2, :cond_1

    check-cast v0, Lorg/chromium/chrome/browser/ChromeActivity;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public f()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public g()Landroid/content/Context;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->e:Lorg/chromium/ui/base/WindowAndroid;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->d:Landroid/content/Context;

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getContext()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->d:Landroid/content/Context;

    :cond_1
    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->b:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->B:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->G()V

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->B:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->j()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 3
    :goto_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-nez v2, :cond_1

    .line 4
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->isNativePage()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5
    :cond_1
    iput-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->u:Ljava/lang/String;

    .line 6
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->u:Ljava/lang/String;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    return-object v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->q:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LZS0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCurrentlyACustomTab()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->V0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNativePage()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->f:Lsl0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUserInteractable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->F:Z

    return v0
.end method

.method public j()Lorg/chromium/chrome/browser/profiles/Profile;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 2
    invoke-static {v0}, LJ/N;->MvvJTucy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lorg/chromium/chrome/browser/profiles/Profile;

    return-object v0
.end method

.method public k()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->s()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x64

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->k()I

    move-result v0

    :goto_0
    return v0
.end method

.method public l()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 2
    invoke-static {v0}, LfG0;->a(Lorg/chromium/content_public/browser/WebContents;)I

    move-result v0

    return v0
.end method

.method public m()LVT;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {v0}, LWT;->a()LVT;

    move-result-object v0

    return-object v0
.end method

.method public n()Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->f:Lsl0;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast v0, Lrl0;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    throw v1

    .line 3
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->h:Landroid/view/ViewGroup;

    :goto_0
    return-object v1
.end method

.method public o()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->g()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/NavigationController;->h()V

    :cond_0
    return-void
.end method

.method public p()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->t()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public q()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->isNativePage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public r()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->a:J

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

.method public s()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->v:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->u()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public t()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->isNativePage()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->u()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->l()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 4
    invoke-static {}, LRC0;->a()LRC0;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 6
    invoke-virtual {v0, v1}, LRC0;->b(Lorg/chromium/content_public/browser/WebContents;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public u()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public v()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->H:LeI0;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Tab"

    const-string v3, "Tab couldn\'t be loaded because Context was null."

    .line 2
    invoke-static {v2, v3, v1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->t:Lorg/chromium/content_public/browser/LoadUrlParams;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 4
    invoke-static {}, Li00;->a()Li00;

    move-result-object v0

    .line 5
    iget-boolean v3, p0, Lorg/chromium/chrome/browser/tab/Tab;->c:Z

    .line 6
    iget-boolean v4, p0, Lorg/chromium/chrome/browser/tab/Tab;->x:Z

    .line 7
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->isCurrentlyACustomTab()Z

    move-result v5

    .line 8
    invoke-virtual {v0, v3, v4, v5}, Li00;->a(ZZZ)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    if-nez v0, :cond_1

    .line 9
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->c:Z

    .line 10
    iget-boolean v3, p0, Lorg/chromium/chrome/browser/tab/Tab;->x:Z

    .line 11
    invoke-static {v0, v3}, Lj00;->a(ZZ)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    .line 12
    :cond_1
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/tab/Tab;->a(Lorg/chromium/content_public/browser/WebContents;)V

    .line 13
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->t:Lorg/chromium/content_public/browser/LoadUrlParams;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/tab/Tab;->a(Lorg/chromium/content_public/browser/LoadUrlParams;)I

    .line 14
    iput-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->t:Lorg/chromium/content_public/browser/LoadUrlParams;

    return v2

    :cond_2
    const-string v0, "Tab.restoreIfNeeded"

    .line 15
    :try_start_0
    invoke-static {v0, v1}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->q()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->s:LsH0;

    if-eqz v1, :cond_3

    .line 17
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->D()V

    goto :goto_0

    .line 18
    :cond_3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->w()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_5

    .line 19
    :cond_4
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 20
    :cond_5
    :goto_0
    :try_start_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v1}, Lorg/chromium/content_public/browser/WebContents;->g()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object v1

    invoke-interface {v1}, Lorg/chromium/content_public/browser/NavigationController;->f()V

    .line 21
    :cond_6
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/tab/Tab;->w:Z

    .line 22
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {v1}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LpH0;

    invoke-interface {v3, p0}, LpH0;->onRestoreStarted(Lorg/chromium/chrome/browser/tab/Tab;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    return v2

    :catchall_0
    move-exception v1

    .line 23
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    throw v1
.end method

.method public w()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->g()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/NavigationController;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public x()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LpH0;

    invoke-interface {v1, p0}, LpH0;->onContentChanged(Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->E()V

    return-void
.end method

.method public y()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->p:Z

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LpH0;

    invoke-interface {v1, p0}, LpH0;->onNavigationEntriesDeleted(Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final z()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->m()LVT;

    move-result-object v0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LpH0;

    invoke-interface {v1, p0}, LpH0;->onTitleUpdated(Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_0

    :cond_0
    return-void
.end method
