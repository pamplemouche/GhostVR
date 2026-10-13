.class public Lorg/chromium/content/browser/SyntheticGestureTarget;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:LAW0;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LAW0;

    invoke-direct {v0, p1}, LAW0;-><init>(Landroid/view/View;)V

    .line 3
    iput-object v0, p0, Lorg/chromium/content/browser/SyntheticGestureTarget;->a:LAW0;

    return-void
.end method

.method public static create(Landroid/view/View;)Lorg/chromium/content/browser/SyntheticGestureTarget;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/content/browser/SyntheticGestureTarget;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/SyntheticGestureTarget;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method private inject(IIJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/SyntheticGestureTarget;->a:LAW0;

    invoke-virtual {v0, p1, p2, p3, p4}, LAW0;->a(IIJ)V

    return-void
.end method

.method private setPointer(IIII)V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/SyntheticGestureTarget;->a:LAW0;

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 2
    invoke-virtual/range {v0 .. v5}, LAW0;->a(IIIII)V

    return-void
.end method

.method private setScrollDeltas(IIII)V
    .locals 7

    .line 1
    iget-object v6, p0, Lorg/chromium/content/browser/SyntheticGestureTarget;->a:LAW0;

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, v6

    move v2, p1

    move v3, p2

    .line 2
    invoke-virtual/range {v0 .. v5}, LAW0;->a(IIIII)V

    .line 3
    iget-object p1, v6, LAW0;->b:[Landroid/view/MotionEvent$PointerCoords;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    const/16 v0, 0xa

    int-to-float p3, p3

    invoke-virtual {p1, v0, p3}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 4
    iget-object p1, v6, LAW0;->b:[Landroid/view/MotionEvent$PointerCoords;

    aget-object p1, p1, p2

    const/16 p2, 0x9

    int-to-float p3, p4

    invoke-virtual {p1, p2, p3}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    return-void
.end method
