.class public Lorg/chromium/chrome/browser/infobar/InfoBarContainer;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LxU;
.implements Lqc1;


# static fields
.field public static final K:Ljava/lang/Class;


# instance fields
.field public final A:LWT;

.field public final B:LMf0;

.field public final C:Lorg/chromium/chrome/browser/tab/Tab;

.field public D:J

.field public E:Z

.field public F:Z

.field public G:Landroid/view/View;

.field public H:LNf0;

.field public I:Lnf0;

.field public J:LuQ0;

.field public final w:LpH0;

.field public final x:Landroid/view/View$OnAttachStateChangeListener;

.field public final y:Ljava/util/ArrayList;

.field public final z:LWT;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    sput-object v0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->K:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lqf0;

    invoke-direct {v0, p0}, Lqf0;-><init>(Lorg/chromium/chrome/browser/infobar/InfoBarContainer;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->w:LpH0;

    .line 3
    new-instance v0, Lrf0;

    invoke-direct {v0, p0}, Lrf0;-><init>(Lorg/chromium/chrome/browser/infobar/InfoBarContainer;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->x:Landroid/view/View$OnAttachStateChangeListener;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->y:Ljava/util/ArrayList;

    .line 5
    new-instance v0, LWT;

    invoke-direct {v0}, LWT;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->z:LWT;

    .line 6
    new-instance v0, LWT;

    invoke-direct {v0}, LWT;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->A:LWT;

    .line 7
    new-instance v0, Lsf0;

    invoke-direct {v0, p0}, Lsf0;-><init>(Lorg/chromium/chrome/browser/infobar/InfoBarContainer;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->B:LMf0;

    .line 8
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->w:LpH0;

    .line 9
    iget-object v1, p1, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {v1, v0}, LWT;->a(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->n()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->G:Landroid/view/View;

    .line 11
    iput-object p1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->C:Lorg/chromium/chrome/browser/tab/Tab;

    .line 12
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    .line 13
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->b()V

    .line 14
    invoke-static {p0}, LJ/N;->MQNiH$D1(Ljava/lang/Object;)J

    move-result-wide v0

    .line 15
    iput-wide v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->D:J

    return-void
.end method

.method public static a(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/infobar/InfoBarContainer;
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/chromium/chrome/browser/tab/Tab;->I:LyU;

    .line 2
    sget-object v0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->K:Ljava/lang/Class;

    invoke-virtual {p0, v0}, LyU;->a(Ljava/lang/Class;)LxU;

    move-result-object p0

    check-cast p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    return-object p0
.end method

.method public static synthetic a(Lorg/chromium/chrome/browser/infobar/InfoBarContainer;)V
    .locals 6

    .line 8
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->H:LNf0;

    if-nez v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->C:Lorg/chromium/chrome/browser/tab/Tab;

    .line 10
    iget-object v1, v1, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v1, :cond_1

    .line 11
    iget-object v2, v0, LN10;->F:Lorg/chromium/content_public/browser/WebContents;

    if-eq v1, v2, :cond_1

    .line 12
    invoke-virtual {v0, v1}, LN10;->a(Lorg/chromium/content_public/browser/WebContents;)V

    .line 13
    iget-wide v2, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->D:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 14
    invoke-static {v2, v3, p0, v1}, LJ/N;->Mb3PR8J$(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 15
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->G:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->x:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 16
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->C:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->n()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->G:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 17
    iget-object p0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->x:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private addInfoBar(Lorg/chromium/chrome/browser/infobar/InfoBar;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 2
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->H:LNf0;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    iput-object v0, p1, Lorg/chromium/chrome/browser/infobar/InfoBar;->C:Landroid/content/Context;

    .line 4
    iput-object p0, p1, Lorg/chromium/chrome/browser/infobar/InfoBar;->A:Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    .line 5
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->z:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lwf0;

    .line 6
    iget-object v2, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->y:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    invoke-interface {v1, p0, p1, v2}, Lwf0;->b(Lorg/chromium/chrome/browser/infobar/InfoBarContainer;Lorg/chromium/chrome/browser/infobar/InfoBar;Z)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->H:LNf0;

    if-eqz v0, :cond_5

    .line 9
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/infobar/InfoBar;->h()Landroid/view/View;

    .line 10
    iget-object v0, v0, LNf0;->H:LJf0;

    .line 11
    iget-object v1, v0, LJf0;->y:Ljava/util/ArrayList;

    const/4 v2, 0x0

    .line 12
    :goto_1
    iget-object v3, v0, LJf0;->y:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 13
    invoke-interface {p1}, LIf0;->b()I

    move-result v3

    iget-object v4, v0, LJf0;->y:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LIf0;

    invoke-interface {v4}, LIf0;->b()I

    move-result v4

    if-ge v3, v4, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 14
    :cond_4
    iget-object v2, v0, LJf0;->y:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 15
    :goto_2
    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 16
    invoke-virtual {v0}, LJf0;->c()V

    return-void

    :cond_5
    const/4 p1, 0x0

    .line 17
    throw p1
.end method

.method private getTopNativeInfoBarPtr()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->hasInfoBars()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->y:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/infobar/InfoBar;

    .line 3
    iget-wide v0, v0, Lorg/chromium/chrome/browser/infobar/InfoBar;->F:J

    return-wide v0
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 18
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->I:Lnf0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 19
    iget-object v2, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->A:LWT;

    invoke-virtual {v2, v0}, LWT;->b(Ljava/lang/Object;)Z

    .line 20
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->I:Lnf0;

    .line 21
    iget-object v2, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->z:LWT;

    invoke-virtual {v2, v0}, LWT;->b(Ljava/lang/Object;)Z

    .line 22
    iput-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->I:Lnf0;

    .line 23
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->H:LNf0;

    if-eqz v0, :cond_2

    .line 24
    invoke-virtual {v0, v1}, LN10;->a(Lorg/chromium/content_public/browser/WebContents;)V

    .line 25
    iget-wide v2, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->D:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 26
    invoke-static {v2, v3, p0, v1}, LJ/N;->Mb3PR8J$(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 27
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->H:LNf0;

    .line 28
    invoke-virtual {v0}, LN10;->a()Z

    .line 29
    iput-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->H:LNf0;

    .line 30
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->C:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 31
    iget-object v2, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->J:LuQ0;

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->p0()Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 32
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->p0()Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    move-result-object v0

    iget-object v2, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->J:LuQ0;

    .line 33
    iget-object v0, v0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->x:LWT;

    invoke-virtual {v0, v2}, LWT;->b(Ljava/lang/Object;)Z

    .line 34
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->C:Lorg/chromium/chrome/browser/tab/Tab;

    .line 35
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->e:Lorg/chromium/ui/base/WindowAndroid;

    .line 36
    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getKeyboardDelegate()Lrc1;

    move-result-object v0

    .line 37
    iget-object v2, v0, Lrc1;->w:LWT;

    invoke-virtual {v2, p0}, LWT;->b(Ljava/lang/Object;)Z

    .line 38
    iget-object v2, v0, Lrc1;->w:LWT;

    invoke-virtual {v2}, LWT;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 39
    invoke-virtual {v0}, Lrc1;->b()V

    .line 40
    :cond_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->G:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 41
    iget-object v2, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->x:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 42
    iput-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->G:Landroid/view/View;

    :cond_5
    return-void
.end method

.method public a(I)V
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->H:LNf0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 4
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->H:LNf0;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_2

    .line 5
    iget-object p1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->H:LNf0;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    .line 6
    iget-boolean p1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->F:Z

    if-nez p1, :cond_2

    .line 7
    iget-object p1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->H:LNf0;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final b()V
    .locals 6

    .line 6
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->C:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v0

    .line 7
    new-instance v1, LNf0;

    .line 8
    sget-object v2, LzT;->a:Landroid/content/Context;

    .line 9
    iget-object v3, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->B:LMf0;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, LNf0;-><init>(Landroid/content/Context;LMf0;Lbd0;Z)V

    iput-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->H:LNf0;

    .line 10
    new-instance v2, Luf0;

    invoke-direct {v2, p0}, Luf0;-><init>(Lorg/chromium/chrome/browser/infobar/InfoBarContainer;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 11
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->H:LNf0;

    iget-boolean v2, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->F:Z

    if-eqz v2, :cond_0

    const/16 v5, 0x8

    .line 12
    :cond_0
    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 13
    new-instance v1, Lnf0;

    new-instance v2, Ljf0;

    invoke-direct {v2, v0}, Ljf0;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lnf0;-><init>(Lkf0;)V

    iput-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->I:Lnf0;

    .line 14
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->A:LWT;

    invoke-virtual {v0, v1}, LWT;->a(Ljava/lang/Object;)Z

    .line 15
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->I:Lnf0;

    .line 16
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->z:LWT;

    invoke-virtual {v1, v0}, LWT;->a(Ljava/lang/Object;)Z

    .line 17
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->C:Lorg/chromium/chrome/browser/tab/Tab;

    .line 18
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->e:Lorg/chromium/ui/base/WindowAndroid;

    .line 19
    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getKeyboardDelegate()Lrc1;

    move-result-object v0

    .line 20
    iget-object v1, v0, Lrc1;->w:LWT;

    invoke-virtual {v1}, LWT;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 21
    invoke-virtual {v0}, Lrc1;->a()V

    .line 22
    :cond_1
    iget-object v0, v0, Lrc1;->w:LWT;

    invoke-virtual {v0, p0}, LWT;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Z)V
    .locals 4

    .line 1
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->F:Z

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->H:LNf0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_1

    const/16 v3, 0x8

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 3
    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->a(I)V

    goto :goto_1

    .line 5
    :cond_2
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->a(I)V

    :goto_1
    return-void
.end method

.method public destroy()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->a()V

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->C:Lorg/chromium/chrome/browser/tab/Tab;

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->w:LpH0;

    .line 3
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {v0, v1}, LWT;->b(Ljava/lang/Object;)Z

    .line 4
    iget-wide v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->D:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 5
    iget-wide v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->D:J

    .line 6
    invoke-static {v0, v1, p0}, LJ/N;->MUX1cETi(JLjava/lang/Object;)V

    .line 7
    iput-wide v2, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->D:J

    :cond_0
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->E:Z

    return-void
.end method

.method public hasInfoBars()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
