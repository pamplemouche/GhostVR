.class public final LtB;
.super Landroid/content/BroadcastReceiver;
.source "PG"


# instance fields
.field public final synthetic a:LsB;


# direct methods
.method public synthetic constructor <init>(LsB;B)V
    .locals 0

    .line 1
    iput-object p1, p0, LtB;->a:LsB;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, LtB;->a:LsB;

    invoke-virtual {v0, p1, p2}, LsB;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
