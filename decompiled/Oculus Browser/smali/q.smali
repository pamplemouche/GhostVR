.class public abstract Lq;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final h:Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Lj;

.field public volatile c:Ljava/lang/Object;

.field public volatile d:Ljava/lang/Object;

.field public e:I

.field public f:Z

.field public g:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lq;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lq;->a:Ljava/lang/Object;

    .line 3
    new-instance v0, Lj;

    invoke-direct {v0}, Lj;-><init>()V

    iput-object v0, p0, Lq;->b:Lj;

    .line 4
    sget-object v0, Lq;->h:Ljava/lang/Object;

    iput-object v0, p0, Lq;->c:Ljava/lang/Object;

    .line 5
    sget-object v0, Lq;->h:Ljava/lang/Object;

    iput-object v0, p0, Lq;->d:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lq;->e:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 4

    .line 1
    invoke-static {}, La;->b()La;

    move-result-object v0

    .line 2
    iget-object v0, v0, La;->a:Lc;

    invoke-virtual {v0}, Lc;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3
    iget v0, p0, Lq;->e:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lq;->e:I

    .line 4
    iput-object p1, p0, Lq;->c:Ljava/lang/Object;

    .line 5
    iget-boolean p1, p0, Lq;->f:Z

    if-eqz p1, :cond_0

    .line 6
    iput-boolean v1, p0, Lq;->g:Z

    goto :goto_0

    .line 7
    :cond_0
    iput-boolean v1, p0, Lq;->f:Z

    :cond_1
    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lq;->g:Z

    const/4 v0, 0x0

    .line 9
    iget-object v1, p0, Lq;->b:Lj;

    if-eqz v1, :cond_3

    .line 10
    new-instance v2, Lh;

    invoke-direct {v2, v1, v0}, Lh;-><init>(Lj;Le;)V

    .line 11
    iget-object v1, v1, Lj;->w:Ljava/util/WeakHashMap;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {v2}, Lh;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 13
    iget-boolean v0, p0, Lq;->g:Z

    if-nez v0, :cond_1

    .line 14
    iput-boolean p1, p0, Lq;->f:Z

    :goto_0
    return-void

    .line 15
    :cond_2
    invoke-virtual {v2}, Lh;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lp;

    .line 16
    throw v0

    .line 17
    :cond_3
    throw v0

    .line 18
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot invoke setValue on a background thread"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
