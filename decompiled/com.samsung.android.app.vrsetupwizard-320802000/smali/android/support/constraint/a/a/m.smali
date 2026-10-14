.class public Landroid/support/constraint/a/a/m;
.super Landroid/support/constraint/a/a/i;


# instance fields
.field protected ac:F

.field protected ad:I

.field protected ae:I

.field private af:Landroid/support/constraint/a/a/d;

.field private ag:I

.field private ah:Z

.field private ai:I

.field private aj:Landroid/support/constraint/a/a/q;

.field private ak:I


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroid/support/constraint/a/a/i;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/support/constraint/a/a/m;->ac:F

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/a/a/m;->ad:I

    iput v0, p0, Landroid/support/constraint/a/a/m;->ae:I

    iget-object v0, p0, Landroid/support/constraint/a/a/m;->s:Landroid/support/constraint/a/a/d;

    iput-object v0, p0, Landroid/support/constraint/a/a/m;->af:Landroid/support/constraint/a/a/d;

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/a/a/m;->ag:I

    iput-boolean v0, p0, Landroid/support/constraint/a/a/m;->ah:Z

    iput v0, p0, Landroid/support/constraint/a/a/m;->ai:I

    new-instance v1, Landroid/support/constraint/a/a/q;

    invoke-direct {v1}, Landroid/support/constraint/a/a/q;-><init>()V

    iput-object v1, p0, Landroid/support/constraint/a/a/m;->aj:Landroid/support/constraint/a/a/q;

    const/16 v1, 0x8

    iput v1, p0, Landroid/support/constraint/a/a/m;->ak:I

    iget-object v1, p0, Landroid/support/constraint/a/a/m;->A:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Landroid/support/constraint/a/a/m;->A:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/constraint/a/a/m;->af:Landroid/support/constraint/a/a/d;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/support/constraint/a/a/m;->z:[Landroid/support/constraint/a/a/d;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Landroid/support/constraint/a/a/m;->z:[Landroid/support/constraint/a/a/d;

    iget-object v3, p0, Landroid/support/constraint/a/a/m;->af:Landroid/support/constraint/a/a/d;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public C()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/a/a/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/constraint/a/a/m;->A:Ljava/util/ArrayList;

    return-object v0
.end method

.method public H()I
    .locals 1

    iget v0, p0, Landroid/support/constraint/a/a/m;->ag:I

    return v0
.end method

.method public a(Landroid/support/constraint/a/a/h;)Landroid/support/constraint/a/a/d;
    .locals 2

    sget-object v0, Landroid/support/constraint/a/a/n;->a:[I

    invoke-virtual {p1}, Landroid/support/constraint/a/a/h;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    :pswitch_1
    iget v0, p0, Landroid/support/constraint/a/a/m;->ag:I

    if-nez v0, :cond_0

    iget-object p1, p0, Landroid/support/constraint/a/a/m;->af:Landroid/support/constraint/a/a/d;

    return-object p1

    :pswitch_2
    iget v0, p0, Landroid/support/constraint/a/a/m;->ag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Landroid/support/constraint/a/a/m;->af:Landroid/support/constraint/a/a/d;

    return-object p1

    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Landroid/support/constraint/a/a/h;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(I)V
    .locals 3

    iget v0, p0, Landroid/support/constraint/a/a/m;->ag:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroid/support/constraint/a/a/m;->ag:I

    iget-object p1, p0, Landroid/support/constraint/a/a/m;->A:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget p1, p0, Landroid/support/constraint/a/a/m;->ag:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Landroid/support/constraint/a/a/m;->r:Landroid/support/constraint/a/a/d;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroid/support/constraint/a/a/m;->s:Landroid/support/constraint/a/a/d;

    :goto_0
    iput-object p1, p0, Landroid/support/constraint/a/a/m;->af:Landroid/support/constraint/a/a/d;

    iget-object p1, p0, Landroid/support/constraint/a/a/m;->A:Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/support/constraint/a/a/m;->af:Landroid/support/constraint/a/a/d;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroid/support/constraint/a/a/m;->z:[Landroid/support/constraint/a/a/d;

    array-length p1, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_2

    iget-object v1, p0, Landroid/support/constraint/a/a/m;->z:[Landroid/support/constraint/a/a/d;

    iget-object v2, p0, Landroid/support/constraint/a/a/m;->af:Landroid/support/constraint/a/a/d;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public a(Landroid/support/constraint/a/e;)V
    .locals 9

    invoke-virtual {p0}, Landroid/support/constraint/a/a/m;->j()Landroid/support/constraint/a/a/i;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/a/a/l;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Landroid/support/constraint/a/a/h;->b:Landroid/support/constraint/a/a/h;

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/a/l;->a(Landroid/support/constraint/a/a/h;)Landroid/support/constraint/a/a/d;

    move-result-object v1

    sget-object v2, Landroid/support/constraint/a/a/h;->d:Landroid/support/constraint/a/a/h;

    invoke-virtual {v0, v2}, Landroid/support/constraint/a/a/l;->a(Landroid/support/constraint/a/a/h;)Landroid/support/constraint/a/a/d;

    move-result-object v2

    iget-object v3, p0, Landroid/support/constraint/a/a/m;->C:Landroid/support/constraint/a/a/i;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/support/constraint/a/a/m;->C:Landroid/support/constraint/a/a/i;

    iget-object v3, v3, Landroid/support/constraint/a/a/i;->B:[Landroid/support/constraint/a/a/k;

    aget-object v3, v3, v5

    sget-object v6, Landroid/support/constraint/a/a/k;->b:Landroid/support/constraint/a/a/k;

    if-ne v3, v6, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iget v6, p0, Landroid/support/constraint/a/a/m;->ag:I

    if-nez v6, :cond_3

    sget-object v1, Landroid/support/constraint/a/a/h;->c:Landroid/support/constraint/a/a/h;

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/a/l;->a(Landroid/support/constraint/a/a/h;)Landroid/support/constraint/a/a/d;

    move-result-object v1

    sget-object v2, Landroid/support/constraint/a/a/h;->e:Landroid/support/constraint/a/a/h;

    invoke-virtual {v0, v2}, Landroid/support/constraint/a/a/l;->a(Landroid/support/constraint/a/a/h;)Landroid/support/constraint/a/a/d;

    move-result-object v2

    iget-object v0, p0, Landroid/support/constraint/a/a/m;->C:Landroid/support/constraint/a/a/i;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/constraint/a/a/m;->C:Landroid/support/constraint/a/a/i;

    iget-object v0, v0, Landroid/support/constraint/a/a/i;->B:[Landroid/support/constraint/a/a/k;

    aget-object v0, v0, v4

    sget-object v3, Landroid/support/constraint/a/a/k;->b:Landroid/support/constraint/a/a/k;

    if-ne v0, v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :cond_3
    :goto_1
    iget v0, p0, Landroid/support/constraint/a/a/m;->ad:I

    const/4 v4, 0x6

    const/4 v6, -0x1

    const/4 v7, 0x5

    if-eq v0, v6, :cond_4

    iget-object v0, p0, Landroid/support/constraint/a/a/m;->af:Landroid/support/constraint/a/a/d;

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/k;

    move-result-object v0

    invoke-virtual {p1, v1}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/k;

    move-result-object v1

    iget v6, p0, Landroid/support/constraint/a/a/m;->ad:I

    invoke-virtual {p1, v0, v1, v6, v4}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/k;Landroid/support/constraint/a/k;II)Landroid/support/constraint/a/b;

    if-eqz v3, :cond_6

    invoke-virtual {p1, v2}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/k;

    move-result-object v1

    invoke-virtual {p1, v1, v0, v5, v7}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/k;Landroid/support/constraint/a/k;II)V

    goto :goto_2

    :cond_4
    iget v0, p0, Landroid/support/constraint/a/a/m;->ae:I

    if-eq v0, v6, :cond_5

    iget-object v0, p0, Landroid/support/constraint/a/a/m;->af:Landroid/support/constraint/a/a/d;

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/k;

    move-result-object v0

    invoke-virtual {p1, v2}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/k;

    move-result-object v2

    iget v6, p0, Landroid/support/constraint/a/a/m;->ae:I

    neg-int v6, v6

    invoke-virtual {p1, v0, v2, v6, v4}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/k;Landroid/support/constraint/a/k;II)Landroid/support/constraint/a/b;

    if-eqz v3, :cond_6

    invoke-virtual {p1, v1}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/k;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v5, v7}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/k;Landroid/support/constraint/a/k;II)V

    invoke-virtual {p1, v2, v0, v5, v7}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/k;Landroid/support/constraint/a/k;II)V

    goto :goto_2

    :cond_5
    iget v0, p0, Landroid/support/constraint/a/a/m;->ac:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/constraint/a/a/m;->af:Landroid/support/constraint/a/a/d;

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/k;

    move-result-object v4

    invoke-virtual {p1, v1}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/k;

    move-result-object v5

    invoke-virtual {p1, v2}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/k;

    move-result-object v6

    iget v7, p0, Landroid/support/constraint/a/a/m;->ac:F

    iget-boolean v8, p0, Landroid/support/constraint/a/a/m;->ah:Z

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/e;Landroid/support/constraint/a/k;Landroid/support/constraint/a/k;Landroid/support/constraint/a/k;FZ)Landroid/support/constraint/a/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/b;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(I)V
    .locals 6

    invoke-virtual {p0}, Landroid/support/constraint/a/a/m;->j()Landroid/support/constraint/a/a/i;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/constraint/a/a/m;->H()I

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Landroid/support/constraint/a/a/m;->s:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/r;

    move-result-object v0

    iget-object v5, p1, Landroid/support/constraint/a/a/i;->s:Landroid/support/constraint/a/a/d;

    invoke-virtual {v5}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/r;

    move-result-object v5

    invoke-virtual {v0, v4, v5, v3}, Landroid/support/constraint/a/a/r;->a(ILandroid/support/constraint/a/a/r;I)V

    iget-object v0, p0, Landroid/support/constraint/a/a/m;->u:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/r;

    move-result-object v0

    iget-object v5, p1, Landroid/support/constraint/a/a/i;->s:Landroid/support/constraint/a/a/d;

    invoke-virtual {v5}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/r;

    move-result-object v5

    invoke-virtual {v0, v4, v5, v3}, Landroid/support/constraint/a/a/r;->a(ILandroid/support/constraint/a/a/r;I)V

    iget v0, p0, Landroid/support/constraint/a/a/m;->ad:I

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Landroid/support/constraint/a/a/m;->r:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/r;

    move-result-object v0

    iget-object v1, p1, Landroid/support/constraint/a/a/i;->r:Landroid/support/constraint/a/a/d;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/r;

    move-result-object v1

    iget v2, p0, Landroid/support/constraint/a/a/m;->ad:I

    invoke-virtual {v0, v4, v1, v2}, Landroid/support/constraint/a/a/r;->a(ILandroid/support/constraint/a/a/r;I)V

    iget-object v0, p0, Landroid/support/constraint/a/a/m;->t:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/r;

    move-result-object v0

    iget-object p1, p1, Landroid/support/constraint/a/a/i;->r:Landroid/support/constraint/a/a/d;

    goto/16 :goto_0

    :cond_1
    iget v0, p0, Landroid/support/constraint/a/a/m;->ae:I

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Landroid/support/constraint/a/a/m;->r:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/r;

    move-result-object v0

    iget-object v1, p1, Landroid/support/constraint/a/a/i;->t:Landroid/support/constraint/a/a/d;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/r;

    move-result-object v1

    iget v2, p0, Landroid/support/constraint/a/a/m;->ae:I

    neg-int v2, v2

    invoke-virtual {v0, v4, v1, v2}, Landroid/support/constraint/a/a/r;->a(ILandroid/support/constraint/a/a/r;I)V

    iget-object v0, p0, Landroid/support/constraint/a/a/m;->t:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/r;

    move-result-object v0

    iget-object p1, p1, Landroid/support/constraint/a/a/i;->t:Landroid/support/constraint/a/a/d;

    goto/16 :goto_2

    :cond_2
    iget v0, p0, Landroid/support/constraint/a/a/m;->ac:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/support/constraint/a/a/i;->F()Landroid/support/constraint/a/a/k;

    move-result-object v0

    sget-object v1, Landroid/support/constraint/a/a/k;->a:Landroid/support/constraint/a/a/k;

    if-ne v0, v1, :cond_6

    iget v0, p1, Landroid/support/constraint/a/a/i;->D:I

    int-to-float v0, v0

    iget v1, p0, Landroid/support/constraint/a/a/m;->ac:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Landroid/support/constraint/a/a/m;->r:Landroid/support/constraint/a/a/d;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/r;

    move-result-object v1

    iget-object v2, p1, Landroid/support/constraint/a/a/i;->r:Landroid/support/constraint/a/a/d;

    invoke-virtual {v2}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/r;

    move-result-object v2

    invoke-virtual {v1, v4, v2, v0}, Landroid/support/constraint/a/a/r;->a(ILandroid/support/constraint/a/a/r;I)V

    iget-object v1, p0, Landroid/support/constraint/a/a/m;->t:Landroid/support/constraint/a/a/d;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/r;

    move-result-object v1

    iget-object p1, p1, Landroid/support/constraint/a/a/i;->r:Landroid/support/constraint/a/a/d;

    goto/16 :goto_3

    :cond_3
    iget-object v0, p0, Landroid/support/constraint/a/a/m;->r:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/r;

    move-result-object v0

    iget-object v5, p1, Landroid/support/constraint/a/a/i;->r:Landroid/support/constraint/a/a/d;

    invoke-virtual {v5}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/r;

    move-result-object v5

    invoke-virtual {v0, v4, v5, v3}, Landroid/support/constraint/a/a/r;->a(ILandroid/support/constraint/a/a/r;I)V

    iget-object v0, p0, Landroid/support/constraint/a/a/m;->t:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/r;

    move-result-object v0

    iget-object v5, p1, Landroid/support/constraint/a/a/i;->r:Landroid/support/constraint/a/a/d;

    invoke-virtual {v5}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/r;

    move-result-object v5

    invoke-virtual {v0, v4, v5, v3}, Landroid/support/constraint/a/a/r;->a(ILandroid/support/constraint/a/a/r;I)V

    iget v0, p0, Landroid/support/constraint/a/a/m;->ad:I

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Landroid/support/constraint/a/a/m;->s:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/r;

    move-result-object v0

    iget-object v1, p1, Landroid/support/constraint/a/a/i;->s:Landroid/support/constraint/a/a/d;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/r;

    move-result-object v1

    iget v2, p0, Landroid/support/constraint/a/a/m;->ad:I

    invoke-virtual {v0, v4, v1, v2}, Landroid/support/constraint/a/a/r;->a(ILandroid/support/constraint/a/a/r;I)V

    iget-object v0, p0, Landroid/support/constraint/a/a/m;->u:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/r;

    move-result-object v0

    iget-object p1, p1, Landroid/support/constraint/a/a/i;->s:Landroid/support/constraint/a/a/d;

    :goto_0
    invoke-virtual {p1}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/r;

    move-result-object p1

    iget v1, p0, Landroid/support/constraint/a/a/m;->ad:I

    :goto_1
    invoke-virtual {v0, v4, p1, v1}, Landroid/support/constraint/a/a/r;->a(ILandroid/support/constraint/a/a/r;I)V

    goto :goto_4

    :cond_4
    iget v0, p0, Landroid/support/constraint/a/a/m;->ae:I

    if-eq v0, v2, :cond_5

    iget-object v0, p0, Landroid/support/constraint/a/a/m;->s:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/r;

    move-result-object v0

    iget-object v1, p1, Landroid/support/constraint/a/a/i;->u:Landroid/support/constraint/a/a/d;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/r;

    move-result-object v1

    iget v2, p0, Landroid/support/constraint/a/a/m;->ae:I

    neg-int v2, v2

    invoke-virtual {v0, v4, v1, v2}, Landroid/support/constraint/a/a/r;->a(ILandroid/support/constraint/a/a/r;I)V

    iget-object v0, p0, Landroid/support/constraint/a/a/m;->u:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/r;

    move-result-object v0

    iget-object p1, p1, Landroid/support/constraint/a/a/i;->u:Landroid/support/constraint/a/a/d;

    :goto_2
    invoke-virtual {p1}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/r;

    move-result-object p1

    iget v1, p0, Landroid/support/constraint/a/a/m;->ae:I

    neg-int v1, v1

    goto :goto_1

    :cond_5
    iget v0, p0, Landroid/support/constraint/a/a/m;->ac:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/support/constraint/a/a/i;->G()Landroid/support/constraint/a/a/k;

    move-result-object v0

    sget-object v1, Landroid/support/constraint/a/a/k;->a:Landroid/support/constraint/a/a/k;

    if-ne v0, v1, :cond_6

    iget v0, p1, Landroid/support/constraint/a/a/i;->E:I

    int-to-float v0, v0

    iget v1, p0, Landroid/support/constraint/a/a/m;->ac:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Landroid/support/constraint/a/a/m;->s:Landroid/support/constraint/a/a/d;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/r;

    move-result-object v1

    iget-object v2, p1, Landroid/support/constraint/a/a/i;->s:Landroid/support/constraint/a/a/d;

    invoke-virtual {v2}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/r;

    move-result-object v2

    invoke-virtual {v1, v4, v2, v0}, Landroid/support/constraint/a/a/r;->a(ILandroid/support/constraint/a/a/r;I)V

    iget-object v1, p0, Landroid/support/constraint/a/a/m;->u:Landroid/support/constraint/a/a/d;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/r;

    move-result-object v1

    iget-object p1, p1, Landroid/support/constraint/a/a/i;->s:Landroid/support/constraint/a/a/d;

    :goto_3
    invoke-virtual {p1}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/r;

    move-result-object p1

    invoke-virtual {v1, v4, p1, v0}, Landroid/support/constraint/a/a/r;->a(ILandroid/support/constraint/a/a/r;I)V

    :cond_6
    :goto_4
    return-void
