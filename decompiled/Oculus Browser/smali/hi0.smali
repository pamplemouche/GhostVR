.class public Lhi0;
.super LLg;
.source "PG"


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, LLg;-><init>()V

    .line 2
    iput p1, p0, Lhi0;->a:I

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Lbh;)I
    .locals 0

    .line 4
    iget p1, p0, Lhi0;->a:I

    return p1
.end method

.method public a(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Lbh;)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p2, p3, p4}, Lhi0;->a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Lbh;)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Lhi0;->a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Lbh;)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    :goto_0
    return-void
.end method
