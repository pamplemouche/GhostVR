.class Landroid/support/v7/widget/im;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/il;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/il;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/im;->a:Landroid/support/v7/widget/il;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Landroid/support/v7/widget/im;->a:Landroid/support/v7/widget/il;

    iget-object v0, v0, Landroid/support/v7/widget/il;->b:Landroid/support/v7/widget/ik;

    iget-object v0, v0, Landroid/support/v7/widget/ik;->b:Landroid/support/v7/widget/if;

    iget-object v1, p0, Landroid/support/v7/widget/im;->a:Landroid/support/v7/widget/il;

    iget-object v1, v1, Landroid/support/v7/widget/il;->b:Landroid/support/v7/widget/ik;

    iget-object v1, v1, Landroid/support/v7/widget/ik;->b:Landroid/support/v7/widget/if;

    invoke-static {v1}, Landroid/support/v7/widget/if;->g(Landroid/support/v7/widget/if;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v7/widget/if;->b(Landroid/support/v7/widget/if;Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/im;->a:Landroid/support/v7/widget/il;

    iget-object v0, v0, Landroid/support/v7/widget/il;->b:Landroid/support/v7/widget/ik;

    iget-object v0, v0, Landroid/support/v7/widget/ik;->b:Landroid/support/v7/widget/if;

    iget-object v1, p0, Landroid/support/v7/widget/im;->a:Landroid/support/v7/widget/il;

    iget-object v1, v1, Landroid/support/v7/widget/il;->b:Landroid/support/v7/widget/ik;

    iget-object v1, v1, Landroid/support/v7/widget/ik;->b:Landroid/support/v7/widget/if;

    invoke-static {v1}, Landroid/support/v7/widget/if;->h(Landroid/support/v7/widget/if;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v7/widget/if;->b(Landroid/support/v7/widget/if;Landroid/widget/Scroller;)Z

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/im;->a:Landroid/support/v7/widget/il;

    iget-object v0, v0, Landroid/support/v7/widget/il;->b:Landroid/support/v7/widget/ik;

    iget-object v0, v0, Landroid/support/v7/widget/ik;->b:Landroid/support/v7/widget/if;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/if;->a(Landroid/support/v7/widget/if;I)I

    iget-object v0, p0, Landroid/support/v7/widget/im;->a:Landroid/support/v7/widget/il;

    iget-object v0, v0, Landroid/support/v7/widget/il;->b:Landroid/support/v7/widget/ik;

    iget-object v0, v0, Landroid/support/v7/widget/ik;->b:Landroid/support/v7/widget/if;

    invoke-static {v0}, Landroid/support/v7/widget/if;->g(Landroid/support/v7/widget/if;)Landroid/widget/Scroller;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/im;->a:Landroid/support/v7/widget/il;

    iget v0, v0, Landroid/support/v7/widget/il;->a:I

    neg-int v5, v0

    iget-object v0, p0, Landroid/support/v7/widget/im;->a:Landroid/support/v7/widget/il;

    iget-object v0, v0, Landroid/support/v7/widget/il;->b:Landroid/support/v7/widget/ik;

    iget-object v0, v0, Landroid/support/v7/widget/ik;->b:Landroid/support/v7/widget/if;

    invoke-static {v0}, Landroid/support/v7/widget/if;->f(Landroid/support/v7/widget/if;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x359

    const/16 v6, 0x359

    goto :goto_0

    :cond_1
    const/16 v0, 0x22d

    const/16 v6, 0x22d

    :goto_0
    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    iget-object v0, p0, Landroid/support/v7/widget/im;->a:Landroid/support/v7/widget/il;

    iget-object v0, v0, Landroid/support/v7/widget/il;->b:Landroid/support/v7/widget/ik;

    iget-object v0, v0, Landroid/support/v7/widget/ik;->b:Landroid/support/v7/widget/if;

    iget-object v0, v0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslNumberPicker;->invalidate()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Landroid/support/v7/widget/in;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/in;-><init>(Landroid/support/v7/widget/im;)V

    const-wide/16 v2, 0x359

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
