.class public final Lq9;
.super Landroid/os/AsyncTask;
.source "PG"


# instance fields
.field public final a:I

.field public final synthetic b:Landroid/support/v7/app/MediaRouteButton;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/MediaRouteButton;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq9;->b:Landroid/support/v7/app/MediaRouteButton;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput p2, p0, Lq9;->a:I

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Lq9;->b:Landroid/support/v7/app/MediaRouteButton;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lq9;->a:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public onCancelled(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 2
    sget-object v0, Landroid/support/v7/app/MediaRouteButton;->I:Landroid/util/SparseArray;

    iget v1, p0, Lq9;->a:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lq9;->b:Landroid/support/v7/app/MediaRouteButton;

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v7/app/MediaRouteButton;->B:Lq9;

    return-void
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 2
    sget-object v0, Landroid/support/v7/app/MediaRouteButton;->I:Landroid/util/SparseArray;

    iget v1, p0, Lq9;->a:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lq9;->b:Landroid/support/v7/app/MediaRouteButton;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/app/MediaRouteButton;->B:Lq9;

    .line 4
    invoke-virtual {v0, p1}, Landroid/support/v7/app/MediaRouteButton;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
