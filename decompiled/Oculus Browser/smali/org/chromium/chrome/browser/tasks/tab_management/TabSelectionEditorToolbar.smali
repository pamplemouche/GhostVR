.class public Lorg/chromium/chrome/browser/tasks/tab_management/TabSelectionEditorToolbar;
.super LpR0;
.source "PG"


# static fields
.field public static final V0:Ljava/util/List;


# instance fields
.field public T0:Landroid/widget/Button;

.field public U0:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/tasks/tab_management/TabSelectionEditorToolbar;->V0:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, LpR0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    .line 2
    iput p1, p0, Lorg/chromium/chrome/browser/tasks/tab_management/TabSelectionEditorToolbar;->U0:I

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, LpR0;->a(Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/tasks/tab_management/TabSelectionEditorToolbar;->T0:Landroid/widget/Button;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v1, p0, Lorg/chromium/chrome/browser/tasks/tab_management/TabSelectionEditorToolbar;->U0:I

    if-lt p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public a(Ljava/util/List;Z)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, LpR0;->a(Ljava/util/List;Z)V

    return-void
.end method

.method public e(I)V
    .locals 0

    return-void
.end method

.method public n()V
    .locals 2

    .line 1
    sget-object v0, Lorg/chromium/chrome/browser/tasks/tab_management/TabSelectionEditorToolbar;->V0:Ljava/util/List;

    const/4 v1, 0x1

    .line 2
    invoke-super {p0, v0, v1}, LpR0;->a(Ljava/util/List;Z)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 3

    .line 1
    invoke-super {p0}, LpR0;->onFinishInflate()V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0800fb

    .line 3
    invoke-static {v0, v1}, LDM0;->a(Landroid/content/Context;I)LDM0;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06007e

    .line 5
    invoke-static {v1, v2}, Lsa;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, LDM0;->a(Landroid/content/res/ColorStateList;)V

    .line 7
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->b(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f130207

    .line 8
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->c(I)V

    const v0, 0x7f0b0020

    .line 9
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/chromium/chrome/browser/tasks/tab_management/TabSelectionEditorToolbar;->T0:Landroid/widget/Button;

    .line 10
    iget-object v0, p0, LpR0;->x0:Lorg/chromium/chrome/browser/widget/NumberRollView;

    const v1, 0x7f1305f9

    .line 11
    iput v1, v0, Lorg/chromium/chrome/browser/widget/NumberRollView;->B:I

    return-void
.end method
