.class public LKl0;
.super Landroid/content/BroadcastReceiver;
.source "PG"


# instance fields
.field public final synthetic a:LLl0;


# direct methods
.method public constructor <init>(LLl0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LKl0;->a:LLl0;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, LKl0;->a:LLl0;

    .line 2
    invoke-virtual {p1}, LLl0;->b()V

    return-void
.end method
