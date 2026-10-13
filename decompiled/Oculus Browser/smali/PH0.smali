.class public LPH0;
.super LbI0;
.source "PG"


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mIncognito:Z

.field public mNativeWindow:Lorg/chromium/ui/base/WindowAndroid;

.field public mOrderController:LmI0;

.field public final mStartupTabPreloader:LJh0;

.field public mTabModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

.field public mTabModelContext:LeI0;


# direct methods
.method public constructor <init>(Landroid/content/Context;LeI0;Lorg/chromium/ui/base/WindowAndroid;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, LbI0;-><init>()V

    .line 2
    iput-object p1, p0, LPH0;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, LPH0;->mStartupTabPreloader:LJh0;

    .line 4
    iput-object p3, p0, LPH0;->mNativeWindow:Lorg/chromium/ui/base/WindowAndroid;

    .line 5
    iput-boolean p4, p0, LPH0;->mIncognito:Z

    .line 6
    iput-object p2, p0, LPH0;->mTabModelContext:LeI0;

    return-void
.end method


# virtual methods
.method public final a(Lorg/chromium/content_public/browser/LoadUrlParams;ILorg/chromium/chrome/browser/tab/Tab;ILandroid/content/Intent;)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    const-string v5, "org.chromium.chrome.browser.ServiceTabLauncher.LAUNCH_REQUEST_ID"

    const-string v6, "ChromeTabCreator.loadUrl"

    const-string v7, "ChromeTabCreator.createNewTab"

    const/4 v8, 0x0

    .line 1
    :try_start_0
    invoke-static {v7, v8}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, -0x1

    if-eqz v3, :cond_0

    .line 2
    invoke-virtual/range {p3 .. p3}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v10

    goto :goto_0

    :cond_0
    const/4 v10, -0x1

    .line 3
    :goto_0
    iget-object v11, v0, Lorg/chromium/content_public/browser/LoadUrlParams;->a:Ljava/lang/String;

    .line 4
    invoke-static {v11}, LvV0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 5
    iput-object v11, v0, Lorg/chromium/content_public/browser/LoadUrlParams;->a:Ljava/lang/String;

    const/4 v11, 0x0

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 6
    :pswitch_1
    invoke-static {}, Lorg/chromium/base/SysUtils;->isLowEndDevice()Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v12, 0x8

    goto :goto_2

    :pswitch_2
    const/4 v12, 0x6

    goto :goto_2

    :pswitch_3
    const/high16 v12, 0x8000000

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v12, 0x0

    .line 7
    :goto_2
    invoke-static {v4, v12}, LqZ;->a(Landroid/content/Intent;I)I

    move-result v12

    .line 8
    iput v12, v0, Lorg/chromium/content_public/browser/LoadUrlParams;->d:I

    if-nez v4, :cond_2

    goto :goto_3

    :cond_2
    const-string v12, "com.android.chrome.tab_id"

    .line 9
    invoke-static {v4, v12, v9}, LCO0;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v9

    .line 10
    :goto_3
    sget-object v12, LOH0;->a:Landroid/util/SparseArray;

    invoke-virtual {v12, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LLH0;

    .line 11
    sget-object v13, LOH0;->a:Landroid/util/SparseArray;

    invoke-virtual {v13, v9}, Landroid/util/SparseArray;->remove(I)V

    .line 12
    iget-object v13, v1, LPH0;->mOrderController:LmI0;

    iget-boolean v14, v1, LPH0;->mIncognito:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v13, LnI0;

    :try_start_1
    invoke-virtual {v13, v2, v14}, LnI0;->a(IZ)Z

    move-result v13

    if-nez v3, :cond_3

    .line 13
    invoke-virtual/range {p0 .. p0}, LPH0;->createDefaultTabDelegateFactory()LlH0;

    move-result-object v14

    goto :goto_4

    .line 14
    :cond_3
    iget-object v14, v3, Lorg/chromium/chrome/browser/tab/Tab;->D:LlH0;

    :goto_4
    if-eqz v12, :cond_6

    .line 15
    move-object v15, v12

    check-cast v15, LhJ0;

    .line 16
    iget-object v15, v15, LhJ0;->b:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v15, :cond_6

    .line 17
    check-cast v12, LhJ0;

    .line 18
    iget-object v0, v12, LhJ0;->b:Lorg/chromium/content_public/browser/WebContents;

    const-string v3, "com.android.chrome.parent_intent"

    .line 19
    invoke-static {v4, v3}, LCO0;->b(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    const-string v6, "com.android.chrome.parent_tab_id"

    .line 20
    invoke-static {v4, v6, v10}, LCO0;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v6

    .line 21
    iget-object v10, v1, LPH0;->mTabModelContext:LeI0;

    invoke-interface {v10}, LeI0;->getTabModelSelector()LpI0;

    move-result-object v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v10, :cond_4

    .line 22
    check-cast v10, LrI0;

    :try_start_2
    invoke-virtual {v10, v6}, LrI0;->a(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v8

    .line 23
    :cond_4
    invoke-static {v11}, LhH0;->a(Z)LhH0;

    move-result-object v6

    .line 24
    iput v9, v6, LhH0;->a:I

    .line 25
    iput-object v8, v6, LhH0;->b:Lorg/chromium/chrome/browser/tab/Tab;

    .line 26
    iget-boolean v8, v1, LPH0;->mIncognito:Z

    .line 27
    iput-boolean v8, v6, LhH0;->c:Z

    .line 28
    iget-object v8, v1, LPH0;->mNativeWindow:Lorg/chromium/ui/base/WindowAndroid;

    .line 29
    iput-object v8, v6, LhH0;->d:Lorg/chromium/ui/base/WindowAndroid;

    .line 30
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v6, LhH0;->e:Ljava/lang/Integer;

    .line 31
    iput-object v0, v6, LhH0;->j:Lorg/chromium/content_public/browser/WebContents;

    .line 32
    iput-object v14, v6, LhH0;->k:LlH0;

    .line 33
    iput-boolean v11, v6, LhH0;->l:Z

    .line 34
    iget-object v8, v1, LPH0;->mTabModelContext:LeI0;

    .line 35
    iput-object v8, v6, LhH0;->i:LeI0;

    .line 36
    invoke-virtual {v6}, LhH0;->a()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v6

    .line 37
    iget-object v8, v6, Lorg/chromium/chrome/browser/tab/Tab;->I:LyU;

    .line 38
    sget-object v9, LqH0;->y:Ljava/lang/Class;

    invoke-virtual {v8, v9}, LyU;->a(Ljava/lang/Class;)LxU;

    move-result-object v9

    check-cast v9, LqH0;

    if-nez v9, :cond_5

    .line 39
    sget-object v9, LqH0;->y:Ljava/lang/Class;

    new-instance v10, LqH0;

    invoke-direct {v10, v6}, LqH0;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    invoke-virtual {v8, v9, v10}, LyU;->a(Ljava/lang/Class;LxU;)LxU;

    move-result-object v8

    move-object v9, v8

    check-cast v9, LqH0;

    .line 40
    :cond_5
    iput-object v3, v9, LqH0;->x:Landroid/content/Intent;

    .line 41
    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->u()V

    goto :goto_8

    :cond_6
    const/4 v9, 0x1

    if-nez v13, :cond_8

    .line 42
    invoke-static {}, Lorg/chromium/base/SysUtils;->isLowEndDevice()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 43
    new-instance v6, LhH0;

    invoke-direct {v6}, LhH0;-><init>()V

    .line 44
    iput-object v0, v6, LhH0;->h:Lorg/chromium/content_public/browser/LoadUrlParams;

    const/4 v0, 0x3

    .line 45
    invoke-virtual {v6, v0}, LhH0;->a(I)LhH0;

    .line 46
    iput-object v3, v6, LhH0;->b:Lorg/chromium/chrome/browser/tab/Tab;

    .line 47
    iget-boolean v0, v1, LPH0;->mIncognito:Z

    .line 48
    iput-boolean v0, v6, LhH0;->c:Z

    .line 49
    iget-object v0, v1, LPH0;->mNativeWindow:Lorg/chromium/ui/base/WindowAndroid;

    .line 50
    iput-object v0, v6, LhH0;->d:Lorg/chromium/ui/base/WindowAndroid;

    .line 51
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v6, LhH0;->e:Ljava/lang/Integer;

    .line 52
    iput-object v14, v6, LhH0;->k:LlH0;

    if-nez v13, :cond_7

    goto :goto_5

    :cond_7
    const/4 v9, 0x0

    .line 53
    :goto_5
    iput-boolean v9, v6, LhH0;->l:Z

    .line 54
    iget-object v0, v1, LPH0;->mTabModelContext:LeI0;

    .line 55
    iput-object v0, v6, LhH0;->i:LeI0;

    .line 56
    invoke-virtual {v6}, LhH0;->a()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v6

    goto :goto_8

    .line 57
    :cond_8
    invoke-static {v6, v8}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v13, :cond_9

    const/4 v8, 0x1

    goto :goto_6

    :cond_9
    const/4 v8, 0x0

    .line 58
    :goto_6
    invoke-static {v8}, LhH0;->a(Z)LhH0;

    move-result-object v8

    .line 59
    iput-object v3, v8, LhH0;->b:Lorg/chromium/chrome/browser/tab/Tab;

    .line 60
    iget-boolean v3, v1, LPH0;->mIncognito:Z

    .line 61
    iput-boolean v3, v8, LhH0;->c:Z

    .line 62
    iget-object v3, v1, LPH0;->mNativeWindow:Lorg/chromium/ui/base/WindowAndroid;

    .line 63
    iput-object v3, v8, LhH0;->d:Lorg/chromium/ui/base/WindowAndroid;

    .line 64
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v8, LhH0;->e:Ljava/lang/Integer;

    .line 65
    iput-object v14, v8, LhH0;->k:LlH0;

    if-nez v13, :cond_a

    goto :goto_7

    :cond_a
    const/4 v9, 0x0

    .line 66
    :goto_7
    iput-boolean v9, v8, LhH0;->l:Z

    .line 67
    iget-object v3, v1, LPH0;->mTabModelContext:LeI0;

    .line 68
    iput-object v3, v8, LhH0;->i:LeI0;

    .line 69
    invoke-virtual {v8}, LhH0;->a()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v3

    .line 70
    invoke-virtual {v3, v0}, Lorg/chromium/chrome/browser/tab/Tab;->a(Lorg/chromium/content_public/browser/LoadUrlParams;)I

    .line 71
    invoke-static {v6}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    move-object v6, v3

    .line 72
    :goto_8
    invoke-static {v6}, LrH0;->a(Lorg/chromium/chrome/browser/tab/Tab;)LrH0;

    move-result-object v0

    invoke-virtual {v0, v4}, LrH0;->updateIntent(Landroid/content/Intent;)V

    if-eqz v4, :cond_b

    .line 73
    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 74
    invoke-virtual {v4, v5, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 75
    iget-object v3, v6, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 76
    invoke-static {v0, v3}, LJ/N;->MMtVSAe3(ILjava/lang/Object;)V

    .line 77
    :cond_b
    iget-object v0, v1, LPH0;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move/from16 v3, p4

    invoke-interface {v0, v6, v3, v2}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->a(Lorg/chromium/chrome/browser/tab/Tab;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    invoke-static {v7}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    return-object v6

    :catchall_0
    move-exception v0

    invoke-static {v7}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public createDefaultTabDelegateFactory()LlH0;
    .locals 2

    .line 1
    new-instance v0, LKH0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LKH0;-><init>(Lorg/chromium/chrome/browser/ChromeActivity;)V

    return-object v0
.end method

.method public createFrozenTab(LtH0;II)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 5

    .line 1
    iget-object v0, p0, LPH0;->mTabModelContext:LeI0;

    invoke-interface {v0}, LeI0;->getTabModelSelector()LpI0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget v1, p1, LtH0;->b:I

    check-cast v0, LrI0;

    invoke-virtual {v0, v1}, LrI0;->a(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, LPH0;->mOrderController:LmI0;

    .line 4
    iget-boolean v2, p1, LtH0;->h:Z

    .line 5
    check-cast v1, LnI0;

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, LnI0;->a(IZ)Z

    move-result v1

    .line 6
    new-instance v2, LhH0;

    invoke-direct {v2}, LhH0;-><init>()V

    .line 7
    invoke-virtual {v2, v3}, LhH0;->b(I)LhH0;

    const/4 v4, 0x2

    .line 8
    invoke-virtual {v2, v4}, LhH0;->a(I)LhH0;

    const/4 v4, 0x1

    .line 9
    iput-boolean v4, v2, LhH0;->g:Z

    .line 10
    iput p2, v2, LhH0;->a:I

    .line 11
    iput-object v0, v2, LhH0;->b:Lorg/chromium/chrome/browser/tab/Tab;

    .line 12
    iget-boolean p2, p1, LtH0;->h:Z

    .line 13
    iput-boolean p2, v2, LhH0;->c:Z

    .line 14
    iget-object p2, p0, LPH0;->mNativeWindow:Lorg/chromium/ui/base/WindowAndroid;

    .line 15
    iput-object p2, v2, LhH0;->d:Lorg/chromium/ui/base/WindowAndroid;

    .line 16
    invoke-virtual {p0}, LPH0;->createDefaultTabDelegateFactory()LlH0;

    move-result-object p2

    .line 17
    iput-object p2, v2, LhH0;->k:LlH0;

    xor-int/lit8 p2, v1, 0x1

    .line 18
    iput-boolean p2, v2, LhH0;->l:Z

    .line 19
    iput-object p1, v2, LhH0;->m:LtH0;

    .line 20
    iget-object p1, p0, LPH0;->mTabModelContext:LeI0;

    .line 21
    iput-object p1, v2, LhH0;->i:LeI0;

    .line 22
    invoke-virtual {v2}, LhH0;->a()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p1

    .line 23
    iget-object p2, p0, LPH0;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {p2, p1, p3, v3}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->a(Lorg/chromium/chrome/browser/tab/Tab;II)V

    return-object p1
.end method

.method public createNewTab(Lorg/chromium/content_public/browser/LoadUrlParams;ILorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, LPH0;->createNewTab(Lorg/chromium/content_public/browser/LoadUrlParams;ILorg/chromium/chrome/browser/tab/Tab;Landroid/content/Intent;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p1

    return-object p1
.end method

.method public createNewTab(Lorg/chromium/content_public/browser/LoadUrlParams;ILorg/chromium/chrome/browser/tab/Tab;Landroid/content/Intent;)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 8

    .line 2
    iget-object v0, p0, LPH0;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v0, p3}, LdI0;->b(Lorg/chromium/chrome/browser/tab/Tab;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    move v6, v1

    goto :goto_0

    :cond_0
    const/4 v6, -0x1

    :goto_0
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v7, p4

    .line 3
    invoke-virtual/range {v2 .. v7}, LPH0;->a(Lorg/chromium/content_public/browser/LoadUrlParams;ILorg/chromium/chrome/browser/tab/Tab;ILandroid/content/Intent;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p1

    return-object p1
.end method

.method public createTabWithWebContents(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/content_public/browser/WebContents;ILjava/lang/String;)Z
    .locals 4

    const/4 p4, -0x1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 2
    :goto_0
    iget-object v1, p0, LPH0;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v1, v0}, LdI0;->c(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_1
    iget-object v1, p0, LPH0;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-static {v1, v0}, LFI0;->b(LdI0;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, p4, :cond_2

    add-int/lit8 p4, v0, 0x1

    .line 4
    :cond_2
    iget-object v0, p0, LPH0;->mOrderController:LmI0;

    iget-boolean v2, p0, LPH0;->mIncognito:Z

    check-cast v0, LnI0;

    invoke-virtual {v0, p3, v2}, LnI0;->a(IZ)Z

    move-result v0

    if-nez p1, :cond_3

    .line 5
    invoke-virtual {p0}, LPH0;->createDefaultTabDelegateFactory()LlH0;

    move-result-object v2

    goto :goto_1

    .line 6
    :cond_3
    iget-object v2, p1, Lorg/chromium/chrome/browser/tab/Tab;->D:LlH0;

    :goto_1
    xor-int/lit8 v3, v0, 0x1

    .line 7
    invoke-static {v3}, LhH0;->a(Z)LhH0;

    move-result-object v3

    .line 8
    iput-object p1, v3, LhH0;->b:Lorg/chromium/chrome/browser/tab/Tab;

    .line 9
    iget-boolean p1, p0, LPH0;->mIncognito:Z

    .line 10
    iput-boolean p1, v3, LhH0;->c:Z

    .line 11
    iget-object p1, p0, LPH0;->mNativeWindow:Lorg/chromium/ui/base/WindowAndroid;

    .line 12
    iput-object p1, v3, LhH0;->d:Lorg/chromium/ui/base/WindowAndroid;

    .line 13
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v3, LhH0;->e:Ljava/lang/Integer;

    .line 14
    iput-object p2, v3, LhH0;->j:Lorg/chromium/content_public/browser/WebContents;

    .line 15
    iput-object v2, v3, LhH0;->k:LlH0;

    xor-int/lit8 p1, v0, 0x1

    .line 16
    iput-boolean p1, v3, LhH0;->l:Z

    .line 17
    iget-object p1, p0, LPH0;->mTabModelContext:LeI0;

    .line 18
    iput-object p1, v3, LhH0;->i:LeI0;

    .line 19
    invoke-virtual {v3}, LhH0;->a()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p1

    .line 20
    iget-object p2, p0, LPH0;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {p2, p1, p4, p3}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->a(Lorg/chromium/chrome/browser/tab/Tab;II)V

    return v1
.end method

.method public createsTabsAsynchronously()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public launchUrl(Ljava/lang/String;I)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 6

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 1
    invoke-virtual/range {v0 .. v5}, LPH0;->launchUrl(Ljava/lang/String;ILandroid/content/Intent;J)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p1

    return-object p1
.end method

.method public launchUrl(Ljava/lang/String;ILandroid/content/Intent;J)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 2

    .line 2
    new-instance v0, Lorg/chromium/content_public/browser/LoadUrlParams;

    const/4 v1, 0x0

    .line 3
    invoke-direct {v0, p1, v1}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;I)V

    .line 4
    iput-wide p4, v0, Lorg/chromium/content_public/browser/LoadUrlParams;->o:J

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, v0, p2, p1, p3}, LPH0;->createNewTab(Lorg/chromium/content_public/browser/LoadUrlParams;ILorg/chromium/chrome/browser/tab/Tab;Landroid/content/Intent;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p1

    return-object p1
.end method

.method public launchUrlFromExternalApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;J)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 13

    move-object v6, p0

    move-object v0, p1

    move-object v1, p2

    move-object/from16 v2, p4

    move-wide/from16 v4, p7

    .line 1
    iget-object v3, v6, LPH0;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->e()Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    move-result-object v7

    .line 3
    iget-wide v8, v7, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->b:J

    .line 4
    invoke-static {v8, v9, v7, p1}, LJ/N;->MB7bnmWo(JLjava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    move-object v7, v0

    const/4 v8, 0x0

    if-eqz p5, :cond_2

    if-nez v3, :cond_2

    .line 5
    new-instance v0, Lorg/chromium/content_public/browser/LoadUrlParams;

    .line 6
    invoke-direct {v0, v7, v8}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;I)V

    .line 7
    iput-wide v4, v0, Lorg/chromium/content_public/browser/LoadUrlParams;->o:J

    move-object/from16 v2, p3

    .line 8
    iput-object v2, v0, Lorg/chromium/content_public/browser/LoadUrlParams;->g:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 9
    new-instance v2, Lh11;

    .line 10
    invoke-static/range {p6 .. p6}, LqZ;->d(Landroid/content/Intent;)I

    move-result v3

    invoke-direct {v2, p2, v3}, Lh11;-><init>(Ljava/lang/String;I)V

    .line 11
    iput-object v2, v0, Lorg/chromium/content_public/browser/LoadUrlParams;->e:Lh11;

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object/from16 v9, p6

    .line 12
    invoke-virtual {p0, v0, v2, v1, v9}, LPH0;->createNewTab(Lorg/chromium/content_public/browser/LoadUrlParams;ILorg/chromium/chrome/browser/tab/Tab;Landroid/content/Intent;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    return-object v0

    :cond_2
    move-object/from16 v9, p6

    if-nez v2, :cond_3

    const-string v0, "com.google.android.apps.chrome.unknown_app"

    move-object v10, v0

    goto :goto_0

    :cond_3
    move-object v10, v2

    :goto_0
    const/4 v11, 0x0

    .line 13
    :goto_1
    iget-object v0, v6, LPH0;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v0}, LdI0;->getCount()I

    move-result v0

    if-ge v11, v0, :cond_5

    .line 14
    iget-object v0, v6, LPH0;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v0, v11}, LdI0;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v12

    .line 15
    invoke-static {v12}, LdH0;->b(Lorg/chromium/chrome/browser/tab/Tab;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 16
    new-instance v1, Lorg/chromium/content_public/browser/LoadUrlParams;

    .line 17
    invoke-direct {v1, v7, v8}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;I)V

    .line 18
    iput-wide v4, v1, Lorg/chromium/content_public/browser/LoadUrlParams;->o:J

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move v4, v11

    move-object/from16 v5, p6

    .line 19
    invoke-virtual/range {v0 .. v5}, LPH0;->a(Lorg/chromium/content_public/browser/LoadUrlParams;ILorg/chromium/chrome/browser/tab/Tab;ILandroid/content/Intent;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 20
    invoke-static {v0}, LdH0;->a(Lorg/chromium/chrome/browser/tab/Tab;)LdH0;

    move-result-object v1

    .line 21
    iput-object v10, v1, LdH0;->x:Ljava/lang/String;

    .line 22
    iget-object v1, v6, LPH0;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v1, v12, v8, v8, v8}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->a(Lorg/chromium/chrome/browser/tab/Tab;ZZZ)Z

    return-object v0

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, v7

    move-object/from16 v3, p6

    move-wide/from16 v4, p7

    .line 23
    invoke-virtual/range {v0 .. v5}, LPH0;->launchUrl(Ljava/lang/String;ILandroid/content/Intent;J)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 24
    invoke-static {v0}, LdH0;->a(Lorg/chromium/chrome/browser/tab/Tab;)LdH0;

    move-result-object v1

    .line 25
    iput-object v10, v1, LdH0;->x:Ljava/lang/String;

    return-object v0
.end method

.method public setTabModel(Lorg/chromium/chrome/browser/tabmodel/TabModel;LmI0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LPH0;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    .line 2
    iput-object p2, p0, LPH0;->mOrderController:LmI0;

    return-void
.end method

.method public setWindowAndroid(Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 0

    .line 1
    iput-object p1, p0, LPH0;->mNativeWindow:Lorg/chromium/ui/base/WindowAndroid;

    return-void
.end method
