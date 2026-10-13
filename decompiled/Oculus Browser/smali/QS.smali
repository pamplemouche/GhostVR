.class public LQS;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(LOS;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, LQS;->a:Ljava/util/List;

    return-void
.end method
