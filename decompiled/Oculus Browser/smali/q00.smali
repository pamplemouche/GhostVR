.class public Lq00;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field public w:Z

.field public final synthetic x:Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq00;->x:Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lq00;->w:Z

    .line 2
    iget-object p1, p0, Lq00;->x:Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p1, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->W:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 1
    iget-boolean p1, p0, Lq00;->w:Z

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lq00;->x:Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->a(Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;Z)V

    .line 3
    iget-object p1, p0, Lq00;->x:Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 4
    iget-object p1, p0, Lq00;->x:Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;

    .line 5
    iget-object p1, p1, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->J:Landroid/widget/LinearLayout;

    .line 6
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 7
    iget-object p1, p0, Lq00;->x:Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;

    .line 8
    iget-object p1, p1, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->O:Landroid/widget/LinearLayout;

    .line 9
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 10
    iget-object p1, p0, Lq00;->x:Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;

    .line 11
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->a()V

    .line 12
    iget-object p1, p0, Lq00;->x:Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;

    .line 13
    iget-object v1, p1, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->S:Ls00;

    .line 14
    iget-object p1, p1, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->Q:Lorg/chromium/chrome/browser/tab/Tab;

    .line 15
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result p1

    check-cast v1, Lm00;

    .line 16
    iget-object v2, v1, Lm00;->a:Ln00;

    .line 17
    iget-object v2, v2, Ln00;->y:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    .line 18
    invoke-interface {v2, p1}, LdI0;->c(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 19
    iget-object v0, v1, Lm00;->a:Ln00;

    .line 20
    iget-object v0, v0, Ln00;->y:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    .line 21
    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->d(I)V

    goto :goto_0

    .line 22
    :cond_1
    iget-object v2, v1, Lm00;->a:Ln00;

    .line 23
    iget-object v2, v2, Ln00;->y:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    .line 24
    invoke-static {v2, p1}, LFI0;->a(LdI0;I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    .line 25
    invoke-interface {v2, p1, v3, v0, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->a(Lorg/chromium/chrome/browser/tab/Tab;ZZZ)Z

    .line 26
    :goto_0
    iget-object p1, v1, Lm00;->a:Ln00;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lq00;->w:Z

    return-void
.end method
