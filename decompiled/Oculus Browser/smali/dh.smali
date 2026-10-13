.class public abstract Ldh;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final O:Ljava/util/List;


# instance fields
.field public A:J

.field public B:I

.field public C:I

.field public D:Ldh;

.field public E:Ldh;

.field public F:I

.field public G:Ljava/util/List;

.field public H:Ljava/util/List;

.field public I:I

.field public J:LXg;

.field public K:Z

.field public L:I

.field public M:I

.field public N:Landroid/support/v7/widget/RecyclerView;

.field public final w:Landroid/view/View;

.field public x:Ljava/lang/ref/WeakReference;

.field public y:I

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Ldh;->O:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Ldh;->y:I

    .line 3
    iput v0, p0, Ldh;->z:I

    const-wide/16 v1, -0x1

    .line 4
    iput-wide v1, p0, Ldh;->A:J

    .line 5
    iput v0, p0, Ldh;->B:I

    .line 6
    iput v0, p0, Ldh;->C:I

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Ldh;->D:Ldh;

    .line 8
    iput-object v1, p0, Ldh;->E:Ldh;

    .line 9
    iput-object v1, p0, Ldh;->G:Ljava/util/List;

    .line 10
    iput-object v1, p0, Ldh;->H:Ljava/util/List;

    const/4 v2, 0x0

    .line 11
    iput v2, p0, Ldh;->I:I

    .line 12
    iput-object v1, p0, Ldh;->J:LXg;

    .line 13
    iput-boolean v2, p0, Ldh;->K:Z

    .line 14
    iput v2, p0, Ldh;->L:I

    .line 15
    iput v0, p0, Ldh;->M:I

    if-eqz p1, :cond_0

    .line 16
    iput-object p1, p0, Ldh;->w:Landroid/view/View;

    return-void

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "itemView may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Ldh;->z:I

    .line 10
    iput v0, p0, Ldh;->C:I

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 12
    iget v0, p0, Ldh;->F:I

    or-int/2addr p1, v0

    iput p1, p0, Ldh;->F:I

    return-void
.end method

.method public a(II)V
    .locals 2

    .line 11
    iget v0, p0, Ldh;->F:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int/2addr p1, p2

    or-int/2addr p1, v0

    iput p1, p0, Ldh;->F:I

    return-void
.end method

.method public a(IZ)V
    .locals 2

    .line 1
    iget v0, p0, Ldh;->z:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget v0, p0, Ldh;->y:I

    iput v0, p0, Ldh;->z:I

    .line 3
    :cond_0
    iget v0, p0, Ldh;->C:I

    if-ne v0, v1, :cond_1

    .line 4
    iget v0, p0, Ldh;->y:I

    iput v0, p0, Ldh;->C:I

    :cond_1
    if-eqz p2, :cond_2

    .line 5
    iget p2, p0, Ldh;->C:I

    add-int/2addr p2, p1

    iput p2, p0, Ldh;->C:I

    .line 6
    :cond_2
    iget p2, p0, Ldh;->y:I

    add-int/2addr p2, p1

    iput p2, p0, Ldh;->y:I

    .line 7
    iget-object p1, p0, Ldh;->w:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 8
    iget-object p1, p0, Ldh;->w:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, LRg;

    const/4 p2, 0x1

    iput-boolean p2, p1, LRg;->c:Z

    :cond_3
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    const/16 v0, 0x400

    if-nez p1, :cond_0

    .line 13
    invoke-virtual {p0, v0}, Ldh;->a(I)V

    goto :goto_0

    .line 14
    :cond_0
    iget v1, p0, Ldh;->F:I

    and-int/2addr v0, v1

    if-nez v0, :cond_2

    .line 15
    iget-object v0, p0, Ldh;->G:Ljava/util/List;

    if-nez v0, :cond_1

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldh;->G:Ljava/util/List;

    .line 17
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ldh;->H:Ljava/util/List;

    .line 18
    :cond_1
    iget-object v0, p0, Ldh;->G:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final a(Z)V
    .locals 2

    const/4 v0, 0x1

    .line 19
    iget v1, p0, Ldh;->I:I

    if-eqz p1, :cond_0

    sub-int/2addr v1, v0

    goto :goto_0

    :cond_0
    add-int/2addr v1, v0

    :goto_0
    iput v1, p0, Ldh;->I:I

    if-gez v1, :cond_1

    const/4 p1, 0x0

    .line 20
    iput p1, p0, Ldh;->I:I

    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "View"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    if-ne v1, v0, :cond_2

    .line 22
    iget p1, p0, Ldh;->F:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Ldh;->F:I

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 23
    iget p1, p0, Ldh;->I:I

    if-nez p1, :cond_3

    .line 24
    iget p1, p0, Ldh;->F:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Ldh;->F:I

    :cond_3
    :goto_1
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget v0, p0, Ldh;->F:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Ldh;->F:I

    return-void
