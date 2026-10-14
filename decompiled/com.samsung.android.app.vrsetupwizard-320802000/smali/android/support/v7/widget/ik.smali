.class Landroid/support/v7/widget/ik;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/support/v7/widget/if;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/if;I)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/ik;->b:Landroid/support/v7/widget/if;

    iput p2, p0, Landroid/support/v7/widget/ik;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Landroid/support/v7/widget/ik;->b:Landroid/support/v7/widget/if;

    invoke-static {v0}, Landroid/support/v7/widget/if;->d(Landroid/support/v7/widget/if;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ik;->b:Landroid/support/v7/widget/if;

    invoke-static {v0, v1}, Landroid/support/v7/widget/if;->a(Landroid/support/v7/widget/if;Z)Z

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ik;->b:Landroid/support/v7/widget/if;

    invoke-static {v0, v1}, Landroid/support/v7/widget/if;->b(Landroid/support/v7/widget/if;Z)Z

    iget-object v0, p0, Landroid/support/v7/widget/ik;->b:Landroid/support/v7/widget/if;

    invoke-static {v0}, Landroid/support/v7/widget/if;->e(Landroid/support/v7/widget/if;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v7/widget/if;->a(Landroid/support/v7/widget/if;Landroid/widget/Scroller;)Landroid/widget/Scroller;

    iget-object v0, p0, Landroid/support/v7/widget/ik;->b:Landroid/support/v7/widget/if;

    invoke-virtual {v0}, Landroid/support/v7/widget/if;->k()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/ik;->b:Landroid/support/v7/widget/if;

    invoke-virtual {v1}, Landroid/support/v7/widget/if;->l()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/ik;->b:Landroid/support/v7/widget/if;

    invoke-static {v0}, Landroid/support/v7/widget/if;->d(Landroid/support/v7/widget/if;)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/ik;->b:Landroid/support/v7/widget/if;

    invoke-static {v0}, Landroid/support/v7/widget/if;->d(Landroid/support/v7/widget/if;)I

    move-result v0

    neg-int v0, v0

    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/ik;->b:Landroid/support/v7/widget/if;

    invoke-static {v1}, Landroid/support/v7/widget/if;->f(Landroid/support/v7/widget/if;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/ik;->b:Landroid/support/v7/widget/if;

    invoke-static {v1}, Landroid/support/v7/widget/if;->d(Landroid/support/v7/widget/if;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    :goto_1
    iget-object v2, p0, Landroid/support/v7/widget/ik;->b:Landroid/support/v7/widget/if;

    invoke-static {v2}, Landroid/support/v7/widget/if;->f(Landroid/support/v7/widget/if;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/ik;->b:Landroid/support/v7/widget/if;

    invoke-static {v0}, Landroid/support/v7/widget/if;->d(Landroid/support/v7/widget/if;)I

    move-result v0

    int-to-double v2, v0

    const-wide v4, 0x401599999999999aL    # 5.4

    mul-double v2, v2, v4

    double-to-int v0, v2

    :goto_2
    iget-object v2, p0, Landroid/support/v7/widget/ik;->b:Landroid/support/v7/widget/if;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/support/v7/widget/if;->b(II)V

    iget-object v1, p0, Landroid/support/v7/widget/ik;->b:Landroid/support/v7/widget/if;

    iget-object v1, v1, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslNumberPicker;->invalidate()V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Landroid/support/v7/widget/il;

    invoke-direct {v2, p0, v0}, Landroid/support/v7/widget/il;-><init>(Landroid/support/v7/widget/ik;I)V

    iget v0, p0, Landroid/support/v7/widget/ik;->a:I

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
