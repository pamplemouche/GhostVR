.class public LG9;
.super Landroid/view/animation/Animation;
.source "PG"


# instance fields
.field public final synthetic w:I

.field public final synthetic x:I

.field public final synthetic y:Landroid/view/View;


# direct methods
.method public constructor <init>(LQ9;IILandroid/view/View;)V
    .locals 0

    .line 1
    iput p2, p0, LG9;->w:I

    iput p3, p0, LG9;->x:I

    iput-object p4, p0, LG9;->y:Landroid/view/View;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    .line 1
    iget p2, p0, LG9;->w:I

    iget v0, p0, LG9;->x:I

    sub-int v0, p2, v0

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int p1, v0

    sub-int/2addr p2, p1

    .line 2
    iget-object p1, p0, LG9;->y:Landroid/view/View;

    invoke-static {p1, p2}, LQ9;->b(Landroid/view/View;I)V

    return-void
.end method
