.class public final synthetic Lqo0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lso0;

.field public final x:Landroid/app/Activity;

.field public final y:I

.field public final z:I


# direct methods
.method public constructor <init>(Lso0;Landroid/app/Activity;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqo0;->w:Lso0;

    iput-object p2, p0, Lqo0;->x:Landroid/app/Activity;

    iput p3, p0, Lqo0;->y:I

    iput p4, p0, Lqo0;->z:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lqo0;->w:Lso0;

    iget-object v1, p0, Lqo0;->x:Landroid/app/Activity;

    iget v2, p0, Lqo0;->y:I

    iget v3, p0, Lqo0;->z:I

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    .line 1
    check-cast v1, Lorg/chromium/chrome/browser/ChromeActivity;

    const/4 v5, -0x1

    if-ne v3, v5, :cond_0

    const/4 v6, 0x2

    .line 2
    iget-object v7, v0, Lso0;->l:Lro0;

    invoke-virtual {v7, v6}, Lro0;->a(I)V

    goto :goto_0

    :cond_0
    if-nez v3, :cond_1

    const/4 v6, 0x3

    .line 3
    iget-object v7, v0, Lso0;->l:Lro0;

    invoke-virtual {v7, v6}, Lro0;->a(I)V

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {v1, v2, v3, v4}, LBg0;->onActivityResult(IILandroid/content/Intent;)V

    if-ne v3, v5, :cond_2

    const/4 v1, 0x4

    .line 5
    invoke-virtual {v0, v1}, Lso0;->b(I)V

    :cond_2
    return-void

    .line 6
    :cond_3
    throw v4
.end method
