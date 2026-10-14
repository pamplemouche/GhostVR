.class Landroid/support/v4/i/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Landroid/support/v4/i/j;


# direct methods
.method constructor <init>(Landroid/support/v4/i/j;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/i/k;->a:Landroid/support/v4/i/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/support/v4/i/k;->a:Landroid/support/v4/i/j;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Runnable;

    invoke-static {v0, p1}, Landroid/support/v4/i/j;->a(Landroid/support/v4/i/j;Ljava/lang/Runnable;)V

    return v1

    :cond_1
    iget-object p1, p0, Landroid/support/v4/i/k;->a:Landroid/support/v4/i/j;

    invoke-static {p1}, Landroid/support/v4/i/j;->a(Landroid/support/v4/i/j;)V

    return v1
.end method
