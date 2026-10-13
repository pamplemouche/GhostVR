.class public final synthetic Luz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lox;


# direct methods
.method public constructor <init>(Lox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luz;->w:Lox;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Luz;->w:Lox;

    check-cast v0, LVz;

    .line 1
    iget-object v1, v0, LVz;->b:LIx;

    iget-object v0, v0, LVz;->a:Ljava/util/List;

    invoke-interface {v1, v0}, LIx;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-void
.end method
