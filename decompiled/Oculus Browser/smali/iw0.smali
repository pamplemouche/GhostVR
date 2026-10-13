.class public final synthetic Liw0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lpw0;

.field public final x:Lcw0;


# direct methods
.method public constructor <init>(Lpw0;Lcw0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liw0;->w:Lpw0;

    iput-object p2, p0, Liw0;->x:Lcw0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Liw0;->w:Lpw0;

    iget-object v1, p0, Liw0;->x:Lcw0;

    .line 1
    iget-object v0, v0, Lpw0;->A:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2
    check-cast v1, Lnv0;

    .line 3
    iget-object v0, v1, Lnv0;->a:Lyv0;

    .line 4
    iget-object v1, v0, Lyv0;->M:Lc91;

    if-eqz v1, :cond_0

    check-cast v1, Lp91;

    invoke-virtual {v1}, Lp91;->a()V

    .line 5
    :cond_0
    invoke-virtual {v0}, Lyv0;->f()V

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lyv0;->c(Z)V

    return-void
.end method
