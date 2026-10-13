.class public LgH0;
.super LFH0;
.source "PG"

# interfaces
.implements LK01;


# static fields
.field public static final F:Ljava/lang/Class;


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:I

.field public E:Z

.field public final x:Lorg/chromium/chrome/browser/tab/Tab;

.field public y:J

.field public z:LQG0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LgH0;

    sput-object v0, LgH0;->F:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, LFH0;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, LgH0;->A:I

    .line 3
    iput-object p1, p0, LgH0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    .line 4
    new-instance v0, LfH0;

    invoke-direct {v0, p0}, LfH0;-><init>(LgH0;)V

    .line 5
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {p1, v0}, LWT;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Lorg/chromium/chrome/browser/tab/Tab;)LgH0;
    .locals 1

    .line 16
    iget-object p0, p0, Lorg/chromium/chrome/browser/tab/Tab;->I:LyU;

    .line 17
    sget-object v0, LgH0;->F:Ljava/lang/Class;

    invoke-virtual {p0, v0}, LyU;->a(Ljava/lang/Class;)LxU;

    move-result-object p0

    check-cast p0, LgH0;

    return-object p0
.end method

.method public static a(Lorg/chromium/chrome/browser/tab/Tab;IZ)V
    .locals 2

    if-eqz p0, :cond_1

    .line 18
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->I:LyU;

    .line 19
    sget-object v1, LgH0;->F:Ljava/lang/Class;

    invoke-virtual {v0, v1}, LyU;->a(Ljava/lang/Class;)LxU;

    move-result-object v0

    check-cast v0, LgH0;

    if-nez v0, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    iget-object p0, p0, Lorg/chromium/chrome/browser/tab/Tab;->I:LyU;

    .line 21
    sget-object v0, LgH0;->F:Ljava/lang/Class;

    invoke-virtual {p0, v0}, LyU;->a(Ljava/lang/Class;)LxU;

    move-result-object p0

    check-cast p0, LgH0;

    .line 22
    invoke-virtual {p0, p1, p2}, LgH0;->a(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static b(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 8
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->I:LyU;

    .line 9
    sget-object v1, LgH0;->F:Ljava/lang/Class;

    invoke-virtual {v0, v1}, LyU;->a(Ljava/lang/Class;)LxU;

    move-result-object v0

    check-cast v0, LgH0;

    if-nez v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    iget-object p0, p0, Lorg/chromium/chrome/browser/tab/Tab;->I:LyU;

    .line 11
    sget-object v0, LgH0;->F:Ljava/lang/Class;

    invoke-virtual {p0, v0}, LyU;->a(Ljava/lang/Class;)LxU;

    move-result-object p0

    check-cast p0, LgH0;

    .line 12
    invoke-virtual {p0}, LgH0;->e()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    iget-wide v0, p0, LgH0;->y:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    iget-wide v0, p0, LgH0;->y:J

    .line 3
    invoke-static {v0, v1, p0}, LJ/N;->MHziDKjx(JLjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(IZ)V
    .locals 8

    .line 4
    invoke-virtual {p0}, LgH0;->b()I

    move-result v7

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne v7, v1, :cond_0

    if-eq p1, v0, :cond_1

    :cond_0
    if-ne v7, v0, :cond_2

    if-ne p1, v1, :cond_2

    :cond_1
    return-void

    .line 5
    :cond_2
    iget-wide v0, p0, LgH0;->y:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    .line 6
    invoke-static {p0}, LJ/N;->MlQMaojx(Ljava/lang/Object;)J

    move-result-wide v0

    .line 7
    iput-wide v0, p0, LgH0;->y:J

    .line 8
    :cond_3
    iget-wide v0, p0, LgH0;->y:J

    iget-object v2, p0, LgH0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    .line 9
    iget-object v3, v2, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    move-object v2, p0

    move v4, v7

    move v5, p1

    move v6, p2

    .line 10
    invoke-static/range {v0 .. v6}, LJ/N;->MWN3uc$Y(JLjava/lang/Object;Ljava/lang/Object;IIZ)V

    .line 11
    iget p1, p0, LgH0;->A:I

    if-ne v7, p1, :cond_4

    return-void

    .line 12
    :cond_4
    iput v7, p0, LgH0;->A:I

    .line 13
    iget-object p1, p0, LgH0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->m()LVT;

    move-result-object p1

    .line 14
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LpH0;

    iget-object v0, p0, LgH0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-interface {p2, v0, v7}, LpH0;->onBrowserControlsConstraintsUpdated(Lorg/chromium/chrome/browser/tab/Tab;I)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method public a(Landroid/view/KeyEvent;)V
    .locals 0

    return-void
.end method

.method public a(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    return-void
.end method

.method public final b()I
    .locals 2

    .line 3
    iget-object v0, p0, LgH0;->z:LQG0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, LQG0;->b()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    .line 4
    :cond_1
    iget-object v0, p0, LgH0;->z:LQG0;

    if-eqz v0, :cond_2

    invoke-interface {v0}, LQG0;->a()Z

    move-result v1

    :cond_2
    if-nez v1, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x3

    :goto_1
    return v0
.end method

.method public b(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/input/ImeAdapterImpl;

    move-result-object p1

    .line 2
    invoke-interface {p1, p0}, LJ01;->a(LK01;)V

    return-void
.end method

.method public b(ZZ)V
    .locals 0

    .line 5
    iget-object p1, p0, LgH0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    .line 6
    iget-boolean p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->x:Z

    if-eqz p1, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-virtual {p0}, LgH0;->e()V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 6

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, LgH0;->E:Z

    .line 2
    iget-object v0, p0, LgH0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->m()LVT;

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

    iget-object v2, p0, LgH0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    iget v3, p0, LgH0;->B:I

    iget v4, p0, LgH0;->C:I

    iget v5, p0, LgH0;->D:I

    invoke-interface {v1, v2, v3, v4, v5}, LpH0;->onBrowserControlsOffsetChanged(Lorg/chromium/chrome/browser/tab/Tab;III)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 3

    .line 1
    iget-object v0, p0, LgH0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0}, LgH0;->b()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1}, LgH0;->a(IZ)V

    return-void
.end method
