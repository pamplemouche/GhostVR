.class public final synthetic LHj0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LIj0;

.field public final x:Ljava/lang/String;

.field public final y:Ljava/util/List;


# direct methods
.method public constructor <init>(LIj0;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LHj0;->w:LIj0;

    iput-object p2, p0, LHj0;->x:Ljava/lang/String;

    iput-object p3, p0, LHj0;->y:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, LHj0;->w:LIj0;

    iget-object v1, p0, LHj0;->x:Ljava/lang/String;

    iget-object v2, p0, LHj0;->y:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 2
    iget-object v3, v0, LIj0;->b:Lrj0;

    invoke-interface {v3, v1, v0, v2}, Lrj0;->a(Ljava/lang/String;Ltj0;Ljava/util/List;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    throw v0
.end method
