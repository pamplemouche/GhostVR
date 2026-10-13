.class public LxH0;
.super LSG0;
.source "PG"

# interfaces
.implements LxU;


# static fields
.field public static final B:Ljava/lang/Class;


# instance fields
.field public A:Z

.field public final w:Lorg/chromium/chrome/browser/tab/Tab;

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LxH0;

    sput-object v0, LxH0;->B:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    .line 1
    invoke-direct {p0}, LSG0;-><init>()V

    .line 2
    iput-object p1, p0, LxH0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    .line 3
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->g()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, LxH0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    .line 4
    iget-boolean v1, v1, Lorg/chromium/chrome/browser/tab/Tab;->c:Z

    .line 5
    invoke-static {v0, v1}, LAO0;->a(Landroid/content/res/Resources;Z)I

    move-result v0

    .line 6
    iput v0, p0, LxH0;->x:I

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, LxH0;->b(Z)I

    move-result v1

    iput v1, p0, LxH0;->y:I

    .line 8
    iget-object v1, p0, LxH0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    .line 9
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->g()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, LAO0;->b(Landroid/content/res/Resources;Z)I

    move-result v0

    iput v0, p0, LxH0;->z:I

    .line 10
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {p1, p0}, LWT;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Lorg/chromium/chrome/browser/tab/Tab;)LxH0;
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/chromium/chrome/browser/tab/Tab;->I:LyU;

    .line 2
    sget-object v0, LxH0;->B:Ljava/lang/Class;

    invoke-virtual {p0, v0}, LyU;->a(Ljava/lang/Class;)LxU;

    move-result-object p0

    check-cast p0, LxH0;

    return-object p0
.end method

.method public static b(Lorg/chromium/chrome/browser/tab/Tab;)I
    .locals 1

    .line 19
    iget-object p0, p0, Lorg/chromium/chrome/browser/tab/Tab;->I:LyU;

    .line 20
    sget-object v0, LxH0;->B:Ljava/lang/Class;

    invoke-virtual {p0, v0}, LyU;->a(Ljava/lang/Class;)LxU;

    move-result-object p0

    check-cast p0, LxH0;

    .line 21
    iget p0, p0, LxH0;->y:I

    return p0
.end method


# virtual methods
.method public final b(Z)I
    .locals 3

    .line 1
    iget-boolean v0, p0, LxH0;->A:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, LxH0;->x:I

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, LxH0;->y:I

    .line 4
    :goto_0
    iget-object v1, p0, LxH0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    .line 5
    iget-object v1, v1, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    .line 6
    invoke-interface {v1}, Lorg/chromium/content_public/browser/WebContents;->I()I

    move-result v0

    .line 7
    invoke-static {v0}, LAO0;->c(I)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 8
    :cond_1
    iput-boolean v2, p0, LxH0;->A:Z

    .line 9
    :cond_2
    :goto_1
    iget-object p1, p0, LxH0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->l()I

    move-result p1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_5

    const/4 v1, 0x4

    if-eq p1, v1, :cond_5

    .line 10
    iget-object p1, p0, LxH0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    .line 11
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, LxH0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object p1

    invoke-virtual {p1}, LBg0;->S()Z

    move-result p1

    if-nez p1, :cond_5

    :cond_3
    iget-object p1, p0, LxH0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    .line 12
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, LxH0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    .line 13
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object p1

    invoke-virtual {p1}, LOY;->H()LIl0;

    move-result-object p1

    invoke-interface {p1}, LIl0;->b()Z

    move-result p1

    if-nez p1, :cond_5

    :cond_4
    iget-object p1, p0, LxH0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    .line 14
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->isNativePage()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, LxH0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->u()Z

    move-result p1

    if-nez p1, :cond_5

    if-eqz v0, :cond_5

    iget-object p1, p0, LxH0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    .line 15
    iget-boolean v1, p1, Lorg/chromium/chrome/browser/tab/Tab;->c:Z

    if-nez v1, :cond_5

    .line 16
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->t()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 17
    :cond_5
    iget v0, p0, LxH0;->x:I

    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, LxH0;->A:Z

    :cond_6
    const/high16 p1, -0x1000000

    or-int/2addr p1, v0

    return p1
.end method

.method public c(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, LxH0;->b(Z)I

    move-result p1

    .line 2
    iget v0, p0, LxH0;->y:I

    if-ne p1, v0, :cond_0

    return-void

    .line 3
    :cond_0
    iput p1, p0, LxH0;->y:I

    .line 4
    iget-object v0, p0, LxH0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    .line 5
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->m()LVT;

    move-result-object v1

    .line 6
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LpH0;

    invoke-interface {v2, v0, p1}, LpH0;->onDidChangeThemeColor(Lorg/chromium/chrome/browser/tab/Tab;I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public onActivityAttachmentChanged(Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 0

    .line 1
    iget-object p1, p0, LxH0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    .line 2
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->g()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object p2, p0, LxH0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    .line 3
    iget-boolean p2, p2, Lorg/chromium/chrome/browser/tab/Tab;->c:Z

    .line 4
    invoke-static {p1, p2}, LAO0;->a(Landroid/content/res/Resources;Z)I

    move-result p1

    .line 5
    iput p1, p0, LxH0;->x:I

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, LxH0;->c(Z)V

    .line 7
    iget-object p2, p0, LxH0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    .line 8
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/tab/Tab;->g()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p2, p1}, LAO0;->b(Landroid/content/res/Resources;Z)I

    move-result p1

    iput p1, p0, LxH0;->z:I

    return-void
.end method

.method public onDestroyed(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .line 1
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {p1, p0}, LWT;->b(Ljava/lang/Object;)Z

    return-void
.end method

.method public onDidAttachInterstitialPage(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, LxH0;->c(Z)V

    return-void
.end method

.method public onDidDetachInterstitialPage(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, LxH0;->c(Z)V

    return-void
.end method

.method public onDidFailLoad(Lorg/chromium/chrome/browser/tab/Tab;ZILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    invoke-virtual {p0, p1}, LxH0;->c(Z)V

    return-void
.end method

.method public onDidFinishNavigation(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/content_public/browser/NavigationHandle;)V
    .locals 0

    .line 1
    iget p1, p2, Lorg/chromium/content_public/browser/NavigationHandle;->h:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, LxH0;->c(Z)V

    :cond_0
    return-void
.end method

.method public onInitialized(Lorg/chromium/chrome/browser/tab/Tab;LtH0;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    iget p1, p2, LtH0;->f:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-static {p1}, LAO0;->c(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    xor-int/2addr p1, v0

    .line 2
    iput-boolean p1, p0, LxH0;->A:Z

    if-eqz p1, :cond_2

    .line 3
    iget p1, p0, LxH0;->x:I

    goto :goto_1

    .line 4
    :cond_2
    iget p1, p2, LtH0;->f:I

    .line 5
    :goto_1
    iput p1, p0, LxH0;->y:I

    .line 6
    invoke-virtual {p0, v1}, LxH0;->c(Z)V

    return-void
.end method

.method public onSSLStateUpdated(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, LxH0;->c(Z)V

    return-void
.end method

.method public onUrlUpdated(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, LxH0;->c(Z)V

    return-void
.end method
