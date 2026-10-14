.class Landroid/support/v7/widget/iu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/if;

.field private final b:I

.field private final c:I

.field private d:I

.field private e:I


# direct methods
.method constructor <init>(Landroid/support/v7/widget/if;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/iu;->a:Landroid/support/v7/widget/if;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput p1, p0, Landroid/support/v7/widget/iu;->b:I

    const/4 p1, 0x2

    iput p1, p0, Landroid/support/v7/widget/iu;->c:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, Landroid/support/v7/widget/iu;->a:Landroid/support/v7/widget/if;

    iget-object v0, v0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslNumberPicker;->getRight()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/iu;->a:Landroid/support/v7/widget/if;

    iget-object v1, v1, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslNumberPicker;->getBottom()I

    move-result v1

    const/4 v2, 0x0

    iput v2, p0, Landroid/support/v7/widget/iu;->e:I

    iput v2, p0, Landroid/support/v7/widget/iu;->d:I

    iget-object v3, p0, Landroid/support/v7/widget/iu;->a:Landroid/support/v7/widget/if;

    iget-object v3, v3, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v3, p0}, Landroid/support/v7/widget/SeslNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v3, p0, Landroid/support/v7/widget/iu;->a:Landroid/support/v7/widget/if;

    invoke-static {v3}, Landroid/support/v7/widget/if;->q(Landroid/support/v7/widget/if;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/support/v7/widget/iu;->a:Landroid/support/v7/widget/if;

    invoke-static {v3, v2}, Landroid/support/v7/widget/if;->d(Landroid/support/v7/widget/if;Z)Z

    iget-object v3, p0, Landroid/support/v7/widget/iu;->a:Landroid/support/v7/widget/if;

    iget-object v3, v3, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v4, p0, Landroid/support/v7/widget/iu;->a:Landroid/support/v7/widget/if;

    invoke-static {v4}, Landroid/support/v7/widget/if;->r(Landroid/support/v7/widget/if;)I

    move-result v4

    invoke-virtual {v3, v2, v4, v0, v1}, Landroid/support/v7/widget/SeslNumberPicker;->invalidate(IIII)V

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/iu;->a:Landroid/support/v7/widget/if;

    invoke-static {v1}, Landroid/support/v7/widget/if;->s(Landroid/support/v7/widget/if;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/iu;->a:Landroid/support/v7/widget/if;

    invoke-static {v1, v2}, Landroid/support/v7/widget/if;->e(Landroid/support/v7/widget/if;Z)Z

    iget-object v1, p0, Landroid/support/v7/widget/iu;->a:Landroid/support/v7/widget/if;

    iget-object v1, v1, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v3, p0, Landroid/support/v7/widget/iu;->a:Landroid/support/v7/widget/if;

    invoke-static {v3}, Landroid/support/v7/widget/if;->t(Landroid/support/v7/widget/if;)I

    move-result v3

    invoke-virtual {v1, v2, v2, v0, v3}, Landroid/support/v7/widget/SeslNumberPicker;->invalidate(IIII)V

    :cond_1
    return-void
.end method

.method public a(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/widget/iu;->a()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/iu;->e:I

    iput p1, p0, Landroid/support/v7/widget/iu;->d:I

    iget-object p1, p0, Landroid/support/v7/widget/iu;->a:Landroid/support/v7/widget/if;

    iget-object p1, p1, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, p0, v0, v1}, Landroid/support/v7/widget/SeslNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public b(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/iu;->a()V

    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v7/widget/iu;->e:I

    iput p1, p0, Landroid/support/v7/widget/iu;->d:I

    iget-object p1, p0, Landroid/support/v7/widget/iu;->a:Landroid/support/v7/widget/if;

    iget-object p1, p1, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1, p0}, Landroid/support/v7/widget/SeslNumberPicker;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public run()V
    .locals 8

    iget-object v0, p0, Landroid/support/v7/widget/iu;->a:Landroid/support/v7/widget/if;

    iget-object v0, v0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslNumberPicker;->getRight()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/iu;->a:Landroid/support/v7/widget/if;

    iget-object v1, v1, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslNumberPicker;->getBottom()I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/iu;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v5, :cond_5

    if-eq v2, v3, :cond_0

    goto/16 :goto_2

    :cond_0
    iget v2, p0, Landroid/support/v7/widget/iu;->d:I

    if-eq v2, v5, :cond_3

    if-eq v2, v3, :cond_1

    goto :goto_2

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/iu;->a:Landroid/support/v7/widget/if;

    invoke-static {v1}, Landroid/support/v7/widget/if;->s(Landroid/support/v7/widget/if;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/iu;->a:Landroid/support/v7/widget/if;

    iget-object v1, v1, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, p0, v2, v3}, Landroid/support/v7/widget/SeslNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/iu;->a:Landroid/support/v7/widget/if;

    invoke-static {v1}, Landroid/support/v7/widget/if;->s(Landroid/support/v7/widget/if;)Z

    move-result v2

    xor-int/2addr v2, v5

    invoke-static {v1, v2}, Landroid/support/v7/widget/if;->e(Landroid/support/v7/widget/if;Z)Z

    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/iu;->a:Landroid/support/v7/widget/if;

    iget-object v1, v1, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v2, p0, Landroid/support/v7/widget/iu;->a:Landroid/support/v7/widget/if;

    invoke-static {v2}, Landroid/support/v7/widget/if;->t(Landroid/support/v7/widget/if;)I

    move-result v2

    invoke-virtual {v1, v4, v4, v0, v2}, Landroid/support/v7/widget/SeslNumberPicker;->invalidate(IIII)V

    goto :goto_2

    :cond_3
    iget-object v2, p0, Landroid/support/v7/widget/iu;->a:Landroid/support/v7/widget/if;

    invoke-static {v2}, Landroid/support/v7/widget/if;->q(Landroid/support/v7/widget/if;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Landroid/support/v7/widget/iu;->a:Landroid/support/v7/widget/if;

    iget-object v2, v2, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v3

    int-to-long v6, v3

    invoke-virtual {v2, p0, v6, v7}, Landroid/support/v7/widget/SeslNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    iget-object v2, p0, Landroid/support/v7/widget/iu;->a:Landroid/support/v7/widget/if;

    invoke-static {v2}, Landroid/support/v7/widget/if;->q(Landroid/support/v7/widget/if;)Z

    move-result v3

    xor-int/2addr v3, v5

    invoke-static {v2, v3}, Landroid/support/v7/widget/if;->d(Landroid/support/v7/widget/if;Z)Z

    :goto_1
    iget-object v2, p0, Landroid/support/v7/widget/iu;->a:Landroid/support/v7/widget/if;

    iget-object v2, v2, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v3, p0, Landroid/support/v7/widget/iu;->a:Landroid/support/v7/widget/if;

    invoke-static {v3}, Landroid/support/v7/widget/if;->r(Landroid/support/v7/widget/if;)I

    move-result v3

    invoke-virtual {v2, v4, v3, v0, v1}, Landroid/support/v7/widget/SeslNumberPicker;->invalidate(IIII)V

    goto :goto_2

    :cond_5
    iget v2, p0, Landroid/support/v7/widget/iu;->d:I

    if-eq v2, v5, :cond_7

    if-eq v2, v3, :cond_6

    goto :goto_2

    :cond_6
    iget-object v1, p0, Landroid/support/v7/widget/iu;->a:Landroid/support/v7/widget/if;

    invoke-static {v1, v5}, Landroid/support/v7/widget/if;->e(Landroid/support/v7/widget/if;Z)Z

    goto :goto_0

    :cond_7
    iget-object v2, p0, Landroid/support/v7/widget/iu;->a:Landroid/support/v7/widget/if;

    invoke-static {v2, v5}, Landroid/support/v7/widget/if;->d(Landroid/support/v7/widget/if;Z)Z

    goto :goto_1

    :goto_2
    return-void
.end method
