.class public LVG0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate;
.implements LxU;


# static fields
.field public static final E:Ljava/lang/Class;


# instance fields
.field public A:Lorg/chromium/content_public/browser/WebContents;

.field public B:Lxa0;

.field public C:Z

.field public D:Z

.field public final w:Lorg/chromium/chrome/browser/tab/Tab;

.field public final x:LPG0;

.field public y:I

.field public final z:LpH0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LVG0;

    sput-object v0, LVG0;->E:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 2
    iput v0, p0, LVG0;->y:I

    .line 3
    iput-object p1, p0, LVG0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    .line 4
    invoke-static {}, Lorg/chromium/chrome/browser/AppHooks;->get()Lorg/chromium/chrome/browser/AppHooks;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iput-object v0, p0, LVG0;->x:LPG0;

    .line 5
    new-instance p1, LTG0;

    invoke-direct {p1, p0}, LTG0;-><init>(LVG0;)V

    iput-object p1, p0, LVG0;->z:LpH0;

    .line 6
    iget-object v0, p0, LVG0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    .line 7
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {v0, p1}, LWT;->a(Ljava/lang/Object;)Z

    .line 8
    iget-object p1, p0, LVG0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    .line 9
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 10
    invoke-virtual {p0, p1}, LVG0;->a(Lorg/chromium/content_public/browser/WebContents;)V

    return-void

    .line 11
    :cond_0
    throw v0
.end method

