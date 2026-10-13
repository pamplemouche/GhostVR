.class public LJH0;
.super Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;
.source "PG"


# instance fields
.field public final e:LJ6;

.field public f:Lorg/chromium/chrome/browser/ChromeActivity;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/ChromeActivity;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 2
    new-instance v0, LJ6;

    invoke-direct {v0}, LJ6;-><init>()V

    iput-object v0, p0, LJH0;->e:LJ6;

    .line 3
    iput-object p2, p0, LJH0;->f:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 4
    new-instance p2, LGH0;

    invoke-direct {p2, p0}, LGH0;-><init>(LJH0;)V

    .line 5
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {p1, p2}, LWT;->a(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->b:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v0

    invoke-static {v0}, LzO0;->a(I)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->b:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public activateContents()V
    .locals 3

    .line 1
    iget-object v0, p0, LJH0;->f:Lorg/chromium/chrome/browser/ChromeActivity;

    const/4 v1, 0x0

    const-string v2, "ActivityTabWCDA"

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Activity not set activateContents().  Bailing out."

    .line 2
    invoke-static {v2, v1, v0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, LBg0;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Activity destroyed before calling activateContents().  Bailing out."

    .line 4
    invoke-static {v2, v1, v0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->b:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->r()Z

    move-result v0

    if-nez v0, :cond_2

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Tab not initialized before calling activateContents().  Bailing out."

    .line 6
    invoke-static {v2, v1, v0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 7
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->b:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->isUserInteractable()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, LJH0;->f:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->getTabModelSelector()LpI0;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->b:Lorg/chromium/chrome/browser/tab/Tab;

    .line 9
    iget-boolean v1, v1, Lorg/chromium/chrome/browser/tab/Tab;->c:Z

    .line 10
    check-cast v0, LrI0;

    invoke-virtual {v0, v1}, LrI0;->b(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->b:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-interface {v0, v1}, LdI0;->b(Lorg/chromium/chrome/browser/tab/Tab;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    return-void

    :cond_4
    const/4 v2, 0x3

    .line 12
    invoke-interface {v0, v1, v2}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->b(II)V

    .line 13
    iget-object v0, p0, LJH0;->f:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-static {v0}, Lorg/chromium/base/ApplicationStatus;->a(Landroid/app/Activity;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 14
    invoke-virtual {p0}, LJH0;->a()V

    :cond_5
    return-void
.end method

.method public addNewContents(Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/content_public/browser/WebContents;ILandroid/graphics/Rect;Z)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, LJH0;->c()LbI0;

    move-result-object p1

    .line 2
    iget-object p4, p0, LJH0;->e:LJ6;

    invoke-virtual {p4, p2}, Ld7;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 3
    iget-object p5, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->b:Lorg/chromium/chrome/browser/tab/Tab;

    .line 4
    iget-boolean v0, p5, Lorg/chromium/chrome/browser/tab/Tab;->n:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x4

    .line 5
    invoke-virtual {p1, p5, p2, v0, p4}, LbI0;->createTabWithWebContents(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/content_public/browser/WebContents;ILjava/lang/String;)Z

    move-result p2

    .line 6
    invoke-virtual {p1}, LbI0;->createsTabsAsynchronously()Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_5

    const/4 p1, 0x3

    if-ne p3, p1, :cond_3

    .line 7
    iget-object p1, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->b:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-static {p1}, LoI0;->a(Lorg/chromium/chrome/browser/tab/Tab;)LpI0;

    move-result-object p1

    .line 8
    check-cast p1, LrI0;

    .line 9
    iget-object p1, p1, LrI0;->b:LhI0;

    .line 10
    invoke-virtual {p1}, LhI0;->a()LgI0;

    move-result-object p1

    iget-object p2, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->b:Lorg/chromium/chrome/browser/tab/Tab;

    .line 11
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result p2

    invoke-virtual {p1, p2}, LgI0;->e(I)Ljava/util/List;

    move-result-object p1

    .line 12
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_5

    const-string p1, "TabGroup.Created.DeveloperRequestedNewTab"

    .line 13
    invoke-static {p1}, LhV;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x5

    if-ne p3, p1, :cond_5

    .line 14
    invoke-static {}, Lorg/chromium/chrome/browser/AppHooks;->get()Lorg/chromium/chrome/browser/AppHooks;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 15
    iget-object p1, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->b:Lorg/chromium/chrome/browser/tab/Tab;

    .line 16
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->f()Landroid/content/Context;

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 17
    throw p1

    :cond_5
    :goto_0
    return v1
.end method

.method public final b()Lkd0;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->b:Lorg/chromium/chrome/browser/tab/Tab;

    .line 2
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->H:LeI0;

    .line 3
    check-cast v0, Lcom/oculus/browser/TabModelManager;

    invoke-virtual {v0}, Lcom/oculus/browser/TabModelManager;->getPanelApp()Lcom/oculus/browser/PanelApp;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/oculus/browser/PanelApp;->getFullscreenManager()Lcom/oculus/browser/PanelFullscreenManager;

    move-result-object v0

    return-object v0
.end method

.method public final c()LbI0;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->b:Lorg/chromium/chrome/browser/tab/Tab;

    .line 2
    iget-object v1, v0, Lorg/chromium/chrome/browser/tab/Tab;->H:LeI0;

    .line 3
    iget-boolean v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->c:Z

    .line 4
    invoke-interface {v1, v0}, LcI0;->getTabCreator(Z)LbI0;

    move-result-object v0

    return-object v0
.end method

.method public controlsResizeView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBottomControlsHeight()I
    .locals 1

    .line 1
    invoke-virtual {p0}, LJH0;->b()Lkd0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lkd0;->getBottomControlsHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTopControlsHeight()I
    .locals 1

    .line 1
    invoke-virtual {p0}, LJH0;->b()Lkd0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lkd0;->getTopControlsHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public handleKeyboardEvent(Landroid/view/KeyEvent;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, LJH0;->f:Lorg/chromium/chrome/browser/ChromeActivity;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, LQ8;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget-object p1, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->b:Lorg/chromium/chrome/browser/tab/Tab;

    .line 5
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-eqz p1, :cond_1

    .line 6
    invoke-interface {p1}, Lorg/chromium/content_public/browser/WebContents;->stop()V

    :cond_1
    return-void

    .line 7
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x4f

    if-eq v0, v1, :cond_3

    const/16 v1, 0xde

    if-eq v0, v1, :cond_3

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 8
    :cond_3
    :pswitch_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->b:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 9
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isFullscreenForTabOrPending()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, LJH0;->b()Lkd0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lkd0;->getPersistentFullscreenMode()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNightModeEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, LJH0;->f:Lorg/chromium/chrome/browser/ChromeActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LOY;->H()LIl0;

    move-result-object v0

    invoke-interface {v0}, LIl0;->b()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPictureInPictureEnabled()Z
    .locals 5

    .line 1
    iget-object v0, p0, LJH0;->f:Lorg/chromium/chrome/browser/ChromeActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "appops"

    .line 3
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "android:picture_in_picture"

    .line 5
    invoke-virtual {v2, v4, v3, v0}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public setOverlayMode(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, LJH0;->f:Lorg/chromium/chrome/browser/ChromeActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/ChromeActivity;->c(Z)V

    :cond_0
    return-void
.end method

.method public shouldResumeRequestsForCreatedWindow()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, LJH0;->c()LbI0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, LbI0;->createsTabsAsynchronously()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public showRepostFormWarningDialog()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->b:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-static {v0}, La00;->b(Lorg/chromium/chrome/browser/tab/Tab;)La00;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, La00;->b()V

    .line 3
    iget-object v1, v0, La00;->y:LZb1;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, LZb1;->a()V

    .line 4
    :cond_0
    iget-object v0, v0, La00;->G:LKd0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LKd0;->c()V

    .line 5
    :cond_1
    new-instance v0, LIH0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LIH0;-><init>(LJH0;LGH0;)V

    .line 6
    iget-object v1, v0, LIH0;->y:LJH0;

    .line 7
    iget-object v2, v1, LJH0;->f:Lorg/chromium/chrome/browser/ChromeActivity;

    if-nez v2, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    iget-object v1, v1, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->b:Lorg/chromium/chrome/browser/tab/Tab;

    .line 9
    iget-object v1, v1, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {v1, v0}, LWT;->a(Ljava/lang/Object;)Z

    .line 10
    iget-object v1, v0, LIH0;->y:LJH0;

    .line 11
    iget-object v1, v1, LJH0;->f:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 12
    invoke-virtual {v1}, LBg0;->o()LBd1;

    move-result-object v1

    iput-object v1, v0, LIH0;->w:LBd1;

    .line 13
    new-instance v1, LHH0;

    invoke-direct {v1, v0}, LHH0;-><init>(LIH0;)V

    .line 14
    iget-object v2, v0, LIH0;->y:LJH0;

    .line 15
    iget-object v2, v2, LJH0;->f:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 16
    invoke-virtual {v2}, LQ8;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 17
    new-instance v3, LXd1;

    sget-object v4, LEd1;->q:[LUd1;

    invoke-direct {v3, v4}, LXd1;-><init>([LUd1;)V

    sget-object v4, LEd1;->a:Lfe1;

    .line 18
    invoke-virtual {v3, v4, v1}, LXd1;->a(Lfe1;Ljava/lang/Object;)LXd1;

    sget-object v1, LEd1;->c:Lke1;

    const v4, 0x7f13034d

    .line 19
    invoke-virtual {v3, v1, v2, v4}, LXd1;->a(Lfe1;Landroid/content/res/Resources;I)LXd1;

    sget-object v1, LEd1;->e:Lke1;

    const v4, 0x7f13034b

    .line 20
    invoke-virtual {v3, v1, v2, v4}, LXd1;->a(Lfe1;Landroid/content/res/Resources;I)LXd1;

    sget-object v1, LEd1;->g:Lke1;

    const v4, 0x7f13034c

    .line 21
    invoke-virtual {v3, v1, v2, v4}, LXd1;->a(Lfe1;Landroid/content/res/Resources;I)LXd1;

    sget-object v1, LEd1;->j:Lke1;

    const v4, 0x7f1301d4

    .line 22
    invoke-virtual {v3, v1, v2, v4}, LXd1;->a(Lfe1;Landroid/content/res/Resources;I)LXd1;

    sget-object v1, LEd1;->m:Lhe1;

    const/4 v2, 0x1

    .line 23
    invoke-virtual {v3, v1, v2}, LXd1;->a(Lce1;Z)LXd1;

    .line 24
    invoke-virtual {v3}, LXd1;->a()Lle1;

    move-result-object v1

    iput-object v1, v0, LIH0;->x:Lle1;

    .line 25
    iget-object v0, v0, LIH0;->w:LBd1;

    invoke-virtual {v0, v1, v2, v2}, LBd1;->a(Lle1;IZ)V

    :goto_0
    return-void
.end method

.method public takeFocus(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, LJH0;->f:Lorg/chromium/chrome/browser/ChromeActivity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_2

    const p1, 0x7f0b0260

    .line 2
    invoke-virtual {v0, p1}, LQ8;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    move-result p1

    return p1

    .line 5
    :cond_1
    iget-object p1, p0, LJH0;->f:Lorg/chromium/chrome/browser/ChromeActivity;

    const v0, 0x7f0b0463

    invoke-virtual {p1, v0}, LQ8;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    move-result p1

    return p1

    :cond_2
    const p1, 0x7f0b04d1

    .line 8
    invoke-virtual {v0, p1}, LQ8;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    move-result p1

    return p1

    :cond_3
    return v1
.end method

.method public webContentsCreated(Lorg/chromium/content_public/browser/WebContents;JJLjava/lang/String;Ljava/lang/String;Lorg/chromium/content_public/browser/WebContents;)V
    .locals 13

    move-object v0, p0

    move-object/from16 v11, p8

    .line 1
    iget-object v1, v0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->b:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->m()LVT;

    move-result-object v12

    .line 2
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LpH0;

    iget-object v2, v0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->b:Lorg/chromium/chrome/browser/tab/Tab;

    move-object v3, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-interface/range {v1 .. v10}, LpH0;->webContentsCreated(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/content_public/browser/WebContents;JJLjava/lang/String;Ljava/lang/String;Lorg/chromium/content_public/browser/WebContents;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, v0, LJH0;->e:LJ6;

    move-object/from16 v2, p7

    invoke-virtual {v1, v11, v2}, Ld7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, LJH0;->c()LbI0;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v1}, LbI0;->createsTabsAsynchronously()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    sget-object v1, Lx70;->c:Lx70;

    if-nez v1, :cond_1

    new-instance v1, Lx70;

    invoke-direct {v1}, Lx70;-><init>()V

    sput-object v1, Lx70;->c:Lx70;

    .line 8
    :cond_1
    sget-object v1, Lx70;->c:Lx70;

    .line 9
    iget-wide v2, v1, Lx70;->b:J

    .line 10
    invoke-static {v2, v3, v1, v11}, LJ/N;->MY20dsUd(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
