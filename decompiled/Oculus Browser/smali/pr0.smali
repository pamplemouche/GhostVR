.class public Lpr0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public w:I

.field public final synthetic x:Lrr0;


# direct methods
.method public constructor <init>(Lrr0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpr0;->x:Lrr0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 1
    iget-object v0, p0, Lpr0;->x:Lrr0;

    .line 2
    iget-object v0, v0, Lrr0;->B:Landroid/view/View;

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v1, v2

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    instance-of v2, v0, Landroid/view/View;

    if-nez v2, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    check-cast v0, Landroid/view/View;

    goto :goto_0

    .line 7
    :cond_1
    :goto_1
    iget v0, p0, Lpr0;->w:I

    if-ne v0, v1, :cond_2

    return-void

    .line 8
    :cond_2
    iput v1, p0, Lpr0;->w:I

    .line 9
    iget-object v0, p0, Lpr0;->x:Lrr0;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestLayout()V

    return-void
.end method