.end method

.method public b(I)Z
    .locals 1

    .line 2
    iget v0, p0, Ldh;->F:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final c()I
    .locals 1

    .line 1
    iget-object v0, p0, Ldh;->N:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->b(Ldh;)I

    move-result v0

    return v0
.end method

.method public final d()I
    .locals 2

    .line 1
    iget v0, p0, Ldh;->C:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Ldh;->y:I

    :cond_0
    return v0
.end method

.method public e()Ljava/util/List;
    .locals 1

    .line 1
    iget v0, p0, Ldh;->F:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Ldh;->G:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Ldh;->H:Ljava/util/List;

    return-object v0

    .line 4
    :cond_1
    :goto_0
    sget-object v0, Ldh;->O:Ljava/util/List;

    return-object v0

    .line 5
    :cond_2
    sget-object v0, Ldh;->O:Ljava/util/List;

    return-object v0
.end method

.method public f()Z
    .locals 2

    .line 1
    iget v0, p0, Ldh;->F:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public g()Z
    .locals 1

    .line 1
    iget v0, p0, Ldh;->F:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final h()Z
    .locals 1

    .line 1
    iget v0, p0, Ldh;->F:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Ldh;->w:Landroid/view/View;

    .line 2
    invoke-static {v0}, LA7;->s(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget v0, p0, Ldh;->F:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ldh;->J:LXg;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget v0, p0, Ldh;->F:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l()Z
    .locals 1

    .line 1
    iget v0, p0, Ldh;->F:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Ldh;->F:I

    const/4 v1, -0x1

    .line 2
    iput v1, p0, Ldh;->y:I

    .line 3
    iput v1, p0, Ldh;->z:I

    const-wide/16 v2, -0x1

    .line 4
    iput-wide v2, p0, Ldh;->A:J

    .line 5
    iput v1, p0, Ldh;->C:I

    .line 6
    iput v0, p0, Ldh;->I:I

    const/4 v2, 0x0

    .line 7
    iput-object v2, p0, Ldh;->D:Ldh;

    .line 8
    iput-object v2, p0, Ldh;->E:Ldh;

    .line 9
    iget-object v2, p0, Ldh;->G:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 10
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 11
    :cond_0
    iget v2, p0, Ldh;->F:I

    and-int/lit16 v2, v2, -0x401

    iput v2, p0, Ldh;->F:I

    .line 12
    iput v0, p0, Ldh;->L:I

    .line 13
    iput v1, p0, Ldh;->M:I

    .line 14
    invoke-static {p0}, Landroid/support/v7/widget/RecyclerView;->d(Ldh;)V

    return-void
.end method

.method public n()Z
    .locals 1

    .line 1
    iget v0, p0, Ldh;->F:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o()Z
    .locals 1

    .line 1
    iget v0, p0, Ldh;->F:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ViewHolder{"

    invoke-static {v1}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ldh;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Ldh;->A:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", oldPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ldh;->z:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pLpos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ldh;->C:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Ldh;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, " scrap "

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ldh;->K:Z

    if-eqz v1, :cond_0

    const-string v1, "[changeScrap]"

    goto :goto_0

    :cond_0
    const-string v1, "[attachedScrap]"

    .line 5
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_1
    invoke-virtual {p0}, Ldh;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, " invalid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_2
    invoke-virtual {p0}, Ldh;->f()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, " unbound"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :cond_3
    iget v1, p0, Ldh;->F:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_5

    const-string v1, " update"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    :cond_5
    invoke-virtual {p0}, Ldh;->i()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, " removed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :cond_6
    invoke-virtual {p0}, Ldh;->n()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, " ignored"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    :cond_7
    invoke-virtual {p0}, Ldh;->k()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, " tmpDetached"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    :cond_8
    invoke-virtual {p0}, Ldh;->h()Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, " not recyclable("

    invoke-static {v1}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Ldh;->I:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    :cond_9
    iget v1, p0, Ldh;->F:I

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_a

    invoke-virtual {p0}, Ldh;->g()Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    const/4 v2, 0x1

    :cond_b
    if-eqz v2, :cond_c

    const-string v1, " undefined adapter position"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    :cond_c
    iget-object v1, p0, Ldh;->w:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_d

    const-string v1, " no parent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    const-string v1, "}"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
