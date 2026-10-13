.class public final LZ9;
.super LBg;
.source "PG"


# instance fields
.field public final A:Landroid/graphics/drawable/Drawable;

.field public final B:Landroid/graphics/drawable/Drawable;

.field public final C:Landroid/graphics/drawable/Drawable;

.field public final D:Landroid/graphics/drawable/Drawable;

.field public final synthetic E:Lba;

.field public y:Ljava/util/ArrayList;

.field public final z:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lba;)V
    .locals 2

    .line 1
    iput-object p1, p0, LZ9;->E:Lba;

    invoke-direct {p0}, LBg;-><init>()V

    .line 2
    iget-object v0, p1, Lba;->A:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, LZ9;->z:Landroid/view/LayoutInflater;

    .line 3
    iget-object v0, p1, Lba;->A:Landroid/content/Context;

    .line 4
    sget-object v1, Lfa;->a:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 5
    invoke-static {v0, v1}, Lfa;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lfa;->a:Landroid/graphics/drawable/Drawable;

    .line 6
    :cond_0
    sget-object v0, Lfa;->a:Landroid/graphics/drawable/Drawable;

    .line 7
    iput-object v0, p0, LZ9;->A:Landroid/graphics/drawable/Drawable;

    .line 8
    iget-object v0, p1, Lba;->A:Landroid/content/Context;

    .line 9
    sget-object v1, Lfa;->b:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 10
    invoke-static {v0, v1}, Lfa;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lfa;->b:Landroid/graphics/drawable/Drawable;

    .line 11
    :cond_1
    sget-object v0, Lfa;->b:Landroid/graphics/drawable/Drawable;

    .line 12
    iput-object v0, p0, LZ9;->B:Landroid/graphics/drawable/Drawable;

    .line 13
    iget-object v0, p1, Lba;->A:Landroid/content/Context;

    .line 14
    sget-object v1, Lfa;->c:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_2

    const/4 v1, 0x2

    .line 15
    invoke-static {v0, v1}, Lfa;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lfa;->c:Landroid/graphics/drawable/Drawable;

    .line 16
    :cond_2
    sget-object v0, Lfa;->c:Landroid/graphics/drawable/Drawable;

    .line 17
    iput-object v0, p0, LZ9;->C:Landroid/graphics/drawable/Drawable;

    .line 18
    iget-object p1, p1, Lba;->A:Landroid/content/Context;

    .line 19
    sget-object v0, Lfa;->d:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    const/4 v0, 0x3

    .line 20
    invoke-static {p1, v0}, Lfa;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sput-object p1, Lfa;->d:Landroid/graphics/drawable/Drawable;

    .line 21
    :cond_3
    sget-object p1, Lfa;->d:Landroid/graphics/drawable/Drawable;

    .line 22
    iput-object p1, p0, LZ9;->D:Landroid/graphics/drawable/Drawable;

    .line 23
    invoke-virtual {p0}, LZ9;->b()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 6
    iget-object v0, p0, LZ9;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/ViewGroup;I)Ldh;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const-string p1, "RecyclerAdapter"

    const-string p2, "Cannot create ViewHolder because of wrong view type"

    .line 1
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object p2, p0, LZ9;->z:Landroid/view/LayoutInflater;

    const v0, 0x7f0e0116

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, LY9;

    invoke-direct {p2, p0, p1}, LY9;-><init>(LZ9;Landroid/view/View;)V

    return-object p2

    .line 4
    :cond_1
    iget-object p2, p0, LZ9;->z:Landroid/view/LayoutInflater;

    const v0, 0x7f0e0114

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 5
    new-instance p2, LV9;

    invoke-direct {p2, p0, p1}, LV9;-><init>(LZ9;Landroid/view/View;)V

    return-object p2
.end method

