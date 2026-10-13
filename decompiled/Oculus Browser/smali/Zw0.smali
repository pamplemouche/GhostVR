.class public LZw0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:I

.field public b:Ljava/util/ArrayList;

.field public c:I

.field public d:Z

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/util/Collection;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, LZw0;->d:Z

    .line 8
    iput p1, p0, LZw0;->a:I

    .line 9
    invoke-virtual {p0, p2, p3}, LZw0;->a(ILjava/util/Collection;)V

    return-void
.end method

.method public constructor <init>(ILCQ0;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    new-array v2, v0, [LCQ0;

    aput-object p2, v2, v1

    .line 1
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 2
    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean v0, p0, LZw0;->d:Z

    .line 4
    iput p1, p0, LZw0;->a:I

    .line 5
    invoke-virtual {p0, v1, p2}, LZw0;->a(ILjava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 6
    iget v0, p0, LZw0;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7f1304a7

    return v0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const v0, 0x7f1304aa

    return v0

    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const v0, 0x7f1304a9

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public a(I)LCQ0;
    .locals 1

    .line 1
    iget-object v0, p0, LZw0;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-ltz p1, :cond_1

    iget-object v0, p0, LZw0;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, LZw0;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LCQ0;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(ILjava/util/Collection;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 7
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iput p1, p0, LZw0;->c:I

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, LZw0;->b:Ljava/util/ArrayList;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    .line 10
    iput p1, p0, LZw0;->c:I

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, LZw0;->b:Ljava/util/ArrayList;

    :goto_1
    return-void
.end method

.method public a(LCQ0;)V
    .locals 2

    .line 3
    iget-object v0, p0, LZw0;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LZw0;->b:Ljava/util/ArrayList;

    .line 4
    :cond_0
    iget-object v0, p0, LZw0;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5
    iput v1, p0, LZw0;->c:I

    return-void
.end method

.method public b()LCQ0;
    .locals 1

    .line 1
    iget v0, p0, LZw0;->c:I

    .line 2
    invoke-virtual {p0, v0}, LZw0;->a(I)LCQ0;

    move-result-object v0

    return-object v0
.end method

.method public b(LCQ0;)V
    .locals 4

    .line 3
    iget-object v0, p0, LZw0;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LZw0;->b:Ljava/util/ArrayList;

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, LZw0;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 5
    iget-object v2, p0, LZw0;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LCQ0;

    .line 6
    iget-object v2, v2, LCQ0;->C:Ljava/lang/String;

    iget-object v3, p1, LCQ0;->C:Ljava/lang/String;

    .line 7
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_2
    :goto_1
    iget-object v2, p0, LZw0;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, -0x1

    if-ge v1, v2, :cond_4

    .line 9
    iget-object v0, p0, LZw0;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget v0, p0, LZw0;->c:I

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, LCQ0;->h()Z

    move-result p1

    if-nez p1, :cond_3

    iput v3, p0, LZw0;->c:I

    :cond_3
    return-void

    .line 11
    :cond_4
    iget-object v1, p0, LZw0;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 12
    invoke-virtual {p1}, LCQ0;->h()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 13
    iput v0, p0, LZw0;->c:I

    goto :goto_2

    .line 14
    :cond_5
    iput v3, p0, LZw0;->c:I

    :goto_2
    return-void
.end method

.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, LZw0;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public c(LCQ0;)V
    .locals 2

    .line 2
    iget-object v0, p0, LZw0;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, LZw0;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 4
    iget-object v1, p0, LZw0;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 5
    iput v0, p0, LZw0;->c:I

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, LZw0;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

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
