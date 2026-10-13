.class public Lorg/chromium/chrome/browser/searchwidget/SearchActivity;
.super LBg0;
.source "PG"

# interfaces
.implements LYF0;
.implements LmD0;


# static fields
.field public static final l0:Ljava/lang/Object;

.field public static m0:LkD0;


# instance fields
.field public e0:Landroid/view/ViewGroup;

.field public f0:Z

.field public g0:Ljava/lang/String;

.field public h0:Lorg/chromium/chrome/browser/searchwidget/SearchActivityLocationBarLayout;

.field public i0:LZF0;

.field public j0:LnD0;

.field public k0:Lorg/chromium/chrome/browser/tab/Tab;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/chrome/browser/searchwidget/SearchActivity;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/searchwidget/SearchActivity;->l0:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LBg0;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/chromium/chrome/browser/searchwidget/SearchActivity;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, LBg0;->L:Landroid/os/Handler;

    return-object p0
.end method

.method public static a0()LkD0;
    .locals 2

    .line 1
    sget-object v0, Lorg/chromium/chrome/browser/searchwidget/SearchActivity;->l0:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lorg/chromium/chrome/browser/searchwidget/SearchActivity;->m0:LkD0;

    if-nez v1, :cond_0

    new-instance v1, LkD0;

    invoke-direct {v1}, LkD0;-><init>()V

    sput-object v1, Lorg/chromium/chrome/browser/searchwidget/SearchActivity;->m0:LkD0;

    .line 3
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    sget-object v0, Lorg/chromium/chrome/browser/searchwidget/SearchActivity;->m0:LkD0;

    return-object v0

    :catchall_0
    move-exception v1

    .line 5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static synthetic b(Lorg/chromium/chrome/browser/searchwidget/SearchActivity;)V
    .locals 2

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    const v1, 0x7f01000d

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method


# virtual methods
.method public C()LZF0;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/searchwidget/SearchActivity;->i0:LZF0;

    return-object v0
.end method

