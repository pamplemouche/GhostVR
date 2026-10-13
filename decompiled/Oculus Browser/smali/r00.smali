.class public Lr00;
.super LSG0;
.source "PG"


# instance fields
.field public final synthetic w:Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr00;->w:Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;

    invoke-direct {p0}, LSG0;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosingStateChanged(Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, Lr00;->w:Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;

    .line 2
    iget-boolean v0, p2, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->W:Z

    if-nez v0, :cond_0

    .line 3
    iget-object p2, p2, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->S:Ls00;

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    check-cast p2, Lm00;

    .line 5
    iget-object p1, p2, Lm00;->a:Ln00;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onFaviconUpdated(Lorg/chromium/chrome/browser/tab/Tab;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lr00;->w:Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;

    invoke-static {p2}, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->b(Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;)V

    .line 2
    iget-object p2, p0, Lr00;->w:Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;

    invoke-static {p2, p1}, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->a(Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;Lorg/chromium/chrome/browser/tab/Tab;)V

    return-void
.end method

.method public onTitleUpdated(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lr00;->w:Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;

    invoke-static {v0}, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->c(Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;)V

    .line 2
    iget-object v0, p0, Lr00;->w:Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;

    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->a(Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;Lorg/chromium/chrome/browser/tab/Tab;)V

    return-void
.end method

.method public onUrlUpdated(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lr00;->w:Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;

    invoke-static {v0}, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->c(Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;)V

    .line 2
    iget-object v0, p0, Lr00;->w:Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;

    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->a(Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;Lorg/chromium/chrome/browser/tab/Tab;)V

    return-void
.end method
