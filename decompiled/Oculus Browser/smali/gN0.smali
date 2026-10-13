.class public final LgN0;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "PG"


# instance fields
.field public a:I

.field public b:I

.field public c:J

.field public d:F

.field public e:Landroid/view/animation/Interpolator;

.field public f:LeN0;


# direct methods
.method public constructor <init>(Landroid/view/animation/Interpolator;LeN0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 2
    new-instance v0, LiN0;

    invoke-direct {v0, p1}, LiN0;-><init>(Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, LgN0;->e:Landroid/view/animation/Interpolator;

    .line 3
    iput-object p2, p0, LgN0;->f:LeN0;

    return-void
.end method

.method public constructor <init>(LgN0;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 5
    iget v0, p1, LgN0;->a:I

    iput v0, p0, LgN0;->a:I

    .line 6
    iget v0, p1, LgN0;->b:I

    iput v0, p0, LgN0;->b:I

    .line 7
    iget-wide v0, p1, LgN0;->c:J

    iput-wide v0, p0, LgN0;->c:J

    .line 8
    iget-object v0, p1, LgN0;->e:Landroid/view/animation/Interpolator;

    iput-object v0, p0, LgN0;->e:Landroid/view/animation/Interpolator;

    .line 9
    iget-object p1, p1, LgN0;->f:LeN0;

    iput-object p1, p0, LgN0;->f:LeN0;

    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    new-instance v0, LhN0;

    .line 2
    new-instance v1, LdN0;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, LdN0;-><init>(LZM0;)V

    invoke-direct {v0, p0, v1}, LhN0;-><init>(LgN0;LfN0;)V

    return-object v0
.end method
