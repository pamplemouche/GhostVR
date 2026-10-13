.class public final synthetic Lkw0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lpw0;

.field public final x:Lfw0;


# direct methods
.method public constructor <init>(Lpw0;Lfw0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkw0;->w:Lpw0;

    iput-object p2, p0, Lkw0;->x:Lfw0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lkw0;->w:Lpw0;

    iget-object v1, p0, Lkw0;->x:Lfw0;

    .line 1
    iget-object v0, v0, Lpw0;->A:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2
    invoke-interface {v1}, Lfw0;->a()V

    return-void
.end method
