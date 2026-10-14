.class Landroid/support/design/widget/ay;
.super Landroid/support/design/widget/bb;


# instance fields
.field final synthetic a:Landroid/support/design/widget/at;


# direct methods
.method constructor <init>(Landroid/support/design/widget/at;)V
    .locals 1

    iput-object p1, p0, Landroid/support/design/widget/ay;->a:Landroid/support/design/widget/at;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/bb;-><init>(Landroid/support/design/widget/at;Landroid/support/design/widget/au;)V

    return-void
.end method


# virtual methods
.method protected a()F
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/ay;->a:Landroid/support/design/widget/at;

    iget v0, v0, Landroid/support/design/widget/at;->h:F

    iget-object v1, p0, Landroid/support/design/widget/ay;->a:Landroid/support/design/widget/at;

    iget v1, v1, Landroid/support/design/widget/at;->i:F

    add-float/2addr v0, v1

    return v0
.end method
