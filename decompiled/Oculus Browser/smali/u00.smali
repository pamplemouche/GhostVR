.class public Lu00;
.super LUH0;
.source "PG"


# instance fields
.field public final synthetic a:Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelWrapper;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu00;->a:Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelWrapper;

    invoke-direct {p0}, LUH0;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    .line 1
    iget-object v0, p0, Lu00;->a:Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelWrapper;

    invoke-static {v0}, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelWrapper;->a(Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelWrapper;)Ln00;

    const/4 v0, 0x0

    throw v0
.end method

.method public onNewTabCreated(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lu00;->a:Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelWrapper;

    invoke-static {p1}, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelWrapper;->a(Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelWrapper;)Ln00;

    const/4 p1, 0x0

    throw p1
.end method
