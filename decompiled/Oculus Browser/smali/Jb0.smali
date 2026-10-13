.class public LJb0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LKb0;


# direct methods
.method public constructor <init>(LKb0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LJb0;->w:LKb0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, LJb0;->w:LKb0;

    iget-object v0, v0, LKb0;->b:LLb0;

    .line 2
    iget-object v1, v0, LLb0;->c:LHb0;

    .line 3
    invoke-virtual {v0}, LLb0;->a()LIb0;

    check-cast v1, LGb0;

    .line 4
    iget-object v0, v1, LGb0;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
