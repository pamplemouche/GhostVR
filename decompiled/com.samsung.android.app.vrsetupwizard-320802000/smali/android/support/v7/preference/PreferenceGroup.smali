.class public abstract Landroid/support/v7/preference/PreferenceGroup;
.super Landroid/support/v7/preference/Preference;


# instance fields
.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:I

.field private j:Z

.field private final k:Landroid/support/v4/k/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/k/w<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Landroid/os/Handler;

.field private final m:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/preference/PreferenceGroup;->h:Z

    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v7/preference/PreferenceGroup;->i:I

    iput-boolean v1, p0, Landroid/support/v7/preference/PreferenceGroup;->j:Z

    new-instance v1, Landroid/support/v4/k/w;

    invoke-direct {v1}, Landroid/support/v4/k/w;-><init>()V

    iput-object v1, p0, Landroid/support/v7/preference/PreferenceGroup;->k:Landroid/support/v4/k/w;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Landroid/support/v7/preference/PreferenceGroup;->l:Landroid/os/Handler;

    new-instance v1, Landroid/support/v7/preference/z;

    invoke-direct {v1, p0}, Landroid/support/v7/preference/z;-><init>(Landroid/support/v7/preference/PreferenceGroup;)V

    iput-object v1, p0, Landroid/support/v7/preference/PreferenceGroup;->m:Ljava/lang/Runnable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v7/preference/PreferenceGroup;->g:Ljava/util/List;

    sget-object v1, Landroid/support/v7/preference/at;->PreferenceGroup:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Landroid/support/v7/preference/at;->PreferenceGroup_orderingFromXml:I

    sget p3, Landroid/support/v7/preference/at;->PreferenceGroup_orderingFromXml:I

    invoke-static {p1, p2, p3, v0}, Landroid/support/v4/a/a/w;->a(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroid/support/v7/preference/PreferenceGroup;->h:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic b(Landroid/support/v7/preference/PreferenceGroup;)Landroid/support/v4/k/w;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/preference/PreferenceGroup;->k:Landroid/support/v4/k/w;

    return-object p0
.end method


# virtual methods
.method public N()V
    .locals 3

    invoke-super {p0}, Landroid/support/v7/preference/Preference;->N()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/preference/PreferenceGroup;->j:Z

    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->a()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/v7/preference/PreferenceGroup;->j(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->N()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public O()V
    .locals 3

    invoke-super {p0}, Landroid/support/v7/preference/Preference;->O()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/preference/PreferenceGroup;->j:Z

    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->a()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/PreferenceGroup;->j(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->O()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroup;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected b(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->b(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->a()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/v7/preference/PreferenceGroup;->j(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/support/v7/preference/Preference;->b(Landroid/os/Bundle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected b(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->j()Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Landroid/support/v7/preference/Preference;->b(Landroid/support/v7/preference/Preference;Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public c(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;
    .locals 4

    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->D()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->a()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Landroid/support/v7/preference/PreferenceGroup;->j(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->D()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    instance-of v3, v2, Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v3, :cond_2

    check-cast v2, Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v2, p1}, Landroid/support/v7/preference/PreferenceGroup;->c(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroup;->g:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(Landroid/support/v7/preference/Preference;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v7/preference/PreferenceGroup;->d(Landroid/support/v7/preference/Preference;)Z

    return-void
.end method

.method public c(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->c(Z)V

    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->a()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/v7/preference/PreferenceGroup;->j(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Landroid/support/v7/preference/Preference;->b(Landroid/support/v7/preference/Preference;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected d(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->d(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->a()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/v7/preference/PreferenceGroup;->j(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/support/v7/preference/Preference;->d(Landroid/os/Bundle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d(Landroid/support/v7/preference/Preference;)Z
    .locals 6

    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroup;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->w()I

    move-result v0

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_2

    iget-boolean v0, p0, Landroid/support/v7/preference/PreferenceGroup;->h:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v7/preference/PreferenceGroup;->i:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Landroid/support/v7/preference/PreferenceGroup;->i:I

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->c(I)V

    :cond_1
    instance-of v0, p1, Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/support/v7/preference/PreferenceGroup;

    iget-boolean v2, p0, Landroid/support/v7/preference/PreferenceGroup;->h:Z

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceGroup;->f(Z)V

    :cond_2
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroup;->g:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_3

    mul-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, v1

    :cond_3
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/PreferenceGroup;->b(Landroid/support/v7/preference/Preference;)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/support/v7/preference/PreferenceGroup;->g:Ljava/util/List;

    invoke-interface {v2, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->M()Landroid/support/v7/preference/af;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->D()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v3, p0, Landroid/support/v7/preference/PreferenceGroup;->k:Landroid/support/v4/k/w;

    invoke-virtual {v3, v2}, Landroid/support/v4/k/w;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/support/v7/preference/PreferenceGroup;->k:Landroid/support/v4/k/w;

    invoke-virtual {v3, v2}, Landroid/support/v4/k/w;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Landroid/support/v7/preference/PreferenceGroup;->k:Landroid/support/v4/k/w;

    invoke-virtual {v5, v2}, Landroid/support/v4/k/w;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Landroid/support/v7/preference/af;->a()J

    move-result-wide v3

    :goto_0
    invoke-virtual {p1, v0, v3, v4}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/af;J)V

    invoke-virtual {p1, p0}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/PreferenceGroup;)V

    iget-boolean v0, p0, Landroid/support/v7/preference/PreferenceGroup;->j:Z

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->N()V

    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->L()V

    return v1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public f(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/preference/PreferenceGroup;->h:Z

    return-void
.end method

.method public j(I)Landroid/support/v7/preference/Preference;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroup;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/preference/Preference;

    return-object p1
.end method
