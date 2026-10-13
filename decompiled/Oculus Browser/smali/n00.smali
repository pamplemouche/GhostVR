.class public Ln00;
.super Landroid/widget/BaseAdapter;
.source "PG"


# instance fields
.field public final A:Ls00;

.field public final w:Landroid/content/Context;

.field public x:LdI0;

.field public y:Lorg/chromium/chrome/browser/tabmodel/TabModel;

.field public final z:Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListView;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Ln00;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    new-instance v0, Lm00;

    invoke-direct {v0, p0}, Lm00;-><init>(Ln00;)V

    iput-object v0, p0, Ln00;->A:Ls00;

    .line 3
    iput-object p1, p0, Ln00;->w:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Ln00;->z:Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListView;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const-wide/16 v0, -0x1

    long-to-int p1, v0

    .line 1
    instance-of p3, p2, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 2
    check-cast p2, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Ln00;->w:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0e001f

    const/4 v1, 0x0

    invoke-virtual {p2, p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;

    .line 4
    :goto_0
    invoke-static {v0, p1}, LFI0;->a(LdI0;I)Lorg/chromium/chrome/browser/tab/Tab;

    .line 5
    throw v0
.end method
