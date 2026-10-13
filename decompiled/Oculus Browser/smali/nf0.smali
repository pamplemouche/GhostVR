.class public Lnf0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Lvf0;
.implements Lwf0;


# instance fields
.field public final w:Lkf0;

.field public x:Llf0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lnf0;

    return-void
.end method

.method public constructor <init>(Lkf0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lnf0;->w:Lkf0;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(LIf0;)V
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v4, v0

    goto :goto_0

    .line 1
    :cond_0
    invoke-interface {p1}, LIf0;->a()Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    .line 2
    :goto_0
    iget-object v1, p0, Lnf0;->x:Llf0;

    if-eqz v1, :cond_1

    .line 3
    iget-object v2, v1, Llf0;->a:Landroid/view/View;

    if-eq v2, v4, :cond_1

    .line 4
    iget-object v1, v1, Llf0;->b:LoN0;

    invoke-virtual {v1}, LoN0;->a()V

    :cond_1
    if-eqz p1, :cond_a

    if-eqz v4, :cond_a

    .line 5
    invoke-static {v4}, LA7;->t(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_4

    .line 6
    :cond_2
    iget-object v1, p0, Lnf0;->w:Lkf0;

    invoke-interface {p1}, LIf0;->g()I

    move-result p1

    check-cast v1, Ljf0;

    if-eqz v1, :cond_9

    const/16 v2, 0x52

    if-eq p1, v2, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    invoke-static {}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->f()Lorg/chromium/chrome/browser/download/DownloadManagerService;

    move-result-object p1

    .line 8
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v2

    .line 9
    iget-boolean v2, v2, Lorg/chromium/chrome/browser/profiles/Profile;->a:Z

    .line 10
    invoke-virtual {p1, v2}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Z)Lu80;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 11
    invoke-virtual {p1}, Lu80;->c()Ls80;

    move-result-object v2

    iget v2, v2, Ls80;->a:I

    if-nez v2, :cond_4

    goto :goto_1

    .line 12
    :cond_4
    invoke-virtual {p1}, Lu80;->b()Lorg/chromium/chrome/browser/tab/Tab;

    .line 13
    new-instance p1, Lmf0;

    const v2, 0x7f13035f

    const-string v3, "IPH_DownloadInfoBarDownloadsAreFaster"

    invoke-direct {p1, v3, v2, v2}, Lmf0;-><init>(Ljava/lang/String;II)V

    goto :goto_2

    :cond_5
    :goto_1
    move-object p1, v0

    :goto_2
    if-eqz p1, :cond_7

    .line 14
    iget-object v2, v1, Ljf0;->b:LoT0;

    iget-object v3, p1, Lmf0;->a:Ljava/lang/String;

    invoke-interface {v2, v3}, LoT0;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_3

    .line 15
    :cond_6
    new-instance v0, Llf0;

    invoke-direct {v0}, Llf0;-><init>()V

    .line 16
    iput-object v4, v0, Llf0;->a:Landroid/view/View;

    .line 17
    iget-object v2, p1, Lmf0;->a:Ljava/lang/String;

    iput-object v2, v0, Llf0;->c:Ljava/lang/String;

    .line 18
    new-instance v9, LoN0;

    iget-object v3, v1, Ljf0;->a:Landroid/content/Context;

    iget v5, p1, Lmf0;->b:I

    iget v6, p1, Lmf0;->c:I

    .line 19
    new-instance v8, Lpf1;

    invoke-direct {v8, v4}, Lpf1;-><init>(Landroid/view/View;)V

    const/4 v7, 0x1

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, LoN0;-><init>(Landroid/content/Context;Landroid/view/View;IIZLhf1;)V

    .line 20
    iput-object v9, v0, Llf0;->b:LoN0;

    const/4 p1, 0x1

    .line 21
    invoke-virtual {v9, p1}, LoN0;->a(Z)V

    .line 22
    :cond_7
    :goto_3
    iput-object v0, p0, Lnf0;->x:Llf0;

    if-nez v0, :cond_8

    return-void

    .line 23
    :cond_8
    iget-object p1, v0, Llf0;->b:LoN0;

    .line 24
    iget-object p1, p1, LoN0;->y:Lef1;

    .line 25
    iget-object p1, p1, Lef1;->G:LWT;

    invoke-virtual {p1, p0}, LWT;->a(Ljava/lang/Object;)Z

    .line 26
    iget-object p1, p0, Lnf0;->x:Llf0;

    iget-object p1, p1, Llf0;->b:LoN0;

    invoke-virtual {p1}, LoN0;->b()V

    return-void

    .line 27
    :cond_9
    throw v0

    :cond_a
    :goto_4
    return-void
.end method

.method public a(Lorg/chromium/chrome/browser/infobar/InfoBarContainer;F)V
    .locals 0

    return-void
.end method

.method public a(Lorg/chromium/chrome/browser/infobar/InfoBarContainer;Lorg/chromium/chrome/browser/infobar/InfoBar;Z)V
    .locals 0

    .line 28
    iget-object p1, p0, Lnf0;->x:Llf0;

    if-eqz p1, :cond_0

    .line 29
    iget-object p2, p2, Lorg/chromium/chrome/browser/infobar/InfoBar;->B:Landroid/view/View;

    .line 30
    iget-object p3, p1, Llf0;->a:Landroid/view/View;

    if-ne p2, p3, :cond_0

    .line 31
    iget-object p1, p1, Llf0;->b:LoN0;

    invoke-virtual {p1}, LoN0;->a()V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public b(Lorg/chromium/chrome/browser/infobar/InfoBarContainer;Lorg/chromium/chrome/browser/infobar/InfoBar;Z)V
    .locals 0

    return-void
.end method

.method public onDismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lnf0;->x:Llf0;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lnf0;->w:Lkf0;

    check-cast v1, Ljf0;

    .line 3
    iget-object v1, v1, Ljf0;->b:LoT0;

    iget-object v0, v0, Llf0;->c:Ljava/lang/String;

    invoke-interface {v1, v0}, LoT0;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lnf0;->x:Llf0;

    return-void
.end method
