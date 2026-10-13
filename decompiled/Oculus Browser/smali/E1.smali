.class public abstract LE1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final b0:[I

.field public static final c0:Lv1;

.field public static d0:Ljava/lang/ThreadLocal;


# instance fields
.field public A:Ljava/util/ArrayList;

.field public B:Ljava/util/ArrayList;

.field public C:Ljava/util/ArrayList;

.field public D:Ljava/util/ArrayList;

.field public E:Ljava/util/ArrayList;

.field public F:Ljava/util/ArrayList;

.field public G:Ljava/util/ArrayList;

.field public H:Ljava/util/ArrayList;

.field public I:Ljava/util/ArrayList;

.field public J:Ljava/util/ArrayList;

.field public K:Ljava/util/ArrayList;

.field public L:LP1;

.field public M:LP1;

.field public N:LM1;

.field public O:[I

.field public P:Ljava/util/ArrayList;

.field public Q:Ljava/util/ArrayList;

.field public R:Z

.field public S:Ljava/util/ArrayList;

.field public T:I

.field public U:Z

.field public V:Z

.field public W:Ljava/util/ArrayList;

.field public X:Ljava/util/ArrayList;

.field public Y:LJ1;

.field public Z:LC1;

.field public a0:Lv1;

.field public w:Ljava/lang/String;

.field public x:J

.field public y:J

.field public z:Landroid/animation/TimeInterpolator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, LE1;->b0:[I

    .line 2
    new-instance v0, Ly1;

    invoke-direct {v0}, Ly1;-><init>()V

    sput-object v0, LE1;->c0:Lv1;

    .line 3
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, LE1;->d0:Ljava/lang/ThreadLocal;

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x1
        0x3
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LE1;->w:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, LE1;->x:J

    .line 4
    iput-wide v0, p0, LE1;->y:J

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, LE1;->z:Landroid/animation/TimeInterpolator;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, LE1;->A:Ljava/util/ArrayList;

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, LE1;->B:Ljava/util/ArrayList;

    .line 8
    iput-object v0, p0, LE1;->C:Ljava/util/ArrayList;

    .line 9
    iput-object v0, p0, LE1;->D:Ljava/util/ArrayList;

    .line 10
    iput-object v0, p0, LE1;->E:Ljava/util/ArrayList;

    .line 11
    iput-object v0, p0, LE1;->F:Ljava/util/ArrayList;

    .line 12
    iput-object v0, p0, LE1;->G:Ljava/util/ArrayList;

    .line 13
    iput-object v0, p0, LE1;->H:Ljava/util/ArrayList;

    .line 14
    iput-object v0, p0, LE1;->I:Ljava/util/ArrayList;

    .line 15
    iput-object v0, p0, LE1;->J:Ljava/util/ArrayList;

    .line 16
    iput-object v0, p0, LE1;->K:Ljava/util/ArrayList;

    .line 17
    new-instance v1, LP1;

    invoke-direct {v1}, LP1;-><init>()V

    iput-object v1, p0, LE1;->L:LP1;

    .line 18
    new-instance v1, LP1;

    invoke-direct {v1}, LP1;-><init>()V

    iput-object v1, p0, LE1;->M:LP1;

    .line 19
    iput-object v0, p0, LE1;->N:LM1;

    .line 20
    sget-object v1, LE1;->b0:[I

    iput-object v1, p0, LE1;->O:[I

    const/4 v1, 0x0

    .line 21
    iput-boolean v1, p0, LE1;->R:Z

    .line 22
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, LE1;->S:Ljava/util/ArrayList;

    .line 23
    iput v1, p0, LE1;->T:I

    .line 24
    iput-boolean v1, p0, LE1;->U:Z

    .line 25
    iput-boolean v1, p0, LE1;->V:Z

    .line 26
    iput-object v0, p0, LE1;->W:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LE1;->X:Ljava/util/ArrayList;

    .line 28
    sget-object v0, LE1;->c0:Lv1;

    iput-object v0, p0, LE1;->a0:Lv1;

    return-void
.end method

.method public static a(LP1;Landroid/view/View;LO1;)V
    .locals 6

    .line 67
    iget-object v0, p0, LP1;->a:LJ6;

    invoke-virtual {v0, p1, p2}, Ld7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    const/4 v0, 0x0

    if-ltz p2, :cond_1

    .line 69
    iget-object v1, p0, LP1;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 70
    iget-object v1, p0, LP1;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 71
    :cond_0
    iget-object v1, p0, LP1;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    :cond_1
    :goto_0
    invoke-static {p1}, LA7;->n(Landroid/view/View;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_4

    .line 73
    iget-object v3, p0, LP1;->d:LJ6;

    .line 74
    invoke-virtual {v3, p2}, Ld7;->a(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_3

    .line 75
    iget-object v3, p0, LP1;->d:LJ6;

    invoke-virtual {v3, p2, v0}, Ld7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 76
    :cond_3
    iget-object v3, p0, LP1;->d:LJ6;

    invoke-virtual {v3, p2, p1}, Ld7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_4
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Landroid/widget/ListView;

    if-eqz p2, :cond_7

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    .line 79
    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 80
    invoke-virtual {p2, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 81
    invoke-virtual {p2, v3}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v3

    .line 82
    iget-object p2, p0, LP1;->c:LQ6;

    .line 83
    iget-boolean v5, p2, LQ6;->w:Z

    if-eqz v5, :cond_5

    .line 84
    invoke-virtual {p2}, LQ6;->b()V

    .line 85
    :cond_5
    iget-object v5, p2, LQ6;->x:[J

    iget p2, p2, LQ6;->z:I

    invoke-static {v5, p2, v3, v4}, LN6;->a([JIJ)I

    move-result p2

    if-ltz p2, :cond_6

    .line 86
    iget-object p1, p0, LP1;->c:LQ6;

    invoke-virtual {p1, v3, v4}, LQ6;->a(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_7

    .line 87
    invoke-virtual {p1, v2}, Landroid/view/View;->setHasTransientState(Z)V

    .line 88
    iget-object p0, p0, LP1;->c:LQ6;

    invoke-virtual {p0, v3, v4, v0}, LQ6;->c(JLjava/lang/Object;)V

    goto :goto_3

    .line 89
    :cond_6
    invoke-virtual {p1, v1}, Landroid/view/View;->setHasTransientState(Z)V

    .line 90
    iget-object p0, p0, LP1;->c:LQ6;

    invoke-virtual {p0, v3, v4, p1}, LQ6;->c(JLjava/lang/Object;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public static a(LO1;LO1;Ljava/lang/String;)Z
    .locals 0

    .line 126
    iget-object p0, p0, LO1;->a:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 127
    iget-object p1, p1, LO1;->a:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 128
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p2, p0

    :cond_2
    :goto_0
    return p2
.end method

.method public static e()LJ6;
    .locals 2

    .line 1
    sget-object v0, LE1;->d0:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJ6;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, LJ6;

    invoke-direct {v0}, LJ6;-><init>()V

    .line 3
    sget-object v1, LE1;->d0:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(J)LE1;
    .locals 0

    .line 1
    iput-wide p1, p0, LE1;->y:J

    return-object p0
.end method

.method public a(LD1;)LE1;
    .locals 1

    .line 142
    iget-object v0, p0, LE1;->W:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LE1;->W:Ljava/util/ArrayList;

    .line 144
    :cond_0
    iget-object v0, p0, LE1;->W:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Landroid/animation/TimeInterpolator;)LE1;
    .locals 0

    .line 2
    iput-object p1, p0, LE1;->z:Landroid/animation/TimeInterpolator;

    return-object p0
.end method

.method public a(Landroid/view/View;)LE1;
    .locals 1

    .line 40
    iget-object v0, p0, LE1;->B:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Landroid/view/ViewGroup;LO1;LO1;)Landroid/animation/Animator;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 149
    invoke-static {p1}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 151
    iget-wide v0, p0, LE1;->y:J

    const-wide/16 v2, -0x1

    const-string v4, ") "

    cmp-long v5, v0, v2

    if-eqz v5, :cond_0

    const-string v0, "dur("

    .line 152
    invoke-static {p1, v0}, LZi;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v0, p0, LE1;->y:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 153
    :cond_0
    iget-wide v0, p0, LE1;->x:J

    cmp-long v5, v0, v2

    if-eqz v5, :cond_1

    const-string v0, "dly("

    .line 154
    invoke-static {p1, v0}, LZi;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v0, p0, LE1;->x:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 155
    :cond_1
    iget-object v0, p0, LE1;->z:Landroid/animation/TimeInterpolator;

    if-eqz v0, :cond_2

    const-string v0, "interp("

    .line 156
    invoke-static {p1, v0}, LZi;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, LE1;->z:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 157
    :cond_2
    iget-object v0, p0, LE1;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    iget-object v0, p0, LE1;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    :cond_3
    const-string v0, "tgts("

    .line 158
    invoke-static {p1, v0}, LZi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 159
    iget-object v0, p0, LE1;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, ", "

    const/4 v2, 0x0

    if-lez v0, :cond_5

    const/4 v0, 0x0

    .line 160
    :goto_0
    iget-object v3, p0, LE1;->A:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    if-lez v0, :cond_4

    .line 161
    invoke-static {p1, v1}, LZi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 162
    :cond_4
    invoke-static {p1}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v3, p0, LE1;->A:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    :cond_5
    iget-object v0, p0, LE1;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 164
    :goto_1
    iget-object v0, p0, LE1;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    if-lez v2, :cond_6

    .line 165
    invoke-static {p1, v1}, LZi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 166
    :cond_6
    invoke-static {p1}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, LE1;->B:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    const-string v0, ")"

    .line 167
    invoke-static {p1, v0}, LZi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_8
    return-object p1
.end method

.method public a()V
    .locals 6

    .line 129
    iget v0, p0, LE1;->T:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, LE1;->T:I

    if-nez v0, :cond_5

    .line 130
    iget-object v0, p0, LE1;->W:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 131
    iget-object v0, p0, LE1;->W:Ljava/util/ArrayList;

    .line 132
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 133
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    .line 134
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LD1;

    invoke-interface {v5, p0}, LD1;->b(LE1;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 135
    :goto_1
    iget-object v3, p0, LE1;->L:LP1;

    iget-object v3, v3, LP1;->c:LQ6;

    invoke-virtual {v3}, LQ6;->c()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 136
    iget-object v3, p0, LE1;->L:LP1;

    iget-object v3, v3, LP1;->c:LQ6;

    invoke-virtual {v3, v0}, LQ6;->a(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_1

    .line 137
    invoke-static {v3, v2}, LA7;->a(Landroid/view/View;Z)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 138
    :goto_2
    iget-object v3, p0, LE1;->M:LP1;

    iget-object v3, v3, LP1;->c:LQ6;

    invoke-virtual {v3}, LQ6;->c()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 139
    iget-object v3, p0, LE1;->M:LP1;

    iget-object v3, v3, LP1;->c:LQ6;

    invoke-virtual {v3, v0}, LQ6;->a(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_3

    .line 140
    invoke-static {v3, v2}, LA7;->a(Landroid/view/View;Z)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 141
    :cond_4
    iput-boolean v1, p0, LE1;->V:Z

    :cond_5
    return-void
.end method

.method public a(LC1;)V
    .locals 0

    .line 147
    iput-object p1, p0, LE1;->Z:LC1;

    return-void
.end method

.method public a(LJ1;)V
    .locals 0

    .line 148
    iput-object p1, p0, LE1;->Y:LJ1;

    return-void
.end method

.method public abstract a(LO1;)V
.end method

.method public final a(Landroid/view/View;Z)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 97
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 98
    iget-object v1, p0, LE1;->E:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 99
    :cond_1
    iget-object v1, p0, LE1;->F:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 100
    :cond_2
    iget-object v1, p0, LE1;->G:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 101
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    .line 102
    iget-object v4, p0, LE1;->G:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    return-void

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 103
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_7

    .line 104
    new-instance v1, LO1;

    invoke-direct {v1}, LO1;-><init>()V

    .line 105
    iput-object p1, v1, LO1;->b:Landroid/view/View;

    if-eqz p2, :cond_5

    .line 106
    invoke-virtual {p0, v1}, LE1;->c(LO1;)V

    goto :goto_1

    .line 107
    :cond_5
    invoke-virtual {p0, v1}, LE1;->a(LO1;)V

    .line 108
    :goto_1
    iget-object v3, v1, LO1;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-virtual {p0, v1}, LE1;->b(LO1;)V

    if-eqz p2, :cond_6

    .line 110
    iget-object v3, p0, LE1;->L:LP1;

    invoke-static {v3, p1, v1}, LE1;->a(LP1;Landroid/view/View;LO1;)V

    goto :goto_2

    .line 111
    :cond_6
    iget-object v3, p0, LE1;->M:LP1;

    invoke-static {v3, p1, v1}, LE1;->a(LP1;Landroid/view/View;LO1;)V

    .line 112
    :cond_7
    :goto_2
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_c

    .line 113
    iget-object v1, p0, LE1;->I:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 114
    :cond_8
    iget-object v0, p0, LE1;->J:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 115
    :cond_9
    iget-object v0, p0, LE1;->K:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 116
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_b

    .line 117
    iget-object v3, p0, LE1;->K:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    return-void

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 118
    :cond_b
    check-cast p1, Landroid/view/ViewGroup;

    .line 119
    :goto_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_c

    .line 120
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, LE1;->a(Landroid/view/View;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_c
    return-void
.end method

.method public a(Landroid/view/ViewGroup;LP1;LP1;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 19

    move-object/from16 v6, p0

    .line 3
    invoke-static {}, LE1;->e()LJ6;

    move-result-object v7

    .line 4
    new-instance v8, Landroid/util/SparseIntArray;

    invoke-direct {v8}, Landroid/util/SparseIntArray;-><init>()V

    .line 5
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v9, :cond_d

    move-object/from16 v12, p4

    .line 6
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LO1;

    move-object/from16 v13, p5

    .line 7
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LO1;

    if-eqz v0, :cond_0

    .line 8
    iget-object v3, v0, LO1;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x0

    :cond_0
    if-eqz v1, :cond_1

    .line 9
    iget-object v3, v1, LO1;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x0

    :cond_1
    if-nez v0, :cond_4

    if-nez v1, :cond_4

    :cond_2
    move-object/from16 v14, p1

    :cond_3
    move-object/from16 v15, p3

    move/from16 v17, v9

    goto/16 :goto_7

    :cond_4
    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    .line 10
    invoke-virtual {v6, v0, v1}, LE1;->a(LO1;LO1;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_2

    move-object/from16 v14, p1

    .line 11
    invoke-virtual {v6, v14, v0, v1}, LE1;->a(Landroid/view/ViewGroup;LO1;LO1;)Landroid/animation/Animator;

    move-result-object v3

    if-eqz v3, :cond_3

    if-eqz v1, :cond_b

    .line 12
    iget-object v0, v1, LO1;->b:Landroid/view/View;

    .line 13
    invoke-virtual/range {p0 .. p0}, LE1;->b()[Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_a

    if-eqz v1, :cond_a

    .line 14
    array-length v4, v1

    if-lez v4, :cond_a

    .line 15
    new-instance v4, LO1;

    invoke-direct {v4}, LO1;-><init>()V

    .line 16
    iput-object v0, v4, LO1;->b:Landroid/view/View;

    move-object/from16 v15, p3

    .line 17
    iget-object v5, v15, LP1;->a:LJ6;

    invoke-virtual {v5, v0}, Ld7;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LO1;

    if-eqz v5, :cond_7

    const/4 v2, 0x0

    .line 18
    :goto_3
    array-length v10, v1

    if-ge v2, v10, :cond_7

    .line 19
    iget-object v10, v4, LO1;->a:Ljava/util/Map;

    move-object/from16 v16, v3

    aget-object v3, v1, v2

    move/from16 v17, v9

    iget-object v9, v5, LO1;->a:Ljava/util/Map;

    move-object/from16 v18, v5

    aget-object v5, v1, v2

    .line 20
    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 21
    invoke-interface {v10, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, v16

    move/from16 v9, v17

    move-object/from16 v5, v18

    goto :goto_3

    :cond_7
    move-object/from16 v16, v3

    move/from16 v17, v9

    .line 22
    iget v1, v7, Ld7;->y:I

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_9

    .line 23
    invoke-virtual {v7, v2}, Ld7;->c(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    .line 24
    invoke-virtual {v7, v3}, Ld7;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LB1;

    .line 25
    iget-object v5, v3, LB1;->c:LO1;

    if-eqz v5, :cond_8

    iget-object v5, v3, LB1;->a:Landroid/view/View;

    if-ne v5, v0, :cond_8

    iget-object v5, v3, LB1;->b:Ljava/lang/String;

    .line 26
    iget-object v9, v6, LE1;->w:Ljava/lang/String;

    .line 27
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 28
    iget-object v3, v3, LB1;->c:LO1;

    invoke-virtual {v3, v4}, LO1;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x0

    goto :goto_5

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_9
    move-object/from16 v3, v16

    goto :goto_5

    :cond_a
    move-object/from16 v15, p3

    move-object/from16 v16, v3

    move/from16 v17, v9

    move-object/from16 v3, v16

    const/4 v4, 0x0

    :goto_5
    move-object v1, v0

    move-object v9, v3

    move-object v5, v4

    goto :goto_6

    :cond_b
    move-object/from16 v15, p3

    move-object/from16 v16, v3

    move/from16 v17, v9

    .line 29
    iget-object v0, v0, LO1;->b:Landroid/view/View;

    move-object v1, v0

    move-object/from16 v9, v16

    const/4 v5, 0x0

    :goto_6
    if-eqz v9, :cond_c

    .line 30
    new-instance v10, LB1;

    .line 31
    iget-object v2, v6, LE1;->w:Ljava/lang/String;

    .line 32
    invoke-static/range {p1 .. p1}, LY1;->c(Landroid/view/View;)Li2;

    move-result-object v4

    move-object v0, v10

    move-object/from16 v3, p0

    invoke-direct/range {v0 .. v5}, LB1;-><init>(Landroid/view/View;Ljava/lang/String;LE1;Li2;LO1;)V

    .line 33
    invoke-virtual {v7, v9, v10}, Ld7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, v6, LE1;->X:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_7
    add-int/lit8 v11, v11, 0x1

    move/from16 v9, v17

    goto/16 :goto_0

    :cond_d
    const/4 v0, 0x0

    .line 35
    :goto_8
    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_e

    .line 36
    invoke-virtual {v8, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 37
    iget-object v2, v6, LE1;->X:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    .line 38
    invoke-virtual {v8, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0x7fffffffffffffffL

    sub-long/2addr v2, v4

    invoke-virtual {v1}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v4

    add-long/2addr v4, v2

    .line 39
    invoke-virtual {v1, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_e
    return-void
.end method

.method public a(Landroid/view/ViewGroup;Z)V
    .locals 5

    .line 41
    invoke-virtual {p0, p2}, LE1;->a(Z)V

    .line 42
    iget-object v0, p0, LE1;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, LE1;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    :cond_0
    iget-object v0, p0, LE1;->C:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 43
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, LE1;->D:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 44
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {p0, p1, p2}, LE1;->a(Landroid/view/View;Z)V

    goto/16 :goto_7

    :cond_3
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 46
    :goto_1
    iget-object v2, p0, LE1;->A:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 47
    iget-object v2, p0, LE1;->A:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 48
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 49
    new-instance v3, LO1;

    invoke-direct {v3}, LO1;-><init>()V

    .line 50
    iput-object v2, v3, LO1;->b:Landroid/view/View;

    if-eqz p2, :cond_4

    .line 51
    invoke-virtual {p0, v3}, LE1;->c(LO1;)V

    goto :goto_2

    .line 52
    :cond_4
    invoke-virtual {p0, v3}, LE1;->a(LO1;)V

    .line 53
    :goto_2
    iget-object v4, v3, LO1;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-virtual {p0, v3}, LE1;->b(LO1;)V

    if-eqz p2, :cond_5

    .line 55
    iget-object v4, p0, LE1;->L:LP1;

    invoke-static {v4, v2, v3}, LE1;->a(LP1;Landroid/view/View;LO1;)V

    goto :goto_3

    .line 56
    :cond_5
    iget-object v4, p0, LE1;->M:LP1;

    invoke-static {v4, v2, v3}, LE1;->a(LP1;Landroid/view/View;LO1;)V

    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 57
    :cond_7
    :goto_4
    iget-object p1, p0, LE1;->B:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_a

    .line 58
    iget-object p1, p0, LE1;->B:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 59
    new-instance v1, LO1;

    invoke-direct {v1}, LO1;-><init>()V

    .line 60
    iput-object p1, v1, LO1;->b:Landroid/view/View;

    if-eqz p2, :cond_8

    .line 61
    invoke-virtual {p0, v1}, LE1;->c(LO1;)V

    goto :goto_5

    .line 62
    :cond_8
    invoke-virtual {p0, v1}, LE1;->a(LO1;)V

    .line 63
    :goto_5
    iget-object v2, v1, LO1;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-virtual {p0, v1}, LE1;->b(LO1;)V

    if-eqz p2, :cond_9

    .line 65
    iget-object v2, p0, LE1;->L:LP1;

    invoke-static {v2, p1, v1}, LE1;->a(LP1;Landroid/view/View;LO1;)V

    goto :goto_6

    .line 66
    :cond_9
    iget-object v2, p0, LE1;->M:LP1;

    invoke-static {v2, p1, v1}, LE1;->a(LP1;Landroid/view/View;LO1;)V

    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_a
    :goto_7
    return-void
.end method

.method public a(Lv1;)V
    .locals 0

    if-nez p1, :cond_0

    .line 145
    sget-object p1, LE1;->c0:Lv1;

    iput-object p1, p0, LE1;->a0:Lv1;

    goto :goto_0

    .line 146
    :cond_0
    iput-object p1, p0, LE1;->a0:Lv1;

    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 91
    iget-object p1, p0, LE1;->L:LP1;

    iget-object p1, p1, LP1;->a:LJ6;

    invoke-virtual {p1}, Ld7;->clear()V

    .line 92
    iget-object p1, p0, LE1;->L:LP1;

    iget-object p1, p1, LP1;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 93
    iget-object p1, p0, LE1;->L:LP1;

    iget-object p1, p1, LP1;->c:LQ6;

    invoke-virtual {p1}, LQ6;->a()V

    goto :goto_0

    .line 94
    :cond_0
    iget-object p1, p0, LE1;->M:LP1;

    iget-object p1, p1, LP1;->a:LJ6;

    invoke-virtual {p1}, Ld7;->clear()V

    .line 95
    iget-object p1, p0, LE1;->M:LP1;

    iget-object p1, p1, LP1;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 96
    iget-object p1, p0, LE1;->M:LP1;

    iget-object p1, p1, LP1;->c:LQ6;

    invoke-virtual {p1}, LQ6;->a()V

    :goto_0
    return-void
.end method

.method public a(LO1;LO1;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 121
    invoke-virtual {p0}, LE1;->b()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 122
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 123
    invoke-static {p1, p2, v5}, LE1;->a(LO1;LO1;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 124
    :cond_1
    iget-object v2, p1, LO1;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 125
    invoke-static {p1, p2, v3}, LE1;->a(LO1;LO1;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public b(J)LE1;
    .locals 0

    .line 1
    iput-wide p1, p0, LE1;->x:J

    return-object p0
.end method

.method public b(LD1;)LE1;
    .locals 1

    .line 29
    iget-object v0, p0, LE1;->W:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-object p0

    .line 30
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 31
    iget-object p1, p0, LE1;->W:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, LE1;->W:Ljava/util/ArrayList;

    :cond_1
    return-object p0
.end method

.method public b(Landroid/view/View;Z)LO1;
    .locals 6

    .line 21
    iget-object v0, p0, LE1;->N:LM1;

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {v0, p1, p2}, LE1;->b(Landroid/view/View;Z)LO1;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 23
    iget-object v0, p0, LE1;->P:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    iget-object v0, p0, LE1;->Q:Ljava/util/ArrayList;

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_2

    return-object v1

    .line 24
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_5

    .line 25
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LO1;

    if-nez v5, :cond_3

    return-object v1

    .line 26
    :cond_3
    iget-object v5, v5, LO1;->b:Landroid/view/View;

    if-ne v5, p1, :cond_4

    move v3, v4

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    if-ltz v3, :cond_7

    if-eqz p2, :cond_6

    .line 27
    iget-object p1, p0, LE1;->Q:Ljava/util/ArrayList;

    goto :goto_3

    :cond_6
    iget-object p1, p0, LE1;->P:Ljava/util/ArrayList;

    .line 28
    :goto_3
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, LO1;

    :cond_7
    return-object v1
.end method

.method public b(LO1;)V
    .locals 0

    return-void
.end method

.method public b(Landroid/view/View;)Z
    .locals 5

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 3
    iget-object v1, p0, LE1;->E:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 4
    :cond_0
    iget-object v1, p0, LE1;->F:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 5
    :cond_1
    iget-object v1, p0, LE1;->G:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 7
    iget-object v4, p0, LE1;->G:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 8
    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_3
    iget-object v1, p0, LE1;->H:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    invoke-static {p1}, LA7;->n(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 10
    iget-object v1, p0, LE1;->H:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v2

    .line 13
    :cond_4
    iget-object v1, p0, LE1;->A:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_7

    iget-object v1, p0, LE1;->B:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, LE1;->D:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_5
    iget-object v1, p0, LE1;->C:Ljava/util/ArrayList;

    if-eqz v1, :cond_6

    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    return v3

    .line 16
    :cond_7
    iget-object v1, p0, LE1;->A:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, LE1;->B:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_2

    .line 17
    :cond_8
    iget-object v0, p0, LE1;->C:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    invoke-static {p1}, LA7;->n(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return v3

    .line 18
    :cond_9
    iget-object v0, p0, LE1;->D:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    .line 19
    :goto_1
    iget-object v1, p0, LE1;->D:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_b

    .line 20
    iget-object v1, p0, LE1;->D:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    return v3

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_b
    return v2

    :cond_c
    :goto_2
    return v3
.end method

.method public b()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Landroid/view/View;Z)LO1;
    .locals 1

    .line 17
    iget-object v0, p0, LE1;->N:LM1;

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {v0, p1, p2}, LE1;->c(Landroid/view/View;Z)LO1;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 19
    iget-object p2, p0, LE1;->L:LP1;

    goto :goto_0

    :cond_1
    iget-object p2, p0, LE1;->M:LP1;

    .line 20
    :goto_0
    iget-object p2, p2, LP1;->a:LJ6;

    invoke-virtual {p2, p1}, Ld7;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LO1;

    return-object p1
.end method

.method public c()V
    .locals 8

    .line 1
    invoke-virtual {p0}, LE1;->d()V

    .line 2
    invoke-static {}, LE1;->e()LJ6;

    move-result-object v0

    .line 3
    iget-object v1, p0, LE1;->X:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 4
    invoke-virtual {v0, v2}, Ld7;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {p0}, LE1;->d()V

    if-eqz v2, :cond_0

    .line 6
    new-instance v3, Lz1;

    invoke-direct {v3, p0, v0}, Lz1;-><init>(LE1;LJ6;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 7
    iget-wide v3, p0, LE1;->y:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_1

    .line 8
    invoke-virtual {v2, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 9
    :cond_1
    iget-wide v3, p0, LE1;->x:J

    cmp-long v7, v3, v5

    if-ltz v7, :cond_2

    .line 10
    invoke-virtual {v2, v3, v4}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 11
    :cond_2
    iget-object v3, p0, LE1;->z:Landroid/animation/TimeInterpolator;

    if-eqz v3, :cond_3

    .line 12
    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 13
    :cond_3
    new-instance v3, LA1;

    invoke-direct {v3, p0}, LA1;-><init>(LE1;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 14
    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 15
    :cond_4
    iget-object v0, p0, LE1;->X:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 16
    invoke-virtual {p0}, LE1;->a()V

    return-void
.end method

.method public abstract c(LO1;)V
.end method

.method public c(Landroid/view/View;)V
    .locals 5

    .line 21
    iget-boolean v0, p0, LE1;->V:Z

    if-nez v0, :cond_3

    .line 22
    invoke-static {}, LE1;->e()LJ6;

    move-result-object v0

    .line 23
    iget v1, v0, Ld7;->y:I

    .line 24
    invoke-static {p1}, LY1;->c(Landroid/view/View;)Li2;

    move-result-object p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    .line 25
    invoke-virtual {v0, v1}, Ld7;->e(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LB1;

    .line 26
    iget-object v4, v3, LB1;->a:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v3, v3, LB1;->d:Li2;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 27
    invoke-virtual {v0, v1}, Ld7;->c(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    .line 28
    invoke-virtual {v3}, Landroid/animation/Animator;->pause()V

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 29
    :cond_1
    iget-object p1, p0, LE1;->W:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 30
    iget-object p1, p0, LE1;->W:Ljava/util/ArrayList;

    .line 31
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 32
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 33
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LD1;

    invoke-interface {v3, p0}, LD1;->a(LE1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 34
    :cond_2
    iput-boolean v2, p0, LE1;->U:Z

    :cond_3
    return-void
.end method

.method public clone()LE1;
    .locals 3

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LE1;

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, LE1;->X:Ljava/util/ArrayList;

    .line 4
    new-instance v2, LP1;

    invoke-direct {v2}, LP1;-><init>()V

    iput-object v2, v1, LE1;->L:LP1;

    .line 5
    new-instance v2, LP1;

    invoke-direct {v2}, LP1;-><init>()V

    iput-object v2, v1, LE1;->M:LP1;

    .line 6
    iput-object v0, v1, LE1;->P:Ljava/util/ArrayList;

    .line 7
    iput-object v0, v1, LE1;->Q:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, LE1;->clone()LE1;

    move-result-object v0

    return-object v0
.end method

.method public d(Landroid/view/View;)LE1;
    .locals 1

    .line 1
    iget-object v0, p0, LE1;->B:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public d()V
    .locals 5

    .line 2
    iget v0, p0, LE1;->T:I

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, LE1;->W:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    iget-object v0, p0, LE1;->W:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 7
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LD1;

    invoke-interface {v4, p0}, LD1;->c(LE1;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_0
    iput-boolean v1, p0, LE1;->V:Z

    .line 9
    :cond_1
    iget v0, p0, LE1;->T:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LE1;->T:I

    return-void
.end method

.method public e(Landroid/view/View;)V
    .locals 5

    .line 4
    iget-boolean v0, p0, LE1;->U:Z

    if-eqz v0, :cond_3

    .line 5
    iget-boolean v0, p0, LE1;->V:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 6
    invoke-static {}, LE1;->e()LJ6;

    move-result-object v0

    .line 7
    iget v2, v0, Ld7;->y:I

    .line 8
    invoke-static {p1}, LY1;->c(Landroid/view/View;)Li2;

    move-result-object p1

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    .line 9
    invoke-virtual {v0, v2}, Ld7;->e(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LB1;

    .line 10
    iget-object v4, v3, LB1;->a:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v3, v3, LB1;->d:Li2;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 11
    invoke-virtual {v0, v2}, Ld7;->c(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    .line 12
    invoke-virtual {v3}, Landroid/animation/Animator;->resume()V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 13
    :cond_1
    iget-object p1, p0, LE1;->W:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 14
    iget-object p1, p0, LE1;->W:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 16
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    .line 17
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LD1;

    invoke-interface {v3, p0}, LD1;->d(LE1;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 18
    :cond_2
    iput-boolean v1, p0, LE1;->U:Z

    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 1
    invoke-virtual {p0, v0}, LE1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
