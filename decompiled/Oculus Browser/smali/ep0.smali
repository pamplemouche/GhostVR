.class public abstract Lep0;
.super Landroid/widget/FrameLayout;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements LWo0;
.implements Lbr0;
.implements LGm0;
.implements Lop0;


# static fields
.field public static final U:LaV;


# instance fields
.field public A:LMp0;

.field public B:LPq0;

.field public C:LSJ0;

.field public D:LWT;

.field public final E:Ljava/util/List;

.field public F:LNq0;

.field public G:Lorg/chromium/ui/base/WindowAndroid;

.field public H:Lk00;

.field public I:Ljava/lang/String;

.field public J:Z

.field public K:Z

.field public L:Z

.field public M:Z

.field public N:Z

.field public O:Z

.field public P:Ltp0;

.field public Q:F

.field public R:Landroid/widget/LinearLayout;

.field public S:Lsp0;

.field public T:LkM0;

.field public w:Landroid/widget/ImageButton;

.field public x:Landroid/widget/ImageButton;

.field public y:LKp0;

.field public final z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lep0;

    .line 2
    new-instance v0, LaV;

    const-string v1, "Android.OmniboxFocusReason"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, LaV;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lep0;->U:LaV;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p2, LWT;

    invoke-direct {p2}, LWT;-><init>()V

    iput-object p2, p0, Lep0;->D:LWT;

    .line 3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lep0;->E:Ljava/util/List;

    const-string p2, ""

    .line 4
    iput-object p2, p0, Lep0;->I:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, p3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    invoke-static {p1}, Lorg/chromium/ui/base/DeviceFormFactor;->a(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lep0;->z:Z

    const p1, 0x7f0b014f

    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lep0;->w:Landroid/widget/ImageButton;

    const p1, 0x7f0b04d1

    .line 8
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, LKp0;

    iput-object p1, p0, Lep0;->y:LKp0;

    .line 9
    new-instance p2, LMp0;

    invoke-direct {p2, p1}, LMp0;-><init>(LKp0;)V

    iput-object p2, p0, Lep0;->A:LMp0;

    .line 10
    iget-object p1, p2, LMp0;->b:LQp0;

    .line 11
    iget-object p1, p1, LQp0;->w:Lle1;

    sget-object p2, LTp0;->d:Lke1;

    invoke-virtual {p1, p2, p0}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    .line 12
    new-instance p1, LYo0;

    invoke-direct {p1, p0}, LYo0;-><init>(Lep0;)V

    .line 13
    iget-object p2, p0, Lep0;->A:LMp0;

    .line 14
    new-instance p3, Lar0;

    invoke-direct {p3, p0, p0, p1, p2}, Lar0;-><init>(Landroid/view/ViewGroup;Lbr0;Lor0;LOp0;)V

    .line 15
    iput-object p3, p0, Lep0;->B:LPq0;

    .line 16
    iget-object p1, p0, Lep0;->D:LWT;

    invoke-virtual {p1, p3}, LWT;->a(Ljava/lang/Object;)Z

    .line 17
    iget-object p1, p0, Lep0;->A:LMp0;

    iget-object p2, p0, Lep0;->B:LPq0;

    .line 18
    iget-object p1, p1, LMp0;->b:LQp0;

    .line 19
    iget-object p1, p1, LQp0;->C:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const p1, 0x7f0b0279

    .line 20
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lep0;->x:Landroid/widget/ImageButton;

    const p1, 0x7f0b04d0

    .line 21
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lep0;->R:Landroid/widget/LinearLayout;

    .line 22
    new-instance p1, Lsp0;

    invoke-direct {p1, p0}, Lsp0;-><init>(Lop0;)V

    iput-object p1, p0, Lep0;->S:Lsp0;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(F)V
    .locals 4

    .line 146
    invoke-virtual {p0}, Lep0;->v()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 147
    iget-boolean v2, p0, Lep0;->O:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lep0;->y:LKp0;

    .line 148
    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lep0;->J:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 149
    :cond_1
    :goto_0
    iget-object p1, p0, Lep0;->x:Landroid/widget/ImageButton;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {p1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method public a(I)V
    .locals 4

    .line 127
    iget-object v0, p0, Lep0;->F:LNq0;

    .line 128
    iget-object v0, v0, LNq0;->x:LFq0;

    .line 129
    iget v1, v0, LFq0;->j:I

    sub-int v1, p1, v1

    iget v2, v0, LFq0;->k:I

    sub-int/2addr v1, v2

    .line 130
    iget v2, v0, LFq0;->l:I

    if-lt p1, v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 131
    iget-object v2, v0, LFq0;->a:Lle1;

    sget-object v3, LGq0;->n:Lje1;

    invoke-virtual {v2, v3, v1}, Lle1;->a(Lje1;I)V

    .line 132
    :cond_1
    iget-boolean v1, v0, LFq0;->e:Z

    if-eq p1, v1, :cond_2

    .line 133
    iput-boolean p1, v0, LFq0;->e:Z

    .line 134
    invoke-virtual {v0}, LFq0;->c()V

    :cond_2
    return-void
.end method

.method public a(LKK0;)V
    .locals 2

    .line 41
    iget-object v0, p0, Lep0;->A:LMp0;

    .line 42
    iget-object v0, v0, LMp0;->b:LQp0;

    .line 43
    iget-object v0, v0, LQp0;->w:Lle1;

    sget-object v1, LTp0;->a:Lke1;

    invoke-virtual {v0, v1, p1}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    return-void
.end method

.method public a(LMm0;)V
    .locals 0

    const/4 p1, 0x0

    .line 150
    throw p1
.end method

.method public a(LSJ0;)V
    .locals 2

    .line 44
    iput-object p1, p0, Lep0;->C:LSJ0;

    .line 45
    invoke-virtual {p0}, Lep0;->w()V

    .line 46
    iget-object v0, p0, Lep0;->B:LPq0;

    check-cast v0, Lar0;

    .line 47
    iget-object v0, v0, Lar0;->x:Lmr0;

    .line 48
    iput-object p1, v0, Lmr0;->H:LSJ0;

    .line 49
    iget-object v0, p0, Lep0;->F:LNq0;

    .line 50
    iput-object p1, v0, LNq0;->A:LSJ0;

    .line 51
    iget-object v1, v0, LNq0;->x:LFq0;

    .line 52
    iput-object p1, v1, LFq0;->t:LPJ0;

    .line 53
    iget-object v1, v0, LNq0;->w:Lorg/chromium/chrome/browser/omnibox/status/StatusView;

    .line 54
    iput-object p1, v1, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->R:LPJ0;

    .line 55
    invoke-virtual {v0}, LNq0;->a()V

    .line 56
    iget-object p1, p0, Lep0;->A:LMp0;

    new-instance v0, LXo0;

    invoke-direct {v0, p0}, LXo0;-><init>(Lep0;)V

    .line 57
    iget-object p1, p1, LMp0;->b:LQp0;

    .line 58
    iput-object v0, p1, LQp0;->x:Lorg/chromium/base/Callback;

    return-void
.end method

.method public a(LVp0;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lep0;->D:LWT;

    invoke-virtual {v0, p1}, LWT;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 10

    .line 59
    iget-object v0, p0, Lep0;->A:LMp0;

    invoke-virtual {v0}, LMp0;->b()Ljava/lang/String;

    move-result-object v4

    .line 60
    iget-object v0, p0, Lep0;->A:LMp0;

    .line 61
    iget-object v0, v0, LMp0;->a:LKp0;

    invoke-virtual {v0}, LNo0;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lep0;->A:LMp0;

    .line 63
    iget-object v0, v0, LMp0;->b:LQp0;

    .line 64
    iget-boolean v1, v0, LQp0;->y:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    iget-object v0, v0, LQp0;->w:Lle1;

    sget-object v1, LTp0;->c:Lke1;

    new-instance v2, LRp0;

    invoke-direct {v2, v4, p1}, LRp0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    .line 66
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lep0;->N:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lep0;->L:Z

    if-eqz p1, :cond_2

    .line 67
    invoke-virtual {p0, p1}, Lep0;->c(Z)V

    .line 68
    :cond_2
    iget-boolean p1, p0, Lep0;->K:Z

    if-eqz p1, :cond_6

    .line 69
    invoke-static {}, LwT;->c()LwT;

    move-result-object p1

    const-string v0, "disable-instant"

    invoke-virtual {p1, v0}, LwT;->c(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 70
    invoke-static {}, LeB0;->d()LeB0;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 71
    invoke-static {}, LZ60;->b()LZ60;

    move-result-object v1

    iget-boolean v1, v1, LZ60;->d:Z

    if-nez v1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    .line 72
    :cond_3
    invoke-virtual {p1}, LeB0;->b()V

    .line 73
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 74
    invoke-static {p1}, LJ/N;->MiW6S5b2(Ljava/lang/Object;)Z

    move-result p1

    :goto_1
    if-eqz p1, :cond_6

    .line 75
    iget-object p1, p0, Lep0;->C:LSJ0;

    .line 76
    invoke-interface {p1}, LSJ0;->h()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 77
    iget-object v3, p0, Lep0;->P:Ltp0;

    .line 78
    iget-object v5, p0, Lep0;->I:Ljava/lang/String;

    .line 79
    iget-object p1, p0, Lep0;->B:LPq0;

    .line 80
    check-cast p1, Lar0;

    .line 81
    iget-object p1, p1, Lar0;->x:Lmr0;

    .line 82
    iget-object p1, p1, Lmr0;->K:Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;

    .line 83
    iget-wide v6, p1, Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;->b:J

    .line 84
    iget-object p1, p0, Lep0;->C:LSJ0;

    .line 85
    invoke-interface {p1}, LSJ0;->c()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v8

    iget-object p1, p0, Lep0;->C:LSJ0;

    invoke-interface {p1}, LSJ0;->g()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v9

    .line 86
    iget-wide v1, v3, Ltp0;->a:J

    .line 87
    invoke-static/range {v1 .. v9}, LJ/N;->M5tjuSum(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 88
    :cond_4
    throw v0

    .line 89
    :cond_5
    throw v0

    :cond_6
    :goto_2
    return-void
.end method

.method public a(Ljava/lang/String;IJ)V
    .locals 11

    .line 91
    invoke-virtual {p0}, Lep0;->u()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 92
    invoke-static {}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->i()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    sget-object v1, Lorg/chromium/base/ApplicationStatus;->e:Landroid/app/Activity;

    .line 94
    instance-of v3, v1, Lorg/chromium/chrome/browser/ChromeActivity;

    if-nez v3, :cond_1

    goto :goto_0

    .line 95
    :cond_1
    check-cast v1, Lorg/chromium/chrome/browser/ChromeActivity;

    .line 96
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/ChromeActivity;->W0()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_0
    move-object v1, v2

    :cond_2
    const/4 v3, 0x1

    const-string v4, "MobileOmniboxUse"

    const/4 v5, 0x2

    const/high16 v6, 0x2000000

    const/4 v7, 0x0

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    .line 97
    :cond_3
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/ChromeActivity;->w0()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v8

    .line 98
    new-instance v9, Lorg/chromium/content_public/browser/LoadUrlParams;

    .line 99
    invoke-direct {v9, p1, v7}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;I)V

    or-int v10, p2, v6

    .line 100
    iput v10, v9, Lorg/chromium/content_public/browser/LoadUrlParams;->d:I

    .line 101
    invoke-interface {v8}, LdI0;->a()Z

    move-result v8

    invoke-virtual {v1, v8}, Lorg/chromium/chrome/browser/ChromeActivity;->getTabCreator(Z)LbI0;

    move-result-object v1

    .line 102
    invoke-virtual {v1, v9, v5, v2}, LbI0;->createNewTab(Lorg/chromium/content_public/browser/LoadUrlParams;ILorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/tab/Tab;

    if-ne p2, v5, :cond_4

    const-string v1, "Suggestions.Tile.Tapped.GridTabSwitcher"

    .line 103
    invoke-static {v1}, LhV;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v1, "MobileOmniboxUse.GridTabSwitcher"

    .line 104
    invoke-static {v1}, LhV;->a(Ljava/lang/String;)V

    .line 105
    invoke-static {v4}, LhV;->a(Ljava/lang/String;)V

    .line 106
    invoke-static {}, Lorg/chromium/chrome/browser/locale/LocaleManager;->getInstance()Lorg/chromium/chrome/browser/locale/LocaleManager;

    move-result-object v1

    if-eqz v1, :cond_d

    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_5

    return-void

    :cond_5
    if-eqz v0, :cond_9

    .line 107
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->isNativePage()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LMm0;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_6
    and-int/lit16 v1, p2, 0xff

    const/4 v8, 0x5

    if-ne v1, v8, :cond_7

    .line 108
    invoke-static {v7}, LPm0;->a(I)V

    goto :goto_4

    .line 109
    :cond_7
    invoke-static {p1}, LJ/N;->MlgcEupS(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 110
    invoke-static {v3}, LPm0;->a(I)V

    goto :goto_3

    .line 111
    :cond_8
    invoke-static {v5}, LPm0;->a(I)V

    :goto_3
    const-string v1, "NTP.ExplicitUserAction.PageNavigation.OmniboxNonSearch"

    .line 112
    invoke-static {v1, p1}, LJ/N;->MjCLWtXx(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :goto_4
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object p1

    :cond_9
    if-eqz v0, :cond_b

    .line 114
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 115
    new-instance v1, Lorg/chromium/content_public/browser/LoadUrlParams;

    .line 116
    invoke-direct {v1, p1, v7}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;I)V

    .line 117
    invoke-static {p1, v0}, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationHeader;->a(Ljava/lang/String;Lorg/chromium/chrome/browser/tab/Tab;)Ljava/lang/String;

    move-result-object p1

    .line 118
    iput-object p1, v1, Lorg/chromium/content_public/browser/LoadUrlParams;->g:Ljava/lang/String;

    or-int p1, p2, v6

    .line 119
    iput p1, v1, Lorg/chromium/content_public/browser/LoadUrlParams;->d:I

    const-wide/16 p1, 0x0

    cmp-long v3, p3, p1

    if-eqz v3, :cond_a

    .line 120
    iput-wide p3, v1, Lorg/chromium/content_public/browser/LoadUrlParams;->p:J

    .line 121
    :cond_a
    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->a(Lorg/chromium/content_public/browser/LoadUrlParams;)I

    .line 122
    invoke-static {v4}, LhV;->a(Ljava/lang/String;)V

    .line 123
    :cond_b
    invoke-static {}, Lorg/chromium/chrome/browser/locale/LocaleManager;->getInstance()Lorg/chromium/chrome/browser/locale/LocaleManager;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 124
    invoke-virtual {p0}, Lep0;->s()V

    return-void

    .line 125
    :cond_c
    throw v2

    .line 126
    :cond_d
    throw v2
.end method

.method public a(Lk00;Lorg/chromium/ui/base/WindowAndroid;LgY;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lep0;->H:Lk00;

    .line 2
    iput-object p2, p0, Lep0;->G:Lorg/chromium/ui/base/WindowAndroid;

    .line 3
    iget-object v0, p0, Lep0;->A:LMp0;

    .line 4
    iget-object v0, v0, LMp0;->b:LQp0;

    .line 5
    iget-object v0, v0, LQp0;->w:Lle1;

    sget-object v1, LTp0;->m:Lke1;

    invoke-virtual {v0, v1, p1}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lep0;->B:LPq0;

    check-cast p1, Lar0;

    .line 7
    iget-object p1, p1, Lar0;->x:Lmr0;

    .line 8
    iget-object v0, p1, Lmr0;->d0:Lqi0;

    if-eqz v0, :cond_0

    .line 9
    check-cast v0, Lqg0;

    invoke-virtual {v0, p1}, Lqg0;->b(Lvi0;)V

    .line 10
    :cond_0
    iput-object p2, p1, Lmr0;->c0:Lorg/chromium/ui/base/WindowAndroid;

    if-eqz p2, :cond_1

    .line 11
    invoke-virtual {p2}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p2}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, LBg0;

    if-eqz p2, :cond_1

    .line 13
    iget-object p2, p1, Lmr0;->c0:Lorg/chromium/ui/base/WindowAndroid;

    .line 14
    invoke-virtual {p2}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LBg0;

    .line 15
    iget-object p2, p2, LBg0;->N:Lqg0;

    .line 16
    iput-object p2, p1, Lmr0;->d0:Lqi0;

    .line 17
    :cond_1
    iget-object p2, p1, Lmr0;->d0:Lqi0;

    if-eqz p2, :cond_2

    .line 18
    check-cast p2, Lqg0;

    invoke-virtual {p2, p1}, Lqg0;->a(Lvi0;)V

    .line 19
    :cond_2
    iget-object p1, p0, Lep0;->B:LPq0;

    check-cast p1, Lar0;

    .line 20
    iget-object p1, p1, Lar0;->x:Lmr0;

    .line 21
    iget-object p2, p1, Lmr0;->E:Ljs0;

    .line 22
    iget-object p2, p1, Lmr0;->e0:LfY;

    const/4 v0, 0x0

    if-nez p2, :cond_4

    if-nez p3, :cond_3

    return-void

    .line 23
    :cond_3
    new-instance p2, Lgr0;

    invoke-direct {p2, p1}, Lgr0;-><init>(Lmr0;)V

    throw v0

    .line 24
    :cond_4
    invoke-virtual {p2}, LfY;->destroy()V

    throw v0
.end method

.method public a(Lorg/chromium/chrome/browser/profiles/Profile;)V
    .locals 4

    .line 25
    iget-object v0, p0, Lep0;->B:LPq0;

    check-cast v0, Lar0;

    .line 26
    iget-object v0, v0, Lar0;->x:Lmr0;

    .line 27
    iget-object v1, v0, Lmr0;->K:Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;

    const/4 v2, 0x1

    .line 28
    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;->a(Z)V

    if-nez p1, :cond_0

    const-wide/16 v2, 0x0

    .line 29
    iput-wide v2, v1, Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;->a:J

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {v1, p1}, Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;->nativeInit(Lorg/chromium/chrome/browser/profiles/Profile;)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;->a:J

    .line 31
    :goto_0
    iget-object v1, v0, Lmr0;->D:LSr0;

    .line 32
    iget-boolean v2, v1, LSr0;->A:Z

    if-eqz v2, :cond_1

    .line 33
    new-instance v2, LIa0;

    invoke-direct {v2, p1}, LIa0;-><init>(Lorg/chromium/chrome/browser/profiles/Profile;)V

    iput-object v2, v1, LSr0;->z:LIa0;

    .line 34
    :cond_1
    iget-object v0, v0, Lmr0;->E:Ljs0;

    if-eqz v0, :cond_3

    .line 35
    iget-object v1, v0, Ljs0;->I:Lorg/chromium/chrome/browser/profiles/Profile;

    if-ne v1, p1, :cond_2

    goto :goto_1

    .line 36
    :cond_2
    iput-object p1, v0, Ljs0;->I:Lorg/chromium/chrome/browser/profiles/Profile;

    const/4 v1, 0x0

    .line 37
    iput-object v1, v0, Ljs0;->J:LIa0;

    .line 38
    :cond_3
    :goto_1
    iget-object v0, p0, Lep0;->P:Ltp0;

    .line 39
    iget-wide v1, v0, Ltp0;->a:J

    .line 40
    invoke-static {v1, v2, v0, p1}, LJ/N;->MXz11HdP(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 151
    sget-object v0, Lep0;->U:LaV;

    invoke-virtual {v0, p1}, LaV;->a(I)V

    return-void
.end method

.method public a(ZLjava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 135
    iget-boolean p1, p0, Lep0;->L:Z

    if-nez p1, :cond_0

    .line 136
    sget-object p1, Lep0;->U:LaV;

    invoke-virtual {p1, p3}, LaV;->a(I)V

    :cond_0
    const/4 p1, 0x2

    if-eq p3, p1, :cond_1

    const/4 p1, 0x3

    if-eq p3, p1, :cond_1

    const/4 p1, 0x7

    if-eq p3, p1, :cond_1

    const/4 p1, 0x6

    if-ne p3, p1, :cond_2

    .line 137
    :cond_1
    iput-boolean v0, p0, Lep0;->M:Z

    .line 138
    :cond_2
    iget-boolean p1, p0, Lep0;->L:Z

    if-eqz p1, :cond_3

    iget-boolean p3, p0, Lep0;->N:Z

    if-eqz p3, :cond_3

    .line 139
    invoke-virtual {p0, p1}, Lep0;->c(Z)V

    goto :goto_0

    .line 140
    :cond_3
    iget-object p1, p0, Lep0;->y:LKp0;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 141
    :cond_4
    invoke-virtual {p0}, Lep0;->b()V

    .line 142
    iget-object p1, p0, Lep0;->y:LKp0;

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    :goto_0
    if-eqz p2, :cond_5

    .line 143
    iget-object p1, p0, Lep0;->A:LMp0;

    invoke-static {p2}, LNp0;->a(Ljava/lang/String;)LNp0;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, v0}, LMp0;->a(LNp0;II)Z

    .line 144
    invoke-virtual {p0}, Lep0;->t()V

    :cond_5
    return-void
.end method

.method public final a(LNp0;II)Z
    .locals 1

    .line 90
    iget-object v0, p0, Lep0;->A:LMp0;

    invoke-virtual {v0, p1, p2, p3}, LMp0;->a(LNp0;II)Z

    move-result p1

    return p1
.end method

.method public b()V
    .locals 2

    .line 17
    iget-object v0, p0, Lep0;->G:Lorg/chromium/ui/base/WindowAndroid;

    .line 18
    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getKeyboardDelegate()Lrc1;

    move-result-object v0

    iget-object v1, p0, Lep0;->y:LKp0;

    invoke-virtual {v0, v1}, Lrc1;->a(Landroid/view/View;)Z

    return-void
.end method

.method public b(LVp0;)V
    .locals 1

    .line 16
    iget-object v0, p0, Lep0;->D:LWT;

    invoke-virtual {v0, p1}, LWT;->b(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 10

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lep0;->K:Z

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lep0;->E:Ljava/util/List;

    new-instance v1, Lbp0;

    invoke-direct {v1, p0, p1}, Lbp0;-><init>(Lep0;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 4
    :cond_1
    invoke-static {p1}, LNp0;->a(Ljava/lang/String;)LNp0;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lep0;->a(LNp0;II)Z

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x9

    .line 5
    invoke-virtual {p0, v0, v2, v3}, Lep0;->a(ZLjava/lang/String;I)V

    .line 6
    iget-object v0, p0, Lep0;->B:LPq0;

    check-cast v0, Lar0;

    .line 7
    iget-object v0, v0, Lar0;->x:Lmr0;

    .line 8
    invoke-virtual {v0, v1}, Lmr0;->a(Z)V

    .line 9
    iget-object v2, v0, Lmr0;->H:LSJ0;

    invoke-interface {v2}, LSJ0;->h()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10
    iget-object v3, v0, Lmr0;->K:Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;

    iget-object v2, v0, Lmr0;->H:LSJ0;

    invoke-interface {v2}, LSJ0;->c()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v4

    iget-object v2, v0, Lmr0;->H:LSJ0;

    invoke-interface {v2}, LSJ0;->e()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v0, Lmr0;->H:LSJ0;

    .line 11
    invoke-interface {v0, v1}, LSJ0;->b(Z)I

    move-result v6

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object v7, p1

    .line 12
    invoke-virtual/range {v3 .. v9}, Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;->a(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 13
    :cond_2
    new-instance p1, Lcp0;

    invoke-direct {p1, p0}, Lcp0;-><init>(Lep0;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 14
    invoke-virtual {p0}, Lep0;->d()V

    .line 15
    :cond_0
    iget-object p1, p0, Lep0;->F:LNq0;

    invoke-virtual {p1}, LNq0;->a()V

    return-void
.end method

.method public c()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    .line 4
    invoke-virtual {p0, p1, v0, v1, v2}, Lep0;->a(Ljava/lang/String;IJ)V

    return-void
.end method

.method public c(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lep0;->N:Z

    .line 2
    :cond_0
    iget-object v0, p0, Lep0;->D:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LVp0;

    .line 3
    invoke-interface {v1, p1}, LVp0;->a(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public d()V
    .locals 4

    .line 31
    iget-object v0, p0, Lep0;->C:LSJ0;

    invoke-interface {v0}, LSJ0;->e()Ljava/lang/String;

    move-result-object v0

    .line 32
    iget-object v1, p0, Lep0;->y:LKp0;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 33
    iget-boolean v1, p0, Lep0;->N:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, LMm0;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    const/16 v3, 0xc

    .line 34
    invoke-virtual {p0, v2, v1, v3}, Lep0;->a(ZLjava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void

    .line 35
    :cond_1
    :goto_0
    iput-object v0, p0, Lep0;->I:Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lep0;->C:LSJ0;

    invoke-interface {v0}, LSJ0;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    .line 37
    :goto_1
    iget-object v1, p0, Lep0;->C:LSJ0;

    invoke-interface {v1}, LSJ0;->m()LNp0;

    move-result-object v1

    invoke-virtual {p0, v1, v0, v2}, Lep0;->a(LNp0;II)Z

    .line 38
    iget-object v0, p0, Lep0;->C:LSJ0;

    invoke-interface {v0}, LSJ0;->h()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 39
    :cond_3
    iget-object v0, p0, Lep0;->C:LSJ0;

    invoke-interface {v0}, LSJ0;->c()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 40
    iget-object v1, p0, Lep0;->P:Ltp0;

    .line 41
    iget-wide v2, v1, Ltp0;->a:J

    .line 42
    invoke-static {v2, v3, v1, v0}, LJ/N;->MZa0jqjv(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 3

    .line 43
    iget-object v0, p0, Lep0;->A:LMp0;

    invoke-static {p1}, LNp0;->a(Ljava/lang/String;)LNp0;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, LMp0;->a(LNp0;II)Z

    return-void
.end method

.method public d(Z)V
    .locals 4

    .line 1
    iput-boolean p1, p0, Lep0;->L:Z

    .line 2
    invoke-virtual {p0}, Lep0;->w()V

    .line 3
    invoke-virtual {p0}, Lep0;->x()V

    const-string v0, "input_method"

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 4
    iget-boolean v2, p0, Lep0;->K:Z

    if-eqz v2, :cond_0

    const-string v2, "FocusLocation"

    invoke-static {v2}, LhV;->a(Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object v2, p0, Lep0;->C:LSJ0;

    invoke-interface {v2}, LSJ0;->m()LNp0;

    move-result-object v2

    .line 6
    iget-object v3, v2, LNp0;->c:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 7
    iget-object v3, p0, Lep0;->A:LMp0;

    invoke-virtual {v3, v2, v1, v1}, LMp0;->a(LNp0;II)Z

    .line 8
    :cond_1
    iget-object v1, p0, Lep0;->y:LKp0;

    invoke-virtual {v1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 9
    iget-object v1, p0, Lep0;->y:LKp0;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    goto :goto_0

    .line 10
    :cond_2
    iput-boolean v1, p0, Lep0;->M:Z

    .line 11
    iput-boolean v1, p0, Lep0;->N:Z

    .line 12
    iget-object v2, p0, Lep0;->C:LSJ0;

    invoke-interface {v2}, LSJ0;->h()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 13
    invoke-virtual {p0}, Lep0;->d()V

    .line 14
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 15
    iget-object v2, p0, Lep0;->y:LKp0;

    invoke-virtual {v0, v2}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    .line 16
    :cond_4
    :goto_0
    iget-object v0, p0, Lep0;->C:LSJ0;

    invoke-interface {v0}, LSJ0;->q()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lep0;->k()V

    .line 17
    :cond_5
    iget-object v0, p0, Lep0;->F:LNq0;

    iget-boolean v1, p0, Lep0;->L:Z

    .line 18
    iget-object v2, v0, LNq0;->x:LFq0;

    .line 19
    iget-boolean v3, v2, LFq0;->c:Z

    if-ne v3, v1, :cond_6

    goto :goto_1

    .line 20
    :cond_6
    iput-boolean v1, v2, LFq0;->c:Z

    .line 21
    invoke-virtual {v2}, LFq0;->c()V

    .line 22
    invoke-virtual {v2}, LFq0;->b()V

    .line 23
    :goto_1
    iput-boolean v1, v0, LNq0;->B:Z

    .line 24
    invoke-virtual {v0}, LNq0;->b()V

    .line 25
    iget-boolean v0, p0, Lep0;->N:Z

    if-nez v0, :cond_7

    invoke-virtual {p0, p1}, Lep0;->c(Z)V

    :cond_7
    if-eqz p1, :cond_9

    .line 26
    iget-object p1, p0, Lep0;->C:LSJ0;

    invoke-interface {p1}, LSJ0;->h()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lep0;->C:LSJ0;

    invoke-interface {p1}, LSJ0;->a()Z

    move-result p1

    if-nez p1, :cond_9

    .line 27
    iget-boolean p1, p0, Lep0;->K:Z

    if-eqz p1, :cond_8

    .line 28
    invoke-static {}, LcD0;->a()Lorg/chromium/components/search_engines/TemplateUrlService;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/components/search_engines/TemplateUrlService;->b()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 29
    invoke-static {}, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationHeader;->b()V

    goto :goto_2

    .line 30
    :cond_8
    iget-object p1, p0, Lep0;->E:Ljava/util/List;

    new-instance v0, Lap0;

    invoke-direct {v0, p0}, Lap0;-><init>(Lep0;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_2
    return-void
.end method

.method public destroy()V
    .locals 5

    .line 1
    iget-object v0, p0, Lep0;->B:LPq0;

    .line 2
    iget-object v1, p0, Lep0;->D:LWT;

    invoke-virtual {v1, v0}, LWT;->b(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lep0;->B:LPq0;

    check-cast v0, Lar0;

    .line 4
    iget-object v1, v0, Lar0;->x:Lmr0;

    .line 5
    iget-object v2, v1, Lmr0;->F:Lzr0;

    .line 6
    iget-object v3, v2, Lzr0;->C:LIe0;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 7
    invoke-virtual {v3}, LIe0;->b()V

    .line 8
    iput-object v4, v2, Lzr0;->C:LIe0;

    .line 9
    :cond_0
    iput-object v4, v1, Lmr0;->F:Lzr0;

    .line 10
    iget-object v2, v1, Lmr0;->e0:LfY;

    if-nez v2, :cond_2

    .line 11
    iget-object v1, v1, Lmr0;->I:Lv30;

    if-nez v1, :cond_1

    .line 12
    iput-object v4, v0, Lar0;->x:Lmr0;

    .line 13
    iput-object v4, p0, Lep0;->B:LPq0;

    return-void

    .line 14
    :cond_1
    throw v4

    .line 15
    :cond_2
    invoke-virtual {v2}, LfY;->destroy()V

    throw v4
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v1, p0, Lep0;->L:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lep0;->N:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isPrintingKey()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-boolean p1, p0, Lep0;->L:Z

    invoke-virtual {p0, p1}, Lep0;->c(Z)V

    :cond_0
    return v0
.end method

.method public dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 0

    .line 14
    invoke-virtual {p0}, Lep0;->w()V

    return-void
.end method

.method public e(Z)V
    .locals 3

    .line 1
    iput-boolean p1, p0, Lep0;->J:Z

    if-nez p1, :cond_1

    .line 2
    invoke-virtual {p0}, Lep0;->w()V

    .line 3
    iget-boolean v0, p0, Lep0;->M:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 4
    iget-boolean p1, p0, Lep0;->L:Z

    if-eqz p1, :cond_0

    .line 5
    invoke-static {}, LuO0;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lep0;->A:LMp0;

    invoke-virtual {p1}, LMp0;->b()Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lep0;->y:LKp0;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 8
    iget-object v0, p0, Lep0;->y:LKp0;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10
    iget-object v0, p0, Lep0;->A:LMp0;

    invoke-static {p1}, LNp0;->a(Ljava/lang/String;)LNp0;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, LMp0;->a(LNp0;II)Z

    .line 11
    invoke-virtual {p0}, Lep0;->t()V

    .line 12
    :cond_0
    iget-object p1, p0, Lep0;->D:LWT;

    invoke-virtual {p1}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LVp0;

    .line 13
    iget-boolean v1, p0, Lep0;->L:Z

    invoke-interface {v0, v1}, LVp0;->b(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public f()V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0xc

    const/4 v2, 0x0

    .line 1
    invoke-virtual {p0, v2, v0, v1}, Lep0;->a(ZLjava/lang/String;I)V

    .line 2
    invoke-virtual {p0}, Lep0;->d()V

    .line 3
    invoke-virtual {p0}, Lep0;->s()V

    return-void
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lep0;->C:LSJ0;

    invoke-interface {v0}, LSJ0;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;
    .locals 1

    .line 1
    iget-object v0, p0, Lep0;->G:Lorg/chromium/ui/base/WindowAndroid;

    return-object v0
.end method

.method public h()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lep0;->u()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->n()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final i()LSJ0;
    .locals 1

    .line 1
    iget-object v0, p0, Lep0;->C:LSJ0;

    return-object v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lep0;->C:LSJ0;

    invoke-interface {v0}, LSJ0;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lep0;->C:LSJ0;

    invoke-interface {v1}, LSJ0;->a()Z

    move-result v1

    invoke-static {v0, v1}, LAO0;->a(Landroid/content/res/Resources;Z)I

    move-result v0

    .line 2
    iget-boolean v1, p0, Lep0;->L:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lep0;->C:LSJ0;

    invoke-interface {v0}, LSJ0;->f()I

    move-result v0

    .line 3
    :goto_0
    invoke-static {v0}, LAO0;->d(I)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    xor-int/lit8 v2, v0, 0x1

    .line 4
    invoke-static {v2}, LAO0;->a(Z)I

    move-result v2

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lsa;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 6
    iget-object v3, p0, Lep0;->x:Landroid/widget/ImageButton;

    .line 7
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 8
    iget-object v3, p0, Lep0;->w:Landroid/widget/ImageButton;

    .line 9
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 10
    iget-object v2, p0, Lep0;->A:LMp0;

    .line 11
    iget-object v2, v2, LMp0;->b:LQp0;

    invoke-virtual {v2, v0}, LQp0;->a(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 12
    iget-object v2, p0, Lep0;->y:LKp0;

    invoke-virtual {v2}, Landroid/widget/EditText;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_1

    .line 13
    invoke-virtual {p0}, Lep0;->d()V

    .line 14
    :cond_1
    iget-object v2, p0, Lep0;->F:LNq0;

    .line 15
    iget-object v3, v2, LNq0;->x:LFq0;

    .line 16
    iget-boolean v4, v3, LFq0;->b:Z

    if-eq v4, v0, :cond_2

    .line 17
    iput-boolean v0, v3, LFq0;->b:Z

    .line 18
    invoke-virtual {v3}, LFq0;->a()V

    .line 19
    :cond_2
    invoke-virtual {v2}, LNq0;->a()V

    .line 20
    iget-object v2, p0, Lep0;->F:LNq0;

    iget-object v3, p0, Lep0;->C:LSJ0;

    .line 21
    invoke-interface {v3}, LSJ0;->a()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lep0;->z:Z

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 22
    :goto_1
    iget-object v2, v2, LNq0;->x:LFq0;

    .line 23
    iget-object v2, v2, LFq0;->a:Lle1;

    sget-object v3, LGq0;->o:Lhe1;

    invoke-virtual {v2, v3, v1}, Lle1;->a(Lhe1;Z)V

    .line 24
    iget-object v1, p0, Lep0;->B:LPq0;

    iget-object v2, p0, Lep0;->C:LSJ0;

    .line 25
    invoke-interface {v2}, LSJ0;->a()Z

    move-result v2

    .line 26
    check-cast v1, Lar0;

    .line 27
    iget-object v1, v1, Lar0;->x:Lmr0;

    .line 28
    iput-boolean v0, v1, Lmr0;->Z:Z

    .line 29
    iget-object v3, v1, Lmr0;->z:Lle1;

    sget-object v5, Ltr0;->d:Lhe1;

    invoke-virtual {v3, v5, v2}, Lle1;->a(Lhe1;Z)V

    .line 30
    :goto_2
    iget-object v2, v1, Lmr0;->A:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_4

    .line 31
    iget-object v2, v1, Lmr0;->A:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llr0;

    iget-object v2, v2, Llr0;->c:Lle1;

    .line 32
    sget-object v3, Lsr0;->a:Lhe1;

    invoke-virtual {v2, v3, v0}, Lle1;->a(Lhe1;Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 33
    :cond_4
    iget-object v0, v1, Lmr0;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v1}, Lmr0;->h()V

    :cond_5
    return-void
.end method

.method public l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lep0;->F:LNq0;

    invoke-virtual {v0}, LNq0;->a()V

    .line 2
    invoke-virtual {p0}, Lep0;->d()V

    return-void
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lep0;->C:LSJ0;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-interface {v0}, LSJ0;->a()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lep0;->B:LPq0;

    check-cast v0, Lar0;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;->nativePrefetchZeroSuggestResults()V

    return-void

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lep0;->L:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lep0;->w:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lep0;->A:LMp0;

    sget-object v0, LNp0;->h:LNp0;

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v2, v1}, LMp0;->a(LNp0;II)Z

    .line 3
    invoke-virtual {p0}, Lep0;->t()V

    .line 4
    invoke-virtual {p0}, Lep0;->w()V

    const-string p1, "MobileOmniboxDeleteUrl"

    .line 5
    invoke-static {p1}, LhV;->a(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lep0;->x:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lep0;->S:Lsp0;

    if-eqz p1, :cond_1

    const-string p1, "MobileOmniboxVoiceSearch"

    .line 7
    invoke-static {p1}, LhV;->a(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lep0;->S:Lsp0;

    invoke-virtual {p1, v1}, Lsp0;->a(I)V

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-boolean v0, p0, Lep0;->L:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lep0;->N:Z

    if-eqz v0, :cond_0

    iget p1, p1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    const/16 v1, 0xc

    .line 3
    invoke-virtual {p0, p1, v0, v1}, Lep0;->a(ZLjava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    const v1, 0x7f0b0249

    .line 3
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/chromium/chrome/browser/omnibox/status/StatusView;

    .line 4
    iget-object v2, p0, Lep0;->T:LkM0;

    .line 5
    iput-object v2, v1, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->N:LkM0;

    .line 6
    iget-object v2, v1, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->B:Landroid/widget/ImageView;

    new-instance v3, LHq0;

    invoke-direct {v3, v1}, LHq0;-><init>(Lorg/chromium/chrome/browser/omnibox/status/StatusView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 7
    new-instance v2, LNq0;

    iget-boolean v3, p0, Lep0;->z:Z

    iget-object v4, p0, Lep0;->A:LMp0;

    invoke-direct {v2, v3, v1, v4}, LNq0;-><init>(ZLorg/chromium/chrome/browser/omnibox/status/StatusView;LOp0;)V

    iput-object v2, p0, Lep0;->F:LNq0;

    .line 8
    iget-object v1, p0, Lep0;->A:LMp0;

    .line 9
    iget-object v1, v1, LMp0;->b:LQp0;

    .line 10
    iget-object v1, v1, LQp0;->D:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {p0}, Lep0;->x()V

    .line 12
    iget-object v1, p0, Lep0;->y:LKp0;

    new-instance v2, Ldp0;

    invoke-direct {v2, p0, v0}, Ldp0;-><init>(Lep0;LYo0;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 13
    iget-object v0, p0, Lep0;->A:LMp0;

    new-instance v1, LZo0;

    invoke-direct {v1, p0}, LZo0;-><init>(Lep0;)V

    .line 14
    iget-object v0, v0, LMp0;->b:LQp0;

    .line 15
    iget-object v0, v0, LQp0;->w:Lle1;

    sget-object v2, LTp0;->i:Lke1;

    invoke-virtual {v0, v2, v1}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    const/16 v4, 0x8

    if-ge v1, v3, :cond_7

    .line 2
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v4, :cond_6

    .line 4
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 5
    invoke-virtual {v5}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v6

    if-eq v6, v2, :cond_0

    .line 6
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 7
    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    :cond_0
    iget-object v6, p0, Lep0;->y:LKp0;

    if-ne v3, v6, :cond_1

    goto :goto_3

    .line 9
    :cond_1
    iget v4, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/high16 v6, -0x80000000

    const/4 v7, -0x1

    const/4 v8, -0x2

    const/high16 v9, 0x40000000    # 2.0f

    if-ne v4, v8, :cond_2

    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto :goto_1

    :cond_2
    if-ne v4, v7, :cond_3

    .line 11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto :goto_1

    .line 12
    :cond_3
    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 13
    :goto_1
    iget v5, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v5, v8, :cond_4

    .line 14
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    goto :goto_2

    :cond_4
    if-ne v5, v7, :cond_5

    .line 15
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    invoke-static {v5, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    goto :goto_2

    .line 16
    :cond_5
    invoke-static {v5, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 17
    :goto_2
    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    .line 18
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v2

    move v2, v3

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 19
    :cond_7
    :goto_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    iget-object v2, p0, Lep0;->R:Landroid/widget/LinearLayout;

    if-nez v2, :cond_8

    goto :goto_5

    :cond_8
    const/4 v2, 0x0

    .line 21
    :goto_4
    iget-object v3, p0, Lep0;->R:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 22
    iget-object v3, p0, Lep0;->R:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 23
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v4, :cond_9

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 24
    :cond_a
    :goto_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 25
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 26
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 27
    invoke-virtual {v2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v4

    add-int/2addr v4, v3

    .line 28
    invoke-virtual {v2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v2

    add-int/2addr v2, v4

    add-int/2addr v0, v2

    goto :goto_6

    .line 29
    :cond_b
    iget-object v1, p0, Lep0;->R:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_c

    .line 30
    iget-object v1, p0, Lep0;->R:Landroid/widget/LinearLayout;

    .line 31
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 32
    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v2

    .line 33
    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 34
    :cond_c
    iget-object v1, p0, Lep0;->y:LKp0;

    invoke-virtual {v1}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 35
    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v2

    if-eq v2, v0, :cond_d

    .line 36
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 37
    iget-object v0, p0, Lep0;->y:LKp0;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    :cond_d
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lep0;->q()V

    :cond_0
    return-void
.end method

.method public p()LPq0;
    .locals 1

    .line 1
    iget-object v0, p0, Lep0;->B:LPq0;

    return-object v0
.end method

.method public q()V
    .locals 1

    .line 1
    iget-object v0, p0, Lep0;->S:Lsp0;

    invoke-virtual {v0}, Lsp0;->a()Z

    move-result v0

    iput-boolean v0, p0, Lep0;->O:Z

    .line 2
    invoke-virtual {p0}, Lep0;->w()V

    return-void
.end method

.method public r()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lep0;->M:Z

    return v0
.end method

.method public final s()V
    .locals 1

    .line 1
    iget-object v0, p0, Lep0;->C:LSJ0;

    invoke-interface {v0}, LSJ0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lep0;->u()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->n()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public final t()V
    .locals 2

    .line 1
    iget-object v0, p0, Lep0;->A:LMp0;

    invoke-virtual {v0}, LMp0;->b()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lep0;->A:LMp0;

    invoke-virtual {v1}, LMp0;->a()Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lep0;->B:LPq0;

    check-cast v1, Lar0;

    .line 4
    iget-object v1, v1, Lar0;->x:Lmr0;

    invoke-virtual {v1, v0}, Lmr0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final u()Lorg/chromium/chrome/browser/tab/Tab;
    .locals 1

    .line 1
    iget-object v0, p0, Lep0;->C:LSJ0;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-interface {v0}, LSJ0;->g()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    return-object v0
.end method

.method public v()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lep0;->A:LMp0;

    invoke-virtual {v0}, LMp0;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lep0;->y:LKp0;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lep0;->J:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public w()V
    .locals 2

    .line 1
    iget-object v0, p0, Lep0;->w:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lep0;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method public x()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lep0;->L:Z

    .line 2
    iget-object v1, p0, Lep0;->F:LNq0;

    .line 3
    iget-object v1, v1, LNq0;->x:LFq0;

    .line 4
    iget-object v1, v1, LFq0;->a:Lle1;

    sget-object v2, LGq0;->a:Lhe1;

    invoke-virtual {v1, v2, v0}, Lle1;->a(Lhe1;Z)V

    return-void
.end method
