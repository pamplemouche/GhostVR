.class public final synthetic LQg0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LQg0;->w:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget v0, p0, LQg0;->w:I

    .line 1
    invoke-static {}, LsS0;->b()LsS0;

    move-result-object v1

    if-eqz v1, :cond_1

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "Servicification.Startup3"

    .line 2
    invoke-virtual {v1, v2, v0}, LsS0;->a(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .line 3
    throw v0
.end method
