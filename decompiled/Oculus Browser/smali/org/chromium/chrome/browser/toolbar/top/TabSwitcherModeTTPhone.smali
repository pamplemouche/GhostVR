.class public Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;
.super Lorg/chromium/ui/widget/OptimizedFrameLayout;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements LIJ0;


# instance fields
.field public A:Landroid/view/View;

.field public B:Lorg/chromium/chrome/browser/toolbar/NewTabButton;

.field public C:Lorg/chromium/chrome/browser/toolbar/MenuButton;

.field public D:Lorg/chromium/chrome/browser/toolbar/top/ToggleTabStackButton;

.field public E:I

.field public F:Z

.field public G:Landroid/content/res/ColorStateList;

.field public H:Landroid/content/res/ColorStateList;

.field public I:Z

.field public x:LNJ0;

.field public y:LJJ0;

.field public z:Lorg/chromium/chrome/browser/toolbar/IncognitoToggleTabLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/chromium/ui/widget/OptimizedFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;->I:Z

    .line 2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;->c()V

    .line 3
    invoke-static {}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, LPY;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "TabGridLayoutAndroid"

    const-string v0, "tab_grid_layout_android_new_tab"

    .line 4
    invoke-static {p1, v0}, LJ/N;->Mo3a_9tz(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "NewTabVariation"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    invoke-static {}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->b()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;->z:Lorg/chromium/chrome/browser/toolbar/IncognitoToggleTabLayout;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final b(Z)V
    .locals 4

    .line 1
    invoke-static {}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->i()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;->z:Lorg/chromium/chrome/browser/toolbar/IncognitoToggleTabLayout;

    if-nez v0, :cond_1

    if-eqz p1, :cond_3

    const v0, 0x7f0b0214

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 4
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/toolbar/IncognitoToggleTabLayout;

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;->z:Lorg/chromium/chrome/browser/toolbar/IncognitoToggleTabLayout;

    .line 5
    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;->x:LNJ0;

    if-eqz v3, :cond_3

    .line 6
    iput-object v3, v0, Lorg/chromium/chrome/browser/toolbar/IncognitoToggleTabLayout;->x0:LNJ0;

    .line 7
    invoke-virtual {v3, v0}, LNJ0;->a(LMJ0;)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    const/16 v3, 0x8

    .line 8
    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    :cond_3
    :goto_1
    xor-int/lit8 p1, p1, 0x1

    .line 9
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;->D:Lorg/chromium/chrome/browser/toolbar/top/ToggleTabStackButton;

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    const/16 v1, 0x8

    .line 10
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    invoke-static {}, LZ60;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-boolean v2, p0, Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;->I:Z

    invoke-static {v0, v2}, LAO0;->b(Landroid/content/res/Resources;Z)I

    move-result v0

    .line 4
    :goto_1
    iget v2, p0, Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;->E:I

    if-eq v2, v0, :cond_2

    .line 5
    iput v0, p0, Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;->E:I

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    :cond_2
    if-nez v0, :cond_4

    .line 7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;->I:Z

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    .line 8
    :cond_3
    invoke-static {v0, v1}, LAO0;->b(Landroid/content/res/Resources;Z)I

    move-result v0

    .line 9
    invoke-static {v0}, LAO0;->d(I)Z

    move-result v0

    goto :goto_2

    .line 10
    :cond_4
    invoke-static {v0}, LAO0;->d(I)Z

    move-result v0

    .line 11
    :goto_2
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;->F:Z

    if-ne v1, v0, :cond_5

    return-void

    .line 12
    :cond_5
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;->F:Z

    .line 13
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;->G:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_6

    .line 14
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06018b

    invoke-static {v1, v2}, Lsa;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;->G:Landroid/content/res/ColorStateList;

    .line 15
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060169

    invoke-static {v1, v2}, Lsa;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;->H:Landroid/content/res/ColorStateList;

    :cond_6
    if-eqz v0, :cond_7

    .line 16
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;->G:Landroid/content/res/ColorStateList;

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;->H:Landroid/content/res/ColorStateList;

    .line 17
    :goto_3
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;->C:Lorg/chromium/chrome/browser/toolbar/MenuButton;

    if-eqz v2, :cond_8

    .line 18
    iget-object v2, v2, Lorg/chromium/chrome/browser/toolbar/MenuButton;->w:Landroid/widget/ImageButton;

    .line 19
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 20
    :cond_8
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;->D:Lorg/chromium/chrome/browser/toolbar/top/ToggleTabStackButton;

    if-eqz v1, :cond_9

    .line 21
    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/toolbar/top/ToggleTabStackButton;->b(Z)V

    :cond_9
    return-void
.end method

.method public final d()Z
    .locals 1

    .line 1
    invoke-static {}, LZ60;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HorizontalTabSwitcherAndroid"

    .line 2
    invoke-static {v0}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;->B:Lorg/chromium/chrome/browser/toolbar/NewTabButton;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;->A:Landroid/view/View;

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public onFinishInflate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0b02c8

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/toolbar/NewTabButton;

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;->B:Lorg/chromium/chrome/browser/toolbar/NewTabButton;

    const v0, 0x7f0b02d3

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;->A:Landroid/view/View;

    const v0, 0x7f0b0262

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/toolbar/MenuButton;

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;->C:Lorg/chromium/chrome/browser/toolbar/MenuButton;

    const v0, 0x7f0b0466

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/toolbar/top/ToggleTabStackButton;

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;->D:Lorg/chromium/chrome/browser/toolbar/top/ToggleTabStackButton;

    .line 6
    invoke-static {}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;->B:Lorg/chromium/chrome/browser/toolbar/NewTabButton;

    invoke-static {v0}, Lwc1;->a(Landroid/view/View;)V

    .line 8
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;->B:Lorg/chromium/chrome/browser/toolbar/NewTabButton;

    .line 9
    iget-object v2, v0, Lorg/chromium/chrome/browser/toolbar/NewTabButton;->B:LJJ0;

    if-eqz v2, :cond_0

    .line 10
    iget-object v2, v2, LJJ0;->a:LWT;

    invoke-virtual {v2, v0}, LWT;->b(Ljava/lang/Object;)Z

    .line 11
    iput-object v1, v0, Lorg/chromium/chrome/browser/toolbar/NewTabButton;->B:LJJ0;

    .line 12
    :cond_0
    iput-object v1, p0, Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;->B:Lorg/chromium/chrome/browser/toolbar/NewTabButton;

    .line 13
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;->C:Lorg/chromium/chrome/browser/toolbar/MenuButton;

    invoke-static {v0}, Lwc1;->a(Landroid/view/View;)V

    .line 14
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;->C:Lorg/chromium/chrome/browser/toolbar/MenuButton;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/MenuButton;->a()V

    .line 15
    iput-object v1, p0, Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;->C:Lorg/chromium/chrome/browser/toolbar/MenuButton;

    .line 16
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;->D:Lorg/chromium/chrome/browser/toolbar/top/ToggleTabStackButton;

    invoke-static {v0}, Lwc1;->a(Landroid/view/View;)V

    .line 17
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;->D:Lorg/chromium/chrome/browser/toolbar/top/ToggleTabStackButton;

    .line 18
    iget-object v2, v0, Lorg/chromium/chrome/browser/toolbar/top/ToggleTabStackButton;->A:LNJ0;

    if-eqz v2, :cond_1

    .line 19
    iget-object v2, v2, LNJ0;->a:LWT;

    invoke-virtual {v2, v0}, LWT;->b(Ljava/lang/Object;)Z

    .line 20
    :cond_1
    iput-object v1, p0, Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;->D:Lorg/chromium/chrome/browser/toolbar/top/ToggleTabStackButton;

    .line 21
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;->A:Landroid/view/View;

    invoke-static {v0}, Lwc1;->a(Landroid/view/View;)V

    .line 22
    iput-object v1, p0, Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;->A:Landroid/view/View;

    goto :goto_0

    .line 23
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;->B:Lorg/chromium/chrome/browser/toolbar/NewTabButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;->A:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;->d()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 26
    :cond_3
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 27
    invoke-static {v0}, LJ/N;->MXdDobzR(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    .line 28
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;->b(Z)V

    :cond_4
    return-void

    .line 29
    :cond_5
    throw v1
.end method
