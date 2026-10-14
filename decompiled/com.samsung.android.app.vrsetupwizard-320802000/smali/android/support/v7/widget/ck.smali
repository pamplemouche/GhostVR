.class Landroid/support/v7/widget/ck;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ci;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/ci;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/ck;->a:Landroid/support/v7/widget/ci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/ci;Landroid/support/v7/widget/cj;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/ck;-><init>(Landroid/support/v7/widget/ci;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/ck;->a:Landroid/support/v7/widget/ci;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/ci;->a(Landroid/support/v7/widget/ci;Landroid/support/v7/widget/ck;)Landroid/support/v7/widget/ck;

    iget-object v0, p0, Landroid/support/v7/widget/ck;->a:Landroid/support/v7/widget/ci;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/ci;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ck;->a:Landroid/support/v7/widget/ci;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/ci;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/ck;->a:Landroid/support/v7/widget/ci;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/ci;->a(Landroid/support/v7/widget/ci;Landroid/support/v7/widget/ck;)Landroid/support/v7/widget/ck;

    iget-object v0, p0, Landroid/support/v7/widget/ck;->a:Landroid/support/v7/widget/ci;

    invoke-virtual {v0}, Landroid/support/v7/widget/ci;->drawableStateChanged()V

    return-void
.end method
