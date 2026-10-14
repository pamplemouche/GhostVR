.class public Landroid/support/v7/g/k;
.super Ljava/lang/Object;


# instance fields
.field a:Z

.field b:Z

.field c:I

.field d:Landroid/graphics/drawable/Drawable;

.field e:Landroid/graphics/drawable/Drawable;

.field f:Landroid/graphics/drawable/Drawable;

.field g:Landroid/graphics/drawable/Drawable;

.field h:I

.field i:I

.field j:I

.field k:I

.field l:I

.field m:Landroid/content/Context;

.field n:Landroid/content/res/Resources;

.field o:Landroid/graphics/Rect;

.field p:I

.field q:I

.field r:Landroid/graphics/drawable/Drawable;

.field s:Landroid/graphics/drawable/Drawable;

.field t:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/support/v7/g/k;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/g/k;->a:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/g/k;->b:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/g/k;->c:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/g/k;->o:Landroid/graphics/Rect;

    iput-object p1, p0, Landroid/support/v7/g/k;->m:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/g/k;->n:Landroid/content/res/Resources;

    iput-boolean p2, p0, Landroid/support/v7/g/k;->a:Z

    invoke-direct {p0}, Landroid/support/v7/g/k;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/g/k;->a:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/g/k;->b:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/g/k;->c:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/g/k;->o:Landroid/graphics/Rect;

    iput-object p1, p0, Landroid/support/v7/g/k;->m:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/g/k;->n:Landroid/content/res/Resources;

    iput-boolean p2, p0, Landroid/support/v7/g/k;->a:Z

    iput-boolean p3, p0, Landroid/support/v7/g/k;->b:Z

    invoke-direct {p0}, Landroid/support/v7/g/k;->b()V

    return-void
.end method

