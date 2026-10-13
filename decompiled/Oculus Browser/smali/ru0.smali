.class public final synthetic Lru0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lorg/chromium/base/Callback;

.field public final x:Lnu0;


# direct methods
.method public constructor <init>(Lorg/chromium/base/Callback;Lnu0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru0;->w:Lorg/chromium/base/Callback;

    iput-object p2, p0, Lru0;->x:Lnu0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lru0;->w:Lorg/chromium/base/Callback;

    iget-object v1, p0, Lru0;->x:Lnu0;

    .line 1
    invoke-interface {v0, v1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    return-void
.end method
