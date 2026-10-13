.class public final synthetic LWt0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Leu0;

.field public final x:LQu0;


# direct methods
.method public constructor <init>(Leu0;LQu0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LWt0;->w:Leu0;

    iput-object p2, p0, LWt0;->x:LQu0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, LWt0;->w:Leu0;

    iget-object v1, p0, LWt0;->x:LQu0;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    iget-object v3, v0, Leu0;->O:LJu0;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_1

    .line 3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object v3, v2

    .line 5
    :goto_0
    iget-object v1, v0, Leu0;->O:LJu0;

    check-cast v1, Lyv0;

    invoke-virtual {v1, v0, v3}, Lyv0;->a(LLu0;Ljava/util/List;)V

    .line 6
    iput-object v2, v0, Leu0;->O:LJu0;

    :goto_1
    return-void

    .line 7
    :cond_2
    throw v2
.end method
