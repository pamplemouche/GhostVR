.class public Lorg/chromium/chrome/browser/toolbar/HomeButton;
.super Lorg/chromium/ui/widget/ChromeImageButton;
.source "PG"

# interfaces
.implements Le00;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/view/MenuItem$OnMenuItemClickListener;
.implements Lot0;


# instance fields
.field public y:Lf00;

.field public z:LfY;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/chrome/browser/toolbar/HomeButton;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/chromium/ui/widget/ChromeImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x7f0800b0

    .line 2
    invoke-static {p1, p2}, LR3;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, LBe;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3
    invoke-static {}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->b()Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p0, p0}, Landroid/widget/ImageButton;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 5
    :cond_0
    invoke-static {}, Lpt0;->f()Lpt0;

    move-result-object p1

    .line 6
    iget-object p1, p1, Lpt0;->b:LWT;

    invoke-virtual {p1, p0}, LWT;->a(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 2
    invoke-static {}, Lpt0;->g()Z

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void
.end method

.method public a(Landroid/content/res/ColorStateList;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/HomeButton;->y:Lf00;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lf00;->B:LWT;

    invoke-virtual {v0, p0}, LWT;->b(Ljava/lang/Object;)Z

    .line 3
    iput-object v1, p0, Lorg/chromium/chrome/browser/toolbar/HomeButton;->y:Lf00;

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/HomeButton;->z:LfY;

    if-nez v0, :cond_1

    .line 5
    invoke-static {}, Lpt0;->f()Lpt0;

    move-result-object v0

    .line 6
    iget-object v0, v0, Lpt0;->b:LWT;

    invoke-virtual {v0, p0}, LWT;->b(Ljava/lang/Object;)Z

    return-void

    .line 7
    :cond_1
    invoke-virtual {v0}, LfY;->destroy()V

    throw v1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    const p2, 0x7f130527

    const/4 p3, 0x0

    .line 1
    invoke-interface {p1, p3, p3, p3, p2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    invoke-static {}, Lpt0;->f()Lpt0;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lpt0;->a(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
