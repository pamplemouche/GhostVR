.class public Lorg/chromium/chrome/browser/media/PictureInPictureActivity;
.super LBg0;
.source "PG"


# static fields
.field public static h0:J

.field public static i0:Lorg/chromium/chrome/browser/tab/Tab;

.field public static j0:I

.field public static k0:LPi0;


# instance fields
.field public e0:LwJ0;

.field public f0:LP01;

.field public g0:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LBg0;-><init>()V

    .line 2
    new-instance v0, LLi0;

    invoke-direct {v0, p0}, LLi0;-><init>(Lorg/chromium/chrome/browser/media/PictureInPictureActivity;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/PictureInPictureActivity;->g0:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static synthetic a(Lorg/chromium/chrome/browser/media/PictureInPictureActivity;)Landroid/app/PictureInPictureParams;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/PictureInPictureActivity;->Z()Landroid/app/PictureInPictureParams;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a0()Z
    .locals 3

    .line 1
    sget-object v0, LzT;->a:Landroid/content/Context;

    const-string v1, "activity"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 3
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$AppTask;

    .line 4
    invoke-virtual {v1}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v1

    iget v1, v1, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    sget v2, Lorg/chromium/chrome/browser/media/PictureInPictureActivity;->j0:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private close()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static createActivity(JLjava/lang/Object;)V
    .locals 7

    .line 1
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/chromium/chrome/browser/media/PictureInPictureActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    sget-wide v2, Lorg/chromium/chrome/browser/media/PictureInPictureActivity;->h0:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    .line 4
    sget-wide v2, Lorg/chromium/chrome/browser/media/PictureInPictureActivity;->h0:J

    .line 5
    invoke-static {v2, v3}, LJ/N;->MrWAWBMN(J)V

    .line 6
    :cond_0
    sput-wide p0, Lorg/chromium/chrome/browser/media/PictureInPictureActivity;->h0:J

    .line 7
    check-cast p2, Lorg/chromium/chrome/browser/tab/Tab;

    sput-object p2, Lorg/chromium/chrome/browser/media/PictureInPictureActivity;->i0:Lorg/chromium/chrome/browser/tab/Tab;

    .line 8
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result p0

    sput p0, Lorg/chromium/chrome/browser/media/PictureInPictureActivity;->j0:I

    .line 9
    new-instance p0, LPi0;

    invoke-direct {p0}, LPi0;-><init>()V

    sput-object p0, Lorg/chromium/chrome/browser/media/PictureInPictureActivity;->k0:LPi0;

    .line 10
    sget-object p1, Lorg/chromium/chrome/browser/media/PictureInPictureActivity;->i0:Lorg/chromium/chrome/browser/tab/Tab;

    .line 11
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {p1, p0}, LWT;->a(Ljava/lang/Object;)Z

    const/high16 p0, 0x10000000

    .line 12
    invoke-virtual {v1, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static onWindowDestroyed(J)V
    .locals 3

    .line 1
    sget-wide v0, Lorg/chromium/chrome/browser/media/PictureInPictureActivity;->h0:J

    cmp-long v2, v0, p0

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const-wide/16 p0, 0x0

    .line 2
    sput-wide p0, Lorg/chromium/chrome/browser/media/PictureInPictureActivity;->h0:J

    return-void
.end method

.method private updateVideoSize(II)V
    .locals 4

    .line 1
    new-instance v0, Landroid/app/PictureInPictureParams$Builder;

    invoke-direct {v0}, Landroid/app/PictureInPictureParams$Builder;-><init>()V

    int-to-float p1, p1

    int-to-float v1, p2

    div-float/2addr p1, v1

    const v2, 0x3ed639d7

    const v3, 0x4018f5c3    # 2.39f

    .line 2
    invoke-static {p1, v2, v3}, LEO0;->a(FFF)F

    move-result p1

    mul-float p1, p1, v1

    float-to-int p1, p1

    .line 3
    new-instance v1, Landroid/util/Rational;

    invoke-direct {v1, p1, p2}, Landroid/util/Rational;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/app/PictureInPictureParams$Builder;->setAspectRatio(Landroid/util/Rational;)Landroid/app/PictureInPictureParams$Builder;

    .line 4
    invoke-virtual {v0}, Landroid/app/PictureInPictureParams$Builder;->build()Landroid/app/PictureInPictureParams;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setPictureInPictureParams(Landroid/app/PictureInPictureParams;)V

    return-void
.end method


# virtual methods
.method public K()LDc1;
    .locals 1

    .line 1
    new-instance v0, LDc1;

    invoke-direct {v0, p0}, LDc1;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public Y()V
    .locals 0

    .line 1
    invoke-virtual {p0}, LBg0;->T()V

    return-void
.end method

.method public final Z()Landroid/app/PictureInPictureParams;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/PictureInPictureActivity;->f0:LP01;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v1, LP01;->a:Lorg/chromium/content/browser/MediaSessionImpl;

    .line 4
    iget-boolean v1, v1, Lorg/chromium/content/browser/MediaSessionImpl;->d:Z

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "org.chromium.chrome.browser.media.PictureInPictureActivity.Play"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 6
    invoke-static {v1, v3, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 7
    new-instance v2, Landroid/app/RemoteAction;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f08020a

    invoke-static {v3, v4}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v3

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1300f0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const-string v5, ""

    invoke-direct {v2, v3, v4, v5, v1}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 9
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_0
    new-instance v1, Landroid/app/PictureInPictureParams$Builder;

    invoke-direct {v1}, Landroid/app/PictureInPictureParams$Builder;-><init>()V

    invoke-virtual {v1, v0}, Landroid/app/PictureInPictureParams$Builder;->setActions(Ljava/util/List;)Landroid/app/PictureInPictureParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PictureInPictureParams$Builder;->build()Landroid/app/PictureInPictureParams;

    move-result-object v0

    return-object v0
.end method

.method public l()V
    .locals 3

    .line 1
    invoke-super {p0}, LBg0;->l()V

    .line 2
    iget-object v0, p0, LBg0;->Q:LDc1;

    .line 3
    new-instance v1, Lorg/chromium/chrome/browser/thinwebview/internal/CompositorViewImpl;

    invoke-direct {v1, p0, v0}, Lorg/chromium/chrome/browser/thinwebview/internal/CompositorViewImpl;-><init>(Landroid/content/Context;Lorg/chromium/ui/base/WindowAndroid;)V

    .line 4
    iput-object v1, p0, Lorg/chromium/chrome/browser/media/PictureInPictureActivity;->e0:LwJ0;

    .line 5
    invoke-interface {v1}, LwJ0;->a()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, LQ8;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/PictureInPictureActivity;->e0:LwJ0;

    invoke-interface {v0}, LwJ0;->a()Landroid/view/View;

    move-result-object v0

    new-instance v1, LMi0;

    invoke-direct {v1, p0}, LMi0;-><init>(Lorg/chromium/chrome/browser/media/PictureInPictureActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 7
    sget-wide v0, Lorg/chromium/chrome/browser/media/PictureInPictureActivity;->h0:J

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/PictureInPictureActivity;->e0:LwJ0;

    .line 8
    invoke-static {v0, v1, v2}, LJ/N;->MxJhtvhD(JLjava/lang/Object;)V

    return-void
.end method

.method public m()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, LBg0;->onDestroy()V

    const-wide/16 v0, 0x0

    .line 2
    sput-wide v0, Lorg/chromium/chrome/browser/media/PictureInPictureActivity;->h0:J

    .line 3
    sget-object v0, Lorg/chromium/chrome/browser/media/PictureInPictureActivity;->i0:Lorg/chromium/chrome/browser/tab/Tab;

    sget-object v1, Lorg/chromium/chrome/browser/media/PictureInPictureActivity;->k0:LPi0;

    .line 4
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {v0, v1}, LWT;->b(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 5
    sput-object v0, Lorg/chromium/chrome/browser/media/PictureInPictureActivity;->i0:Lorg/chromium/chrome/browser/tab/Tab;

    .line 6
    sput-object v0, Lorg/chromium/chrome/browser/media/PictureInPictureActivity;->k0:LPi0;

    .line 7
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/PictureInPictureActivity;->f0:LP01;

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v1}, LP01;->b()V

    .line 9
    iput-object v0, p0, Lorg/chromium/chrome/browser/media/PictureInPictureActivity;->f0:LP01;

    .line 10
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/PictureInPictureActivity;->g0:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 5

    .line 1
    invoke-super {p0}, LBg0;->onStart()V

    .line 2
    sget-wide v0, Lorg/chromium/chrome/browser/media/PictureInPictureActivity;->h0:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    sget-object v0, Lorg/chromium/chrome/browser/media/PictureInPictureActivity;->k0:LPi0;

    .line 3
    iget-object v0, v0, LPi0;->x:LOi0;

    .line 4
    sget-object v1, LOi0;->x:LOi0;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/media/PictureInPictureActivity;->k0:LPi0;

    .line 6
    iput-object p0, v0, LPi0;->w:Lorg/chromium/chrome/browser/media/PictureInPictureActivity;

    .line 7
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/PictureInPictureActivity;->g0:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "org.chromium.chrome.browser.media.PictureInPictureActivity.Play"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 8
    sget-wide v0, Lorg/chromium/chrome/browser/media/PictureInPictureActivity;->h0:J

    .line 9
    iget-object v2, p0, LBg0;->Q:LDc1;

    .line 10
    invoke-static {v0, v1, p0, v2}, LJ/N;->MjkqYLC6(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 11
    sget-object v0, Lorg/chromium/chrome/browser/media/PictureInPictureActivity;->i0:Lorg/chromium/chrome/browser/tab/Tab;

    .line 12
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 13
    invoke-static {v0}, LJ/N;->Mtun$qW8(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/MediaSessionImpl;

    .line 14
    new-instance v1, LNi0;

    invoke-direct {v1, p0, v0}, LNi0;-><init>(Lorg/chromium/chrome/browser/media/PictureInPictureActivity;LO01;)V

    iput-object v1, p0, Lorg/chromium/chrome/browser/media/PictureInPictureActivity;->f0:LP01;

    .line 15
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/PictureInPictureActivity;->Z()Landroid/app/PictureInPictureParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->enterPictureInPictureMode(Landroid/app/PictureInPictureParams;)Z

    return-void

    .line 16
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, LBg0;->onStop()V

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/PictureInPictureActivity;->e0:LwJ0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LwJ0;->destroy()V

    :cond_0
    return-void
.end method
