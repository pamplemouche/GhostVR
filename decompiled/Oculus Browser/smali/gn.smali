.class public final Lgn;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lfn;

.field public volatile b:Ljava/lang/Object;

.field public final c:Ldn;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lfn;

    invoke-direct {v0, p0, p1}, Lfn;-><init>(Lgn;Landroid/os/Looper;)V

    iput-object v0, p0, Lgn;->a:Lfn;

    const-string p1, "Listener must not be null"

    invoke-static {p2, p1}, Lxp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lgn;->b:Ljava/lang/Object;

    new-instance p1, Ldn;

    invoke-static {p3}, Lxp;->b(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p1, p2, p3}, Ldn;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lgn;->c:Ldn;

    return-void
.end method
