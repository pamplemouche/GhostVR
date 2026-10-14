.class public abstract Landroid/support/v7/widget/ft;
.super Ljava/lang/Object;


# static fields
.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private c:I

.field public final d:Landroid/view/View;

.field e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/v7/widget/RecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field f:I

.field g:I

.field h:J

.field i:I

.field j:I

.field k:Landroid/support/v7/widget/ft;

.field l:Landroid/support/v7/widget/ft;

.field m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field o:I

.field p:Landroid/support/v7/widget/RecyclerView;

.field private q:Landroid/support/v7/widget/ff;

.field private r:Z

.field private s:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sput-object v0, Landroid/support/v7/widget/ft;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/ft;->f:I

    iput v0, p0, Landroid/support/v7/widget/ft;->g:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/support/v7/widget/ft;->h:J

    iput v0, p0, Landroid/support/v7/widget/ft;->i:I

    iput v0, p0, Landroid/support/v7/widget/ft;->j:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v7/widget/ft;->k:Landroid/support/v7/widget/ft;

    iput-object v1, p0, Landroid/support/v7/widget/ft;->l:Landroid/support/v7/widget/ft;

    iput-object v1, p0, Landroid/support/v7/widget/ft;->m:Ljava/util/List;

    iput-object v1, p0, Landroid/support/v7/widget/ft;->n:Ljava/util/List;

    const/4 v2, 0x0

    iput v2, p0, Landroid/support/v7/widget/ft;->c:I

    iput-object v1, p0, Landroid/support/v7/widget/ft;->q:Landroid/support/v7/widget/ff;

    iput-boolean v2, p0, Landroid/support/v7/widget/ft;->r:Z

    iput v2, p0, Landroid/support/v7/widget/ft;->s:I

    iput v0, p0, Landroid/support/v7/widget/ft;->o:I

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/support/v7/widget/ft;->d:Landroid/view/View;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "itemView may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Landroid/support/v7/widget/ft;Landroid/support/v7/widget/ff;)Landroid/support/v7/widget/ff;
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/ft;->q:Landroid/support/v7/widget/ff;

    return-object p1
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ft;->m:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ft;->m:Ljava/util/List;

    iget-object v0, p0, Landroid/support/v7/widget/ft;->m:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/ft;->n:Ljava/util/List;

    :cond_0
    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/ft;->o:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ft;->d:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/be;->d(Landroid/view/View;)I

    move-result v0

    :goto_0
    iput v0, p0, Landroid/support/v7/widget/ft;->s:I

    const/4 v0, 0x4

    invoke-virtual {p1, p0, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/ft;I)Z

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/ft;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/ft;->a(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/ft;)Z
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/ft;->c()Z

    move-result p0

    return p0
.end method

