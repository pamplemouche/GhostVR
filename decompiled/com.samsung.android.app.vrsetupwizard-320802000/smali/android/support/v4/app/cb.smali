.class public Landroid/support/v4/app/cb;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/arch/lifecycle/j;


# instance fields
.field private a:Landroid/support/v4/k/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/k/w<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/arch/lifecycle/k;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Landroid/support/v4/k/w;

    invoke-direct {v0}, Landroid/support/v4/k/w;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/cb;->a:Landroid/support/v4/k/w;

    new-instance v0, Landroid/arch/lifecycle/k;

    invoke-direct {v0, p0}, Landroid/arch/lifecycle/k;-><init>(Landroid/arch/lifecycle/j;)V

    iput-object v0, p0, Landroid/support/v4/app/cb;->b:Landroid/arch/lifecycle/k;

    return-void
.end method


# virtual methods
.method public a()Landroid/arch/lifecycle/f;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/cb;->b:Landroid/arch/lifecycle/k;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroid/arch/lifecycle/r;->a(Landroid/app/Activity;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/cb;->b:Landroid/arch/lifecycle/k;

    sget-object v1, Landroid/arch/lifecycle/h;->c:Landroid/arch/lifecycle/h;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/k;->a(Landroid/arch/lifecycle/h;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