.method private b()V
    .locals 4

    const/16 v0, 0x1a

    int-to-float v0, v0

    iget-object v1, p0, Landroid/support/v7/g/k;->n:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/g/k;->c:I

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Landroid/support/v7/g/k;->m:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v3, Landroid/support/v7/b/b;->isLightTheme:I

    invoke-virtual {v1, v3, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->data:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    iput-boolean v1, p0, Landroid/support/v7/g/k;->a:Z

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initRoundedCorner, rounded corner with stroke = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/support/v7/g/k;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", dark theme = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mutate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/support/v7/g/k;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeslRoundedCorner"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Landroid/support/v7/g/k;->a:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/g/k;->n:Landroid/content/res/Resources;

    sget v1, Landroid/support/v7/b/d;->sesl_round_and_bgcolor_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/g/k;->k:I

    iput v0, p0, Landroid/support/v7/g/k;->j:I

    iput v0, p0, Landroid/support/v7/g/k;->i:I

    iput v0, p0, Landroid/support/v7/g/k;->h:I

    iget-object v0, p0, Landroid/support/v7/g/k;->n:Landroid/content/res/Resources;

    sget v1, Landroid/support/v7/b/f;->sesl_top_left_round_stroke:I

    iget-object v2, p0, Landroid/support/v7/g/k;->m:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/g/k;->d:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/support/v7/g/k;->n:Landroid/content/res/Resources;

    sget v1, Landroid/support/v7/b/f;->sesl_top_right_round_stroke:I

    iget-object v2, p0, Landroid/support/v7/g/k;->m:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/g/k;->e:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/support/v7/g/k;->n:Landroid/content/res/Resources;

    sget v1, Landroid/support/v7/b/f;->sesl_bottom_left_round_stroke:I

    iget-object v2, p0, Landroid/support/v7/g/k;->m:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/g/k;->f:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/support/v7/g/k;->n:Landroid/content/res/Resources;

    sget v1, Landroid/support/v7/b/f;->sesl_bottom_right_round_stroke:I

    iget-object v2, p0, Landroid/support/v7/g/k;->m:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Landroid/support/v7/g/k;->g:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_2

    :cond_2
    iget-boolean v0, p0, Landroid/support/v7/g/k;->b:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/g/k;->n:Landroid/content/res/Resources;

    sget v1, Landroid/support/v7/b/d;->sesl_round_and_bgcolor_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/g/k;->k:I

    iput v0, p0, Landroid/support/v7/g/k;->j:I

    iput v0, p0, Landroid/support/v7/g/k;->i:I

    iput v0, p0, Landroid/support/v7/g/k;->h:I

    iget-object v0, p0, Landroid/support/v7/g/k;->n:Landroid/content/res/Resources;

    sget v1, Landroid/support/v7/b/f;->sesl_top_left_round:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/g/k;->d:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/support/v7/g/k;->n:Landroid/content/res/Resources;

    sget v1, Landroid/support/v7/b/f;->sesl_top_right_round:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/g/k;->e:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/support/v7/g/k;->n:Landroid/content/res/Resources;

    sget v1, Landroid/support/v7/b/f;->sesl_bottom_left_round:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/g/k;->f:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/support/v7/g/k;->n:Landroid/content/res/Resources;

    sget v1, Landroid/support/v7/b/f;->sesl_bottom_right_round:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroid/support/v7/g/k;->n:Landroid/content/res/Resources;

    sget v1, Landroid/support/v7/b/d;->sesl_round_and_bgcolor_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/g/k;->k:I

    iput v0, p0, Landroid/support/v7/g/k;->j:I

    iput v0, p0, Landroid/support/v7/g/k;->i:I

    iput v0, p0, Landroid/support/v7/g/k;->h:I

    iget-object v0, p0, Landroid/support/v7/g/k;->n:Landroid/content/res/Resources;

    sget v1, Landroid/support/v7/b/f;->sesl_top_left_round:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/g/k;->d:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/support/v7/g/k;->n:Landroid/content/res/Resources;

    sget v1, Landroid/support/v7/b/f;->sesl_top_right_round:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/g/k;->e:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/support/v7/g/k;->n:Landroid/content/res/Resources;

    sget v1, Landroid/support/v7/b/f;->sesl_bottom_left_round:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/g/k;->f:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/support/v7/g/k;->n:Landroid/content/res/Resources;

    sget v1, Landroid/support/v7/b/f;->sesl_bottom_right_round:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_1

    :goto_2
    iget-object v0, p0, Landroid/support/v7/g/k;->n:Landroid/content/res/Resources;

    sget v1, Landroid/support/v7/b/f;->sesl_round_stroke:I

    iget-object v2, p0, Landroid/support/v7/g/k;->m:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/g/k;->s:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/support/v7/g/k;->r:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/support/v7/g/k;->n:Landroid/content/res/Resources;

    sget v1, Landroid/support/v7/b/e;->sesl_round_stroke_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/g/k;->t:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Landroid/support/v7/g/k;->c:I

    return v0
.end method

.method public a(I)V
    .locals 3

    and-int/lit8 v0, p1, -0x10

    if-nez v0, :cond_2

    iput p1, p0, Landroid/support/v7/g/k;->l:I

    iget-object p1, p0, Landroid/support/v7/g/k;->d:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/v7/g/k;->e:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/v7/g/k;->f:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/v7/g/k;->g:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_1

    :cond_0
    invoke-direct {p0}, Landroid/support/v7/g/k;->b()V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Use wrong rounded corners to the param, corners = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(II)V
    .locals 3

    iget-boolean v0, p0, Landroid/support/v7/g/k;->a:Z

    const-string v1, "SeslRoundedCorner"

    if-eqz v0, :cond_0

    const-string p1, "can not change round color on stroke rounded corners"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_a

    and-int/lit8 v0, p1, -0x10

    if-nez v0, :cond_9

    iget v0, p0, Landroid/support/v7/g/k;->h:I

    if-ne p2, v0, :cond_1

    iget v0, p0, Landroid/support/v7/g/k;->j:I

    if-eq p2, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "change color = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", on ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", top color = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/v7/g/k;->h:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", bottom color = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/v7/g/k;->j:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Landroid/support/v7/g/k;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/g/k;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/g/k;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/g/k;->g:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    :cond_3
    invoke-direct {p0}, Landroid/support/v7/g/k;->b()V

    :cond_4
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_5

    iput p2, p0, Landroid/support/v7/g/k;->h:I

    iget-object v1, p0, Landroid/support/v7/g/k;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_5
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_6

    iput p2, p0, Landroid/support/v7/g/k;->i:I

    iget-object v1, p0, Landroid/support/v7/g/k;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_6
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_7

    iput p2, p0, Landroid/support/v7/g/k;->j:I

    iget-object v1, p0, Landroid/support/v7/g/k;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_7
    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_8

    iput p2, p0, Landroid/support/v7/g/k;->k:I

    iget-object p1, p0, Landroid/support/v7/g/k;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_8
    return-void

    :cond_9
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Use wrong rounded corners to the param, corners = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "There is no rounded corner on = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Landroid/support/v7/g/k;->o:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    iget v0, p0, Landroid/support/v7/g/k;->l:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v7/g/k;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/g/k;->r:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/support/v7/g/k;->o:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/support/v7/g/k;->o:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/support/v7/g/k;->o:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/support/v7/g/k;->t:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/support/v7/g/k;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/g/k;->d:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/support/v7/g/k;->o:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/support/v7/g/k;->o:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/support/v7/g/k;->o:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v5, p0, Landroid/support/v7/g/k;->c:I

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/support/v7/g/k;->o:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, p0, Landroid/support/v7/g/k;->c:I

    add-int/2addr v5, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/support/v7/g/k;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    iget v0, p0, Landroid/support/v7/g/k;->l:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/g/k;->e:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/support/v7/g/k;->o:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, p0, Landroid/support/v7/g/k;->c:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/support/v7/g/k;->o:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/support/v7/g/k;->o:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Landroid/support/v7/g/k;->o:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, p0, Landroid/support/v7/g/k;->c:I

    add-int/2addr v5, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/support/v7/g/k;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    iget v0, p0, Landroid/support/v7/g/k;->l:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/support/v7/g/k;->a:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/g/k;->s:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/support/v7/g/k;->o:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Landroid/support/v7/g/k;->t:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/support/v7/g/k;->o:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/support/v7/g/k;->o:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/support/v7/g/k;->s:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    iget-object v0, p0, Landroid/support/v7/g/k;->f:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/g/k;->o:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/support/v7/g/k;->o:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Landroid/support/v7/g/k;->c:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/support/v7/g/k;->o:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Landroid/support/v7/g/k;->c:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/support/v7/g/k;->o:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/support/v7/g/k;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    iget v0, p0, Landroid/support/v7/g/k;->l:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/g/k;->g:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/g/k;->o:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/support/v7/g/k;->c:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/v7/g/k;->o:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Landroid/support/v7/g/k;->c:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/support/v7/g/k;->o:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/support/v7/g/k;->o:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/support/v7/g/k;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_5
    return-void
.end method

.method public a(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/support/v7/g/k;->p:I

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Landroid/support/v7/g/k;->p:I

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    :goto_0
    iput v0, p0, Landroid/support/v7/g/k;->q:I

    iget-object v0, p0, Landroid/support/v7/g/k;->o:Landroid/graphics/Rect;

    iget v1, p0, Landroid/support/v7/g/k;->p:I

    iget v2, p0, Landroid/support/v7/g/k;->q:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v1

    iget v4, p0, Landroid/support/v7/g/k;->q:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget p1, p0, Landroid/support/v7/g/k;->l:I

    and-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Landroid/support/v7/g/k;->a:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/support/v7/g/k;->r:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/g/k;->o:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/support/v7/g/k;->o:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/support/v7/g/k;->o:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, p0, Landroid/support/v7/g/k;->t:I

    add-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p1, p0, Landroid/support/v7/g/k;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    iget-object p1, p0, Landroid/support/v7/g/k;->d:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/g/k;->o:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/support/v7/g/k;->o:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/support/v7/g/k;->o:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Landroid/support/v7/g/k;->c:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/support/v7/g/k;->o:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/support/v7/g/k;->c:I

    add-int/2addr v4, v5

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p1, p0, Landroid/support/v7/g/k;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    iget p1, p0, Landroid/support/v7/g/k;->l:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroid/support/v7/g/k;->e:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/g/k;->o:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/support/v7/g/k;->c:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/v7/g/k;->o:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/support/v7/g/k;->o:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/support/v7/g/k;->o:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/support/v7/g/k;->c:I

    add-int/2addr v4, v5

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p1, p0, Landroid/support/v7/g/k;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    iget p1, p0, Landroid/support/v7/g/k;->l:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Landroid/support/v7/g/k;->a:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Landroid/support/v7/g/k;->s:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/g/k;->o:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/support/v7/g/k;->t:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/v7/g/k;->o:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/support/v7/g/k;->o:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p1, p0, Landroid/support/v7/g/k;->s:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    iget-object p1, p0, Landroid/support/v7/g/k;->f:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/support/v7/g/k;->o:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/support/v7/g/k;->o:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/support/v7/g/k;->c:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/v7/g/k;->o:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v3, p0, Landroid/support/v7/g/k;->c:I

    add-int/2addr v2, v3

    iget-object v3, p0, Landroid/support/v7/g/k;->o:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p1, p0, Landroid/support/v7/g/k;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_5
    iget p1, p0, Landroid/support/v7/g/k;->l:I

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_6

    iget-object p1, p0, Landroid/support/v7/g/k;->g:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/support/v7/g/k;->o:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Landroid/support/v7/g/k;->c:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/v7/g/k;->o:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/support/v7/g/k;->c:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/v7/g/k;->o:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/support/v7/g/k;->o:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p1, p0, Landroid/support/v7/g/k;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_6
    return-void
.end method
