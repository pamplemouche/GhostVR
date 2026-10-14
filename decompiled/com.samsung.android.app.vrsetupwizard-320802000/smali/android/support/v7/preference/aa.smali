.class public Landroid/support/v7/preference/aa;
.super Landroid/support/v7/widget/ej;

# interfaces
.implements Landroid/support/v7/preference/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/ej<",
        "Landroid/support/v7/preference/am;",
        ">;",
        "Landroid/support/v7/preference/n;"
    }
.end annotation


# instance fields
.field a:Z

.field b:Landroid/support/v7/preference/Preference;

.field c:Landroid/support/v7/preference/Preference;

.field d:Landroid/support/v7/preference/Preference;

.field private e:Landroid/support/v7/preference/PreferenceGroup;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/preference/ad;",
            ">;"
        }
    .end annotation
.end field

.field private i:I

.field private j:Landroid/support/v7/preference/ad;

.field private k:Landroid/os/Handler;

.field private l:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/support/v7/preference/PreferenceGroup;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/ej;-><init>()V

    sget v0, Landroid/support/v7/preference/ar;->sesl_preference_category:I

    iput v0, p0, Landroid/support/v7/preference/aa;->i:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/preference/aa;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/preference/aa;->b:Landroid/support/v7/preference/Preference;

    iput-object v0, p0, Landroid/support/v7/preference/aa;->c:Landroid/support/v7/preference/Preference;

    iput-object v0, p0, Landroid/support/v7/preference/aa;->d:Landroid/support/v7/preference/Preference;

    new-instance v0, Landroid/support/v7/preference/ad;

    invoke-direct {v0}, Landroid/support/v7/preference/ad;-><init>()V

    iput-object v0, p0, Landroid/support/v7/preference/aa;->j:Landroid/support/v7/preference/ad;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/support/v7/preference/aa;->k:Landroid/os/Handler;

    new-instance v0, Landroid/support/v7/preference/ab;

    invoke-direct {v0, p0}, Landroid/support/v7/preference/ab;-><init>(Landroid/support/v7/preference/aa;)V

    iput-object v0, p0, Landroid/support/v7/preference/aa;->l:Ljava/lang/Runnable;

    iput-object p1, p0, Landroid/support/v7/preference/aa;->e:Landroid/support/v7/preference/PreferenceGroup;

    iget-object p1, p0, Landroid/support/v7/preference/aa;->e:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {p1, p0}, Landroid/support/v7/preference/PreferenceGroup;->a(Landroid/support/v7/preference/n;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/v7/preference/aa;->f:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/v7/preference/aa;->g:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/v7/preference/aa;->h:Ljava/util/List;

    iget-object p1, p0, Landroid/support/v7/preference/aa;->e:Landroid/support/v7/preference/PreferenceGroup;

    instance-of v0, p1, Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceScreen;->d()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/aa;->a(Z)V

    invoke-direct {p0}, Landroid/support/v7/preference/aa;->b()V

    return-void
.end method

.method private a(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/ad;)Landroid/support/v7/preference/ad;
    .locals 1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Landroid/support/v7/preference/ad;

    invoke-direct {p2}, Landroid/support/v7/preference/ad;-><init>()V

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/support/v7/preference/ad;->a(Landroid/support/v7/preference/ad;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->u()I

    move-result v0

    invoke-static {p2, v0}, Landroid/support/v7/preference/ad;->a(Landroid/support/v7/preference/ad;I)I

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->v()I

    move-result p1

    invoke-static {p2, p1}, Landroid/support/v7/preference/ad;->b(Landroid/support/v7/preference/ad;I)I

    return-object p2
.end method

.method static synthetic a(Landroid/support/v7/preference/aa;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/preference/aa;->b()V

    return-void
.end method

.method private a(Ljava/util/List;Landroid/support/v7/preference/PreferenceGroup;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v7/preference/Preference;",
            ">;",
            "Landroid/support/v7/preference/PreferenceGroup;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/support/v7/preference/PreferenceGroup;->c()V

    invoke-virtual {p2}, Landroid/support/v7/preference/PreferenceGroup;->a()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_6

    invoke-virtual {p2, v1}, Landroid/support/v7/preference/PreferenceGroup;->j(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    const/4 v4, 0x0

    if-ne v1, v3, :cond_0

    iput-object v4, p0, Landroid/support/v7/preference/aa;->b:Landroid/support/v7/preference/Preference;

    iget-boolean v3, p0, Landroid/support/v7/preference/aa;->a:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/support/v7/preference/aa;->c:Landroid/support/v7/preference/Preference;

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p2, v3}, Landroid/support/v7/preference/PreferenceGroup;->j(I)Landroid/support/v7/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/preference/aa;->b:Landroid/support/v7/preference/Preference;

    iget-object v3, p0, Landroid/support/v7/preference/aa;->c:Landroid/support/v7/preference/Preference;

    if-ne v2, v3, :cond_1

    :goto_1
    iput-object v4, p0, Landroid/support/v7/preference/aa;->c:Landroid/support/v7/preference/Preference;

    :cond_1
    instance-of v3, v2, Landroid/support/v7/preference/PreferenceCategory;

    if-eqz v3, :cond_3

    iget-boolean v4, v2, Landroid/support/v7/preference/Preference;->f:Z

    if-nez v4, :cond_2

    const/16 v4, 0xf

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/Preference;->f(I)V

    :cond_2
    iget-boolean v4, p2, Landroid/support/v7/preference/PreferenceGroup;->a:Z

    iput-boolean v4, v2, Landroid/support/v7/preference/Preference;->a:Z

    iget v4, p2, Landroid/support/v7/preference/PreferenceGroup;->c:I

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/Preference;->g(I)V

    :cond_3
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->x()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Landroid/support/v7/preference/aa;->i:I

    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->u()I

    move-result v4

    if-ne v3, v4, :cond_4

    sget v3, Landroid/support/v7/preference/ar;->sesl_preference_category_empty:I

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->a(I)V

    :cond_4
    invoke-direct {p0, v2}, Landroid/support/v7/preference/aa;->d(Landroid/support/v7/preference/Preference;)V

    instance-of v3, v2, Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v3, :cond_5

    move-object v3, v2

    check-cast v3, Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceGroup;->b()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/support/v7/preference/aa;->b:Landroid/support/v7/preference/Preference;

    iput-object v4, p0, Landroid/support/v7/preference/aa;->c:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, p1, v3}, Landroid/support/v7/preference/aa;->a(Ljava/util/List;Landroid/support/v7/preference/PreferenceGroup;)V

    :cond_5
    invoke-virtual {v2, p0}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/n;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method private b()V
    .locals 5

    iget-object v0, p0, Landroid/support/v7/preference/aa;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/Preference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/n;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/preference/aa;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Landroid/support/v7/preference/aa;->e:Landroid/support/v7/preference/PreferenceGroup;

    invoke-direct {p0, v0, v1}, Landroid/support/v7/preference/aa;->a(Ljava/util/List;Landroid/support/v7/preference/PreferenceGroup;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/Preference;

    invoke-virtual {v3}, Landroid/support/v7/preference/Preference;->B()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroid/support/v7/preference/aa;->f:Ljava/util/List;

    iput-object v1, p0, Landroid/support/v7/preference/aa;->f:Ljava/util/List;

    iput-object v0, p0, Landroid/support/v7/preference/aa;->g:Ljava/util/List;

    iget-object v3, p0, Landroid/support/v7/preference/aa;->e:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceGroup;->M()Landroid/support/v7/preference/af;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/support/v7/preference/af;->g()Landroid/support/v7/preference/aj;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Landroid/support/v7/preference/af;->g()Landroid/support/v7/preference/aj;

    move-result-object v3

    new-instance v4, Landroid/support/v7/preference/ac;

    invoke-direct {v4, p0, v2, v1, v3}, Landroid/support/v7/preference/ac;-><init>(Landroid/support/v7/preference/aa;Ljava/util/List;Ljava/util/List;Landroid/support/v7/preference/aj;)V

    invoke-static {v4}, Landroid/support/v7/g/c;->a(Landroid/support/v7/g/e;)Landroid/support/v7/g/f;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/support/v7/g/f;->a(Landroid/support/v7/widget/ej;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/preference/aa;->f()V

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/Preference;

    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->P()V

    goto :goto_3

    :cond_4
    return-void
.end method

.method private d(Landroid/support/v7/preference/Preference;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/preference/aa;->a(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/ad;)Landroid/support/v7/preference/ad;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v7/preference/aa;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/preference/aa;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/preference/aa;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(I)J
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/preference/aa;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/aa;->c(I)Landroid/support/v7/preference/Preference;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->C()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Landroid/view/ViewGroup;I)Landroid/support/v7/preference/am;
    .locals 3

    iget-object v0, p0, Landroid/support/v7/preference/aa;->h:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v7/preference/ad;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {p2}, Landroid/support/v7/preference/ad;->a(Landroid/support/v7/preference/ad;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v1, 0x1020018

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    invoke-static {p2}, Landroid/support/v7/preference/ad;->b(Landroid/support/v7/preference/ad;)I

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p2}, Landroid/support/v7/preference/ad;->b(Landroid/support/v7/preference/ad;)I

    move-result p2

    invoke-virtual {v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    :goto_0
    new-instance p2, Landroid/support/v7/preference/am;

    invoke-direct {p2, p1}, Landroid/support/v7/preference/am;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public a(Landroid/support/v7/preference/Preference;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/preference/aa;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0, p1}, Landroid/support/v7/preference/aa;->a(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/preference/am;I)V
    .locals 0

    invoke-virtual {p0, p2}, Landroid/support/v7/preference/aa;->c(I)Landroid/support/v7/preference/Preference;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/am;)V

    return-void
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/ft;I)V
    .locals 0

    check-cast p1, Landroid/support/v7/preference/am;

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/preference/aa;->a(Landroid/support/v7/preference/am;I)V

    return-void
.end method

.method public b(I)I
    .locals 3

    invoke-virtual {p0, p1}, Landroid/support/v7/preference/aa;->c(I)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v7/preference/aa;->j:Landroid/support/v7/preference/ad;

    invoke-direct {p0, p1, v0}, Landroid/support/v7/preference/aa;->a(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/ad;)Landroid/support/v7/preference/ad;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/preference/aa;->j:Landroid/support/v7/preference/ad;

    iget-object p1, p0, Landroid/support/v7/preference/aa;->h:Ljava/util/List;

    iget-object v0, p0, Landroid/support/v7/preference/aa;->j:Landroid/support/v7/preference/ad;

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    return p1

    :cond_0
    iget-object p1, p0, Landroid/support/v7/preference/aa;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v0, p0, Landroid/support/v7/preference/aa;->h:Ljava/util/List;

    new-instance v1, Landroid/support/v7/preference/ad;

    iget-object v2, p0, Landroid/support/v7/preference/aa;->j:Landroid/support/v7/preference/ad;

    invoke-direct {v1, v2}, Landroid/support/v7/preference/ad;-><init>(Landroid/support/v7/preference/ad;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return p1
.end method

.method public synthetic b(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/ft;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/preference/aa;->a(Landroid/view/ViewGroup;I)Landroid/support/v7/preference/am;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/support/v7/preference/Preference;)V
    .locals 1

    iget-object p1, p0, Landroid/support/v7/preference/aa;->k:Landroid/os/Handler;

    iget-object v0, p0, Landroid/support/v7/preference/aa;->l:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Landroid/support/v7/preference/aa;->k:Landroid/os/Handler;

    iget-object v0, p0, Landroid/support/v7/preference/aa;->l:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c(I)Landroid/support/v7/preference/Preference;
    .locals 1

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/preference/aa;->a()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/aa;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/preference/Preference;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Landroid/support/v7/preference/Preference;)V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/preference/aa;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->B()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, -0x1

    iget-object v1, p0, Landroid/support/v7/preference/aa;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/Preference;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->B()Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v1, p0, Landroid/support/v7/preference/aa;->f:Ljava/util/List;

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/aa;->d(I)V

    goto :goto_4

    :cond_4
    iget-object v0, p0, Landroid/support/v7/preference/aa;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_6

    iget-object v2, p0, Landroid/support/v7/preference/aa;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    iget-object p1, p0, Landroid/support/v7/preference/aa;->f:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, v1}, Landroid/support/v7/preference/aa;->e(I)V

    :goto_4
    return-void
.end method
