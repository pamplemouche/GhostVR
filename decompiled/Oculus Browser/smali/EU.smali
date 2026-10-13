.class public final synthetic LEU;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LGU;


# direct methods
.method public constructor <init>(LGU;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LEU;->w:LGU;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, LEU;->w:LGU;

    check-cast v0, LIU;

    if-eqz v0, :cond_0

    .line 1
    invoke-static {}, LJ/N;->MLXZo1U6()V

    return-void

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method
