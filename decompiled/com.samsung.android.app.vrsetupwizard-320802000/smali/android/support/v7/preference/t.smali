.class Landroid/support/v7/preference/t;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Landroid/support/v7/preference/s;


# direct methods
.method constructor <init>(Landroid/support/v7/preference/s;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/preference/t;->a:Landroid/support/v7/preference/s;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroid/support/v7/preference/t;->a:Landroid/support/v7/preference/s;

    invoke-static {p1}, Landroid/support/v7/preference/s;->a(Landroid/support/v7/preference/s;)V

    :goto_0
    return-void
.end method
