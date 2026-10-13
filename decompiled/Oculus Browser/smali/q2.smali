.class public final Lq2;
.super Ld3;
.source "PG"

# interfaces
.implements LV2;


# instance fields
.field public final a:LY2;

.field public b:Ljava/util/ArrayList;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Z

.field public j:Z

.field public k:Ljava/lang/String;

.field public l:Z

.field public m:I

.field public n:I

.field public o:Ljava/lang/CharSequence;

.field public p:I

.field public q:Ljava/lang/CharSequence;

.field public r:Ljava/util/ArrayList;

.field public s:Ljava/util/ArrayList;

.field public t:Z

.field public u:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(LY2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ld3;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lq2;->b:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lq2;->j:Z

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lq2;->m:I

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lq2;->t:Z

    .line 6
    iput-object p1, p0, Lq2;->a:LY2;

    return-void
.end method

.method public static b(Lp2;)Z
    .locals 2

    .line 41
    iget-object p0, p0, Lp2;->b:Lz2;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 42
    iget-boolean v1, p0, Lz2;->G:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lz2;->e0:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lz2;->X:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lz2;->W:Z

    if-nez v1, :cond_1

    .line 43
    iget-object p0, p0, Lz2;->i0:Lw2;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 44
    :cond_0
    iget-boolean p0, p0, Lw2;->q:Z

    :goto_0
    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0, v0}, Lq2;->a(Z)I

    move-result v0

    return v0
.end method