.method public static a(Lorg/chromium/chrome/browser/tab/Tab;)LVG0;
    .locals 1

    .line 10
    iget-object p0, p0, Lorg/chromium/chrome/browser/tab/Tab;->I:LyU;

    .line 11
    sget-object v0, LVG0;->E:Ljava/lang/Class;

    invoke-virtual {p0, v0}, LyU;->a(Ljava/lang/Class;)LxU;

    move-result-object p0

    check-cast p0, LVG0;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 12
    iget-object v0, p0, LVG0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    .line 13
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-nez v0, :cond_0

    return-void

    .line 14
    :cond_0
    invoke-virtual {p0}, LVG0;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 15
    iget-object v0, p0, LVG0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->h()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 16
    iget-object v0, p0, LVG0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 17
    :cond_1
    sget-object v0, LZ01;->a:LFW;

    new-instance v1, LUG0;

    invoke-direct {v1, p0}, LUG0;-><init>(LVG0;)V

    const-wide/16 v2, 0x0

    .line 18
    invoke-static {v0, v1, v2, v3}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    goto :goto_1

    .line 19
    :cond_2
    iget-object v0, p0, LVG0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-static {v0}, LrH0;->a(Lorg/chromium/chrome/browser/tab/Tab;)LrH0;

    move-result-object v0

    invoke-virtual {v0}, LrH0;->isOnNavigation()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 20
    iget-object v0, p0, LVG0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    .line 21
    invoke-static {v0}, LrH0;->a(Lorg/chromium/chrome/browser/tab/Tab;)LrH0;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, LrH0;->getLastCommittedEntryIndexBeforeStartingNavigation()I

    move-result v0

    .line 23
    iget-object v2, p0, LVG0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    .line 24
    iget-object v2, v2, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-nez v2, :cond_3

    const/4 v2, -0x1

    goto :goto_0

    .line 25
    :cond_3
    invoke-interface {v2}, Lorg/chromium/content_public/browser/WebContents;->g()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object v2

    invoke-interface {v2}, Lorg/chromium/content_public/browser/NavigationController;->c()I

    move-result v2

    :goto_0
    if-le v2, v0, :cond_4

    .line 26
    iput-boolean v1, p0, LVG0;->C:Z

    .line 27
    iget-object v1, p0, LVG0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    .line 28
    iget-object v1, v1, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 29
    invoke-interface {v1}, Lorg/chromium/content_public/browser/WebContents;->g()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/chromium/content_public/browser/NavigationController;->e(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final a(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 1

    .line 1
    iget-object v0, p0, LVG0;->A:Lorg/chromium/content_public/browser/WebContents;

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, LVG0;->A:Lorg/chromium/content_public/browser/WebContents;

    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object p1, p0, LVG0;->B:Lxa0;

    if-nez p1, :cond_2

    .line 4
    iget-object p1, p0, LVG0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    .line 5
    iget-object v0, p1, Lorg/chromium/chrome/browser/tab/Tab;->D:LlH0;

    .line 6
    invoke-interface {v0, p1}, LlH0;->b(Lorg/chromium/chrome/browser/tab/Tab;)Lxa0;

    move-result-object p1

    .line 7
    iput-object p1, p0, LVG0;->B:Lxa0;

    .line 8
    :cond_2
    iget-object p1, p0, LVG0;->A:Lorg/chromium/content_public/browser/WebContents;

    .line 9
    invoke-static {p0, p1}, LJ/N;->M9qsb5XW(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final b()Z
    .locals 4

    .line 1
    iget-object v0, p0, LVG0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    .line 2
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->g()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/chromium/content_public/browser/NavigationController;->a(I)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    .line 4
    :cond_1
    iget-object v0, p0, LVG0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-static {v0}, LrH0;->a(Lorg/chromium/chrome/browser/tab/Tab;)LrH0;

    move-result-object v0

    invoke-virtual {v0}, LrH0;->isOnNavigation()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, LVG0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-static {v0}, LrH0;->a(Lorg/chromium/chrome/browser/tab/Tab;)LrH0;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, LrH0;->getLastCommittedEntryIndexBeforeStartingNavigation()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public destroy()V
    .locals 2

    .line 1
    iget-object v0, p0, LVG0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    iget-object v1, p0, LVG0;->z:LpH0;

    .line 2
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {v0, v1}, LWT;->b(Ljava/lang/Object;)Z

    return-void
.end method

.method public shouldIgnoreNavigation(Lorg/chromium/components/navigation_interception/NavigationParams;)Z
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v1, Lorg/chromium/components/navigation_interception/NavigationParams;->a:Ljava/lang/String;

    .line 2
    iget-object v3, v0, LVG0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v3}, LBg0;->L()J

    .line 4
    :goto_0
    iget-boolean v3, v1, Lorg/chromium/components/navigation_interception/NavigationParams;->g:Z

    if-eqz v3, :cond_1

    .line 5
    iget-object v3, v0, LVG0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-static {v3}, LrH0;->a(Lorg/chromium/chrome/browser/tab/Tab;)LrH0;

    move-result-object v3

    :goto_1
    move-object v12, v3

    goto :goto_2

    .line 6
    :cond_1
    iget-boolean v3, v1, Lorg/chromium/components/navigation_interception/NavigationParams;->f:Z

    if-eqz v3, :cond_c

    .line 7
    new-instance v3, LrH0;

    invoke-direct {v3}, LrH0;-><init>()V

    goto :goto_1

    .line 8
    :goto_2
    invoke-virtual/range {p0 .. p0}, LVG0;->b()Z

    move-result v3

    .line 9
    iget-object v5, v0, LVG0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    .line 10
    invoke-virtual {v5}, Lorg/chromium/chrome/browser/tab/Tab;->h()I

    move-result v5

    const/4 v6, 0x5

    const/4 v11, 0x1

    const/4 v15, 0x1

    if-ne v5, v6, :cond_2

    if-eqz v3, :cond_2

    const/4 v5, 0x1

    goto :goto_3

    :cond_2
    const/4 v5, 0x0

    .line 11
    :goto_3
    iget-object v6, v1, Lorg/chromium/components/navigation_interception/NavigationParams;->a:Ljava/lang/String;

    iget-object v7, v0, LVG0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    .line 12
    iget-boolean v7, v7, Lorg/chromium/chrome/browser/tab/Tab;->c:Z

    .line 13
    iget-object v8, v1, Lorg/chromium/components/navigation_interception/NavigationParams;->b:Ljava/lang/String;

    iget v9, v1, Lorg/chromium/components/navigation_interception/NavigationParams;->d:I

    iget-boolean v10, v1, Lorg/chromium/components/navigation_interception/NavigationParams;->e:Z

    iget-object v13, v0, LVG0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    .line 14
    iget-boolean v14, v13, Lorg/chromium/chrome/browser/tab/Tab;->x:Z

    if-eqz v14, :cond_3

    if-nez v5, :cond_3

    const/16 v16, 0x1

    goto :goto_4

    :cond_3
    const/16 v16, 0x0

    .line 15
    :goto_4
    iget-boolean v14, v1, Lorg/chromium/components/navigation_interception/NavigationParams;->g:Z

    .line 16
    iget-boolean v5, v1, Lorg/chromium/components/navigation_interception/NavigationParams;->c:Z

    if-eqz v3, :cond_4

    if-eqz v14, :cond_4

    const/16 v19, 0x1

    goto :goto_5

    :cond_4
    const/16 v19, 0x0

    .line 17
    :goto_5
    new-instance v4, Lza0;

    const/16 v20, 0x0

    const/16 v17, 0x0

    move/from16 v18, v5

    move-object v5, v4

    move/from16 v21, v14

    move v14, v3

    move/from16 v15, v16

    move/from16 v16, v21

    invoke-direct/range {v5 .. v20}, Lza0;-><init>(Ljava/lang/String;ZLjava/lang/String;IZZLrH0;Lorg/chromium/chrome/browser/tab/Tab;ZZZLjava/lang/String;ZZLya0;)V

    .line 18
    iget-object v5, v0, LVG0;->B:Lxa0;

    invoke-virtual {v5, v4}, Lxa0;->a(Lza0;)I

    move-result v4

    .line 19
    iput v4, v0, LVG0;->y:I

    const-string v5, "Android.TabNavigationInterceptResult"

    const/4 v6, 0x4

    .line 20
    invoke-static {v5, v4, v6}, LfV;->a(Ljava/lang/String;II)V

    if-eqz v4, :cond_a

    const/4 v5, 0x1

    if-eq v4, v5, :cond_9

    const/4 v6, 0x2

    if-eq v4, v6, :cond_7

    .line 21
    iget-boolean v1, v1, Lorg/chromium/components/navigation_interception/NavigationParams;->f:Z

    if-eqz v1, :cond_6

    .line 22
    iget-object v1, v0, LVG0;->B:Lxa0;

    invoke-virtual {v1, v2}, Lxa0;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x7f130191

    goto :goto_6

    :cond_5
    const v1, 0x7f13062f

    .line 23
    :goto_6
    iget-object v3, v0, LVG0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    .line 24
    iget-object v4, v3, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 25
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/tab/Tab;->f()Landroid/content/Context;

    move-result-object v3

    new-array v7, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-virtual {v3, v1, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-interface {v4, v6, v1}, Lorg/chromium/content_public/browser/WebContents;->a(ILjava/lang/String;)V

    return v5

    :cond_6
    const/4 v8, 0x0

    return v8

    :cond_7
    if-nez v3, :cond_8

    .line 27
    iget-boolean v1, v1, Lorg/chromium/components/navigation_interception/NavigationParams;->g:Z

    if-eqz v1, :cond_8

    .line 28
    invoke-virtual/range {p0 .. p0}, LVG0;->a()V

    :cond_8
    return v5

    .line 29
    :cond_9
    iput-boolean v5, v0, LVG0;->D:Z

    return v5

    :cond_a
    const/4 v5, 0x1

    .line 30
    iget-boolean v1, v1, Lorg/chromium/components/navigation_interception/NavigationParams;->g:Z

    if-eqz v1, :cond_b

    invoke-virtual/range {p0 .. p0}, LVG0;->a()V

    :cond_b
    return v5

    :cond_c
    const/4 v1, 0x0

    return v1
.end method
