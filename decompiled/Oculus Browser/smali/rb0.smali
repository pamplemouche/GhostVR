.class public final synthetic Lrb0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final a:LuW;


# direct methods
.method public constructor <init>(LuW;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrb0;->a:LuW;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lrb0;->a:LuW;

    invoke-interface {v0, p1}, LCW;->a(Ljava/lang/Runnable;)V

    return-void
.end method
