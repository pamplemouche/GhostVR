.class public LSc;
.super Landroid/view/ActionMode;
.source "PG"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:LNc;


# direct methods
.method public constructor <init>(Landroid/content/Context;LNc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    .line 2
    iput-object p1, p0, LSc;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, LSc;->b:LNc;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 1
    iget-object v0, p0, LSc;->b:LNc;

    invoke-virtual {v0}, LNc;->a()V

    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, LSc;->b:LNc;

    invoke-virtual {v0}, LNc;->b()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 3

    .line 1
    iget-object v0, p0, LSc;->a:Landroid/content/Context;

    iget-object v1, p0, LSc;->b:LNc;

    invoke-virtual {v1}, LNc;->c()Landroid/view/Menu;

    move-result-object v1

    check-cast v1, LH4;

    .line 2
    new-instance v2, LId;

    invoke-direct {v2, v0, v1}, LId;-><init>(Landroid/content/Context;LH4;)V

    return-object v2
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .line 1
    iget-object v0, p0, LSc;->b:LNc;

    invoke-virtual {v0}, LNc;->d()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, LSc;->b:LNc;

    invoke-virtual {v0}, LNc;->e()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, LSc;->b:LNc;

    .line 2
    iget-object v0, v0, LNc;->w:Ljava/lang/Object;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, LSc;->b:LNc;

    invoke-virtual {v0}, LNc;->f()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitleOptionalHint()Z
    .locals 1

    .line 1
    iget-object v0, p0, LSc;->b:LNc;

    .line 2
    iget-boolean v0, v0, LNc;->x:Z

    return v0
.end method

.method public invalidate()V
    .locals 1

    .line 1
    iget-object v0, p0, LSc;->b:LNc;

    invoke-virtual {v0}, LNc;->g()V

    return-void
.end method

.method public isTitleOptional()Z
    .locals 1

    .line 1
    iget-object v0, p0, LSc;->b:LNc;

    invoke-virtual {v0}, LNc;->h()Z

    move-result v0

    return v0
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, LSc;->b:LNc;

    invoke-virtual {v0, p1}, LNc;->a(Landroid/view/View;)V

    return-void
.end method

.method public setSubtitle(I)V
    .locals 1

    .line 2
    iget-object v0, p0, LSc;->b:LNc;

    invoke-virtual {v0, p1}, LNc;->a(I)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, LSc;->b:LNc;

    invoke-virtual {v0, p1}, LNc;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, LSc;->b:LNc;

    .line 2
    iput-object p1, v0, LNc;->w:Ljava/lang/Object;

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 2
    iget-object v0, p0, LSc;->b:LNc;

    invoke-virtual {v0, p1}, LNc;->b(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, LSc;->b:LNc;

    invoke-virtual {v0, p1}, LNc;->b(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleOptionalHint(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, LSc;->b:LNc;

    invoke-virtual {v0, p1}, LNc;->a(Z)V

    return-void
.end method
