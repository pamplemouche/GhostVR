.class public final synthetic LRT;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LST;

.field public final x:Ljava/lang/Object;

.field public final y:Lorg/chromium/base/Callback;


# direct methods
.method public constructor <init>(LST;Ljava/lang/Object;Lorg/chromium/base/Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LRT;->w:LST;

    iput-object p2, p0, LRT;->x:Ljava/lang/Object;

    iput-object p3, p0, LRT;->y:Lorg/chromium/base/Callback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, LRT;->w:LST;

    iget-object v1, p0, LRT;->x:Ljava/lang/Object;

    iget-object v2, p0, LRT;->y:Lorg/chromium/base/Callback;

    .line 1
    iget-object v3, v0, LST;->c:Ljava/lang/Object;

    if-ne v3, v1, :cond_1

    iget-object v1, v0, LST;->d:LWT;

    .line 2
    iget-object v1, v1, LWT;->w:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, v0, LST;->c:Ljava/lang/Object;

    invoke-interface {v2, v0}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
