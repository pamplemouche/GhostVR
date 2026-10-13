.class public final synthetic Llv0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lyv0;

.field public final x:I

.field public final y:Lorg/chromium/base/Callback;


# direct methods
.method public constructor <init>(Lyv0;ILorg/chromium/base/Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llv0;->w:Lyv0;

    iput p2, p0, Llv0;->x:I

    iput-object p3, p0, Llv0;->y:Lorg/chromium/base/Callback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Llv0;->w:Lyv0;

    iget v1, p0, Llv0;->x:I

    iget-object v2, p0, Llv0;->y:Lorg/chromium/base/Callback;

    if-eqz v0, :cond_4

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 1
    iget-object v0, v0, Lyv0;->h0:LZw0;

    invoke-interface {v2, v0}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 2
    iget-object v0, v0, Lyv0;->Z:LZw0;

    invoke-interface {v2, v0}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    .line 3
    iget-object v0, v0, Lyv0;->i0:Ltw0;

    invoke-interface {v2, v0}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x4

    if-ne v1, v3, :cond_3

    .line 4
    iget-object v0, v0, Lyv0;->n0:LZw0;

    invoke-interface {v2, v0}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    const/4 v0, 0x0

    .line 5
    throw v0
.end method
