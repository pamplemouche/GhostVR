.class Landroid/support/design/widget/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/design/widget/k;


# direct methods
.method constructor <init>(Landroid/support/design/widget/k;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/l;->a:Landroid/support/design/widget/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/l;->a:Landroid/support/design/widget/k;

    iget-object v0, v0, Landroid/support/design/widget/k;->a:Landroid/support/design/widget/g;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/design/widget/g;->c(I)V

    return-void
.end method
