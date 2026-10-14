.class Landroid/support/v7/widget/ix;
.super Landroid/util/FloatProperty;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Landroid/support/v7/widget/SeslProgressBar;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/SeslProgressBar;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SeslProgressBar;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/ix;->a:Landroid/support/v7/widget/SeslProgressBar;

    invoke-direct {p0, p2}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/SeslProgressBar;)Ljava/lang/Float;
    .locals 0

    invoke-static {p1}, Landroid/support/v7/widget/SeslProgressBar;->b(Landroid/support/v7/widget/SeslProgressBar;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/support/v7/widget/SeslProgressBar;F)V
    .locals 1

    sget v0, Landroid/support/v7/b/g;->progress:I

    invoke-static {p1, v0, p2}, Landroid/support/v7/widget/SeslProgressBar;->a(Landroid/support/v7/widget/SeslProgressBar;IF)V

    invoke-static {p1, p2}, Landroid/support/v7/widget/SeslProgressBar;->a(Landroid/support/v7/widget/SeslProgressBar;F)F

    return-void
.end method

.method public synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/support/v7/widget/SeslProgressBar;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ix;->a(Landroid/support/v7/widget/SeslProgressBar;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Landroid/support/v7/widget/SeslProgressBar;

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/ix;->a(Landroid/support/v7/widget/SeslProgressBar;F)V

    return-void
.end method
