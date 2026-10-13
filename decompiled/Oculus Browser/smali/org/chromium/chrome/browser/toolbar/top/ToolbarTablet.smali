.class public Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;
.super LQK0;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements LMJ0;


# instance fields
.field public I:Lorg/chromium/chrome/browser/toolbar/HomeButton;

.field public J:Landroid/widget/ImageButton;

.field public K:Landroid/widget/ImageButton;

.field public L:Landroid/widget/ImageButton;

.field public M:Landroid/widget/ImageButton;

.field public N:Landroid/widget/ImageButton;

.field public O:Lorg/chromium/chrome/browser/toolbar/top/ToggleTabStackButton;

.field public P:Z

.field public Q:Z

.field public R:[Landroid/widget/ImageButton;

.field public S:Landroid/widget/ImageButton;

.field public T:LCZ;

.field public U:Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;

.field public final V:I

.field public final W:I

.field public a0:Z

.field public b0:Landroid/animation/AnimatorSet;

.field public c0:LMm0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, LQK0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0702e9

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->V:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07031b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->W:I

    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 4

    .line 60
    iget-object p2, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->O:Lorg/chromium/chrome/browser/toolbar/top/ToggleTabStackButton;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 61
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f110007

    .line 62
    invoke-virtual {v0, v2, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(LNJ0;)V
    .locals 1

    .line 1
    iget-object v0, p1, LNJ0;->a:LWT;

    invoke-virtual {v0, p0}, LWT;->a(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->O:Lorg/chromium/chrome/browser/toolbar/top/ToggleTabStackButton;

    .line 3
    iput-object p1, v0, Lorg/chromium/chrome/browser/toolbar/top/ToggleTabStackButton;->A:LNJ0;

    .line 4
    invoke-virtual {p1, v0}, LNJ0;->a(LMJ0;)V

    return-void
.end method

.method public a(Landroid/content/res/ColorStateList;Z)V
    .locals 1

    .line 5
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->I:Lorg/chromium/chrome/browser/toolbar/HomeButton;

    .line 6
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 7
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->J:Landroid/widget/ImageButton;

    .line 8
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 9
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->K:Landroid/widget/ImageButton;

    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 11
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->N:Landroid/widget/ImageButton;

    .line 12
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 13
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->L:Landroid/widget/ImageButton;

    .line 14
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 15
    iget-object p1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->O:Lorg/chromium/chrome/browser/toolbar/top/ToggleTabStackButton;

    if-eqz p2, :cond_0

    .line 16
    iget-object p2, p1, Lorg/chromium/chrome/browser/toolbar/top/ToggleTabStackButton;->z:LOJ0;

    goto :goto_0

    :cond_0
    iget-object p2, p1, Lorg/chromium/chrome/browser/toolbar/top/ToggleTabStackButton;->y:LOJ0;

    .line 17
    :goto_0
    invoke-virtual {p1, p2}, LBe;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->S:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public a(Landroid/view/View$OnClickListener;Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->S:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    const v0, 0x7f0b01a7

    .line 64
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 65
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->S:Landroid/widget/ImageButton;

    .line 66
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->S:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object p1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->S:Landroid/widget/ImageButton;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    iget-object p1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->S:Landroid/widget/ImageButton;

    .line 69
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 70
    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 71
    iget-object p1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->S:Landroid/widget/ImageButton;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method public final a(ZLandroid/view/View;)V
    .locals 7

    .line 18
    iget-object v0, p0, LQK0;->B:LSJ0;

    .line 19
    invoke-interface {v0}, LSJ0;->g()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 20
    iget-object v1, v0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 21
    :cond_0
    new-instance v1, LCZ;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->j()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 22
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 23
    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->g()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object v0

    const/4 v4, 0x1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 24
    :goto_0
    invoke-direct {v1, v2, v3, v0, p1}, LCZ;-><init>(Lorg/chromium/chrome/browser/profiles/Profile;Landroid/content/Context;Lorg/chromium/content_public/browser/NavigationController;I)V

    iput-object v1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->T:LCZ;

    .line 25
    iget-boolean p1, v1, LCZ;->H:Z

    if-nez p1, :cond_4

    .line 26
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 27
    iput-boolean v4, v1, LCZ;->H:Z

    .line 28
    new-instance p1, LDa0;

    invoke-direct {p1}, LDa0;-><init>()V

    iput-object p1, v1, LCZ;->G:LDa0;

    .line 29
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    const/4 v0, 0x0

    .line 30
    :goto_1
    iget-object v2, v1, LCZ;->A:LS01;

    invoke-virtual {v2}, LS01;->a()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 31
    iget-object v2, v1, LCZ;->A:LS01;

    invoke-virtual {v2, v0}, LS01;->a(I)Lorg/chromium/content_public/browser/NavigationEntry;

    move-result-object v2

    .line 32
    iget-object v3, v2, Lorg/chromium/content_public/browser/NavigationEntry;->e:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    goto :goto_2

    .line 33
    :cond_2
    iget-object v2, v2, Lorg/chromium/content_public/browser/NavigationEntry;->b:Ljava/lang/String;

    .line 34
    invoke-virtual {p1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 35
    new-instance v3, LyZ;

    invoke-direct {v3, v1, v2}, LyZ;-><init>(LCZ;Ljava/lang/String;)V

    .line 36
    iget-object v4, v1, LCZ;->G:LDa0;

    iget-object v5, v1, LCZ;->w:Lorg/chromium/chrome/browser/profiles/Profile;

    iget v6, v1, LCZ;->D:I

    invoke-virtual {v4, v5, v2, v6, v3}, LDa0;->a(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;ILorg/chromium/chrome/browser/favicon/FaviconHelper$FaviconImageCallback;)Z

    .line 37
    invoke-virtual {p1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 38
    :cond_4
    iget-object p1, v1, LCZ;->y:Landroid/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "Popup"

    invoke-virtual {v1, p1}, LCZ;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LhV;->a(Ljava/lang/String;)V

    .line 39
    :cond_5
    iget-object p1, v1, LCZ;->y:Landroid/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, v1, LCZ;->E:Landroid/view/View$OnLayoutChangeListener;

    if-eqz p1, :cond_6

    .line 40
    iget-object p1, v1, LCZ;->y:Landroid/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, v1, LCZ;->E:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 41
    :cond_6
    iget-object p1, v1, LCZ;->y:Landroid/widget/ListPopupWindow;

    invoke-virtual {p1, p2}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 42
    iget p1, v1, LCZ;->C:I

    if-nez p1, :cond_7

    .line 43
    iget-object p1, v1, LCZ;->E:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p2, p1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 44
    invoke-virtual {v1}, LCZ;->a()V

    goto :goto_3

    .line 45
    :cond_7
    iget-object p1, v1, LCZ;->y:Landroid/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->show()V

    :cond_8
    :goto_3
    return-void
.end method

.method public a(ZZ)V
    .locals 2

    if-eqz p1, :cond_1

    .line 46
    iget-object p1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->M:Landroid/widget/ImageButton;

    const v0, 0x7f0800a8

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 47
    iget-object p1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->M:Landroid/widget/ImageButton;

    .line 48
    invoke-virtual {p0}, LQK0;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LQK0;->j()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06002a

    .line 50
    invoke-static {v0, v1}, Lsa;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 51
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 52
    iget-object p1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->M:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1302f2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 53
    :cond_1
    iget-object p1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->M:Landroid/widget/ImageButton;

    const v0, 0x7f0800a7

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 54
    iget-object p1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->M:Landroid/widget/ImageButton;

    invoke-virtual {p0}, LQK0;->j()Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 55
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 56
    iget-object p1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->M:Landroid/widget/ImageButton;

    .line 57
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1300e6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 59
    :goto_1
    iget-object p1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->M:Landroid/widget/ImageButton;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    invoke-super {p0}, LQK0;->b()V

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->I:Lorg/chromium/chrome/browser/toolbar/HomeButton;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/HomeButton;->b()V

    return-void
.end method

.method public b(IZ)V
    .locals 2

    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p0}, LQK0;->k()Z

    move-result v0

    const/4 v1, 0x0

    .line 9
    invoke-static {p2, v1, p1, v0}, LAO0;->a(Landroid/content/res/Resources;ZIZ)I

    move-result p1

    .line 10
    iget-object p2, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->U:Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 11
    iget-object p1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->U:Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;

    invoke-virtual {p1}, Lep0;->k()V

    return-void
.end method

.method public b(Z)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Lay0;->a:Lcy0;

    const-string v2, "accessibility_tab_switcher"

    .line 4
    invoke-virtual {p1, v2, v1}, Lcy0;->a(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    :goto_0
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->P:Z

    .line 6
    iget-object p1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->O:Lorg/chromium/chrome/browser/toolbar/top/ToggleTabStackButton;

    if-nez v1, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    :cond_2
    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->S:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->S:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->I:Lorg/chromium/chrome/browser/toolbar/HomeButton;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method public e()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->S:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public f()LWo0;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->U:Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;

    return-object v0
.end method

.method public h(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->J:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->J:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    return-void
.end method

.method public i(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->K:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->K:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    return-void
.end method

.method public j(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->L:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 3
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 4
    iget-object p1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->L:Landroid/widget/ImageButton;

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1300d4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->L:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 9
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 10
    iget-object p1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->L:Landroid/widget/ImageButton;

    .line 11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1300d3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 13
    :goto_0
    iget-object p1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->L:Landroid/widget/ImageButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void
.end method

.method public final k(Z)V
    .locals 3

    if-nez p1, :cond_1

    .line 1
    iget-object p1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->I:Lorg/chromium/chrome/browser/toolbar/HomeButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    .line 2
    iget p1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->V:I

    goto :goto_2

    :cond_2
    iget p1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->W:I

    .line 3
    :goto_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    invoke-static {p0}, LA7;->l(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v2

    .line 4
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LQK0;->E:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public n()V
    .locals 1

    .line 1
    invoke-super {p0}, LQK0;->n()V

    .line 2
    iget-object v0, p0, LQK0;->B:LSJ0;

    .line 3
    invoke-interface {v0}, LSJ0;->d()LMm0;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->c0:LMm0;

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->I:Lorg/chromium/chrome/browser/toolbar/HomeButton;

    if-ne v0, p1, :cond_0

    .line 2
    invoke-virtual {p0}, LQK0;->o()V

    goto/16 :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->J:Landroid/widget/ImageButton;

    const/16 v1, 0xc

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, p1, :cond_6

    .line 4
    invoke-virtual {p0}, LQK0;->f()LWo0;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0}, LQK0;->f()LWo0;

    move-result-object p1

    invoke-interface {p1, v2, v3, v1}, LGm0;->a(ZLjava/lang/String;I)V

    .line 6
    :cond_1
    iget-object p1, p0, LQK0;->C:LsK0;

    if-eqz p1, :cond_4

    check-cast p1, LkK0;

    .line 7
    iget-object v0, p1, LkK0;->F:Lorg/chromium/chrome/browser/toolbar/LocationBarModel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->g()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v0, :cond_2

    .line 10
    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->g()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/NavigationController;->b()V

    .line 11
    :cond_2
    invoke-virtual {p1}, LkK0;->d()V

    const/16 p1, 0x8

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_3
    if-eqz v3, :cond_4

    const/4 v2, 0x1

    :cond_4
    if-nez v2, :cond_5

    return-void

    :cond_5
    const-string p1, "MobileToolbarBack"

    .line 13
    invoke-static {p1}, LhV;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 14
    :cond_6
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->K:Landroid/widget/ImageButton;

    if-ne v0, p1, :cond_9

    .line 15
    invoke-virtual {p0}, LQK0;->f()LWo0;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 16
    invoke-virtual {p0}, LQK0;->f()LWo0;

    move-result-object p1

    invoke-interface {p1, v2, v3, v1}, LGm0;->a(ZLjava/lang/String;I)V

    .line 17
    :cond_7
    iget-object p1, p0, LQK0;->C:LsK0;

    if-eqz p1, :cond_8

    check-cast p1, LkK0;

    .line 18
    iget-object v0, p1, LkK0;->F:Lorg/chromium/chrome/browser/toolbar/LocationBarModel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->g()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 19
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->b()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 20
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->o()V

    .line 21
    invoke-virtual {p1}, LkK0;->d()V

    :cond_8
    const-string p1, "MobileToolbarForward"

    .line 22
    invoke-static {p1}, LhV;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 23
    :cond_9
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->L:Landroid/widget/ImageButton;

    if-ne v0, p1, :cond_d

    .line 24
    invoke-virtual {p0}, LQK0;->f()LWo0;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 25
    invoke-virtual {p0}, LQK0;->f()LWo0;

    move-result-object p1

    invoke-interface {p1, v2, v3, v1}, LGm0;->a(ZLjava/lang/String;I)V

    .line 26
    :cond_a
    iget-object p1, p0, LQK0;->C:LsK0;

    if-eqz p1, :cond_f

    check-cast p1, LkK0;

    .line 27
    iget-object v0, p1, LkK0;->F:Lorg/chromium/chrome/browser/toolbar/LocationBarModel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->g()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 28
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->s()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 29
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->C()V

    const-string v0, "MobileToolbarStop"

    .line 30
    invoke-static {v0}, LhV;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 31
    :cond_b
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->A()V

    const-string v0, "MobileToolbarReload"

    .line 32
    invoke-static {v0}, LhV;->a(Ljava/lang/String;)V

    .line 33
    :cond_c
    :goto_0
    invoke-virtual {p1}, LkK0;->d()V

    goto :goto_1

    .line 34
    :cond_d
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->M:Landroid/widget/ImageButton;

    if-ne v0, p1, :cond_e

    goto :goto_1

    .line 35
    :cond_e
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->N:Landroid/widget/ImageButton;

    if-ne v0, p1, :cond_f

    .line 36
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 37
    iget-object v0, p0, LQK0;->B:LSJ0;

    .line 38
    invoke-interface {v0}, LSJ0;->g()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/chromium/chrome/browser/download/DownloadUtils;->a(Landroid/content/Context;Lorg/chromium/chrome/browser/tab/Tab;)V

    const-string p1, "MobileToolbarDownloadPage"

    .line 39
    invoke-static {p1}, LhV;->a(Ljava/lang/String;)V

    :cond_f
    :goto_1
    return-void
.end method

.method public onFinishInflate()V
    .locals 6

    .line 1
    invoke-super {p0}, LQK0;->onFinishInflate()V

    const v0, 0x7f0b0245

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->U:Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;

    const v0, 0x7f0b01f9

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/toolbar/HomeButton;

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->I:Lorg/chromium/chrome/browser/toolbar/HomeButton;

    const v0, 0x7f0b005b

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->J:Landroid/widget/ImageButton;

    const v0, 0x7f0b01e0

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->K:Landroid/widget/ImageButton;

    const v0, 0x7f0b037c

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->L:Landroid/widget/ImageButton;

    .line 7
    new-instance v0, Landroid/graphics/drawable/LevelListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/LevelListDrawable;-><init>()V

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0025

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0800b1

    const v5, 0x7f060169

    .line 11
    invoke-static {v3, v4, v5}, Lwc1;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 12
    invoke-virtual {v0, v1, v1, v3}, Landroid/graphics/drawable/LevelListDrawable;->addLevel(IILandroid/graphics/drawable/Drawable;)V

    .line 13
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f08009d

    .line 14
    invoke-static {v1, v3, v5}, Lwc1;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 15
    invoke-virtual {v0, v2, v2, v1}, Landroid/graphics/drawable/LevelListDrawable;->addLevel(IILandroid/graphics/drawable/Drawable;)V

    .line 16
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->L:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 17
    invoke-static {}, LuO0;->a()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 18
    sget-object v0, Lay0;->a:Lcy0;

    const-string v3, "accessibility_tab_switcher"

    .line 19
    invoke-virtual {v0, v3, v1}, Lcy0;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->P:Z

    const v0, 0x7f0b0463

    .line 21
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/toolbar/top/ToggleTabStackButton;

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->O:Lorg/chromium/chrome/browser/toolbar/top/ToggleTabStackButton;

    .line 22
    iget-boolean v3, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->P:Z

    const/16 v4, 0x8

    if-nez v3, :cond_2

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x0

    .line 23
    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    const v0, 0x7f0b0067

    .line 24
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->M:Landroid/widget/ImageButton;

    .line 25
    iget-object v0, p0, LQK0;->z:Lorg/chromium/chrome/browser/toolbar/MenuButton;

    .line 26
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 27
    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->O:Lorg/chromium/chrome/browser/toolbar/top/ToggleTabStackButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v3

    if-ne v3, v4, :cond_3

    .line 28
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-ne v3, v4, :cond_3

    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 30
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0702e8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 31
    invoke-static {v0, v2, v2, v3, v2}, LA7;->a(Landroid/view/View;IIII)V

    :cond_3
    const v0, 0x7f0b0392

    .line 32
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->N:Landroid/widget/ImageButton;

    .line 33
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->a0:Z

    .line 34
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->Q:Z

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/widget/ImageButton;

    .line 35
    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->J:Landroid/widget/ImageButton;

    aput-object v3, v0, v2

    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->K:Landroid/widget/ImageButton;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->L:Landroid/widget/ImageButton;

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->R:[Landroid/widget/ImageButton;

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->a0:Z

    .line 2
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->L:Landroid/widget/ImageButton;

    if-ne p1, v2, :cond_1

    .line 4
    invoke-virtual {v2}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v2

    const v3, 0x7f0c0024

    .line 5
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-ne v2, v3, :cond_0

    const v2, 0x7f1303d5

    .line 6
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const v2, 0x7f1303da

    .line 7
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 8
    :cond_1
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->M:Landroid/widget/ImageButton;

    if-ne p1, v2, :cond_2

    const v2, 0x7f1303b6

    .line 9
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 10
    :cond_2
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->N:Landroid/widget/ImageButton;

    if-ne p1, v2, :cond_3

    const v2, 0x7f1303ba

    .line 11
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 12
    :goto_0
    invoke-static {v0, p1, v1}, Lmf1;->a(Landroid/content/Context;Landroid/view/View;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public onMeasure(II)V
    .locals 11

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lcd1;->a(Landroid/content/Context;)Lcd1;

    move-result-object v1

    const/16 v2, 0x258

    int-to-float v2, v2

    .line 4
    iget v1, v1, Lcd1;->d:F

    mul-float v2, v2, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v2, v1

    float-to-int v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->Q:Z

    if-ne v1, v0, :cond_1

    goto/16 :goto_a

    .line 6
    :cond_1
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->Q:Z

    .line 7
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->a0:Z

    if-eqz v1, :cond_10

    .line 8
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->b0:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_2
    const-wide/16 v4, 0xe1

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_9

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iget-object v6, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->R:[Landroid/widget/ImageButton;

    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_3

    aget-object v9, v6, v8

    .line 11
    iget-object v10, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->U:Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;

    invoke-virtual {v10, v9}, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->b(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 12
    :cond_3
    iget-object v6, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->U:Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;

    .line 13
    iget-object v7, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->I:Lorg/chromium/chrome/browser/toolbar/HomeButton;

    invoke-virtual {v7}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v7

    if-nez v7, :cond_4

    const/4 v7, 0x0

    goto :goto_2

    .line 14
    :cond_4
    iget v7, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->V:I

    iget v8, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->W:I

    sub-int/2addr v7, v8

    .line 15
    :goto_2
    iput v7, v6, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->o0:I

    .line 16
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 17
    iget-object v8, v6, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->W:Landroid/util/Property;

    new-array v2, v2, [F

    const/4 v9, 0x0

    aput v9, v2, v3

    .line 18
    invoke-static {v6, v8, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 19
    invoke-virtual {v2, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 20
    sget-object v3, Lvd1;->g:Lvd1;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 21
    new-instance v3, Llp0;

    invoke-direct {v3, v6}, Llp0;-><init>(Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 22
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v2, v6, Lep0;->w:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_5

    .line 24
    iget-object v2, v6, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->c0:Landroid/view/View;

    invoke-virtual {v6, v2}, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->b(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_5
    invoke-virtual {v6}, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->z()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 26
    iget-object v1, v6, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->d0:Landroid/view/View;

    invoke-virtual {v6, v1}, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->b(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 27
    :cond_6
    iget-object v2, v6, Lep0;->x:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, v6, Lep0;->x:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getAlpha()F

    move-result v2

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_8

    .line 28
    :cond_7
    iget-object v1, v6, Lep0;->x:Landroid/widget/ImageButton;

    invoke-virtual {v6, v1}, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->b(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_8
    :goto_3
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 30
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 31
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 32
    new-instance v0, LbL0;

    invoke-direct {v0, p0}, LbL0;-><init>(Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_7

    .line 33
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    iget-object v6, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->R:[Landroid/widget/ImageButton;

    array-length v7, v6

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v7, :cond_a

    aget-object v9, v6, v8

    .line 35
    iget-object v10, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->U:Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;

    invoke-virtual {v10, v9}, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->a(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 36
    :cond_a
    iget-object v6, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->U:Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;

    .line 37
    iget-object v7, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->I:Lorg/chromium/chrome/browser/toolbar/HomeButton;

    invoke-virtual {v7}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v7

    if-nez v7, :cond_b

    const/4 v7, 0x0

    goto :goto_5

    .line 38
    :cond_b
    iget v7, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->V:I

    iget v8, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->W:I

    sub-int/2addr v7, v8

    .line 39
    :goto_5
    iput v7, v6, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->o0:I

    .line 40
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 41
    iget-object v8, v6, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->W:Landroid/util/Property;

    new-array v2, v2, [F

    aput v1, v2, v3

    .line 42
    invoke-static {v6, v8, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x4b

    .line 43
    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 44
    invoke-virtual {v1, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 45
    sget-object v2, Lvd1;->g:Lvd1;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 46
    new-instance v2, Lmp0;

    invoke-direct {v2, v6}, Lmp0;-><init>(Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 47
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v1, v6, Lep0;->w:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_c

    .line 49
    iget-object v1, v6, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->c0:Landroid/view/View;

    invoke-virtual {v6, v1}, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->a(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_c
    invoke-virtual {v6}, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->z()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v6, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->d0:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_d

    .line 51
    iget-object v1, v6, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->d0:Landroid/view/View;

    invoke-virtual {v6, v1}, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->a(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 52
    :cond_d
    iget-object v1, v6, Lep0;->y:LKp0;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, v6, Lep0;->w:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_f

    .line 53
    :cond_e
    iget-object v1, v6, Lep0;->x:Landroid/widget/ImageButton;

    invoke-virtual {v6, v1}, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->a(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_f
    :goto_6
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 55
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 56
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 57
    new-instance v0, LcL0;

    invoke-direct {v0, p0}, LcL0;-><init>(Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 58
    :goto_7
    iput-object v1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->b0:Landroid/animation/AnimatorSet;

    .line 59
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_a

    .line 60
    :cond_10
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->R:[Landroid/widget/ImageButton;

    array-length v2, v1

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v2, :cond_12

    aget-object v5, v1, v4

    if-eqz v0, :cond_11

    const/4 v6, 0x0

    goto :goto_9

    :cond_11
    const/16 v6, 0x8

    .line 61
    :goto_9
    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 62
    :cond_12
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->U:Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;

    .line 63
    iput-boolean v0, v1, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->h0:Z

    .line 64
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->w()V

    .line 65
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->k(Z)V

    .line 66
    :goto_a
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->T:LCZ;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, LCZ;->y:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->T:LCZ;

    .line 4
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public p()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->U:Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->w()V

    return-void
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->J:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->a(ZLandroid/view/View;)V

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->K:Landroid/widget/ImageButton;

    if-ne v0, p1, :cond_1

    .line 4
    invoke-virtual {p0, v1, v0}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;->a(ZLandroid/view/View;)V

    return v1

    .line 5
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->showContextMenuForChild(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
