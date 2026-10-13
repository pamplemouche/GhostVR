.class public final synthetic LWn0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lao0;

.field public final x:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lao0;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LWn0;->w:Lao0;

    iput-object p2, p0, LWn0;->x:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LWn0;->w:Lao0;

    iget-object v1, p0, LWn0;->x:Ljava/lang/Runnable;

    .line 1
    iget-object v0, v0, Lao0;->a:LWT;

    .line 2
    iget-object v0, v0, LWT;->w:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
