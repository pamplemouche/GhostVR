.class public LMZ0;
.super Landroid/view/ActionMode$Callback2;
.source "PG"


# instance fields
.field public final synthetic a:LNZ0;


# direct methods
.method public synthetic constructor <init>(LNZ0;LLZ0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LMZ0;->a:LNZ0;

    invoke-direct {p0}, Landroid/view/ActionMode$Callback2;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 3

    .line 1
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0b03c2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p2, p0, LMZ0;->a:LNZ0;

    .line 3
    iget-object p2, p2, LNZ0;->x:LYZ0;

    .line 4
    check-cast p2, Lf01;

    .line 5
    iget-object v0, p2, Lf01;->a:Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    .line 6
    iget-object v0, v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->z:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->r()V

    .line 7
    iget-object p2, p2, Lf01;->a:Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    .line 8
    invoke-virtual {p2}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->q()V

    .line 9
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    :cond_0
    const v1, 0x7f0b03c3

    if-ne v0, v1, :cond_1

    .line 10
    iget-object p2, p0, LMZ0;->a:LNZ0;

    .line 11
    iget-object p2, p2, LNZ0;->x:LYZ0;

    .line 12
    check-cast p2, Lf01;

    .line 13
    iget-object v0, p2, Lf01;->a:Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    .line 14
    iget-object v0, v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->z:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    .line 15
    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->b()V

    .line 16
    iget-wide v1, v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    .line 17
    invoke-static {v1, v2, v0}, LJ/N;->MdSkKRWg(JLjava/lang/Object;)V

    .line 18
    iget-object p2, p2, Lf01;->a:Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    .line 19
    invoke-virtual {p2}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->q()V

    .line 20
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    :cond_1
    const v1, 0x7f0b03c4

    if-ne v0, v1, :cond_2

    .line 21
    iget-object p2, p0, LMZ0;->a:LNZ0;

    .line 22
    iget-object p2, p2, LNZ0;->x:LYZ0;

    .line 23
    check-cast p2, Lf01;

    .line 24
    iget-object p2, p2, Lf01;->a:Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    invoke-virtual {p2}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->x()V

    .line 25
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    .line 26
    :cond_2
    iget-object v0, p0, LMZ0;->a:LNZ0;

    .line 27
    iget-object v0, v0, LNZ0;->B:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_3

    .line 28
    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3

    .line 1
    iget-object v0, p0, LMZ0;->a:LNZ0;

    .line 2
    iget-object v0, v0, LNZ0;->y:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Lorg/chromium/ui/base/DeviceFormFactor;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, LMZ0;->a:LNZ0;

    .line 5
    iget-object v0, v0, LNZ0;->y:Landroid/content/Context;

    const v2, 0x7f130133

    .line 6
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 7
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, LMZ0;->a:LNZ0;

    .line 10
    iget-object v0, v0, LNZ0;->y:Landroid/content/Context;

    .line 11
    invoke-static {v0, p1, p2}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->a(Landroid/content/Context;Landroid/view/ActionMode;Landroid/view/Menu;)V

    .line 12
    iget-object v0, p0, LMZ0;->a:LNZ0;

    .line 13
    iget-object v0, v0, LNZ0;->x:LYZ0;

    .line 14
    check-cast v0, Lf01;

    .line 15
    iget-object v0, v0, Lf01;->a:Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    invoke-static {v0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->b(Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0b03c2

    .line 16
    invoke-interface {p2, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 17
    :cond_1
    iget-object v0, p0, LMZ0;->a:LNZ0;

    .line 18
    iget-object v0, v0, LNZ0;->x:LYZ0;

    .line 19
    check-cast v0, Lf01;

    .line 20
    iget-object v0, v0, Lf01;->a:Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    .line 21
    iget-boolean v0, v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->L:Z

    if-nez v0, :cond_2

    const v0, 0x7f0b03c4

    .line 22
    invoke-interface {p2, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 23
    :cond_2
    iget-object v0, p0, LMZ0;->a:LNZ0;

    .line 24
    iget-object v0, v0, LNZ0;->x:LYZ0;

    .line 25
    check-cast v0, Lf01;

    .line 26
    iget-object v0, v0, Lf01;->a:Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    invoke-virtual {v0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->n()Z

    move-result v0

    const v1, 0x7f0b03c3

    if-nez v0, :cond_3

    .line 27
    invoke-interface {p2, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 28
    :cond_3
    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const v1, 0x1040019

    .line 29
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :goto_1
    const v0, 0x7f0b03c0

    .line 30
    invoke-interface {p2, v0}, Landroid/view/Menu;->removeItem(I)V

    const v0, 0x7f0b03bf

    .line 31
    invoke-interface {p2, v0}, Landroid/view/Menu;->removeItem(I)V

    const v0, 0x7f0b03c5

    .line 32
    invoke-interface {p2, v0}, Landroid/view/Menu;->removeItem(I)V

    const v0, 0x7f0b03c7

    .line 33
    invoke-interface {p2, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 34
    iget-object v0, p0, LMZ0;->a:LNZ0;

    .line 35
    iget-object v0, v0, LNZ0;->B:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_5

    .line 36
    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1

    .line 1
    iget-object v0, p0, LMZ0;->a:LNZ0;

    .line 2
    iget-object v0, v0, LNZ0;->B:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 4
    :cond_0
    iget-object p1, p0, LMZ0;->a:LNZ0;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p1, LNZ0;->z:Landroid/view/ActionMode;

    return-void
.end method

.method public onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iget-object p1, p0, LMZ0;->a:LNZ0;

    .line 2
    iget-object p1, p1, LNZ0;->A:Landroid/graphics/Rect;

    .line 3
    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .line 1
    iget-object v0, p0, LMZ0;->a:LNZ0;

    .line 2
    iget-object v0, v0, LNZ0;->B:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
