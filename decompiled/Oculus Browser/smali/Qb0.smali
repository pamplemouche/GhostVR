.class public LQb0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Lorg/chromium/base/Callback;

.field public final synthetic x:LRb0;


# direct methods
.method public constructor <init>(LRb0;Lorg/chromium/base/Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, LQb0;->x:LRb0;

    iput-object p2, p0, LQb0;->w:Lorg/chromium/base/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, LQb0;->w:Lorg/chromium/base/Callback;

    iget-object v1, p0, LQb0;->x:LRb0;

    invoke-interface {v0, v1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    return-void
.end method
