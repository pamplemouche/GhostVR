.class public final synthetic LUJ0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LkK0;

.field public final x:LoT0;

.field public final y:Ljava/lang/String;


# direct methods
.method public constructor <init>(LkK0;LoT0;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LUJ0;->w:LkK0;

    iput-object p2, p0, LUJ0;->x:LoT0;

    iput-object p3, p0, LUJ0;->y:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, LUJ0;->w:LkK0;

    iget-object v1, p0, LUJ0;->x:LoT0;

    iget-object v2, p0, LUJ0;->y:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1
    invoke-interface {v1, v2}, LoT0;->d(Ljava/lang/String;)V

    .line 2
    iget-object v0, v0, LkK0;->n0:LH00;

    check-cast v0, LI00;

    invoke-virtual {v0}, LI00;->b()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    throw v0
.end method
