.class public final synthetic LpP0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LqP0;

.field public final x:LKR0;


# direct methods
.method public constructor <init>(LqP0;LKR0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LpP0;->w:LqP0;

    iput-object p2, p0, LpP0;->x:LKR0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LpP0;->w:LqP0;

    iget-object v1, p0, LpP0;->x:LKR0;

    .line 1
    iget-boolean v0, v0, LqP0;->f:Z

    invoke-interface {v1, v0}, LKR0;->a(Z)V

    return-void
.end method
