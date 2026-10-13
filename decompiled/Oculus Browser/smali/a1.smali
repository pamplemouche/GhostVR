.class public La1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field public final synthetic w:Landroid/view/ViewGroup;

.field public final synthetic x:Landroid/graphics/drawable/BitmapDrawable;

.field public final synthetic y:Landroid/view/View;

.field public final synthetic z:F


# direct methods
.method public constructor <init>(Ll1;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;F)V
    .locals 0

    .line 1
    iput-object p2, p0, La1;->w:Landroid/view/ViewGroup;

    iput-object p3, p0, La1;->x:Landroid/graphics/drawable/BitmapDrawable;

    iput-object p4, p0, La1;->y:Landroid/view/View;

    iput p5, p0, La1;->z:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, La1;->w:Landroid/view/ViewGroup;

    invoke-static {p1}, LY1;->a(Landroid/view/View;)LV1;

    move-result-object p1

    iget-object v0, p0, La1;->x:Landroid/graphics/drawable/BitmapDrawable;

    check-cast p1, LU1;

    .line 2
    iget-object p1, p1, LU1;->a:Landroid/view/ViewOverlay;

    invoke-virtual {p1, v0}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 3
    iget-object p1, p0, La1;->y:Landroid/view/View;

    iget v0, p0, La1;->z:F

    invoke-static {p1, v0}, LY1;->a(Landroid/view/View;F)V

    return-void
.end method
