.class public LSs0;
.super Landroid/app/Dialog;
.source "PG"


# instance fields
.field public final synthetic w:LWs0;


# direct methods
.method public constructor <init>(LWs0;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, LSs0;->w:LWs0;

    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public dismiss()V
    .locals 3

    .line 1
    iget-object v0, p0, LSs0;->w:LWs0;

    .line 2
    iget-boolean v1, v0, LWs0;->h:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    new-instance v2, LQs0;

    invoke-direct {v2, p0}, LQs0;-><init>(LSs0;)V

    invoke-static {v0, v1, v2}, LWs0;->a(LWs0;ZLjava/lang/Runnable;)Landroid/animation/Animator;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :goto_0
    return-void
.end method
