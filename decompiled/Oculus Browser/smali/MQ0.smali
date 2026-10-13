.class public LMQ0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Ljava/util/List;

.field public final synthetic x:LNQ0;


# direct methods
.method public constructor <init>(LNQ0;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, LMQ0;->x:LNQ0;

    iput-object p2, p0, LMQ0;->w:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, LMQ0;->w:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LUQ0;

    invoke-interface {v0}, LUQ0;->a()V

    return-void
.end method