.method public a(Z)I
    .locals 3

    .line 75
    iget-boolean v0, p0, Lq2;->l:Z

    if-nez v0, :cond_2

    .line 76
    sget-boolean v0, LY2;->Y:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Commit: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    new-instance v0, LP6;

    const-string v2, "FragmentManager"

    invoke-direct {v0, v2}, LP6;-><init>(Ljava/lang/String;)V

    .line 79
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v0, "  "

    .line 80
    invoke-virtual {p0, v0, v2, v1}, Lq2;->a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 81
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 82
    :cond_0
    iput-boolean v1, p0, Lq2;->l:Z

    .line 83
    iget-boolean v0, p0, Lq2;->i:Z

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lq2;->a:LY2;

    invoke-virtual {v0, p0}, LY2;->a(Lq2;)I

    move-result v0

    iput v0, p0, Lq2;->m:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 85
    iput v0, p0, Lq2;->m:I

    .line 86
    :goto_0
    iget-object v0, p0, Lq2;->a:LY2;

    invoke-virtual {v0, p0, p1}, LY2;->a(LV2;Z)V

    .line 87
    iget p1, p0, Lq2;->m:I

    return p1

    .line 88
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "commit already called"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(I)V
    .locals 5

    .line 67
    iget-boolean v0, p0, Lq2;->i:Z

    if-nez v0, :cond_0

    return-void

    .line 68
    :cond_0
    sget-boolean v0, LY2;->Y:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bump nesting in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    :cond_1
    iget-object v0, p0, Lq2;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 70
    iget-object v2, p0, Lq2;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp2;

    .line 71
    iget-object v3, v2, Lp2;->b:Lz2;

    if-eqz v3, :cond_2

    .line 72
    iget v4, v3, Lz2;->M:I

    add-int/2addr v4, p1

    iput v4, v3, Lz2;->M:I

    .line 73
    sget-boolean v3, LY2;->Y:Z

    if-eqz v3, :cond_2

    const-string v3, "Bump nesting of "

    invoke-static {v3}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lp2;->b:Lz2;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lp2;->b:Lz2;

    iget v2, v2, Lz2;->M:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final a(ILz2;Ljava/lang/String;I)V
    .locals 3

    .line 53
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    .line 55
    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 56
    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 57
    :cond_0
    iget-object v0, p0, Lq2;->a:LY2;

    iput-object v0, p2, Lz2;->N:LY2;

    const-string v0, " now "

    const-string v1, ": was "

    if-eqz p3, :cond_3

    .line 58
    iget-object v2, p2, Lz2;->V:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 59
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t change tag of fragment "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lz2;->V:Ljava/lang/String;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_2
    :goto_0
    iput-object p3, p2, Lz2;->V:Ljava/lang/String;

    :cond_3
    if-eqz p1, :cond_7

    const/4 v2, -0x1

    if-eq p1, v2, :cond_6

    .line 61
    iget p3, p2, Lz2;->T:I

    if-eqz p3, :cond_5

    if-ne p3, p1, :cond_4

    goto :goto_1

    .line 62
    :cond_4
    new-instance p3, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t change container ID of fragment "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lz2;->T:I

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 63
    :cond_5
    :goto_1
    iput p1, p2, Lz2;->T:I

    iput p1, p2, Lz2;->U:I

    goto :goto_2

    .line 64
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t add fragment "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " with tag "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to container view with no id"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :cond_7
    :goto_2
    new-instance p1, Lp2;

    invoke-direct {p1, p4, p2}, Lp2;-><init>(ILz2;)V

    invoke-virtual {p0, p1}, Lq2;->a(Lp2;)V

    return-void

    .line 66
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Fragment "

    invoke-static {p2}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " must be a public static class to be  properly recreated from"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " instance state."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .locals 5

    if-eqz p3, :cond_8

    .line 1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lq2;->k:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mIndex="

    .line 2
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lq2;->m:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mCommitted="

    .line 3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lq2;->l:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4
    iget v0, p0, Lq2;->g:I

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTransition=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6
    iget v0, p0, Lq2;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mTransitionStyle=#"

    .line 7
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8
    iget v0, p0, Lq2;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9
    :cond_0
    iget v0, p0, Lq2;->c:I

    if-nez v0, :cond_1

    iget v0, p0, Lq2;->d:I

    if-eqz v0, :cond_2

    .line 10
    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11
    iget v0, p0, Lq2;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mExitAnim=#"

    .line 12
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 13
    iget v0, p0, Lq2;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 14
    :cond_2
    iget v0, p0, Lq2;->e:I

    if-nez v0, :cond_3

    iget v0, p0, Lq2;->f:I

    if-eqz v0, :cond_4

    .line 15
    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPopEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 16
    iget v0, p0, Lq2;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mPopExitAnim=#"

    .line 17
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 18
    iget v0, p0, Lq2;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 19
    :cond_4
    iget v0, p0, Lq2;->n:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lq2;->o:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    .line 20
    :cond_5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 21
    iget v0, p0, Lq2;->n:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBreadCrumbTitleText="

    .line 22
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lq2;->o:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 24
    :cond_6
    iget v0, p0, Lq2;->p:I

    if-nez v0, :cond_7

    iget-object v0, p0, Lq2;->q:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    .line 25
    :cond_7
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 26
    iget v0, p0, Lq2;->p:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBreadCrumbShortTitleText="

    .line 27
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lq2;->q:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 29
    :cond_8
    iget-object v0, p0, Lq2;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 30
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Operations:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lq2;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_d

    .line 32
    iget-object v2, p0, Lq2;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp2;

    .line 33
    iget v3, v2, Lp2;->a:I

    packed-switch v3, :pswitch_data_0

    const-string v3, "cmd="

    .line 34
    invoke-static {v3}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lp2;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :pswitch_0
    const-string v3, "UNSET_PRIMARY_NAV"

    goto :goto_1

    :pswitch_1
    const-string v3, "SET_PRIMARY_NAV"

    goto :goto_1

    :pswitch_2
    const-string v3, "ATTACH"

    goto :goto_1

    :pswitch_3
    const-string v3, "DETACH"

    goto :goto_1

    :pswitch_4
    const-string v3, "SHOW"

    goto :goto_1

    :pswitch_5
    const-string v3, "HIDE"

    goto :goto_1

    :pswitch_6
    const-string v3, "REMOVE"

    goto :goto_1

    :pswitch_7
    const-string v3, "REPLACE"

    goto :goto_1

    :pswitch_8
    const-string v3, "ADD"

    goto :goto_1

    :pswitch_9
    const-string v3, "NULL"

    .line 35
    :goto_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  Op #"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    .line 36
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " "

    .line 37
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lp2;->b:Lz2;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz p3, :cond_c

    .line 38
    iget v3, v2, Lp2;->c:I

    if-nez v3, :cond_9

    iget v3, v2, Lp2;->d:I

    if-eqz v3, :cond_a

    .line 39
    :cond_9
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "enterAnim=#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 40
    iget v3, v2, Lp2;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " exitAnim=#"

    .line 41
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 42
    iget v3, v2, Lp2;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 43
    :cond_a
    iget v3, v2, Lp2;->e:I

    if-nez v3, :cond_b

    iget v3, v2, Lp2;->f:I

    if-eqz v3, :cond_c

    .line 44
    :cond_b
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "popEnterAnim=#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 45
    iget v3, v2, Lp2;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " popExitAnim=#"

    .line 46
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 47
    iget v2, v2, Lp2;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lp2;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lq2;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    iget v0, p0, Lq2;->c:I

    iput v0, p1, Lp2;->c:I

    .line 50
    iget v0, p0, Lq2;->d:I

    iput v0, p1, Lp2;->d:I

    .line 51
    iget v0, p0, Lq2;->e:I

    iput v0, p1, Lp2;->e:I

    .line 52
    iget v0, p0, Lq2;->f:I

    iput v0, p1, Lp2;->f:I

    return-void
