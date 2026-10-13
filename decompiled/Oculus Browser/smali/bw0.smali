.class public final synthetic Lbw0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lgw0;

.field public final x:Loe1;

.field public final y:LtQ0;

.field public final z:Lrw0;


# direct methods
.method public constructor <init>(Lgw0;Loe1;LtQ0;Lrw0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbw0;->w:Lgw0;

    iput-object p2, p0, Lbw0;->x:Loe1;

    iput-object p3, p0, Lbw0;->y:LtQ0;

    iput-object p4, p0, Lbw0;->z:Lrw0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lbw0;->w:Lgw0;

    iget-object v1, p0, Lbw0;->x:Loe1;

    iget-object v2, p0, Lbw0;->y:LtQ0;

    iget-object v3, p0, Lbw0;->z:Lrw0;

    .line 1
    iget-object v4, v0, Lgw0;->a:Lpw0;

    .line 2
    iget-object v5, v4, Lpw0;->D:Landroid/os/Handler;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3
    iget-object v4, v4, Lpw0;->C:Landroid/os/CancellationSignal;

    invoke-virtual {v4}, Landroid/os/CancellationSignal;->cancel()V

    .line 4
    invoke-virtual {v1}, Loe1;->a()V

    .line 5
    iget-object v1, v2, LtQ0;->w:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    .line 6
    iget-object v0, v0, Lgw0;->a:Lpw0;

    .line 7
    iget-object v1, v1, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->x:LWT;

    invoke-virtual {v1, v0}, LWT;->b(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 8
    invoke-virtual {v2, v3, v0}, LtQ0;->a(LsQ0;Z)V

    return-void
.end method
