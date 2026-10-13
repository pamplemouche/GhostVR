.class public Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelWrapper;
.super Landroid/widget/LinearLayout;
.source "PG"


# instance fields
.field public w:LxI0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Lu00;

    invoke-direct {p1, p0}, Lu00;-><init>(Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelWrapper;)V

    iput-object p1, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelWrapper;->w:LxI0;

    return-void
.end method

.method public static synthetic a(Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelWrapper;)Ln00;
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1
    throw v0

    .line 2
    :cond_0
    throw v0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    throw v0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method
