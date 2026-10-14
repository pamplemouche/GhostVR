.class Landroid/support/v7/widget/il;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/support/v7/widget/ik;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ik;I)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/il;->b:Landroid/support/v7/widget/ik;

    iput p2, p0, Landroid/support/v7/widget/il;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Landroid/support/v7/widget/im;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/im;-><init>(Landroid/support/v7/widget/il;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