.end method

.method public a(Ljava/util/ArrayList;II)Z
    .locals 9

    const/4 v0, 0x0

    if-ne p3, p2, :cond_0

    return v0

    .line 98
    :cond_0
    iget-object v1, p0, Lq2;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    :goto_0
    if-ge v2, v1, :cond_7

    .line 99
    iget-object v4, p0, Lq2;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lp2;

    .line 100
    iget-object v4, v4, Lp2;->b:Lz2;

    if-eqz v4, :cond_1

    iget v4, v4, Lz2;->U:I

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_6

    if-eq v4, v3, :cond_6

    move v3, p2

    :goto_2
    if-ge v3, p3, :cond_5

    .line 101
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lq2;

    .line 102
    iget-object v6, v5, Lq2;->b:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_4

    .line 103
    iget-object v8, v5, Lq2;->b:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lp2;

    .line 104
    iget-object v8, v8, Lp2;->b:Lz2;

    if-eqz v8, :cond_2

    iget v8, v8, Lz2;->U:I

    goto :goto_4

    :cond_2
    const/4 v8, 0x0

    :goto_4
    if-ne v8, v4, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    move v3, v4

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return v0
.end method

.method public a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 2

    .line 89
    sget-boolean v0, LY2;->Y:Z

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Run: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 92
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    iget-boolean p1, p0, Lq2;->i:Z

    if-eqz p1, :cond_2

    .line 94
    iget-object p1, p0, Lq2;->a:LY2;

    .line 95
    iget-object p2, p1, LY2;->B:Ljava/util/ArrayList;

    if-nez p2, :cond_1

    .line 96
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, LY2;->B:Ljava/util/ArrayList;

    .line 97
    :cond_1
    iget-object p1, p1, LY2;->B:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lq2;->a(Z)I

    move-result v0

    return v0
.end method

