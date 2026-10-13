.class public LP9;
.super Landroid/widget/ArrayAdapter;
.source "PG"


# instance fields
.field public final w:F

.field public final synthetic x:LQ9;


# direct methods
.method public constructor <init>(LQ9;Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, LP9;->x:LQ9;

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p2, p1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 3
    invoke-static {p2}, Lfa;->b(Landroid/content/Context;)F

    move-result p1

    iput p1, p0, LP9;->w:F

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v0, 0x0

    const v1, 0x7f0b02b3

    const v2, 0x7f0b04f2

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v3, 0x7f0e0113

    invoke-virtual {p2, v3, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 2
    :cond_0
    iget-object v3, p0, LP9;->x:LQ9;

    if-eqz v3, :cond_7

    .line 3
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 4
    iget v5, v3, LQ9;->j0:I

    invoke-static {v4, v5}, LQ9;->b(Landroid/view/View;I)V

    .line 5
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 6
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 7
    iget v3, v3, LQ9;->i0:I

    iput v3, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 8
    iput v3, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 9
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lqb;

    if-eqz p1, :cond_6

    .line 11
    iget-boolean v3, p1, Lqb;->g:Z

    const v4, 0x7f0b02aa

    .line 12
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 13
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 14
    iget-object v5, p1, Lqb;->d:Ljava/lang/String;

    .line 15
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f0b02b4

    .line 16
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v7/app/MediaRouteVolumeSlider;

    .line 17
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object v5, p0, LP9;->x:LQ9;

    iget-object v5, v5, LQ9;->Z:Landroid/support/v7/app/OverlayListView;

    .line 18
    invoke-static {p3, v4, v5}, Lfa;->a(Landroid/content/Context;Landroid/support/v7/app/MediaRouteVolumeSlider;Landroid/view/View;)V

    .line 19
    invoke-virtual {v4, p1}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    .line 20
    iget-object p3, p0, LP9;->x:LQ9;

    iget-object p3, p3, LQ9;->m0:Ljava/util/Map;

    invoke-interface {p3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    xor-int/lit8 p3, v3, 0x1

    .line 21
    invoke-virtual {v4, p3}, Landroid/support/v7/app/MediaRouteVolumeSlider;->a(Z)V

    .line 22
    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    const/4 p3, 0x1

    if-eqz v3, :cond_3

    .line 23
    iget-object v5, p0, LP9;->x:LQ9;

    .line 24
    iget-boolean v5, v5, LQ9;->U:Z

    if-eqz v5, :cond_1

    .line 25
    iget v5, p1, Lqb;->o:I

    if-ne v5, p3, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_2

    .line 26
    iget v5, p1, Lqb;->q:I

    .line 27
    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 28
    iget v5, p1, Lqb;->p:I

    .line 29
    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 30
    iget-object v5, p0, LP9;->x:LQ9;

    iget-object v5, v5, LQ9;->g0:LO9;

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    goto :goto_2

    :cond_2
    const/16 v5, 0x64

    .line 31
    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 32
    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 33
    invoke-virtual {v4, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 34
    :cond_3
    :goto_2
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v3, :cond_4

    const/16 v3, 0xff

    goto :goto_3

    :cond_4
    const/high16 v3, 0x437f0000    # 255.0f

    .line 35
    iget v4, p0, LP9;->w:F

    mul-float v4, v4, v3

    float-to-int v3, v4

    :goto_3
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 36
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 37
    iget-object v2, p0, LP9;->x:LQ9;

    iget-object v2, v2, LQ9;->e0:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v0, 0x4

    :cond_5
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 38
    iget-object v0, p0, LP9;->x:LQ9;

    iget-object v0, v0, LQ9;->c0:Ljava/util/Set;

    if-eqz v0, :cond_6

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 39
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v0, 0x0

    .line 40
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 41
    invoke-virtual {p1, p3}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 42
    invoke-virtual {p1, p3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 43
    invoke-virtual {p2}, Landroid/view/View;->clearAnimation()V

    .line 44
    invoke-virtual {p2, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_6
    return-object p2

    :cond_7
    const/4 p1, 0x0

    .line 45
    throw p1
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
