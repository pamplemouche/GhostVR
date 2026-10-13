.class public Lorg/chromium/chrome/browser/keyboard_accessory/bar_component/KeyboardAccessoryView;
.super Landroid/widget/LinearLayout;
.source "PG"


# instance fields
.field public w:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static final synthetic a()V
    .locals 0

    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const/16 v0, 0x20

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->sendAccessibilityEvent(I)V

    const v0, 0x7f0b005e

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/keyboard_accessory/bar_component/KeyboardAccessoryView;->w:Landroid/support/v7/widget/RecyclerView;

    .line 4
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(IZ)V

    .line 6
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(LQg;)V

    .line 7
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07016d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const-string v3, "AutofillKeyboardAccessory"

    .line 8
    invoke-static {v3}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 9
    new-instance v3, Lhi0;

    invoke-direct {v3, v1}, Lhi0;-><init>(I)V

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->a(LLg;)V

    :cond_0
    const/4 v3, 0x0

    .line 10
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->a(LJg;)V

    .line 11
    invoke-static {v0, v1, v2, v2, v2}, LA7;->a(Landroid/view/View;IIII)V

    .line 12
    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v0

    const v1, 0x7f0b000a

    .line 13
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutDirection(I)V

    .line 14
    iget-object v1, p0, Lorg/chromium/chrome/browser/keyboard_accessory/bar_component/KeyboardAccessoryView;->w:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 15
    new-instance v0, Lfi0;

    invoke-direct {v0, p0}, Lfi0;-><init>(Lorg/chromium/chrome/browser/keyboard_accessory/bar_component/KeyboardAccessoryView;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 16
    sget-object v0, Lgi0;->w:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 18
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setSoundEffectsEnabled(Z)V

    return-void
.end method
