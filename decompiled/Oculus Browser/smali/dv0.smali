.class public final synthetic Ldv0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lyv0;


# direct methods
.method public constructor <init>(Lyv0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldv0;->w:Lyv0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ldv0;->w:Lyv0;

    .line 1
    iget-object v1, v0, Lyv0;->M:Lc91;

    if-eqz v1, :cond_0

    .line 2
    check-cast v1, Lp91;

    invoke-virtual {v1}, Lp91;->a()V

    .line 3
    :cond_0
    invoke-virtual {v0}, Lyv0;->f()V

    return-void
.end method
