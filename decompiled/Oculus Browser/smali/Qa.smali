.class public abstract LQa;
.super LNa;
.source "PG"


# instance fields
.field public I:LPa;

.field public J:Z


# direct methods
.method public constructor <init>(LPa;)V
    .locals 0

    .line 1
    invoke-direct {p0}, LNa;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, LQa;->a(LMa;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(LMa;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, LNa;->a(LMa;)V

    .line 2
    instance-of v0, p1, LPa;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, LPa;

    iput-object p1, p0, LQa;->I:LPa;

    :cond_0
    return-void
.end method

.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 6

    .line 1
    iget-object v0, p0, LNa;->w:LMa;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {v0}, LMa;->c()V

    .line 3
    iget v1, v0, LMa;->h:I

    .line 4
    iget-object v2, v0, LMa;->g:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 5
    aget-object v4, v2, v3

    if-eqz v4, :cond_0

    aget-object v4, v2, v3

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    aget-object v4, v2, v3

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 7
    iget v4, v0, LMa;->e:I

    aget-object v5, v2, v3

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v5

    or-int/2addr v4, v5

    iput v4, v0, LMa;->e:I

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {v0, p1}, LMa;->a(Landroid/content/res/Resources;)V

    .line 9
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, LQa;->onStateChange([I)Z

    return-void

    :cond_3
    const/4 p1, 0x0

    .line 10
    throw p1
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-boolean v0, p0, LQa;->J:Z

    if-nez v0, :cond_0

    invoke-super {p0}, LNa;->mutate()Landroid/graphics/drawable/Drawable;

    if-ne p0, p0, :cond_0

    .line 2
    iget-object v0, p0, LQa;->I:LPa;

    invoke-virtual {v0}, LMa;->d()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, LQa;->J:Z

    :cond_0
    return-object p0
.end method

.method public abstract onStateChange([I)Z
.end method
