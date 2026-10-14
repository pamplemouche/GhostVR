.class Landroid/support/design/widget/bk;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Landroid/support/design/widget/bj;


# direct methods
.method constructor <init>(Landroid/support/design/widget/bj;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/bk;->a:Landroid/support/design/widget/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/bk;->a:Landroid/support/design/widget/bj;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/support/design/widget/bm;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/bj;->a(Landroid/support/design/widget/bm;)V

    const/4 p1, 0x1

    return p1
.end method