.end method

.method public c(Landroid/support/constraint/a/e;)V
    .locals 3

    invoke-virtual {p0}, Landroid/support/constraint/a/a/m;->j()Landroid/support/constraint/a/a/i;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/constraint/a/a/m;->af:Landroid/support/constraint/a/a/d;

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/e;->b(Ljava/lang/Object;)I

    move-result p1

    iget v0, p0, Landroid/support/constraint/a/a/m;->ag:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/constraint/a/a/m;->f(I)V

    invoke-virtual {p0, v2}, Landroid/support/constraint/a/a/m;->g(I)V

    invoke-virtual {p0}, Landroid/support/constraint/a/a/m;->j()Landroid/support/constraint/a/a/i;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/constraint/a/a/i;->q()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/constraint/a/a/m;->i(I)V

    invoke-virtual {p0, v2}, Landroid/support/constraint/a/a/m;->h(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Landroid/support/constraint/a/a/m;->f(I)V

    invoke-virtual {p0, p1}, Landroid/support/constraint/a/a/m;->g(I)V

    invoke-virtual {p0}, Landroid/support/constraint/a/a/m;->j()Landroid/support/constraint/a/a/i;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/constraint/a/a/i;->o()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/constraint/a/a/m;->h(I)V

    invoke-virtual {p0, v2}, Landroid/support/constraint/a/a/m;->i(I)V

    :goto_0
    return-void
.end method

.method public e(F)V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iput p1, p0, Landroid/support/constraint/a/a/m;->ac:F

    const/4 p1, -0x1

    iput p1, p0, Landroid/support/constraint/a/a/m;->ad:I

    iput p1, p0, Landroid/support/constraint/a/a/m;->ae:I

    :cond_0
    return-void
.end method

.method public q(I)V
    .locals 2

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/support/constraint/a/a/m;->ac:F

    iput p1, p0, Landroid/support/constraint/a/a/m;->ad:I

    iput v0, p0, Landroid/support/constraint/a/a/m;->ae:I

    :cond_0
    return-void
.end method

.method public r(I)V
    .locals 2

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/support/constraint/a/a/m;->ac:F

    iput v0, p0, Landroid/support/constraint/a/a/m;->ad:I

    iput p1, p0, Landroid/support/constraint/a/a/m;->ae:I

    :cond_0
    return-void
.end method
