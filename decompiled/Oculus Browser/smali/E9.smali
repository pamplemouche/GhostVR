.class public LE9;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic w:LQ9;


# direct methods
.method public constructor <init>(LQ9;)V
    .locals 0

    .line 1
    iput-object p1, p0, LE9;->w:LQ9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, LE9;->w:LQ9;

    iget-boolean v0, p1, LQ9;->z0:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p1, LQ9;->z0:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p1, LQ9;->Z:Landroid/support/v7/app/OverlayListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object p1, p0, LE9;->w:LQ9;

    .line 4
    iget-boolean v0, p1, LQ9;->z0:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, LQ9;->G0:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_1
    iget-object v0, p1, LQ9;->H0:Landroid/view/animation/Interpolator;

    :goto_0
    iput-object v0, p1, LQ9;->F0:Landroid/view/animation/Interpolator;

    .line 5
    iget-object p1, p0, LE9;->w:LQ9;

    invoke-virtual {p1, v1}, LQ9;->e(Z)V

    return-void
.end method