.method public J()LBd1;
    .locals 3

    .line 1
    new-instance v0, LBd1;

    new-instance v1, Lbl0;

    invoke-direct {v1, p0}, Lbl0;-><init>(Landroid/app/Activity;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LBd1;-><init>(LAd1;I)V

    return-object v0
.end method

.method public K()LDc1;
    .locals 1

    .line 1
    new-instance v0, LdD0;

    invoke-direct {v0, p0, p0}, LdD0;-><init>(Lorg/chromium/chrome/browser/searchwidget/SearchActivity;Landroid/content/Context;)V

    return-object v0
.end method

.method public P()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/searchwidget/SearchActivity;->h0:Lorg/chromium/chrome/browser/searchwidget/SearchActivityLocationBarLayout;

    return-object v0
.end method

.method public X()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public Y()V
    .locals 4

    .line 1
    new-instance v0, LZF0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LZF0;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/searchwidget/SearchActivity;->i0:LZF0;

    .line 2
    new-instance v0, LnD0;

    invoke-virtual {p0}, LQ8;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v2}, LnD0;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/searchwidget/SearchActivity;->j0:LnD0;

    .line 3
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0e018d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 4
    new-instance v2, LjD0;

    invoke-direct {v2, p0}, LjD0;-><init>(Lorg/chromium/chrome/browser/searchwidget/SearchActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iput-object v0, p0, Lorg/chromium/chrome/browser/searchwidget/SearchActivity;->e0:Landroid/view/ViewGroup;

    .line 6
    invoke-virtual {p0}, LQ8;->F()LS8;

    move-result-object v2

    invoke-virtual {v2, v0}, LS8;->a(Landroid/view/View;)V

    .line 7
    iget-object v0, p0, Lorg/chromium/chrome/browser/searchwidget/SearchActivity;->e0:Landroid/view/ViewGroup;

    const v2, 0x7f0b03ab

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/searchwidget/SearchActivityLocationBarLayout;

    iput-object v0, p0, Lorg/chromium/chrome/browser/searchwidget/SearchActivity;->h0:Lorg/chromium/chrome/browser/searchwidget/SearchActivityLocationBarLayout;

    .line 8
    iput-object p0, v0, Lorg/chromium/chrome/browser/searchwidget/SearchActivityLocationBarLayout;->V:LmD0;

    .line 9
    iget-object v2, p0, Lorg/chromium/chrome/browser/searchwidget/SearchActivity;->j0:LnD0;

    invoke-virtual {v0, v2}, Lep0;->a(LSJ0;)V

    .line 10
    iget-object v0, p0, Lorg/chromium/chrome/browser/searchwidget/SearchActivity;->h0:Lorg/chromium/chrome/browser/searchwidget/SearchActivityLocationBarLayout;

    new-instance v2, Lk00;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-direct {v2, v3}, Lk00;-><init>(Landroid/view/Window;)V

    .line 11
    iget-object v3, p0, LBg0;->Q:LDc1;

    .line 12
    invoke-virtual {v0, v2, v3, v1}, Lep0;->a(Lk00;Lorg/chromium/ui/base/WindowAndroid;LgY;)V

    .line 13
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/searchwidget/SearchActivity;->Z()V

    .line 14
    invoke-static {}, Lorg/chromium/chrome/browser/searchwidget/SearchActivity;->a0()LkD0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, LBg0;->L:Landroid/os/Handler;

    new-instance v1, LeD0;

    invoke-direct {v1, p0}, LeD0;-><init>(Lorg/chromium/chrome/browser/searchwidget/SearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    invoke-virtual {p0}, LBg0;->T()V

    return-void

    .line 17
    :cond_0
    throw v1
.end method

.method public final Z()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/searchwidget/SearchActivity;->h0:Lorg/chromium/chrome/browser/searchwidget/SearchActivityLocationBarLayout;

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "org.chromium.chrome.browser.searchwidget.START_VOICE_SEARCH"

    const/4 v3, 0x0

    .line 3
    invoke-static {v1, v2, v3}, LCO0;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v1

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "query"

    invoke-static {v2, v4}, LCO0;->d(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5
    iget-object v4, v0, Lep0;->A:LMp0;

    if-nez v2, :cond_0

    const-string v2, ""

    .line 6
    :cond_0
    invoke-static {v2}, LNp0;->a(Ljava/lang/String;)LNp0;

    move-result-object v2

    .line 7
    invoke-virtual {v4, v2, v3, v3}, LMp0;->a(LNp0;II)Z

    .line 8
    iget-boolean v2, v0, Lorg/chromium/chrome/browser/searchwidget/SearchActivityLocationBarLayout;->W:Z

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 9
    iput-boolean v1, v0, Lorg/chromium/chrome/browser/searchwidget/SearchActivityLocationBarLayout;->a0:Z

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/searchwidget/SearchActivityLocationBarLayout;->f(Z)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/searchwidget/SearchActivity;->f0:Z

    if-nez v0, :cond_0

    .line 3
    iput-object p1, p0, Lorg/chromium/chrome/browser/searchwidget/SearchActivity;->g0:Ljava/lang/String;

    return-void

    .line 4
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-static {p1}, LvV0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10080000

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 8
    const-class p1, Lw70;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 9
    invoke-static {v0}, LqZ;->a(Landroid/content/Intent;)V

    const/high16 p1, 0x10a0000

    const v1, 0x10a0001

    .line 10
    invoke-static {p0, p1, v1}, Lo2;->a(Landroid/content/Context;II)Lo2;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lo2;->a()Landroid/os/Bundle;

    move-result-object p1

    .line 12
    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string p1, "SearchWidget.SearchMade"

    .line 13
    invoke-static {p1}, LhV;->a(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public b(Landroid/content/Intent;)Z
    .locals 0

    .line 1
    invoke-static {}, Lorg/chromium/chrome/browser/searchwidget/SearchActivity;->a0()LkD0;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public f()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    const v1, 0x7f01000d

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public l()V
    .locals 9

    .line 1
    invoke-super {p0}, LBg0;->l()V

    .line 2
    new-instance v0, LgD0;

    invoke-direct {v0, p0}, LgD0;-><init>(Lorg/chromium/chrome/browser/searchwidget/SearchActivity;)V

    .line 3
    new-instance v1, LhH0;

    invoke-direct {v1}, LhH0;-><init>()V

    .line 4
    iget-object v2, p0, LBg0;->Q:LDc1;

    .line 5
    iput-object v2, v1, LhH0;->d:Lorg/chromium/ui/base/WindowAndroid;

    const/4 v2, 0x1

    .line 6
    invoke-virtual {v1, v2}, LhH0;->b(I)LhH0;

    const/4 v3, 0x0

    .line 7
    invoke-static {v3, v3}, Lj00;->a(ZZ)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v4

    .line 8
    iput-object v4, v1, LhH0;->j:Lorg/chromium/content_public/browser/WebContents;

    .line 9
    iput-object v0, v1, LhH0;->k:LlH0;

    .line 10
    invoke-virtual {v1}, LhH0;->a()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/searchwidget/SearchActivity;->k0:Lorg/chromium/chrome/browser/tab/Tab;

    .line 11
    new-instance v1, Lorg/chromium/content_public/browser/LoadUrlParams;

    const-string v4, "about:blank"

    .line 12
    invoke-direct {v1, v4, v3}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;I)V

    .line 13
    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->a(Lorg/chromium/content_public/browser/LoadUrlParams;)I

    .line 14
    iget-object v0, p0, Lorg/chromium/chrome/browser/searchwidget/SearchActivity;->j0:LnD0;

    iget-object v1, p0, Lorg/chromium/chrome/browser/searchwidget/SearchActivity;->k0:Lorg/chromium/chrome/browser/tab/Tab;

    .line 15
    iput-object v1, v0, LnD0;->b:Lorg/chromium/chrome/browser/tab/Tab;

    .line 16
    iget-object v0, p0, Lorg/chromium/chrome/browser/searchwidget/SearchActivity;->h0:Lorg/chromium/chrome/browser/searchwidget/SearchActivityLocationBarLayout;

    .line 17
    iput-boolean v2, v0, Lep0;->K:Z

    .line 18
    iget-object v1, v0, Lep0;->B:LPq0;

    check-cast v1, Lar0;

    .line 19
    iget-object v1, v1, Lar0;->x:Lmr0;

    .line 20
    iput-boolean v2, v1, Lmr0;->J:Z

    const-string v2, "OmniboxUIExperimentShowSuggestionFavicons"

    .line 21
    invoke-static {v2}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v3

    .line 22
    iput-boolean v3, v1, Lmr0;->a0:Z

    .line 23
    iget-object v3, v1, Lmr0;->B:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    .line 24
    iget-object v5, v1, Lmr0;->C:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 25
    :cond_0
    iget-object v3, v1, Lmr0;->B:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 26
    iget-object v3, v1, Lmr0;->F:Lzr0;

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    .line 27
    iget-object v3, v1, Lmr0;->D:LSr0;

    if-eqz v3, :cond_5

    .line 28
    invoke-static {v2}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v5

    .line 29
    iput-boolean v5, v3, LSr0;->A:Z

    .line 30
    iget-object v3, v1, Lmr0;->G:Lns0;

    if-eqz v3, :cond_4

    .line 31
    sget-object v5, LjZ;->a:LCT;

    .line 32
    invoke-static {}, LKe0;->a()LKe0;

    move-result-object v6

    const/high16 v7, 0x1400000

    const/4 v8, 0x2

    invoke-static {v8, v6, v5, v7}, LLe0;->a(ILKe0;LCT;I)LIe0;

    move-result-object v5

    .line 33
    iput-object v5, v3, Lns0;->z:LIe0;

    .line 34
    iget-object v1, v1, Lmr0;->E:Ljs0;

    if-eqz v1, :cond_1

    .line 35
    invoke-static {v2}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v2

    .line 36
    iput-boolean v2, v1, Ljs0;->G:Z

    .line 37
    :cond_1
    iget-object v1, v0, Lep0;->F:LNq0;

    .line 38
    iget-object v2, v1, LNq0;->x:LFq0;

    .line 39
    iget-object v2, v2, LFq0;->a:Lle1;

    sget-object v3, LGq0;->j:Lke1;

    invoke-virtual {v2, v3, v1}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    .line 40
    invoke-virtual {v0}, Lep0;->q()V

    .line 41
    iget-object v1, v0, Lep0;->w:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-object v1, v0, Lep0;->x:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    new-instance v1, Ltp0;

    invoke-direct {v1}, Ltp0;-><init>()V

    iput-object v1, v0, Lep0;->P:Ltp0;

    .line 44
    iget-object v1, v0, Lep0;->E:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 45
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 46
    :cond_2
    iget-object v1, v0, Lep0;->E:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 47
    invoke-virtual {v0}, Lep0;->k()V

    .line 48
    iget v1, v0, Lep0;->Q:F

    invoke-virtual {v0, v1}, Lep0;->a(F)V

    .line 49
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/profiles/Profile;->b()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lep0;->a(Lorg/chromium/chrome/browser/profiles/Profile;)V

    .line 50
    invoke-static {}, Lorg/chromium/chrome/browser/locale/LocaleManager;->getInstance()Lorg/chromium/chrome/browser/locale/LocaleManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/locale/LocaleManager;->a()Z

    move-result v1

    iput-boolean v1, v0, Lorg/chromium/chrome/browser/searchwidget/SearchActivityLocationBarLayout;->W:Z

    .line 51
    iget-object v0, v0, Lep0;->B:LPq0;

    .line 52
    check-cast v0, Lar0;

    .line 53
    iget-object v0, v0, Lar0;->x:Lmr0;

    .line 54
    iput-boolean v1, v0, Lmr0;->T:Z

    .line 55
    new-instance v0, LiD0;

    invoke-direct {v0, p0}, LiD0;-><init>(Lorg/chromium/chrome/browser/searchwidget/SearchActivity;)V

    .line 56
    invoke-static {}, Lorg/chromium/chrome/browser/searchwidget/SearchActivity;->a0()LkD0;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 57
    invoke-static {}, Lorg/chromium/chrome/browser/locale/LocaleManager;->getInstance()Lorg/chromium/chrome/browser/locale/LocaleManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lorg/chromium/chrome/browser/locale/LocaleManager;->a(Landroid/app/Activity;Lorg/chromium/base/Callback;)V

    return-void

    :cond_3
    throw v4

    .line 58
    :cond_4
    throw v4

    .line 59
    :cond_5
    throw v4

    .line 60
    :cond_6
    throw v4
.end method

.method public m()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/searchwidget/SearchActivity;->k0:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/searchwidget/SearchActivity;->k0:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->c()V

    .line 2
    :cond_0
    invoke-super {p0}, LBg0;->onDestroy()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, LBg0;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/searchwidget/SearchActivity;->Z()V

    return-void
.end method
