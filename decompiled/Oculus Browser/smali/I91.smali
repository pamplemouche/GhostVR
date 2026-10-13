.class public LI91;
.super Landroid/content/BroadcastReceiver;
.source "PG"


# instance fields
.field public final synthetic a:LJ91;


# direct methods
.method public constructor <init>(LJ91;)V
    .locals 0

    .line 1
    iput-object p1, p0, LI91;->a:LJ91;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, LI91;->a:LJ91;

    invoke-virtual {p1}, LJ91;->a()V

    return-void
.end method
