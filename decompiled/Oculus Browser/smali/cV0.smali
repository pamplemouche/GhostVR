.class public LcV0;
.super Landroid/content/BroadcastReceiver;
.source "PG"


# instance fields
.field public final synthetic a:LdV0;


# direct methods
.method public constructor <init>(LdV0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LcV0;->a:LdV0;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, LcV0;->a:LdV0;

    .line 2
    iget-object p1, p1, LdV0;->b:LWT;

    invoke-virtual {p1}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LFU0;

    .line 3
    invoke-interface {p2}, LFU0;->g()V

    goto :goto_0

    :cond_0
    return-void
.end method
