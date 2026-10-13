.class public abstract Lm9;
.super Landroid/app/Dialog;
.source "PG"

# interfaces
.implements LR8;


# instance fields
.field public w:LS8;

.field public final x:Ln7;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x7f0400c7

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 3
    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 5
    new-instance p1, Ll9;

    invoke-direct {p1, p0}, Ll9;-><init>(Lm9;)V

    iput-object p1, p0, Lm9;->x:Ln7;

    .line 6
    invoke-virtual {p0}, Lm9;->a()LS8;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, LS8;->a(Landroid/os/Bundle;)V

    .line 7
    invoke-virtual {p0}, Lm9;->a()LS8;

    move-result-object p1

    invoke-virtual {p1}, LS8;->a()Z

    return-void
.end method


# virtual methods
.method public a(LMc;)LNc;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public a()LS8;
    .locals 3

    .line 1
    iget-object v0, p0, Lm9;->w:LS8;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lk9;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lk9;-><init>(Landroid/content/Context;Landroid/view/Window;LR8;)V

    .line 3
    iput-object v0, p0, Lm9;->w:LS8;

    .line 4
    :cond_0
    iget-object v0, p0, Lm9;->w:LS8;

    return-object v0
.end method

.method public a(LNc;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 5
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lm9;->a()LS8;

    move-result-object v0

    check-cast v0, Lk9;

    .line 2
    invoke-virtual {v0}, Lk9;->g()V

    .line 3
    iget-object v1, v0, Lk9;->P:Landroid/view/ViewGroup;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 4
    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    iget-object p1, v0, Lk9;->z:Landroid/view/Window$Callback;

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public b(LNc;)V
    .locals 0

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lm9;->x:Ln7;

    invoke-static {v1, v0, p0, p1}, Lo7;->a(Ln7;Landroid/view/View;Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lm9;->a()LS8;

    move-result-object v0

    check-cast v0, Lk9;

    .line 2
    invoke-virtual {v0}, Lk9;->g()V

    .line 3
    iget-object v0, v0, Lk9;->y:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lm9;->a()LS8;

    move-result-object v0

    invoke-virtual {v0}, LS8;->c()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lm9;->a()LS8;

    move-result-object v0

    invoke-virtual {v0}, LS8;->b()V

    .line 2
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {p0}, Lm9;->a()LS8;

    move-result-object v0

    invoke-virtual {v0, p1}, LS8;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 2
    invoke-virtual {p0}, Lm9;->a()LS8;

    move-result-object v0

    invoke-virtual {v0}, LS8;->d()V

    return-void
.end method

.method public setContentView(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lm9;->a()LS8;

    move-result-object v0

    invoke-virtual {v0, p1}, LS8;->b(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lm9;->a()LS8;

    move-result-object v0

    invoke-virtual {v0, p1}, LS8;->a(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Lm9;->a()LS8;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, LS8;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 2

    .line 3
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(I)V

    .line 4
    invoke-virtual {p0}, Lm9;->a()LS8;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, LS8;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p0}, Lm9;->a()LS8;

    move-result-object v0

    invoke-virtual {v0, p1}, LS8;->a(Ljava/lang/CharSequence;)V

    return-void
.end method