.method static synthetic a(Landroid/support/v7/widget/ft;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/widget/ft;->r:Z

    return p1
.end method

.method private b(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/ft;->s:I

    invoke-virtual {p1, p0, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/ft;I)Z

    const/4 p1, 0x0

    iput p1, p0, Landroid/support/v7/widget/ft;->s:I

    return-void
.end method

.method static synthetic b(Landroid/support/v7/widget/ft;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/ft;->b(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method private b()Z
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/ft;->a:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic b(Landroid/support/v7/widget/ft;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/support/v7/widget/ft;->r:Z

    return p0
.end method

.method private c()Z
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/ft;->a:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ft;->d:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/be;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic c(Landroid/support/v7/widget/ft;)Z
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/ft;->b()Z

    move-result p0

    return p0
.end method

.method static synthetic d(Landroid/support/v7/widget/ft;)I
    .locals 0

    iget p0, p0, Landroid/support/v7/widget/ft;->a:I

    return p0
.end method


# virtual methods
.method public final A()Z
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/ft;->a:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ft;->d:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/be;->b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method B()Z
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/ft;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method a(II)V
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/ft;->a:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int/2addr p1, p2

    or-int/2addr p1, v0

    iput p1, p0, Landroid/support/v7/widget/ft;->a:I

    return-void
.end method

.method a(IIZ)V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ft;->c(I)V

    invoke-virtual {p0, p2, p3}, Landroid/support/v7/widget/ft;->a(IZ)V

    iput p1, p0, Landroid/support/v7/widget/ft;->f:I

    return-void
.end method

.method a(IZ)V
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/ft;->g:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/ft;->f:I

    iput v0, p0, Landroid/support/v7/widget/ft;->g:I

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/ft;->j:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/support/v7/widget/ft;->f:I

    iput v0, p0, Landroid/support/v7/widget/ft;->j:I

    :cond_1
    if-eqz p2, :cond_2

    iget p2, p0, Landroid/support/v7/widget/ft;->j:I

    add-int/2addr p2, p1

    iput p2, p0, Landroid/support/v7/widget/ft;->j:I

    :cond_2
    iget p2, p0, Landroid/support/v7/widget/ft;->f:I

    add-int/2addr p2, p1

    iput p2, p0, Landroid/support/v7/widget/ft;->f:I

    iget-object p1, p0, Landroid/support/v7/widget/ft;->d:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroid/support/v7/widget/ft;->d:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/ey;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroid/support/v7/widget/ey;->e:Z

    :cond_3
    return-void
.end method

.method a(Landroid/support/v7/widget/ff;Z)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/ft;->q:Landroid/support/v7/widget/ff;

    iput-boolean p2, p0, Landroid/support/v7/widget/ft;->r:Z

    return-void
.end method

.method a(Ljava/lang/Object;)V
    .locals 2

    const/16 v0, 0x400

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ft;->c(I)V

    goto :goto_0

    :cond_0
    iget v1, p0, Landroid/support/v7/widget/ft;->a:I

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/support/v7/widget/ft;->a()V

    iget-object v0, p0, Landroid/support/v7/widget/ft;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method b(I)Z
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/ft;->a:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method c(I)V
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/ft;->a:I

    or-int/2addr p1, v0

    iput p1, p0, Landroid/support/v7/widget/ft;->a:I

    return-void
.end method

.method public final c(Z)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget v1, p0, Landroid/support/v7/widget/ft;->c:I

    sub-int/2addr v1, v0

    goto :goto_0

    :cond_0
    iget v1, p0, Landroid/support/v7/widget/ft;->c:I

    add-int/2addr v1, v0

    :goto_0
    iput v1, p0, Landroid/support/v7/widget/ft;->c:I

    iget v1, p0, Landroid/support/v7/widget/ft;->c:I

    if-gez v1, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Landroid/support/v7/widget/ft;->c:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "View"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    if-nez p1, :cond_2

    if-ne v1, v0, :cond_2

    iget p1, p0, Landroid/support/v7/widget/ft;->a:I

    or-int/lit8 p1, p1, 0x10

    :goto_1
    iput p1, p0, Landroid/support/v7/widget/ft;->a:I

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    iget p1, p0, Landroid/support/v7/widget/ft;->c:I

    if-nez p1, :cond_3

    iget p1, p0, Landroid/support/v7/widget/ft;->a:I

    and-int/lit8 p1, p1, -0x11

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method e()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/ft;->g:I

    iput v0, p0, Landroid/support/v7/widget/ft;->j:I

    return-void
.end method

.method f()V
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/ft;->g:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/ft;->f:I

    iput v0, p0, Landroid/support/v7/widget/ft;->g:I

    :cond_0
    return-void
.end method

.method g()Z
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/ft;->a:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final h()I
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/ft;->j:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/ft;->f:I

    :cond_0
    return v0
.end method

.method public final i()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ft;->p:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->d(Landroid/support/v7/widget/ft;)I

    move-result v0

    return v0
.end method

.method public final j()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/ft;->g:I

    return v0
.end method

.method public final k()J
    .locals 2

    iget-wide v0, p0, Landroid/support/v7/widget/ft;->h:J

    return-wide v0
.end method

.method public final l()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/ft;->i:I

    return v0
.end method

.method m()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ft;->q:Landroid/support/v7/widget/ff;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method n()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ft;->q:Landroid/support/v7/widget/ff;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/ff;->c(Landroid/support/v7/widget/ft;)V

    return-void
.end method

.method o()Z
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/ft;->a:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method p()V
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/ft;->a:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/support/v7/widget/ft;->a:I

    return-void
.end method

.method q()V
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/ft;->a:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Landroid/support/v7/widget/ft;->a:I

    return-void
.end method

.method r()Z
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/ft;->a:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method s()Z
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/ft;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method t()Z
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/ft;->a:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewHolder{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/v7/widget/ft;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/support/v7/widget/ft;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", oldPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/v7/widget/ft;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pLpos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/v7/widget/ft;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/ft;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, " scrap "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/support/v7/widget/ft;->r:Z

    if-eqz v1, :cond_0

    const-string v1, "[changeScrap]"

    goto :goto_0

    :cond_0
    const-string v1, "[attachedScrap]"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/ft;->r()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, " invalid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/ft;->t()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, " unbound"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/widget/ft;->s()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, " update"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/ft;->u()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, " removed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/ft;->g()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, " ignored"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/widget/ft;->v()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, " tmpDetached"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {p0}, Landroid/support/v7/widget/ft;->A()Z

    move-result v1

    if-nez v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " not recyclable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/v7/widget/ft;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {p0}, Landroid/support/v7/widget/ft;->w()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, " undefined adapter position"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget-object v1, p0, Landroid/support/v7/widget/ft;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_a

    const-string v1, " no parent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method u()Z
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/ft;->a:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method v()Z
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/ft;->a:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method w()Z
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/ft;->a:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/ft;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method x()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ft;->m:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/ft;->a:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroid/support/v7/widget/ft;->a:I

    return-void
.end method

.method y()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget v0, p0, Landroid/support/v7/widget/ft;->a:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/ft;->m:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ft;->n:Ljava/util/List;

    return-object v0

    :cond_1
    :goto_0
    sget-object v0, Landroid/support/v7/widget/ft;->b:Ljava/util/List;

    return-object v0

    :cond_2
    sget-object v0, Landroid/support/v7/widget/ft;->b:Ljava/util/List;

    return-object v0
.end method

.method z()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/ft;->a:I

    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v7/widget/ft;->f:I

    iput v1, p0, Landroid/support/v7/widget/ft;->g:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/support/v7/widget/ft;->h:J

    iput v1, p0, Landroid/support/v7/widget/ft;->j:I

    iput v0, p0, Landroid/support/v7/widget/ft;->c:I

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/support/v7/widget/ft;->k:Landroid/support/v7/widget/ft;

    iput-object v2, p0, Landroid/support/v7/widget/ft;->l:Landroid/support/v7/widget/ft;

    invoke-virtual {p0}, Landroid/support/v7/widget/ft;->x()V

    iput v0, p0, Landroid/support/v7/widget/ft;->s:I

    iput v1, p0, Landroid/support/v7/widget/ft;->o:I

    invoke-static {p0}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/support/v7/widget/ft;)V

    return-void
.end method