.method public b(Z)V
    .locals 7

    .line 5
    iget-object v0, p0, Lq2;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_6

    .line 6
    iget-object v2, p0, Lq2;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp2;

    .line 7
    iget-object v3, v2, Lp2;->b:Lz2;

    if-eqz v3, :cond_1

    .line 8
    iget v4, p0, Lq2;->g:I

    invoke-static {v4}, LY2;->d(I)I

    move-result v4

    iget v5, p0, Lq2;->h:I

    .line 9
    iget-object v6, v3, Lz2;->i0:Lw2;

    if-nez v6, :cond_0

    if-nez v4, :cond_0

    if-nez v5, :cond_0

    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {v3}, Lz2;->k()Lw2;

    .line 11
    iget-object v6, v3, Lz2;->i0:Lw2;

    iput v4, v6, Lw2;->e:I

    .line 12
    iput v5, v6, Lw2;->f:I

    .line 13
    :cond_1
    :goto_1
    iget v4, v2, Lp2;->a:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    packed-switch v4, :pswitch_data_0

    .line 14
    :pswitch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown cmd: "

    invoke-static {v0}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v2, Lp2;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :pswitch_1
    iget-object v4, p0, Lq2;->a:LY2;

    invoke-virtual {v4, v3}, LY2;->h(Lz2;)V

    goto :goto_2

    .line 16
    :pswitch_2
    iget-object v4, p0, Lq2;->a:LY2;

    invoke-virtual {v4, v6}, LY2;->h(Lz2;)V

    goto :goto_2

    .line 17
    :pswitch_3
    iget v4, v2, Lp2;->f:I

    invoke-virtual {v3, v4}, Lz2;->f(I)V

    .line 18
    iget-object v4, p0, Lq2;->a:LY2;

    invoke-virtual {v4, v3}, LY2;->b(Lz2;)V

    goto :goto_2

    .line 19
    :pswitch_4
    iget v4, v2, Lp2;->e:I

    invoke-virtual {v3, v4}, Lz2;->f(I)V

    .line 20
    iget-object v4, p0, Lq2;->a:LY2;

    invoke-virtual {v4, v3}, LY2;->a(Lz2;)V

    goto :goto_2

    .line 21
    :pswitch_5
    iget v4, v2, Lp2;->f:I

    invoke-virtual {v3, v4}, Lz2;->f(I)V

    .line 22
    iget-object v4, p0, Lq2;->a:LY2;

    if-eqz v4, :cond_2

    .line 23
    iget-boolean v4, v3, Lz2;->W:Z

    if-nez v4, :cond_4

    .line 24
    iput-boolean v1, v3, Lz2;->W:Z

    .line 25
    iget-boolean v4, v3, Lz2;->k0:Z

    xor-int/2addr v4, v1

    iput-boolean v4, v3, Lz2;->k0:Z

    goto :goto_2

    .line 26
    :cond_2
    throw v6

    .line 27
    :pswitch_6
    iget v4, v2, Lp2;->e:I

    invoke-virtual {v3, v4}, Lz2;->f(I)V

    .line 28
    iget-object v4, p0, Lq2;->a:LY2;

    if-eqz v4, :cond_3

    .line 29
    iget-boolean v4, v3, Lz2;->W:Z

    if-eqz v4, :cond_4

    .line 30
    iput-boolean v5, v3, Lz2;->W:Z

    .line 31
    iget-boolean v4, v3, Lz2;->k0:Z

    xor-int/2addr v4, v1

    iput-boolean v4, v3, Lz2;->k0:Z

    goto :goto_2

    .line 32
    :cond_3
    throw v6

    .line 33
    :pswitch_7
    iget v4, v2, Lp2;->e:I

    invoke-virtual {v3, v4}, Lz2;->f(I)V

    .line 34
    iget-object v4, p0, Lq2;->a:LY2;

    invoke-virtual {v4, v3, v5}, LY2;->a(Lz2;Z)V

    goto :goto_2

    .line 35
    :pswitch_8
    iget v4, v2, Lp2;->f:I

    invoke-virtual {v3, v4}, Lz2;->f(I)V

    .line 36
    iget-object v4, p0, Lq2;->a:LY2;

    invoke-virtual {v4, v3}, LY2;->f(Lz2;)V

    .line 37
    :cond_4
    :goto_2
    iget-boolean v4, p0, Lq2;->t:Z

    if-nez v4, :cond_5

    iget v2, v2, Lp2;->a:I

    const/4 v4, 0x3

    if-eq v2, v4, :cond_5

    if-eqz v3, :cond_5

    .line 38
    iget-object v2, p0, Lq2;->a:LY2;

    invoke-virtual {v2, v3}, LY2;->d(Lz2;)V

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 39
    :cond_6
    iget-boolean v0, p0, Lq2;->t:Z

    if-nez v0, :cond_7

    if-eqz p1, :cond_7

    .line 40
    iget-object p1, p0, Lq2;->a:LY2;

    iget v0, p1, LY2;->G:I

    invoke-virtual {p1, v0, v1}, LY2;->a(IZ)V

    :cond_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public b(I)Z
    .locals 4

    .line 2
    iget-object v0, p0, Lq2;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 3
    iget-object v3, p0, Lq2;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lp2;

    .line 4
    iget-object v3, v3, Lp2;->b:Lz2;

    if-eqz v3, :cond_0

    iget v3, v3, Lz2;->U:I

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_1

    if-ne v3, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public c()V
    .locals 9

    .line 1
    iget-object v0, p0, Lq2;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_6

    .line 2
    iget-object v4, p0, Lq2;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lp2;

    .line 3
    iget-object v5, v4, Lp2;->b:Lz2;

    if-eqz v5, :cond_1

    .line 4
    iget v6, p0, Lq2;->g:I

    iget v7, p0, Lq2;->h:I

    .line 5
    iget-object v8, v5, Lz2;->i0:Lw2;

    if-nez v8, :cond_0

    if-nez v6, :cond_0

    if-nez v7, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {v5}, Lz2;->k()Lw2;

    .line 7
    iget-object v8, v5, Lz2;->i0:Lw2;

    iput v6, v8, Lw2;->e:I

    .line 8
    iput v7, v8, Lw2;->f:I

    .line 9
    :cond_1
    :goto_1
    iget v6, v4, Lp2;->a:I

    const/4 v7, 0x0

    packed-switch v6, :pswitch_data_0

    .line 10
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown cmd: "

    invoke-static {v1}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v4, Lp2;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :pswitch_1
    iget-object v6, p0, Lq2;->a:LY2;

    invoke-virtual {v6, v7}, LY2;->h(Lz2;)V

    goto :goto_2

    .line 12
    :pswitch_2
    iget-object v6, p0, Lq2;->a:LY2;

    invoke-virtual {v6, v5}, LY2;->h(Lz2;)V

    goto :goto_2

    .line 13
    :pswitch_3
    iget v6, v4, Lp2;->c:I

    invoke-virtual {v5, v6}, Lz2;->f(I)V

    .line 14
    iget-object v6, p0, Lq2;->a:LY2;

    invoke-virtual {v6, v5}, LY2;->a(Lz2;)V

    goto :goto_2

    .line 15
    :pswitch_4
    iget v6, v4, Lp2;->d:I

    invoke-virtual {v5, v6}, Lz2;->f(I)V

    .line 16
    iget-object v6, p0, Lq2;->a:LY2;

    invoke-virtual {v6, v5}, LY2;->b(Lz2;)V

    goto :goto_2

    .line 17
    :pswitch_5
    iget v6, v4, Lp2;->c:I

    invoke-virtual {v5, v6}, Lz2;->f(I)V

    .line 18
    iget-object v6, p0, Lq2;->a:LY2;

    if-eqz v6, :cond_2

    .line 19
    iget-boolean v6, v5, Lz2;->W:Z

    if-eqz v6, :cond_4

    .line 20
    iput-boolean v1, v5, Lz2;->W:Z

    .line 21
    iget-boolean v6, v5, Lz2;->k0:Z

    xor-int/2addr v6, v3

    iput-boolean v6, v5, Lz2;->k0:Z

    goto :goto_2

    .line 22
    :cond_2
    throw v7

    .line 23
    :pswitch_6
    iget v6, v4, Lp2;->d:I

    invoke-virtual {v5, v6}, Lz2;->f(I)V

    .line 24
    iget-object v6, p0, Lq2;->a:LY2;

    if-eqz v6, :cond_3

    .line 25
    iget-boolean v6, v5, Lz2;->W:Z

    if-nez v6, :cond_4

    .line 26
    iput-boolean v3, v5, Lz2;->W:Z

    .line 27
    iget-boolean v6, v5, Lz2;->k0:Z

    xor-int/2addr v6, v3

    iput-boolean v6, v5, Lz2;->k0:Z

    goto :goto_2

    .line 28
    :cond_3
    throw v7

    .line 29
    :pswitch_7
    iget v6, v4, Lp2;->d:I

    invoke-virtual {v5, v6}, Lz2;->f(I)V

    .line 30
    iget-object v6, p0, Lq2;->a:LY2;

    invoke-virtual {v6, v5}, LY2;->f(Lz2;)V

    goto :goto_2

    .line 31
    :pswitch_8
    iget v6, v4, Lp2;->c:I

    invoke-virtual {v5, v6}, Lz2;->f(I)V

    .line 32
    iget-object v6, p0, Lq2;->a:LY2;

    invoke-virtual {v6, v5, v1}, LY2;->a(Lz2;Z)V

    .line 33
    :cond_4
    :goto_2
    iget-boolean v6, p0, Lq2;->t:Z

    if-nez v6, :cond_5

    iget v4, v4, Lp2;->a:I

    if-eq v4, v3, :cond_5

    if-eqz v5, :cond_5

    .line 34
    iget-object v3, p0, Lq2;->a:LY2;

    invoke-virtual {v3, v5}, LY2;->d(Lz2;)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 35
    :cond_6
    iget-boolean v0, p0, Lq2;->t:Z

    if-nez v0, :cond_7

    .line 36
    iget-object v0, p0, Lq2;->a:LY2;

    iget v1, v0, LY2;->G:I

    invoke-virtual {v0, v1, v3}, LY2;->a(IZ)V

    :cond_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "BackStackEntry{"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget v1, p0, Lq2;->m:I

    if-ltz v1, :cond_0

    const-string v1, " #"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget v1, p0, Lq2;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7
    :cond_0
    iget-object v1, p0, Lq2;->k:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, " "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget-object v1, p0, Lq2;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "}"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
