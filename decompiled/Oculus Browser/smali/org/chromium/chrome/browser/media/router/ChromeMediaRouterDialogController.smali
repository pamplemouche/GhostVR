.class public Lorg/chromium/chrome/browser/media/router/ChromeMediaRouterDialogController;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpj0;


# instance fields
.field public final a:J

.field public b:Lqj0;


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouterDialogController;->a:J

    return-void
.end method

.method public static create(J)Lorg/chromium/chrome/browser/media/router/ChromeMediaRouterDialogController;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouterDialogController;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouterDialogController;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 8
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouterDialogController;->b:Lqj0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouterDialogController;->b:Lqj0;

    .line 10
    iget-wide v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouterDialogController;->a:J

    .line 11
    invoke-static {v0, v1, p0}, LJ/N;->MHeKSwqA(JLjava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouterDialogController;->b:Lqj0;

    .line 6
    iget-wide v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouterDialogController;->a:J

    .line 7
    invoke-static {v0, v1, p0, p1}, LJ/N;->MhNP7RHK(JLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Luj0;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouterDialogController;->b:Lqj0;

    .line 2
    iget-wide v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouterDialogController;->a:J

    .line 3
    iget-object p2, p2, Luj0;->a:Ljava/lang/String;

    .line 4
    invoke-static {v0, v1, p0, p1, p2}, LJ/N;->MfVEBdbx(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public closeDialog()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouterDialogController;->isShowingDialog()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouterDialogController;->b:Lqj0;

    check-cast v0, LYi0;

    .line 3
    iget-object v1, v0, LYi0;->e:Ls2;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 4
    invoke-virtual {v1, v3}, Ls2;->g(Z)V

    .line 5
    iput-object v2, v0, LYi0;->e:Ls2;

    .line 6
    :goto_0
    iput-object v2, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouterDialogController;->b:Lqj0;

    return-void
.end method

.method public isShowingDialog()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouterDialogController;->b:Lqj0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    check-cast v0, LYi0;

    .line 2
    iget-object v0, v0, LYi0;->e:Ls2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz2;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public openRouteChooserDialog([Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouterDialogController;->isShowingDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v3, p1, v1

    .line 3
    invoke-static {v3}, LPj0;->a(Ljava/lang/String;)LPj0;

    move-result-object v4

    if-nez v4, :cond_1

    .line 4
    invoke-static {v3}, Lek0;->a(Ljava/lang/String;)Lek0;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    if-nez v3, :cond_4

    goto :goto_3

    .line 5
    :cond_4
    invoke-interface {v3}, Lvj0;->c()Lbb;

    move-result-object v2

    :goto_3
    if-nez v2, :cond_5

    .line 6
    iget-wide v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouterDialogController;->a:J

    .line 7
    invoke-static {v0, v1, p0}, LJ/N;->MHZ$7Nsj(JLjava/lang/Object;)V

    return-void

    .line 8
    :cond_5
    new-instance p1, Lkj0;

    .line 9
    invoke-interface {v3}, Lvj0;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, v2, p0}, Lkj0;-><init>(Ljava/lang/String;Lbb;Lpj0;)V

    iput-object p1, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouterDialogController;->b:Lqj0;

    .line 10
    invoke-virtual {p1}, LYi0;->a()V

    return-void
.end method

.method public openRouteControllerDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouterDialogController;->isShowingDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, LPj0;->a(Ljava/lang/String;)LPj0;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {p1}, Lek0;->a(Ljava/lang/String;)Lek0;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_2
    invoke-interface {v0}, Lvj0;->c()Lbb;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_3

    .line 5
    iget-wide p1, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouterDialogController;->a:J

    .line 6
    invoke-static {p1, p2, p0}, LJ/N;->MHZ$7Nsj(JLjava/lang/Object;)V

    return-void

    .line 7
    :cond_3
    new-instance v1, Loj0;

    .line 8
    invoke-interface {v0}, Lvj0;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1, p2, p0}, Loj0;-><init>(Ljava/lang/String;Lbb;Ljava/lang/String;Lpj0;)V

    iput-object v1, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouterDialogController;->b:Lqj0;

    .line 9
    invoke-virtual {v1}, LYi0;->a()V

    return-void
.end method
