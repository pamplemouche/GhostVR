.class public Lb0;
.super Lh7;
.source "PG"


# instance fields
.field public final synthetic c:Landroid/support/design/widget/CheckableImageButton;


# direct methods
.method public constructor <init>(Landroid/support/design/widget/CheckableImageButton;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb0;->c:Landroid/support/design/widget/CheckableImageButton;

    invoke-direct {p0}, Lh7;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;LZ7;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lh7;->a(Landroid/view/View;LZ7;)V

    .line 2
    iget-object p1, p2, LZ7;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 3
    iget-object p1, p0, Lb0;->c:Landroid/support/design/widget/CheckableImageButton;

    .line 4
    iget-boolean p1, p1, Landroid/support/design/widget/CheckableImageButton;->y:Z

    .line 5
    iget-object p2, p2, LZ7;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 6
    sget-object v0, Lh7;->b:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 7
    iget-object p1, p0, Lb0;->c:Landroid/support/design/widget/CheckableImageButton;

    .line 8
    iget-boolean p1, p1, Landroid/support/design/widget/CheckableImageButton;->y:Z

    .line 9
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    return-void
.end method
