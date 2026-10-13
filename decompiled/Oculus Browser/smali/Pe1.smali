.class public LPe1;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Landroid/graphics/Rect;

.field public final d:[I

.field public final e:[I

.field public f:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(IILandroid/graphics/Rect;[I[I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, LPe1;->a:I

    .line 3
    iput p2, p0, LPe1;->b:I

    .line 4
    new-instance p1, Landroid/graphics/Rect;

    iget p2, p3, Landroid/graphics/Rect;->left:I

    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p0, LPe1;->a:I

    iget v2, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iget v2, p0, LPe1;->b:I

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, p3

    invoke-direct {p1, p2, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, LPe1;->c:Landroid/graphics/Rect;

    .line 5
    array-length p1, p4

    new-array p1, p1, [I

    iput-object p1, p0, LPe1;->d:[I

    .line 6
    array-length p2, p5

    new-array p2, p2, [I

    iput-object p2, p0, LPe1;->e:[I

    .line 7
    array-length p2, p4

    const/4 p3, 0x0

    invoke-static {p4, p3, p1, p3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget-object p1, p0, LPe1;->e:[I

    array-length p2, p5

    invoke-static {p5, p3, p1, p3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    new-instance p1, Landroid/graphics/Rect;

    iget-object p2, p0, LPe1;->d:[I

    aget p4, p2, p3

    iget-object p5, p0, LPe1;->e:[I

    aget p3, p5, p3

    const/4 v0, 0x1

    aget p2, p2, v0

    aget p5, p5, v0

    invoke-direct {p1, p4, p3, p2, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, LPe1;->f:Landroid/graphics/Rect;

    return-void
.end method
