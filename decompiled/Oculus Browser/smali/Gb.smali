.class public LGb;
.super Landroid/content/BroadcastReceiver;
.source "PG"


# instance fields
.field public final synthetic a:LJb;


# direct methods
.method public constructor <init>(LJb;)V
    .locals 0

    .line 1
    iput-object p1, p0, LGb;->a:LJb;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, LGb;->a:LJb;

    invoke-virtual {p1}, LJb;->a()V

    return-void
.end method
