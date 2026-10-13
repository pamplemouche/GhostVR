.class public Lp00;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field public w:Z

.field public final synthetic x:Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp00;->x:Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lp00;->w:Z

    .line 2
    iget-object p1, p0, Lp00;->x:Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p1, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->W:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 1
    iget-boolean p1, p0, Lp00;->w:Z

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lp00;->x:Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;

    .line 3
    iget-object v0, p1, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->S:Ls00;

    .line 4
    iget-object p1, p1, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->Q:Lorg/chromium/chrome/browser/tab/Tab;

    .line 5
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result p1

    check-cast v0, Lm00;

    .line 6
    iget-object v1, v0, Lm00;->a:Ln00;

    .line 7
    iget-object v1, v1, Ln00;->y:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    .line 8
    invoke-static {v1, p1}, LFI0;->a(LdI0;I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 9
    invoke-interface {v1, p1, v2, v3, v2}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->a(Lorg/chromium/chrome/browser/tab/Tab;ZZZ)Z

    .line 10
    iget-object p1, v0, Lm00;->a:Ln00;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 11
    iget-object p1, p0, Lp00;->x:Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 12
    iget-object p1, p0, Lp00;->x:Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 13
    iget-object p1, p0, Lp00;->x:Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 14
    iget-object p1, p0, Lp00;->x:Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 15
    iget-object p1, p0, Lp00;->x:Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;

    .line 16
    invoke-virtual {p1, v2}, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->b(Z)V

    .line 17
    iget-object p1, p0, Lp00;->x:Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;

    .line 18
    invoke-virtual {p1, v3}, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->a(Z)V

    .line 19
    iget-object p1, p0, Lp00;->x:Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;

    .line 20
    iget-object v0, p1, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->b0:Landroid/os/Handler;

    .line 21
    iget-object v1, p1, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->a0:Ljava/lang/Runnable;

    .line 22
    iget p1, p1, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->y:I

    int-to-long v2, p1

    .line 23
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lp00;->w:Z

    return-void
.end method
