.class public LiG0;
.super Lsi;
.source "PG"


# instance fields
.field public final synthetic d:LjG0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LjG0;

    return-void
.end method

.method public synthetic constructor <init>(LjG0;LhG0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LiG0;->d:LjG0;

    invoke-direct {p0}, Lsi;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Ldh;FFIZ)V
    .locals 0

    .line 6
    iget-object p1, p0, LiG0;->d:LjG0;

    .line 7
    invoke-virtual {p1, p3}, LjG0;->e(Ldh;)Ljava/util/List;

    move-result-object p1

    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ldh;

    .line 9
    iget-object p3, p0, LiG0;->d:LjG0;

    if-eqz p3, :cond_0

    .line 10
    iget-object p3, p2, Ldh;->w:Landroid/view/View;

    invoke-virtual {p3, p4}, Landroid/view/View;->setTranslationX(F)V

    .line 11
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p3

    iget-object p5, p2, Ldh;->w:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    int-to-float p5, p5

    div-float/2addr p3, p5

    .line 12
    sget-object p5, LjG0;->i1:Landroid/view/animation/Interpolator;

    invoke-interface {p5, p3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p3

    const/high16 p5, 0x3f800000    # 1.0f

    sub-float/2addr p5, p3

    .line 13
    iget-object p2, p2, Ldh;->w:Landroid/view/View;

    invoke-virtual {p2, p5}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 14
    throw p1

    :cond_1
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Ldh;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Ldh;->c()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, LiG0;->d:LjG0;

    .line 3
    iget-object v1, v0, LjG0;->g1:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget v1, v0, LjG0;->f1:I

    iget-object v2, v0, LjG0;->g1:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, LjG0;->f1:I

    .line 5
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lsi;->a(Landroid/support/v7/widget/RecyclerView;Ldh;)V

    return-void
.end method

.method public b(Ldh;I)V
    .locals 3

    .line 1
    iget-object p2, p0, LiG0;->d:LjG0;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p2, p1}, LjG0;->e(Ldh;)Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldh;

    .line 4
    iget-object v2, v2, Ldh;->w:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p2, LjG0;->g1:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget v1, p2, LjG0;->f1:I

    add-int/2addr v1, v0

    iput v1, p2, LjG0;->f1:I

    const-string p2, "Suggestions.Card.SwipedAway"

    .line 7
    invoke-static {p2}, LhV;->a(Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, LiG0;->d:LjG0;

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 9
    invoke-virtual {p1}, Ldh;->c()I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    return-void

    .line 10
    :cond_1
    iget-object p1, p2, Landroid/support/v7/widget/RecyclerView;->H:LBg;

    .line 11
    check-cast p1, LUm0;

    .line 12
    throw v0

    .line 13
    :cond_2
    throw v0
.end method

.method public b(Landroid/support/v7/widget/RecyclerView;Ldh;Ldh;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c(Landroid/support/v7/widget/RecyclerView;Ldh;)I
    .locals 0

    .line 1
    check-cast p2, LWm0;

    const/4 p1, 0x0

    throw p1
.end method
