.class public Lyc;
.super LBg;
.source "PG"

# interfaces
.implements Lkc;


# instance fields
.field public A:Ljava/util/List;

.field public B:Ljava/util/List;

.field public C:Lxc;

.field public D:Landroid/os/Handler;

.field public E:Lcc;

.field public F:Ljava/lang/Runnable;

.field public y:Lvc;

.field public z:Ljava/util/List;


# direct methods
.method public constructor <init>(Lvc;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 2
    invoke-direct {p0}, LBg;-><init>()V

    .line 3
    new-instance v1, Lxc;

    invoke-direct {v1}, Lxc;-><init>()V

    iput-object v1, p0, Lyc;->C:Lxc;

    .line 4
    new-instance v1, Lwc;

    invoke-direct {v1, p0}, Lwc;-><init>(Lyc;)V

    iput-object v1, p0, Lyc;->F:Ljava/lang/Runnable;

    .line 5
    iput-object p1, p0, Lyc;->y:Lvc;

    .line 6
    iput-object v0, p0, Lyc;->D:Landroid/os/Handler;

    .line 7
    new-instance v0, Lcc;

    invoke-direct {v0, p1, p0}, Lcc;-><init>(Lvc;Lyc;)V

    iput-object v0, p0, Lyc;->E:Lcc;

    .line 8
    iget-object p1, p0, Lyc;->y:Lvc;

    .line 9
    iput-object p0, p1, Landroid/support/v7/preference/Preference;->d0:Lkc;

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lyc;->z:Ljava/util/List;

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lyc;->A:Ljava/util/List;

    .line 12
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lyc;->B:Ljava/util/List;

    .line 13
    iget-object p1, p0, Lyc;->y:Lvc;

    instance-of v0, p1, Landroid/support/v7/preference/PreferenceScreen;

    const-string v1, "Cannot change whether this adapter has stable IDs while the adapter has registered observers."

    if-eqz v0, :cond_1

    .line 14
    check-cast p1, Landroid/support/v7/preference/PreferenceScreen;

    .line 15
    iget-boolean p1, p1, Landroid/support/v7/preference/PreferenceScreen;->r0:Z

    .line 16
    iget-object v0, p0, LBg;->w:LCg;

    invoke-virtual {v0}, LCg;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 17
    iput-boolean p1, p0, LBg;->x:Z

    goto :goto_0

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x1

    .line 19
    iget-object v0, p0, LBg;->w:LCg;

    invoke-virtual {v0}, LCg;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 20
    iput-boolean p1, p0, LBg;->x:Z

    .line 21
    :goto_0
    invoke-virtual {p0}, Lyc;->b()V

    return-void

    .line 22
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 22
    iget-object v0, p0, Lyc;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(I)J
    .locals 2

    .line 37
    iget-boolean v0, p0, LBg;->x:Z

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 38
    :cond_0
    invoke-virtual {p0, p1}, Lyc;->c(I)Landroid/support/v7/preference/Preference;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->j()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Landroid/view/ViewGroup;I)Ldh;
    .locals 5

    .line 23
    iget-object v0, p0, Lyc;->B:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lxc;

    .line 24
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 25
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, LeS;->v:[I

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 26
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_0

    .line 27
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1080062

    invoke-static {v3, v4}, LR3;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 28
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 29
    iget v1, p2, Lxc;->a:I

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    .line 31
    invoke-static {p1, v3}, LA7;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const v1, 0x1020018

    .line 32
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 33
    iget p2, p2, Lxc;->b:I

    if-eqz p2, :cond_2

    .line 34
    invoke-virtual {v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    :cond_2
    const/16 p2, 0x8

    .line 35
    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 36
    :cond_3
    :goto_0
    new-instance p2, LGc;

    invoke-direct {p2, p1}, LGc;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final a(Landroid/support/v7/preference/Preference;Lxc;)Lxc;
    .locals 1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    new-instance p2, Lxc;

    invoke-direct {p2}, Lxc;-><init>()V

    .line 17
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lxc;->c:Ljava/lang/String;

    .line 18
    iget v0, p1, Landroid/support/v7/preference/Preference;->b0:I

    .line 19
    iput v0, p2, Lxc;->a:I

    .line 20
    iget p1, p1, Landroid/support/v7/preference/Preference;->c0:I

    .line 21
    iput p1, p2, Lxc;->b:I

    return-object p2
.end method

.method public a(Ldh;I)V
    .locals 0

    .line 1
    check-cast p1, LGc;

    .line 2
    invoke-virtual {p0, p2}, Lyc;->c(I)Landroid/support/v7/preference/Preference;

    move-result-object p2

    .line 3
    invoke-virtual {p2, p1}, Landroid/support/v7/preference/Preference;->a(LGc;)V

    return-void
.end method

.method public final a(Ljava/util/List;Lvc;)V
    .locals 5

    .line 4
    invoke-virtual {p2}, Lvc;->z()V

    .line 5
    invoke-virtual {p2}, Lvc;->w()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 6
    invoke-virtual {p2, v1}, Lvc;->e(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 7
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    .line 8
    invoke-virtual {p0, v2, v3}, Lyc;->a(Landroid/support/v7/preference/Preference;Lxc;)Lxc;

    move-result-object v3

    .line 9
    iget-object v4, p0, Lyc;->B:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 10
    iget-object v4, p0, Lyc;->B:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_0
    instance-of v3, v2, Lvc;

    if-eqz v3, :cond_1

    .line 12
    move-object v3, v2

    check-cast v3, Lvc;

    .line 13
    invoke-virtual {v3}, Lvc;->x()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 14
    invoke-virtual {p0, p1, v3}, Lyc;->a(Ljava/util/List;Lvc;)V

    .line 15
    :cond_1
    iput-object p0, v2, Landroid/support/v7/preference/Preference;->d0:Lkc;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public b(I)I
    .locals 3

    .line 14
    invoke-virtual {p0, p1}, Lyc;->c(I)Landroid/support/v7/preference/Preference;

    move-result-object p1

    .line 15
    iget-object v0, p0, Lyc;->C:Lxc;

    invoke-virtual {p0, p1, v0}, Lyc;->a(Landroid/support/v7/preference/Preference;Lxc;)Lxc;

    move-result-object p1

    iput-object p1, p0, Lyc;->C:Lxc;

    .line 16
    iget-object v0, p0, Lyc;->B:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    return p1

    .line 17
    :cond_0
    iget-object p1, p0, Lyc;->B:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 18
    iget-object v0, p0, Lyc;->B:Ljava/util/List;

    new-instance v1, Lxc;

    iget-object v2, p0, Lyc;->C:Lxc;

    invoke-direct {v1, v2}, Lxc;-><init>(Lxc;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return p1
.end method

.method public b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lyc;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/Preference;

    .line 2
    iput-object v2, v1, Landroid/support/v7/preference/Preference;->d0:Lkc;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lyc;->A:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    iget-object v1, p0, Lyc;->y:Lvc;

    invoke-virtual {p0, v0, v1}, Lyc;->a(Ljava/util/List;Lvc;)V

    .line 5
    iget-object v1, p0, Lyc;->E:Lcc;

    iget-object v3, p0, Lyc;->y:Lvc;

    .line 6
    invoke-virtual {v1, v3}, Lcc;->a(Lvc;)Ljava/util/List;

    move-result-object v1

    .line 7
    iput-object v1, p0, Lyc;->z:Ljava/util/List;

    .line 8
    iput-object v0, p0, Lyc;->A:Ljava/util/List;

    .line 9
    iget-object v1, p0, Lyc;->y:Lvc;

    .line 10
    iget-object v1, v1, Landroid/support/v7/preference/Preference;->x:LDc;

    .line 11
    iget-object v1, p0, LBg;->w:LCg;

    invoke-virtual {v1}, LCg;->b()V

    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/Preference;

    if-eqz v1, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    throw v2

    :cond_2
    return-void
.end method

.method public c(I)Landroid/support/v7/preference/Preference;
    .locals 1

    if-ltz p1, :cond_1

    .line 1
    invoke-virtual {p0}, Lyc;->a()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lyc;->z:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/preference/Preference;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
