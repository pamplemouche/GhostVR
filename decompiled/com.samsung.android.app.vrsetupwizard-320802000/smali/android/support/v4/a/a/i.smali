.class Landroid/support/v4/a/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/support/v4/a/a/g;


# direct methods
.method constructor <init>(Landroid/support/v4/a/a/g;I)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/a/a/i;->b:Landroid/support/v4/a/a/g;

    iput p2, p0, Landroid/support/v4/a/a/i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/a/a/i;->b:Landroid/support/v4/a/a/g;

    iget v1, p0, Landroid/support/v4/a/a/i;->a:I

    invoke-virtual {v0, v1}, Landroid/support/v4/a/a/g;->a(I)V

    return-void
.end method
