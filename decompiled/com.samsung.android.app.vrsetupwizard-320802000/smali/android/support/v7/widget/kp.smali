.class Landroid/support/v7/widget/kp;
.super Landroid/view/animation/Animation;


# instance fields
.field final a:F

.field final b:F

.field final c:F

.field final synthetic d:Landroid/support/v7/widget/SwitchCompat;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SwitchCompat;FF)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/kp;->d:Landroid/support/v7/widget/SwitchCompat;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput p2, p0, Landroid/support/v7/widget/kp;->a:F

    iput p3, p0, Landroid/support/v7/widget/kp;->b:F

    sub-float/2addr p3, p2

    iput p3, p0, Landroid/support/v7/widget/kp;->c:F

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    iget-object p2, p0, Landroid/support/v7/widget/kp;->d:Landroid/support/v7/widget/SwitchCompat;

    iget v0, p0, Landroid/support/v7/widget/kp;->a:F

    iget v1, p0, Landroid/support/v7/widget/kp;->c:F

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/SwitchCompat;->setThumbPosition(F)V

    return-void
.end method
