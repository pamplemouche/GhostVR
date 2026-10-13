.class public Lf9;
.super Landroid/content/BroadcastReceiver;
.source "PG"


# instance fields
.field public final synthetic a:Lg9;


# direct methods
.method public constructor <init>(Lg9;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf9;->a:Lg9;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lf9;->a:Lg9;

    .line 2
    iget-object p2, p1, Lg9;->a:Lla;

    invoke-virtual {p2}, Lla;->a()Z

    move-result p2

    .line 3
    iget-boolean v0, p1, Lg9;->b:Z

    if-eq p2, v0, :cond_0

    .line 4
    iput-boolean p2, p1, Lg9;->b:Z

    .line 5
    iget-object p1, p1, Lg9;->e:Lk9;

    invoke-virtual {p1}, Lk9;->a()Z

    :cond_0
    return-void
.end method