.method public a(Ldh;I)V
    .locals 8

    .line 7
    iget-object v0, p0, LZ9;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LW9;

    .line 8
    iget v0, v0, LW9;->b:I

    .line 9
    iget-object v1, p0, LZ9;->y:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LW9;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_7

    const-string v3, "RecyclerAdapter"

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    const-string p1, "Cannot bind item to ViewHolder because of wrong view type"

    .line 10
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 11
    :cond_0
    check-cast p1, LY9;

    if-eqz p1, :cond_6

    .line 12
    iget-object p2, p2, LW9;->a:Ljava/lang/Object;

    .line 13
    check-cast p2, Lqb;

    .line 14
    iget-object v0, p1, LY9;->P:Landroid/view/View;

    new-instance v5, LX9;

    invoke-direct {v5, p1, p2}, LX9;-><init>(LY9;Lqb;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object v0, p1, LY9;->Q:Landroid/widget/TextView;

    .line 16
    iget-object v5, p2, Lqb;->d:Ljava/lang/String;

    .line 17
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v0, p1, LY9;->R:Landroid/widget/ImageView;

    iget-object p1, p1, LY9;->S:LZ9;

    if-eqz p1, :cond_5

    .line 19
    iget-object v5, p2, Lqb;->f:Landroid/net/Uri;

    if-eqz v5, :cond_1

    .line 20
    :try_start_0
    iget-object v6, p1, LZ9;->E:Lba;

    iget-object v6, v6, Lba;->A:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    .line 21
    invoke-static {v6, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    goto :goto_1

    :catch_0
    move-exception v2

    .line 22
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to load "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    :cond_1
    iget v2, p2, Lqb;->n:I

    if-eq v2, v1, :cond_4

    if-eq v2, v4, :cond_3

    .line 24
    instance-of p2, p2, Lpb;

    if-eqz p2, :cond_2

    .line 25
    iget-object p1, p1, LZ9;->D:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 26
    :cond_2
    iget-object p1, p1, LZ9;->A:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 27
    :cond_3
    iget-object p1, p1, LZ9;->C:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 28
    :cond_4
    iget-object p1, p1, LZ9;->B:Landroid/graphics/drawable/Drawable;

    :goto_0
    move-object v2, p1

    .line 29
    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 30
    :cond_5
    throw v2

    .line 31
    :cond_6
    throw v2

    .line 32
    :cond_7
    check-cast p1, LV9;

    if-eqz p1, :cond_8

    .line 33
    iget-object p2, p2, LW9;->a:Ljava/lang/Object;

    .line 34
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 35
    iget-object p1, p1, LV9;->P:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void

    .line 36
    :cond_8
    throw v2
.end method

.method public b(I)I
    .locals 1

    .line 15
    iget-object v0, p0, LZ9;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LW9;

    .line 16
    iget p1, p1, LW9;->b:I

    return p1
.end method

.method public b()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LZ9;->y:Ljava/util/ArrayList;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, LZ9;->E:Lba;

    iget-object v1, v1, Lba;->C:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 4
    iget-object v2, p0, LZ9;->E:Lba;

    iget-object v2, v2, Lba;->C:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lqb;

    .line 5
    instance-of v3, v2, Lpb;

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v2, p0, LZ9;->E:Lba;

    iget-object v2, v2, Lba;->C:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 8
    :cond_1
    iget-object v1, p0, LZ9;->y:Ljava/util/ArrayList;

    new-instance v2, LW9;

    iget-object v3, p0, LZ9;->E:Lba;

    iget-object v3, v3, Lba;->A:Landroid/content/Context;

    const v4, 0x7f130402

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, LW9;-><init>(LZ9;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v1, p0, LZ9;->E:Lba;

    iget-object v1, v1, Lba;->C:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lqb;

    .line 10
    iget-object v3, p0, LZ9;->y:Ljava/util/ArrayList;

    new-instance v4, LW9;

    invoke-direct {v4, p0, v2}, LW9;-><init>(LZ9;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_2
    iget-object v1, p0, LZ9;->y:Ljava/util/ArrayList;

    new-instance v2, LW9;

    iget-object v3, p0, LZ9;->E:Lba;

    iget-object v3, v3, Lba;->A:Landroid/content/Context;

    const v4, 0x7f130403

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, LW9;-><init>(LZ9;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqb;

    .line 13
    iget-object v2, p0, LZ9;->y:Ljava/util/ArrayList;

    new-instance v3, LW9;

    invoke-direct {v3, p0, v1}, LW9;-><init>(LZ9;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 14
    :cond_3
    iget-object v0, p0, LBg;->w:LCg;

    invoke-virtual {v0}, LCg;->b()V

    return-void
.end method
