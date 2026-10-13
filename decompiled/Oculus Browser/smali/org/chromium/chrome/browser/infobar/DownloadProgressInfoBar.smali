.class public Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar;
.super Lorg/chromium/chrome/browser/infobar/InfoBar;
.source "PG"


# instance fields
.field public final G:Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar$Client;

.field public H:LK0;

.field public I:Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;

.field public J:Z


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar$Client;Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;)V
    .locals 3

    .line 1
    iget v0, p2, Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;->e:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1, v1}, Lorg/chromium/chrome/browser/infobar/InfoBar;-><init>(IILjava/lang/CharSequence;Landroid/graphics/Bitmap;)V

    .line 2
    iput-object p2, p0, Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar;->I:Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;

    .line 3
    iput-object p1, p0, Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar;->G:Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar$Client;

    return-void
.end method

.method public static create(Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar$Client;Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;)Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar;-><init>(Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar$Client;Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;)V

    return-object v0
.end method


# virtual methods
.method public a(LUf0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar;->I:Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;

    invoke-virtual {p0, p1, v0}, Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar;->a(LUf0;Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;)V

    return-void
.end method

.method public final a(LUf0;Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;)V
    .locals 0

    .line 2
    iput-object p2, p0, Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar;->I:Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;

    .line 3
    iget-object p2, p0, Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar;->H:LK0;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, LK0;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar;->J:Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar;->b(LUf0;)V

    :goto_0
    return-void
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public final b(LUf0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar;->I:Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;

    iget-object v0, v0, Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, LUf0;->a(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar;->I:Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;

    iget-object v0, v0, Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, LUf0;->a(Ljava/lang/String;)V

    .line 3
    iget-object v0, p1, LUf0;->G:LRf0;

    const v1, 0x7f0b021b

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 5
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar;->I:Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;

    iget-object v1, v1, Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 6
    invoke-static {v0, v1}, LA7;->e(Landroid/view/View;I)V

    .line 7
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar;->I:Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;

    iget-boolean v1, v0, Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;->g:Z

    if-nez v1, :cond_1

    .line 8
    iget-boolean v1, v0, Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;->f:Z

    if-eqz v1, :cond_0

    .line 9
    iget-object v0, p1, LUf0;->J:Landroid/widget/ImageView;

    .line 10
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar;->I:Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;

    iget v2, v2, Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;->e:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    .line 11
    invoke-static {v1, v2, p1}, LY0;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)LY0;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p1, LUf0;->J:Landroid/widget/ImageView;

    .line 13
    iget v0, v0, Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;->e:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    .line 14
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar;->I:Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;

    iget v1, v1, Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;->e:I

    invoke-static {v0, v1}, LK0;->a(Landroid/content/Context;I)LK0;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar;->H:LK0;

    .line 15
    new-instance v1, Lbf0;

    invoke-direct {v1, p0, p1}, Lbf0;-><init>(Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar;LUf0;)V

    invoke-virtual {v0, v1}, LK0;->a(LE0;)V

    .line 16
    iget-object p1, p1, LUf0;->J:Landroid/widget/ImageView;

    .line 17
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar;->H:LK0;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 18
    iget-object p1, p0, Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar;->H:LK0;

    invoke-virtual {p1}, LK0;->start()V

    return-void
.end method

.method public c()Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public closeInfoBar()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar;->G:Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar$Client;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar$Client;->a(Z)V

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar;->H:LK0;

    if-eqz v0, :cond_3

    .line 3
    iget-object v1, v0, LO0;->w:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 4
    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->clearAnimationCallbacks()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, v0, LK0;->A:Landroid/animation/Animator$AnimatorListener;

    if-eqz v1, :cond_1

    .line 6
    iget-object v2, v0, LK0;->x:LI0;

    iget-object v2, v2, LI0;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v1, 0x0

    .line 7
    iput-object v1, v0, LK0;->A:Landroid/animation/Animator$AnimatorListener;

    .line 8
    :cond_1
    iget-object v0, v0, LK0;->B:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 10
    :cond_3
    :goto_0
    invoke-super {p0}, Lorg/chromium/chrome/browser/infobar/InfoBar;->e()V

    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar;->G:Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar$Client;

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar;->I:Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;

    iget-object v1, v1, Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;->a:LbU0;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar$Client;->a(LbU0;)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar;->G:Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar$Client;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar$Client;->a(Z)V

    .line 2
    invoke-super {p0}, Lorg/chromium/chrome/browser/infobar/InfoBar;->e()V

    return-void
.end method

.method public k()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public l()Lorg/chromium/chrome/browser/tab/Tab;
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->F:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {v0, v1, p0}, LJ/N;->Mv$tV_xY(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tab/Tab;

    :goto_0
    return-object v0
.end method
