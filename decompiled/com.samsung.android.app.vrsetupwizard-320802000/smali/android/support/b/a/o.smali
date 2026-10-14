.class Landroid/support/b/a/o;
.super Landroid/support/b/a/q;


# instance fields
.field a:I

.field b:F

.field c:I

.field d:F

.field e:I

.field f:F

.field g:F

.field h:F

.field i:F

.field j:Landroid/graphics/Paint$Cap;

.field k:Landroid/graphics/Paint$Join;

.field l:F

.field private p:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/support/b/a/q;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/b/a/o;->a:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/support/b/a/o;->b:F

    iput v0, p0, Landroid/support/b/a/o;->c:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/b/a/o;->d:F

    iput v0, p0, Landroid/support/b/a/o;->f:F

    iput v1, p0, Landroid/support/b/a/o;->g:F

    iput v0, p0, Landroid/support/b/a/o;->h:F

    iput v1, p0, Landroid/support/b/a/o;->i:F

    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Landroid/support/b/a/o;->j:Landroid/graphics/Paint$Cap;

    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Landroid/support/b/a/o;->k:Landroid/graphics/Paint$Join;

    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Landroid/support/b/a/o;->l:F

    return-void
.end method

.method public constructor <init>(Landroid/support/b/a/o;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/support/b/a/q;-><init>(Landroid/support/b/a/q;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/b/a/o;->a:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/support/b/a/o;->b:F

    iput v0, p0, Landroid/support/b/a/o;->c:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/b/a/o;->d:F

    iput v0, p0, Landroid/support/b/a/o;->f:F

    iput v1, p0, Landroid/support/b/a/o;->g:F

    iput v0, p0, Landroid/support/b/a/o;->h:F

    iput v1, p0, Landroid/support/b/a/o;->i:F

    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Landroid/support/b/a/o;->j:Landroid/graphics/Paint$Cap;

    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Landroid/support/b/a/o;->k:Landroid/graphics/Paint$Join;

    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Landroid/support/b/a/o;->l:F

    iget-object v0, p1, Landroid/support/b/a/o;->p:[I

    iput-object v0, p0, Landroid/support/b/a/o;->p:[I

    iget v0, p1, Landroid/support/b/a/o;->a:I

    iput v0, p0, Landroid/support/b/a/o;->a:I

    iget v0, p1, Landroid/support/b/a/o;->b:F

    iput v0, p0, Landroid/support/b/a/o;->b:F

    iget v0, p1, Landroid/support/b/a/o;->d:F

    iput v0, p0, Landroid/support/b/a/o;->d:F

    iget v0, p1, Landroid/support/b/a/o;->c:I

    iput v0, p0, Landroid/support/b/a/o;->c:I

    iget v0, p1, Landroid/support/b/a/o;->e:I

    iput v0, p0, Landroid/support/b/a/o;->e:I

    iget v0, p1, Landroid/support/b/a/o;->f:F

    iput v0, p0, Landroid/support/b/a/o;->f:F

    iget v0, p1, Landroid/support/b/a/o;->g:F

    iput v0, p0, Landroid/support/b/a/o;->g:F

    iget v0, p1, Landroid/support/b/a/o;->h:F

    iput v0, p0, Landroid/support/b/a/o;->h:F

    iget v0, p1, Landroid/support/b/a/o;->i:F

    iput v0, p0, Landroid/support/b/a/o;->i:F

    iget-object v0, p1, Landroid/support/b/a/o;->j:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Landroid/support/b/a/o;->j:Landroid/graphics/Paint$Cap;

    iget-object v0, p1, Landroid/support/b/a/o;->k:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Landroid/support/b/a/o;->k:Landroid/graphics/Paint$Join;

    iget p1, p1, Landroid/support/b/a/o;->l:F

    iput p1, p0, Landroid/support/b/a/o;->l:F

    return-void
.end method

.method private a(ILandroid/graphics/Paint$Cap;)Landroid/graphics/Paint$Cap;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-object p2

    :cond_0
    sget-object p1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    return-object p1

    :cond_1
    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    return-object p1

    :cond_2
    sget-object p1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    return-object p1
.end method

.method private a(ILandroid/graphics/Paint$Join;)Landroid/graphics/Paint$Join;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-object p2

    :cond_0
    sget-object p1, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    return-object p1

    :cond_1
    sget-object p1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    return-object p1

    :cond_2
    sget-object p1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    return-object p1
.end method

.method private a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/b/a/o;->p:[I

    const-string v0, "pathData"

    invoke-static {p2, v0}, Landroid/support/b/a/j;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p0, Landroid/support/b/a/o;->n:Ljava/lang/String;

    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/support/b/a/f;->a(Ljava/lang/String;)[Landroid/support/b/a/i;

    move-result-object v0

    iput-object v0, p0, Landroid/support/b/a/o;->m:[Landroid/support/b/a/i;

    :cond_2
    const/4 v0, 0x1

    iget v1, p0, Landroid/support/b/a/o;->c:I

    const-string v2, "fillColor"

    invoke-static {p1, p2, v2, v0, v1}, Landroid/support/b/a/j;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Landroid/support/b/a/o;->c:I

    const/16 v0, 0xc

    iget v1, p0, Landroid/support/b/a/o;->f:F

    const-string v2, "fillAlpha"

    invoke-static {p1, p2, v2, v0, v1}, Landroid/support/b/a/j;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/b/a/o;->f:F

    const/16 v0, 0x8

    const/4 v1, -0x1

    const-string v2, "strokeLineCap"

    invoke-static {p1, p2, v2, v0, v1}, Landroid/support/b/a/j;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    iget-object v2, p0, Landroid/support/b/a/o;->j:Landroid/graphics/Paint$Cap;

    invoke-direct {p0, v0, v2}, Landroid/support/b/a/o;->a(ILandroid/graphics/Paint$Cap;)Landroid/graphics/Paint$Cap;

    move-result-object v0

    iput-object v0, p0, Landroid/support/b/a/o;->j:Landroid/graphics/Paint$Cap;

    const/16 v0, 0x9

    const-string v2, "strokeLineJoin"

    invoke-static {p1, p2, v2, v0, v1}, Landroid/support/b/a/j;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Landroid/support/b/a/o;->k:Landroid/graphics/Paint$Join;

    invoke-direct {p0, v0, v1}, Landroid/support/b/a/o;->a(ILandroid/graphics/Paint$Join;)Landroid/graphics/Paint$Join;

    move-result-object v0

    iput-object v0, p0, Landroid/support/b/a/o;->k:Landroid/graphics/Paint$Join;

    const/16 v0, 0xa

    iget v1, p0, Landroid/support/b/a/o;->l:F

    const-string v2, "strokeMiterLimit"

    invoke-static {p1, p2, v2, v0, v1}, Landroid/support/b/a/j;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/b/a/o;->l:F

    const/4 v0, 0x3

    iget v1, p0, Landroid/support/b/a/o;->a:I

    const-string v2, "strokeColor"

    invoke-static {p1, p2, v2, v0, v1}, Landroid/support/b/a/j;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Landroid/support/b/a/o;->a:I

    const/16 v0, 0xb

    iget v1, p0, Landroid/support/b/a/o;->d:F

    const-string v2, "strokeAlpha"

    invoke-static {p1, p2, v2, v0, v1}, Landroid/support/b/a/j;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/b/a/o;->d:F

    const/4 v0, 0x4

    iget v1, p0, Landroid/support/b/a/o;->b:F

    const-string v2, "strokeWidth"

    invoke-static {p1, p2, v2, v0, v1}, Landroid/support/b/a/j;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/b/a/o;->b:F

    const/4 v0, 0x6

    iget v1, p0, Landroid/support/b/a/o;->h:F

    const-string v2, "trimPathEnd"

    invoke-static {p1, p2, v2, v0, v1}, Landroid/support/b/a/j;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/b/a/o;->h:F

    const/4 v0, 0x7

    iget v1, p0, Landroid/support/b/a/o;->i:F

    const-string v2, "trimPathOffset"

    invoke-static {p1, p2, v2, v0, v1}, Landroid/support/b/a/j;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/b/a/o;->i:F

    const/4 v0, 0x5

    iget v1, p0, Landroid/support/b/a/o;->g:F

    const-string v2, "trimPathStart"

    invoke-static {p1, p2, v2, v0, v1}, Landroid/support/b/a/j;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p1

    iput p1, p0, Landroid/support/b/a/o;->g:F

    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    sget-object v0, Landroid/support/b/a/a;->c:[I

    invoke-static {p1, p3, p2, v0}, Landroid/support/b/a/k;->b(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-direct {p0, p1, p4}, Landroid/support/b/a/o;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
