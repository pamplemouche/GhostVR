.class public Lcom/oculus/browser/TabModelManager;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LeI0;
.implements Ly30;


# static fields
.field public static final BLOCKED_URL:Ljava/lang/String; = "about:blank#blocked"

.field public static final TAG:Ljava/lang/String; = "TabModelManager"

.field public static sModelManagers:Ljava/util/Map;


# instance fields
.field public mContentRootWindow:Lcom/oculus/browser/PanelWindowAndroid;

.field public mIncognitoTabCreator:LPH0;

.field public mInitialized:Z

.field public mNavUiRootWindow:Lcom/oculus/browser/PanelWindowAndroid;

.field public mRegularTabCreator:LPH0;

.field public mSingleTabCreator:LPH0;

.field public mSingleTabMode:Z

.field public mSingleTabModelSelector:LaI0;

.field public mTabModelSelectorImpl:LwI0;

.field public mTabSelectorObserver:Lcom/oculus/browser/TabModelManager$TabSelectorObserver;

.field public mUnderlyingContentOffsetProvider:Ly30;

.field public mUnderlyingTabModelContext:LeI0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oculus/browser/TabModelManager;->sModelManagers:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(LeI0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/oculus/browser/TabModelManager;->mUnderlyingTabModelContext:LeI0;

    return-void
.end method

.method public static createInstance(ILandroid/content/Context;LeI0;)Lcom/oculus/browser/TabModelManager;
    .locals 16

    move/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v1, p2

    .line 1
    sget-object v3, Lcom/oculus/browser/TabModelManager;->sModelManagers:Ljava/util/Map;

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2
    sget-object v2, Lcom/oculus/browser/TabModelManager;->sModelManagers:Ljava/util/Map;

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oculus/browser/TabModelManager;

    .line 3
    invoke-direct {v2, v1}, Lcom/oculus/browser/TabModelManager;->setUnderlyingTabModelContext(LeI0;)V

    goto/16 :goto_5

    .line 4
    :cond_0
    new-instance v11, Lcom/oculus/browser/TabModelManager;

    invoke-direct {v11, v1}, Lcom/oculus/browser/TabModelManager;-><init>(LeI0;)V

    const/16 v1, 0x1f4

    .line 5
    invoke-static {v1, v1, v2}, Lcom/oculus/browser/TabModelManager;->createRootWindow(IILandroid/content/Context;)Lcom/oculus/browser/PanelWindowAndroid;

    move-result-object v9

    .line 6
    invoke-static {v1, v1, v2}, Lcom/oculus/browser/TabModelManager;->createRootWindow(IILandroid/content/Context;)Lcom/oculus/browser/PanelWindowAndroid;

    move-result-object v10

    .line 7
    new-instance v8, LPH0;

    const/4 v1, 0x0

    invoke-direct {v8, v2, v11, v9, v1}, LPH0;-><init>(Landroid/content/Context;LeI0;Lorg/chromium/ui/base/WindowAndroid;Z)V

    .line 8
    new-instance v12, LPH0;

    const/4 v3, 0x1

    invoke-direct {v12, v2, v11, v9, v3}, LPH0;-><init>(Landroid/content/Context;LeI0;Lorg/chromium/ui/base/WindowAndroid;Z)V

    .line 9
    invoke-static {}, LdJ0;->a()LdJ0;

    move-result-object v3

    .line 10
    iget-object v4, v3, LdJ0;->y:Ljava/util/Map;

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 11
    iget-object v3, v3, LdJ0;->y:Ljava/util/Map;

    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LpI0;

    goto :goto_4

    :cond_1
    if-ltz v0, :cond_3

    .line 12
    iget-object v4, v3, LdJ0;->x:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_2

    goto :goto_0

    :cond_2
    move v4, v0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v4, 0x0

    .line 13
    :goto_1
    iget-object v6, v3, LdJ0;->x:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5

    const/4 v6, 0x0

    .line 14
    :goto_2
    iget-object v7, v3, LdJ0;->x:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 15
    iget-object v7, v3, LdJ0;->x:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_4

    move v4, v6

    goto :goto_3

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 16
    :cond_5
    :goto_3
    iget-object v6, v3, LdJ0;->x:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_6

    move-object v3, v5

    goto :goto_4

    .line 17
    :cond_6
    iget-object v6, v3, LdJ0;->w:LcJ0;

    check-cast v6, LbJ0;

    invoke-virtual {v6, v2, v11, v4}, LbJ0;->a(Landroid/content/Context;LcI0;I)LpI0;

    move-result-object v6

    .line 18
    iget-object v7, v3, LdJ0;->x:Ljava/util/List;

    invoke-interface {v7, v4, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v3, v3, LdJ0;->y:Ljava/util/Map;

    invoke-interface {v3, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v6

    .line 20
    :goto_4
    move-object v13, v3

    check-cast v13, LwI0;

    .line 21
    new-instance v14, LaI0;

    invoke-direct {v14, v5, v5, v1}, LaI0;-><init>(Landroid/app/Activity;LcI0;Z)V

    .line 22
    new-instance v15, Lcom/oculus/browser/TabModelManager$1;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v15

    move-object/from16 v2, p1

    move-object v3, v11

    move-object v4, v9

    move-object v7, v14

    invoke-direct/range {v1 .. v7}, Lcom/oculus/browser/TabModelManager$1;-><init>(Landroid/content/Context;LeI0;Lorg/chromium/ui/base/WindowAndroid;LJh0;ZLaI0;)V

    .line 23
    invoke-virtual {v14}, LrI0;->a()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v1

    new-instance v2, LnI0;

    invoke-direct {v2, v14}, LnI0;-><init>(LpI0;)V

    invoke-virtual {v15, v1, v2}, LPH0;->setTabModel(Lorg/chromium/chrome/browser/tabmodel/TabModel;LmI0;)V

    move-object v4, v8

    move-object v5, v12

    move-object v6, v15

    move-object v7, v13

    move-object v8, v14

    .line 24
    invoke-virtual/range {v3 .. v10}, Lcom/oculus/browser/TabModelManager;->initialize(LPH0;LPH0;LPH0;LwI0;LaI0;Lcom/oculus/browser/PanelWindowAndroid;Lcom/oculus/browser/PanelWindowAndroid;)V

    .line 25
    sget-object v1, Lcom/oculus/browser/TabModelManager;->sModelManagers:Ljava/util/Map;

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    :goto_5
    sget-object v1, Lcom/oculus/browser/TabModelManager;->sModelManagers:Ljava/util/Map;

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/browser/TabModelManager;

    return-object v0
.end method

.method public static createRootWindow(IILandroid/content/Context;)Lcom/oculus/browser/PanelWindowAndroid;
    .locals 14

    .line 1
    invoke-static {}, Lorg/chromium/ui/display/DisplayAndroidManager;->a()Lorg/chromium/ui/display/DisplayAndroidManager;

    move-result-object v0

    .line 2
    new-instance v13, Lgd1;

    .line 3
    iget v1, v0, Lorg/chromium/ui/display/DisplayAndroidManager;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lorg/chromium/ui/display/DisplayAndroidManager;->e:I

    .line 4
    invoke-direct {v13, v1}, Lgd1;-><init>(I)V

    .line 5
    iget-object v1, v0, Lorg/chromium/ui/display/DisplayAndroidManager;->c:Landroid/util/SparseArray;

    .line 6
    iget v2, v13, Lcd1;->b:I

    .line 7
    invoke-virtual {v1, v2, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8
    invoke-virtual {v0, v13}, Lorg/chromium/ui/display/DisplayAndroidManager;->a(Lcd1;)V

    .line 9
    invoke-static/range {p2 .. p2}, Lcd1;->a(Landroid/content/Context;)Lcd1;

    move-result-object v0

    .line 10
    new-instance v2, Landroid/graphics/Point;

    .line 11
    iget-object v1, v0, Lcd1;->c:Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->x:I

    .line 12
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 13
    invoke-direct {v2, v3, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 14
    iget v1, v0, Lcd1;->d:F

    .line 15
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 16
    iget v1, v0, Lcd1;->e:I

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 18
    iget v1, v0, Lcd1;->f:I

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 20
    iget v1, v0, Lcd1;->g:I

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-boolean v1, v0, Lcd1;->k:Z

    .line 22
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-boolean v1, v0, Lcd1;->l:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 23
    iget v1, v0, Lcd1;->h:F

    .line 24
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    .line 25
    iget-object v10, v0, Lcd1;->i:Landroid/view/Display$Mode;

    .line 26
    iget-object v11, v0, Lcd1;->j:Ljava/util/List;

    move-object v1, v13

    .line 27
    invoke-virtual/range {v1 .. v11}, Lcd1;->a(Landroid/graphics/Point;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Float;Landroid/view/Display$Mode;Ljava/util/List;)V

    .line 28
    invoke-virtual {v0}, Lcd1;->a()F

    move-result v0

    iput v0, v13, Lgd1;->n:F

    .line 29
    new-instance v2, Landroid/graphics/Point;

    move v0, p0

    move v1, p1

    invoke-direct {v2, p0, p1}, Landroid/graphics/Point;-><init>(II)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 30
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v13

    invoke-virtual/range {v1 .. v12}, Lgd1;->a(Landroid/graphics/Point;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Float;Landroid/view/Display$Mode;Ljava/util/List;)V

    .line 31
    new-instance v0, Lcom/oculus/browser/PanelWindowAndroid;

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v13}, Lcom/oculus/browser/PanelWindowAndroid;-><init>(Landroid/content/Context;Lcd1;)V

    return-object v0
.end method

.method private setUnderlyingTabModelContext(LeI0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oculus/browser/TabModelManager;->mUnderlyingTabModelContext:LeI0;

    return-void
.end method


# virtual methods
.method public closeModels()V
    .locals 13

    .line 1
    iget-boolean v0, p0, Lcom/oculus/browser/TabModelManager;->mSingleTabMode:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/oculus/browser/TabModelManager;->mSingleTabModelSelector:LaI0;

    const/4 v3, 0x0

    .line 3
    :goto_0
    iget-object v4, v0, LrI0;->a:Ljava/util/List;

    .line 4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 5
    iget-object v4, v0, LrI0;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v4, v2, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->a(ZZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/oculus/browser/TabModelManager;->mTabModelSelectorImpl:LwI0;

    .line 7
    invoke-virtual {v0}, LwI0;->d()V

    .line 8
    iget-object v0, v0, LwI0;->i:LYI0;

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    const-string v4, "tabmodel"

    .line 9
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v5

    .line 10
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 11
    iget-object v8, v0, LYI0;->j:LSI0;

    if-eqz v8, :cond_1

    iget-object v8, v0, LYI0;->j:LSI0;

    invoke-virtual {v8, v2}, LkW;->cancel(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :cond_1
    :try_start_1
    invoke-virtual {v0}, LYI0;->f()LVI0;

    move-result-object v8

    iget-object v8, v8, LVI0;->a:[B

    invoke-virtual {v0, v8}, LYI0;->a([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v8

    :try_start_2
    const-string v9, "Error while saving tabs state; will attempt to continue..."

    new-array v10, v2, [Ljava/lang/Object;

    aput-object v8, v10, v1

    .line 13
    invoke-static {v4, v9, v10}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    const-string v8, "SaveListTime"

    .line 14
    invoke-static {v8, v6, v7}, LYI0;->a(Ljava/lang/String;J)V

    .line 15
    iget-object v8, v0, LYI0;->b:LpI0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    check-cast v8, LrI0;

    :try_start_3
    invoke-virtual {v8, v1}, LrI0;->b(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v8

    invoke-static {v8}, LFI0;->a(LdI0;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v8

    .line 16
    invoke-virtual {v0, v8}, LYI0;->a(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 17
    iget-object v8, v0, LYI0;->b:LpI0;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    check-cast v8, LrI0;

    :try_start_4
    invoke-virtual {v8, v2}, LrI0;->b(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v2

    invoke-static {v2}, LFI0;->a(LdI0;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v2

    .line 18
    invoke-virtual {v0, v2}, LYI0;->a(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 19
    iget-object v2, v0, LYI0;->i:LTI0;

    if-eqz v2, :cond_3

    .line 20
    iget-object v2, v0, LYI0;->i:LTI0;

    invoke-virtual {v2, v1}, LkW;->cancel(Z)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, LYI0;->i:LTI0;

    iget-boolean v2, v2, LTI0;->e:Z

    if-nez v2, :cond_2

    .line 21
    iget-object v2, v0, LYI0;->i:LTI0;

    iget-object v2, v2, LTI0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    .line 22
    invoke-virtual {v0, v2}, LYI0;->a(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 23
    :cond_2
    iput-object v3, v0, LYI0;->i:LTI0;

    .line 24
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 25
    iget-object v8, v0, LYI0;->e:Ljava/util/Deque;

    invoke-interface {v8}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/chromium/chrome/browser/tab/Tab;

    .line 26
    invoke-virtual {v9}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v10

    .line 27
    iget-boolean v11, v9, Lorg/chromium/chrome/browser/tab/Tab;->c:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 28
    :try_start_5
    invoke-static {v9}, LtH0;->a(Lorg/chromium/chrome/browser/tab/Tab;)LtH0;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 29
    invoke-virtual {v0}, LZI0;->a()Ljava/io/File;

    move-result-object v12

    invoke-static {v12, v10, v11}, LtH0;->a(Ljava/io/File;IZ)Ljava/io/File;

    move-result-object v12

    .line 30
    invoke-static {v12, v9, v11}, LtH0;->a(Ljava/io/File;LtH0;Z)V
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catch_1
    :try_start_6
    const-string v9, "Out of memory error while attempting to save tab state.  Erasing."

    new-array v12, v1, [Ljava/lang/Object;

    .line 31
    invoke-static {v4, v9, v12}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    invoke-virtual {v0, v10, v11}, LZI0;->a(IZ)V

    goto :goto_2

    .line 33
    :cond_5
    iget-object v0, v0, LYI0;->e:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    const-string v0, "SaveTabsTime"

    .line 34
    invoke-static {v0, v2, v3}, LYI0;->a(Ljava/lang/String;J)V

    const-string v0, "SaveStateTime"

    .line 35
    invoke-static {v0, v6, v7}, LYI0;->a(Ljava/lang/String;J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 36
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :cond_6
    return-void

    :catchall_0
    move-exception v0

    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0

    .line 37
    :cond_7
    throw v3
.end method

.method public getContentRootWindow()Lcom/oculus/browser/PanelWindowAndroid;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/TabModelManager;->mContentRootWindow:Lcom/oculus/browser/PanelWindowAndroid;

    return-object v0
.end method

.method public getNavUiRootWindow()Lcom/oculus/browser/PanelWindowAndroid;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/TabModelManager;->mNavUiRootWindow:Lcom/oculus/browser/PanelWindowAndroid;

    return-object v0
.end method

.method public getOverlayTranslateY()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/TabModelManager;->mUnderlyingContentOffsetProvider:Ly30;

    invoke-interface {v0}, Ly30;->getOverlayTranslateY()F

    move-result v0

    return v0
.end method

.method public getPanelApp()Lcom/oculus/browser/PanelApp;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/TabModelManager;->mUnderlyingTabModelContext:LeI0;

    instance-of v1, v0, Lcom/oculus/browser/PanelApp;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/oculus/browser/PanelApp;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTabCreator(Z)LbI0;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/oculus/browser/TabModelManager;->mSingleTabMode:Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/oculus/browser/TabModelManager;->mSingleTabCreator:LPH0;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/oculus/browser/TabModelManager;->mIncognitoTabCreator:LPH0;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/oculus/browser/TabModelManager;->mRegularTabCreator:LPH0;

    :goto_0
    return-object p1
.end method

.method public getTabModelSelector()LpI0;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/oculus/browser/TabModelManager;->mSingleTabMode:Z

    .line 2
    iget-boolean v0, p0, Lcom/oculus/browser/TabModelManager;->mSingleTabMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/browser/TabModelManager;->mSingleTabModelSelector:LaI0;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oculus/browser/TabModelManager;->mTabModelSelectorImpl:LwI0;

    :goto_0
    return-object v0
.end method

.method public initialize(LPH0;LPH0;LPH0;LwI0;LaI0;Lcom/oculus/browser/PanelWindowAndroid;Lcom/oculus/browser/PanelWindowAndroid;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oculus/browser/TabModelManager;->mRegularTabCreator:LPH0;

    .line 2
    iput-object p2, p0, Lcom/oculus/browser/TabModelManager;->mIncognitoTabCreator:LPH0;

    .line 3
    iput-object p3, p0, Lcom/oculus/browser/TabModelManager;->mSingleTabCreator:LPH0;

    .line 4
    iput-object p4, p0, Lcom/oculus/browser/TabModelManager;->mTabModelSelectorImpl:LwI0;

    .line 5
    iput-object p5, p0, Lcom/oculus/browser/TabModelManager;->mSingleTabModelSelector:LaI0;

    .line 6
    iput-object p6, p0, Lcom/oculus/browser/TabModelManager;->mNavUiRootWindow:Lcom/oculus/browser/PanelWindowAndroid;

    .line 7
    iput-object p7, p0, Lcom/oculus/browser/TabModelManager;->mContentRootWindow:Lcom/oculus/browser/PanelWindowAndroid;

    return-void
.end method

.method public isSingleTabMode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/oculus/browser/TabModelManager;->mSingleTabMode:Z

    return v0
.end method

.method public loadModels(Landroid/content/Context;Ly30;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 1
    iput-object v0, v1, Lcom/oculus/browser/TabModelManager;->mUnderlyingContentOffsetProvider:Ly30;

    .line 2
    iget-boolean v0, v1, Lcom/oculus/browser/TabModelManager;->mInitialized:Z

    if-nez v0, :cond_f

    const/4 v2, 0x1

    .line 3
    iput-boolean v2, v1, Lcom/oculus/browser/TabModelManager;->mInitialized:Z

    .line 4
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    const/4 v3, 0x0

    move-object/from16 v4, p1

    invoke-direct {v0, v4, v1, v3}, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;-><init>(Landroid/content/Context;Ly30;Z)V

    .line 5
    iget-object v15, v1, Lcom/oculus/browser/TabModelManager;->mTabModelSelectorImpl:LwI0;

    .line 6
    iput-object v0, v15, LwI0;->m:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    .line 7
    iget-object v0, v15, LrI0;->g:LcI0;

    .line 8
    invoke-interface {v0, v3}, LcI0;->getTabCreator(Z)LbI0;

    move-result-object v0

    check-cast v0, LPH0;

    .line 9
    iget-object v4, v15, LrI0;->g:LcI0;

    .line 10
    invoke-interface {v4, v2}, LcI0;->getTabCreator(Z)LbI0;

    move-result-object v4

    move-object v14, v4

    check-cast v14, LPH0;

    .line 11
    new-instance v13, LkI0;

    const/4 v5, 0x0

    iget-boolean v6, v15, LwI0;->k:Z

    iget-object v9, v15, LwI0;->o:LEI0;

    iget-object v10, v15, LwI0;->l:LmI0;

    iget-object v11, v15, LwI0;->m:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    iget-object v12, v15, LwI0;->i:LYI0;

    iget-boolean v8, v15, LwI0;->j:Z

    move-object v4, v13

    move-object v7, v0

    move/from16 v16, v8

    move-object v8, v14

    move-object v2, v13

    move-object v13, v15

    move-object/from16 p1, v14

    move/from16 v14, v16

    invoke-direct/range {v4 .. v14}, LkI0;-><init>(ZZLbI0;LbI0;LEI0;LmI0;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;LYI0;LfI0;Z)V

    .line 12
    new-instance v12, LWH0;

    new-instance v13, LXH0;

    iget-object v7, v15, LwI0;->o:LEI0;

    iget-object v8, v15, LwI0;->l:LmI0;

    iget-object v9, v15, LwI0;->m:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    iget-object v10, v15, LwI0;->i:LYI0;

    move-object v4, v13

    move-object v5, v0

    move-object/from16 v6, p1

    move-object v11, v15

    invoke-direct/range {v4 .. v11}, LXH0;-><init>(LbI0;LbI0;LEI0;LmI0;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;LYI0;LfI0;)V

    invoke-direct {v12, v13}, LWH0;-><init>(LVH0;)V

    const/4 v4, 0x2

    new-array v4, v4, [Lorg/chromium/chrome/browser/tabmodel/TabModel;

    aput-object v2, v4, v3

    const/4 v5, 0x1

    aput-object v12, v4, v5

    .line 13
    invoke-virtual {v15, v4}, LrI0;->a([Lorg/chromium/chrome/browser/tabmodel/TabModel;)V

    .line 14
    iget-object v4, v15, LwI0;->l:LmI0;

    invoke-virtual {v0, v2, v4}, LPH0;->setTabModel(Lorg/chromium/chrome/browser/tabmodel/TabModel;LmI0;)V

    .line 15
    iget-object v0, v15, LwI0;->l:LmI0;

    move-object/from16 v4, p1

    invoke-virtual {v4, v12, v0}, LPH0;->setTabModel(Lorg/chromium/chrome/browser/tabmodel/TabModel;LmI0;)V

    .line 16
    iget-object v0, v15, LwI0;->i:LYI0;

    iget-object v2, v15, LwI0;->m:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    .line 17
    iget-object v0, v0, LYI0;->a:LGI0;

    check-cast v0, LgJ0;

    .line 18
    iput-object v2, v0, LgJ0;->e:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    .line 19
    new-instance v0, LtI0;

    invoke-direct {v0, v15}, LtI0;-><init>(LwI0;)V

    invoke-virtual {v15, v0}, LrI0;->a(LxI0;)V

    .line 20
    new-instance v0, LuI0;

    invoke-direct {v0, v15, v15}, LuI0;-><init>(LwI0;LpI0;)V

    .line 21
    iget-object v0, v1, Lcom/oculus/browser/TabModelManager;->mTabModelSelectorImpl:LwI0;

    .line 22
    iget-object v2, v0, LwI0;->i:LYI0;

    const/4 v4, 0x0

    if-eqz v2, :cond_e

    .line 23
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 24
    iget-object v0, v2, LYI0;->a:LGI0;

    check-cast v0, LgJ0;

    invoke-virtual {v0}, LgJ0;->a()V

    .line 25
    iget-object v0, v2, LYI0;->a:LGI0;

    check-cast v0, LgJ0;

    if-eqz v0, :cond_d

    .line 26
    sget-object v0, LgJ0;->k:LkW;

    if-nez v0, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    :try_start_0
    invoke-virtual {v0}, LkW;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    const-string v0, "LoadStateTime"

    .line 28
    invoke-static {v0, v5, v6}, LYI0;->a(Ljava/lang/String;J)V

    .line 29
    iput-boolean v3, v2, LYI0;->l:Z

    const/4 v5, 0x1

    .line 30
    iput-boolean v5, v2, LYI0;->m:Z

    .line 31
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, v2, LYI0;->n:Landroid/util/SparseIntArray;

    .line 32
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, v2, LYI0;->o:Landroid/util/SparseIntArray;

    .line 33
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 34
    invoke-virtual {v2}, LYI0;->b()V

    .line 35
    iget-object v0, v2, LYI0;->r:LkW;

    if-eqz v0, :cond_1

    .line 36
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 37
    iget-object v0, v2, LYI0;->r:LkW;

    invoke-virtual {v0}, LkW;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/DataInputStream;

    if-eqz v0, :cond_1

    const-string v9, "LoadStateInternalPrefetchTime"

    .line 38
    invoke-static {v9, v7, v8}, LYI0;->a(Ljava/lang/String;J)V

    const/4 v7, 0x1

    .line 39
    iput-boolean v7, v2, LYI0;->v:Z

    .line 40
    iget-object v7, v2, LYI0;->b:LpI0;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 41
    check-cast v7, LrI0;

    :try_start_2
    invoke-virtual {v7}, LrI0;->f()Z

    move-result v7

    .line 42
    new-instance v8, LJI0;

    invoke-direct {v8, v2, v3, v7}, LJI0;-><init>(LYI0;ZZ)V

    .line 43
    invoke-static {v0, v8, v4, v3}, LYI0;->a(Ljava/io/DataInputStream;LRI0;Landroid/util/SparseBooleanArray;Z)I

    const-string v0, "LoadStateInternalTime"

    .line 44
    invoke-static {v0, v5, v6}, LYI0;->a(Ljava/lang/String;J)V

    .line 45
    :cond_1
    iget-object v0, v2, LYI0;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 46
    iget-object v0, v2, LYI0;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 47
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 48
    iget-object v8, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, LkW;

    .line 49
    invoke-virtual {v8}, LkW;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/DataInputStream;

    if-nez v8, :cond_2

    goto :goto_1

    :cond_2
    const-string v9, "MergeStateInternalFetchTime"

    .line 50
    invoke-static {v9, v6, v7}, LYI0;->a(Ljava/lang/String;J)V

    .line 51
    iget-object v9, v2, LYI0;->t:Ljava/util/Set;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-interface {v9, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v5, v2, LYI0;->a:LGI0;

    check-cast v5, LgJ0;

    if-eqz v5, :cond_4

    .line 53
    sget-object v5, LgJ0;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 54
    iget-object v5, v2, LYI0;->b:LpI0;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 55
    check-cast v5, LrI0;

    :try_start_3
    invoke-virtual {v5}, LrI0;->f()Z

    move-result v5

    .line 56
    iget-object v9, v2, LYI0;->f:Ljava/util/Deque;

    invoke-interface {v9}, Ljava/util/Deque;->size()I

    move-result v9

    if-nez v9, :cond_3

    const/4 v9, 0x0

    goto :goto_2

    :cond_3
    const/4 v9, 0x1

    .line 57
    :goto_2
    new-instance v10, LJI0;

    invoke-direct {v10, v2, v9, v5}, LJI0;-><init>(LYI0;ZZ)V

    const/4 v5, 0x1

    .line 58
    invoke-static {v8, v10, v4, v5}, LYI0;->a(Ljava/io/DataInputStream;LRI0;Landroid/util/SparseBooleanArray;Z)I

    const-string v5, "MergeStateInternalTime"

    .line 59
    invoke-static {v5, v6, v7}, LYI0;->a(Ljava/lang/String;J)V

    goto :goto_1

    .line 60
    :cond_4
    throw v4

    .line 61
    :cond_5
    iget-object v0, v2, LYI0;->t:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "Android.MergeState.ColdStart"

    .line 62
    invoke-static {v0}, LhV;->a(Ljava/lang/String;)V

    .line 63
    :cond_6
    iget-object v0, v2, LYI0;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 65
    :cond_7
    :goto_3
    iget-object v0, v2, LYI0;->a:LGI0;

    iget-object v3, v2, LYI0;->f:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->size()I

    move-result v3

    check-cast v0, LgJ0;

    if-eqz v0, :cond_c

    const-string v0, "Tabs.CountAtStartup"

    .line 66
    invoke-static {v0, v3}, LfV;->c(Ljava/lang/String;I)V

    .line 67
    iget-object v0, v2, LYI0;->d:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LWI0;

    .line 68
    iget-object v5, v2, LYI0;->f:Ljava/util/Deque;

    invoke-interface {v5}, Ljava/util/Deque;->size()I

    if-eqz v3, :cond_8

    goto :goto_4

    .line 69
    :cond_8
    throw v4

    :cond_9
    const-string v2, "TabModelManager.mTabModelSelectorImpl.restoreTabs"

    .line 70
    invoke-static {v2, v4}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, v1, Lcom/oculus/browser/TabModelManager;->mTabModelSelectorImpl:LwI0;

    .line 72
    iget-object v3, v0, LwI0;->i:LYI0;

    .line 73
    :goto_5
    iget-object v0, v3, LYI0;->f:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, v3, LYI0;->n:Landroid/util/SparseIntArray;

    .line 74
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, v3, LYI0;->o:Landroid/util/SparseIntArray;

    .line 75
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-nez v0, :cond_b

    .line 76
    iget-object v0, v3, LYI0;->f:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LXI0;

    .line 77
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v4

    .line 78
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 79
    iget-object v7, v3, LYI0;->p:Landroid/content/SharedPreferences;

    const-string v8, "org.chromium.chrome.browser.tabmodel.TabPersistentStore.ACTIVE_TAB_ID"

    const/4 v9, -0x1

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 80
    iget v8, v0, LXI0;->a:I

    if-ne v7, v8, :cond_a

    iget-object v7, v3, LYI0;->w:LkW;

    if-eqz v7, :cond_a

    .line 81
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 82
    iget-object v9, v3, LYI0;->w:LkW;

    invoke-virtual {v9}, LkW;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LtH0;

    const-string v10, "RestoreTabPrefetchTime"

    .line 83
    invoke-static {v10, v7, v8}, LYI0;->a(Ljava/lang/String;J)V

    goto :goto_6

    .line 84
    :cond_a
    invoke-virtual {v3}, LYI0;->a()Ljava/io/File;

    move-result-object v7

    iget v8, v0, LXI0;->a:I

    invoke-static {v7, v8}, LtH0;->a(Ljava/io/File;I)LtH0;

    move-result-object v9

    :goto_6
    const-string v7, "RestoreTabTime"

    .line 85
    invoke-static {v7, v5, v6}, LYI0;->a(Ljava/lang/String;J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v5, 0x1

    .line 86
    :try_start_5
    invoke-virtual {v3, v0, v9, v5}, LYI0;->a(LXI0;LtH0;Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_8

    :catch_2
    move-exception v0

    goto :goto_7

    :catchall_0
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    const/4 v5, 0x1

    .line 87
    :goto_7
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 88
    :goto_8
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_5

    :goto_9
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0

    .line 89
    :cond_b
    invoke-virtual {v3}, LYI0;->c()V

    .line 90
    invoke-static {v2}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/browser/TabModelManager;->getTabModelSelector()LpI0;

    move-result-object v0

    check-cast v0, LrI0;

    invoke-virtual {v0}, LrI0;->b()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/browser/TabModelManager;->getTabModelSelector()LpI0;

    move-result-object v0

    check-cast v0, LrI0;

    invoke-virtual {v0}, LrI0;->b()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    goto :goto_a

    .line 93
    :cond_c
    throw v4

    .line 94
    :cond_d
    throw v4

    .line 95
    :cond_e
    throw v4

    :cond_f
    :goto_a
    return-void
.end method

.method public setTabMode(Z)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/oculus/browser/TabModelManager;->mSingleTabMode:Z

    if-eq v0, p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/oculus/browser/TabModelManager;->getTabModelSelector()LpI0;

    move-result-object v0

    .line 3
    iput-boolean p1, p0, Lcom/oculus/browser/TabModelManager;->mSingleTabMode:Z

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0}, Lcom/oculus/browser/TabModelManager;->getTabModelSelector()LpI0;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 5
    iget-object v2, p0, Lcom/oculus/browser/TabModelManager;->mTabSelectorObserver:Lcom/oculus/browser/TabModelManager$TabSelectorObserver;

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {v2, v1, v0}, Lcom/oculus/browser/TabModelManager$TabSelectorObserver;->onTabSelectorChanged(LpI0;LpI0;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    return p1
.end method

.method public setTabSelectorObserver(Lcom/oculus/browser/TabModelManager$TabSelectorObserver;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/oculus/browser/TabModelManager;->mTabSelectorObserver:Lcom/oculus/browser/TabModelManager$TabSelectorObserver;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/oculus/browser/TabModelManager;->getTabModelSelector()LpI0;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/oculus/browser/TabModelManager$TabSelectorObserver;->onTabSelectorChanged(LpI0;LpI0;)V

    :cond_0
    return-void
.end method

.method public showIncognitoNotifications()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/TabModelManager;->mUnderlyingTabModelContext:LeI0;

    invoke-interface {v0}, LeI0;->showIncognitoNotifications()Z

    move-result v0

    return v0
.end method

.method public supportsMediaSession()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/TabModelManager;->mUnderlyingTabModelContext:LeI0;

    invoke-interface {v0}, LeI0;->supportsMediaSession()Z

    move-result v0

    return v0
.end method
