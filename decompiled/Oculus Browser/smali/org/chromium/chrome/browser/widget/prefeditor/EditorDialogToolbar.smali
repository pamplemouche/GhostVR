.class public Lorg/chromium/chrome/browser/widget/prefeditor/EditorDialogToolbar;
.super Landroid/support/v7/widget/Toolbar;
.source "PG"


# instance fields
.field public m0:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/widget/prefeditor/EditorDialogToolbar;->m0:Z

    const p1, 0x7f0f0008

    .line 3
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/Toolbar;->b(I)V

    .line 4
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->g()Landroid/view/Menu;

    move-result-object p1

    const p2, 0x7f0b0150

    .line 5
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    iget-boolean p2, p0, Lorg/chromium/chrome/browser/widget/prefeditor/EditorDialogToolbar;->m0:Z

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method
