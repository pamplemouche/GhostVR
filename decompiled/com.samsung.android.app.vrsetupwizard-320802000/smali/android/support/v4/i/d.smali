.class final Landroid/support/v4/i/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/i/o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/i/o<",
        "Landroid/support/v4/i/i;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/a/a/g;

.field final synthetic b:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/support/v4/a/a/g;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/i/d;->a:Landroid/support/v4/a/a/g;

    iput-object p2, p0, Landroid/support/v4/i/d;->b:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/i/i;)V
    .locals 2

    iget v0, p1, Landroid/support/v4/i/i;->b:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/i/d;->a:Landroid/support/v4/a/a/g;

    iget-object p1, p1, Landroid/support/v4/i/i;->a:Landroid/graphics/Typeface;

    iget-object v1, p0, Landroid/support/v4/i/d;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/a/a/g;->a(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/i/d;->a:Landroid/support/v4/a/a/g;

    iget p1, p1, Landroid/support/v4/i/i;->b:I

    iget-object v1, p0, Landroid/support/v4/i/d;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/a/a/g;->a(ILandroid/os/Handler;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/support/v4/i/i;

    invoke-virtual {p0, p1}, Landroid/support/v4/i/d;->a(Landroid/support/v4/i/i;)V

    return-void
.end method
