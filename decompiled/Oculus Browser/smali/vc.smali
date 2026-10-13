.class public abstract Lvc;
.super Landroid/support/v7/preference/Preference;
.source "PG"


# instance fields
.field public i0:Ljava/util/List;

.field public j0:Z

.field public k0:I

.field public l0:Z

.field public m0:I

.field public n0:Ltc;

.field public final o0:Ld7;

.field public final p0:Landroid/os/Handler;

.field public final q0:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lvc;->j0:Z

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lvc;->k0:I

    .line 4
    iput-boolean v1, p0, Lvc;->l0:Z

    const v1, 0x7fffffff

    .line 5
    iput v1, p0, Lvc;->m0:I

    const/4 v2, 0x0

    .line 6
    iput-object v2, p0, Lvc;->n0:Ltc;

    .line 7
    new-instance v2, Ld7;

    invoke-direct {v2}, Ld7;-><init>()V

    iput-object v2, p0, Lvc;->o0:Ld7;

    .line 8
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lvc;->p0:Landroid/os/Handler;

    .line 9
    new-instance v2, Lsc;

    invoke-direct {v2, p0}, Lsc;-><init>(Lvc;)V

    iput-object v2, p0, Lvc;->q0:Ljava/lang/Runnable;

    .line 10
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lvc;->i0:Ljava/util/List;

    .line 11
    sget-object v2, LeS;->s0:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    .line 12
    invoke-static {p1, p2, p2, v0}, Lm4;->a(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Lvc;->j0:Z

    .line 13
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 15
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 16
    invoke-virtual {p0, p2}, Lvc;->f(I)V

    .line 17
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->a(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lvc;->w()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    invoke-virtual {p0, v1}, Lvc;->e(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/support/v7/preference/Preference;->a(Landroid/os/Bundle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/support/v7/preference/PreferenceGroup$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    check-cast p1, Landroid/support/v7/preference/PreferenceGroup$SavedState;

    .line 6
    iget v0, p1, Landroid/support/v7/preference/PreferenceGroup$SavedState;->w:I

    iput v0, p0, Lvc;->m0:I

    .line 7
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->a(Landroid/os/Parcelable;)V

    return-void

    .line 8
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->a(Landroid/os/Parcelable;)V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 3

    .line 46
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->b(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lvc;->w()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 48
    invoke-virtual {p0, v1}, Lvc;->e(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/support/v7/preference/Preference;->b(Landroid/os/Bundle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 4

    .line 39
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->b(Z)V

    .line 40
    invoke-virtual {p0}, Lvc;->w()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 41
    invoke-virtual {p0, v1}, Lvc;->e(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 42
    iget-boolean v3, v2, Landroid/support/v7/preference/Preference;->T:Z

    if-ne v3, p1, :cond_0

    xor-int/lit8 v3, p1, 0x1

    .line 43
    iput-boolean v3, v2, Landroid/support/v7/preference/Preference;->T:Z

    .line 44
    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->u()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->b(Z)V

    .line 45
    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->o()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(Landroid/support/v7/preference/Preference;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lvc;->i0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p1, Landroid/support/v7/preference/Preference;->I:Ljava/lang/String;

    if-eqz v0, :cond_2

    move-object v0, p0

    .line 3
    :goto_0
    iget-object v2, v0, Landroid/support/v7/preference/Preference;->f0:Lvc;

    if-eqz v2, :cond_1

    move-object v0, v2

    goto :goto_0

    .line 4
    :cond_1
    iget-object v2, p1, Landroid/support/v7/preference/Preference;->I:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v2}, Lvc;->c(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found duplicated key: \""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\". This can cause unintended behaviour,"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " please use unique keys for every preference."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PreferenceGroup"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_2
    iget v0, p1, Landroid/support/v7/preference/Preference;->C:I

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_4

    .line 8
    iget-boolean v0, p0, Lvc;->j0:Z

    if-eqz v0, :cond_3

    .line 9
    iget v0, p0, Lvc;->k0:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lvc;->k0:I

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->b(I)V

    .line 10
    :cond_3
    instance-of v0, p1, Lvc;

    if-eqz v0, :cond_4

    .line 11
    move-object v0, p1

    check-cast v0, Lvc;

    iget-boolean v2, p0, Lvc;->j0:Z

    .line 12
    iput-boolean v2, v0, Lvc;->j0:Z

    .line 13
    :cond_4
    iget-object v0, p0, Lvc;->i0:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_5

    mul-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, v1

    .line 14
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->u()Z

    move-result v2

    .line 15
    iget-boolean v3, p1, Landroid/support/v7/preference/Preference;->T:Z

    if-ne v3, v2, :cond_6

    xor-int/2addr v2, v1

    .line 16
    iput-boolean v2, p1, Landroid/support/v7/preference/Preference;->T:Z

    .line 17
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->u()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->b(Z)V

    .line 18
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->o()V

    .line 19
    :cond_6
    monitor-enter p0

    .line 20
    :try_start_0
    iget-object v2, p0, Lvc;->i0:Ljava/util/List;

    invoke-interface {v2, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 21
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->x:LDc;

    .line 23
    iget-object v2, p1, Landroid/support/v7/preference/Preference;->I:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    .line 24
    iget-object v4, p0, Lvc;->o0:Ld7;

    .line 25
    invoke-virtual {v4, v2}, Ld7;->a(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_7

    const/4 v4, 0x1

    goto :goto_1

    :cond_7
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_8

    .line 26
    iget-object v4, p0, Lvc;->o0:Ld7;

    invoke-virtual {v4, v2}, Ld7;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 27
    iget-object v6, p0, Lvc;->o0:Ld7;

    invoke-virtual {v6, v2}, Ld7;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 28
    :cond_8
    invoke-virtual {v0}, LDc;->b()J

    move-result-wide v4

    .line 29
    :goto_2
    iput-wide v4, p1, Landroid/support/v7/preference/Preference;->y:J

    .line 30
    iput-boolean v1, p1, Landroid/support/v7/preference/Preference;->z:Z

    .line 31
    :try_start_1
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->a(LDc;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    iput-boolean v3, p1, Landroid/support/v7/preference/Preference;->z:Z

    .line 33
    iput-object p0, p1, Landroid/support/v7/preference/Preference;->f0:Lvc;

    .line 34
    iget-boolean v0, p0, Lvc;->l0:Z

    if-eqz v0, :cond_9

    .line 35
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->q()V

    .line 36
    :cond_9
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->p()V

    return v1

    :catchall_0
    move-exception v0

    .line 37
    iput-boolean v3, p1, Landroid/support/v7/preference/Preference;->z:Z

    throw v0

    :catchall_1
    move-exception p1

    .line 38
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public c(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->I:Ljava/lang/String;

    .line 2
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lvc;->w()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 4
    invoke-virtual {p0, v1}, Lvc;->e(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 5
    iget-object v3, v2, Landroid/support/v7/preference/Preference;->I:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    .line 7
    :cond_1
    instance-of v3, v2, Lvc;

    if-eqz v3, :cond_2

    .line 8
    check-cast v2, Lvc;

    .line 9
    invoke-virtual {v2, p1}, Lvc;->c(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

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

.method public d(Landroid/support/v7/preference/Preference;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lvc;->e(Landroid/support/v7/preference/Preference;)Z

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->p()V

    return p1
.end method

.method public e(I)Landroid/support/v7/preference/Preference;
    .locals 1

    .line 1
    iget-object v0, p0, Lvc;->i0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/preference/Preference;

    return-object p1
.end method

.method public final e(Landroid/support/v7/preference/Preference;)Z
    .locals 5

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p1, Landroid/support/v7/preference/Preference;->Q:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->b(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, v0, Landroid/support/v7/preference/Preference;->e0:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7
    :cond_0
    iget-object v0, p1, Landroid/support/v7/preference/Preference;->f0:Lvc;

    if-ne v0, p0, :cond_1

    const/4 v0, 0x0

    .line 8
    iput-object v0, p1, Landroid/support/v7/preference/Preference;->f0:Lvc;

    .line 9
    :cond_1
    iget-object v0, p0, Lvc;->i0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    iget-object v1, p1, Landroid/support/v7/preference/Preference;->I:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 11
    iget-object v2, p0, Lvc;->o0:Ld7;

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->j()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ld7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v1, p0, Lvc;->p0:Landroid/os/Handler;

    iget-object v2, p0, Lvc;->q0:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    iget-object v1, p0, Lvc;->p0:Landroid/os/Handler;

    iget-object v2, p0, Lvc;->q0:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    :cond_2
    iget-boolean v1, p0, Lvc;->l0:Z

    if-eqz v1, :cond_3

    .line 15
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->s()V

    .line 16
    :cond_3
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public f(I)V
    .locals 2

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " should have a key defined if it contains an expandable preference"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreferenceGroup"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    iput p1, p0, Lvc;->m0:I

    return-void
.end method

.method public q()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/support/v7/preference/Preference;->q()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lvc;->l0:Z

    .line 3
    invoke-virtual {p0}, Lvc;->w()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Lvc;->e(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->q()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public s()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/support/v7/preference/Preference;->s()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lvc;->l0:Z

    .line 3
    invoke-virtual {p0}, Lvc;->w()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Lvc;->e(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->s()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public t()Landroid/os/Parcelable;
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/support/v7/preference/Preference;->t()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/support/v7/preference/PreferenceGroup$SavedState;

    iget v2, p0, Lvc;->m0:I

    invoke-direct {v1, v0, v2}, Landroid/support/v7/preference/PreferenceGroup$SavedState;-><init>(Landroid/os/Parcelable;I)V

    return-object v1
.end method

.method public w()I
    .locals 1

    .line 1
    iget-object v0, p0, Lvc;->i0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public x()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public y()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lvc;->i0:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    const/4 v2, 0x0

    .line 4
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, v2}, Lvc;->e(Landroid/support/v7/preference/Preference;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 5
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->p()V

    return-void

    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public z()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lvc;->i0:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
