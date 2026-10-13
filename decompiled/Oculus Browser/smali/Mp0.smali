.class public LMp0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LOp0;


# instance fields
.field public final a:LKp0;

.field public final b:LQp0;


# direct methods
.method public constructor <init>(LKp0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LMp0;->a:LKp0;

    .line 3
    new-instance v0, Lle1;

    sget-object v1, LTp0;->n:[LUd1;

    invoke-direct {v0, v1}, Lle1;-><init>([LUd1;)V

    .line 4
    sget-object v1, LLp0;->a:Lne1;

    invoke-static {v0, p1, v1}, Loe1;->a(Lqe1;Ljava/lang/Object;Lne1;)Loe1;

    .line 5
    new-instance p1, LQp0;

    invoke-direct {p1, v0}, LQp0;-><init>(Lle1;)V

    iput-object p1, p0, LMp0;->b:LQp0;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, LMp0;->a:LKp0;

    invoke-virtual {v0}, LNo0;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(LNp0;II)Z
    .locals 12

    .line 1
    iget-object v0, p0, LMp0;->b:LQp0;

    if-eqz v0, :cond_d

    .line 2
    iget v1, p1, LNp0;->e:I

    iget v2, p1, LNp0;->d:I

    const/4 v3, 0x2

    if-ne v1, v2, :cond_0

    const/4 p2, 0x2

    .line 3
    :cond_0
    iget-object v1, p1, LNp0;->a:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget v1, p1, LNp0;->e:I

    iget-object v2, p1, LNp0;->b:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 4
    iget-object v1, p1, LNp0;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, LNp0;->f:Ljava/util/HashSet;

    .line 7
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p2, 0x2

    .line 8
    :cond_1
    iget-boolean v1, v0, LQp0;->y:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_c

    iget-object v1, v0, LQp0;->z:LNp0;

    .line 9
    const-class v4, Lvp0;

    if-nez v1, :cond_2

    goto/16 :goto_2

    .line 10
    :cond_2
    iget-object v5, v1, LNp0;->c:Ljava/lang/String;

    iget-object v6, p1, LNp0;->c:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    goto/16 :goto_2

    .line 11
    :cond_3
    iget-object v1, v1, LNp0;->b:Ljava/lang/CharSequence;

    .line 12
    iget-object v5, p1, LNp0;->b:Ljava/lang/CharSequence;

    if-nez v1, :cond_4

    if-nez v5, :cond_b

    goto :goto_1

    .line 13
    :cond_4
    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_2

    .line 14
    :cond_5
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_1

    .line 15
    :cond_6
    instance-of v6, v5, Landroid/text/Spanned;

    if-eqz v6, :cond_b

    instance-of v6, v1, Landroid/text/Spanned;

    if-nez v6, :cond_7

    goto :goto_2

    .line 16
    :cond_7
    check-cast v1, Landroid/text/Spanned;

    .line 17
    check-cast v5, Landroid/text/Spanned;

    .line 18
    invoke-interface {v1}, Landroid/text/Spanned;->length()I

    move-result v6

    invoke-interface {v1, v2, v6, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lvp0;

    .line 19
    invoke-interface {v5}, Landroid/text/Spanned;->length()I

    move-result v7

    invoke-interface {v5, v2, v7, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lvp0;

    .line 20
    array-length v7, v6

    array-length v8, v4

    if-eq v7, v8, :cond_8

    goto :goto_2

    :cond_8
    const/4 v7, 0x0

    .line 21
    :goto_0
    array-length v8, v6

    if-ge v7, v8, :cond_a

    .line 22
    aget-object v8, v6, v7

    .line 23
    aget-object v9, v4, v7

    .line 24
    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 25
    invoke-interface {v1, v8}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    invoke-interface {v5, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    if-ne v10, v11, :cond_b

    .line 26
    invoke-interface {v1, v8}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    invoke-interface {v5, v9}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    if-ne v10, v11, :cond_b

    .line 27
    invoke-interface {v1, v8}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v8

    invoke-interface {v5, v9}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v9

    if-eq v8, v9, :cond_9

    goto :goto_2

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_a
    :goto_1
    const/4 v1, 0x1

    goto :goto_3

    :cond_b
    :goto_2
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_c

    .line 28
    iget v1, v0, LQp0;->A:I

    if-ne v1, p2, :cond_c

    goto :goto_4

    .line 29
    :cond_c
    iput-object p1, v0, LQp0;->z:LNp0;

    .line 30
    iput p2, v0, LQp0;->A:I

    .line 31
    iput p3, v0, LQp0;->B:I

    .line 32
    invoke-virtual {v0}, LQp0;->a()V

    const/4 v2, 0x1

    :goto_4
    return v2

    :cond_d
    const/4 p1, 0x0

    .line 33
    throw p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LMp0;->a:LKp0;

    invoke-virtual {v0}, LNo0;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
