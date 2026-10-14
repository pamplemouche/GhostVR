.class Landroid/support/v7/widget/ig;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/if;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/if;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/ig;->a:Landroid/support/v7/widget/if;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object p1, p0, Landroid/support/v7/widget/ig;->a:Landroid/support/v7/widget/if;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/if;->b(Z)V

    iget-object p1, p0, Landroid/support/v7/widget/ig;->a:Landroid/support/v7/widget/if;

    invoke-static {p1}, Landroid/support/v7/widget/if;->a(Landroid/support/v7/widget/if;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->selectAll()V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Landroid/support/v7/widget/ig;->a:Landroid/support/v7/widget/if;

    invoke-static {p2}, Landroid/support/v7/widget/if;->a(Landroid/support/v7/widget/if;)Landroid/widget/EditText;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0}, Landroid/widget/EditText;->setSelection(II)V

    iget-object p2, p0, Landroid/support/v7/widget/ig;->a:Landroid/support/v7/widget/if;

    invoke-static {p2, p1}, Landroid/support/v7/widget/if;->a(Landroid/support/v7/widget/if;Landroid/view/View;)V

    :goto_0
    return-void
.end method
