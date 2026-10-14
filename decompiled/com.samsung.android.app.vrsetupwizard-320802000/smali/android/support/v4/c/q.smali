.class Landroid/support/v4/c/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/c/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/c/r<",
        "Landroid/support/v4/a/a/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/c/o;


# direct methods
.method constructor <init>(Landroid/support/v4/c/o;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/c/q;->a:Landroid/support/v4/c/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/a/a/d;)I
    .locals 0

    invoke-virtual {p1}, Landroid/support/v4/a/a/d;->b()I

    move-result p1

    return p1
.end method

.method public synthetic a(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/support/v4/a/a/d;

    invoke-virtual {p0, p1}, Landroid/support/v4/c/q;->b(Landroid/support/v4/a/a/d;)Z

    move-result p1

    return p1
.end method

.method public synthetic b(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/support/v4/a/a/d;

    invoke-virtual {p0, p1}, Landroid/support/v4/c/q;->a(Landroid/support/v4/a/a/d;)I

    move-result p1

    return p1
.end method

.method public b(Landroid/support/v4/a/a/d;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/support/v4/a/a/d;->c()Z

    move-result p1

    return p1
.end method
