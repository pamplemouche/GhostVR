.class public final LXn;
.super Lqn;
.source "PG"


# instance fields
.field public final c:LDm;


# direct methods
.method public constructor <init>(LDm;)V
    .locals 1

    const-string v0, "Method is not supported by connectionless client. APIs supporting connectionless client must not call this method."

    invoke-direct {p0, v0}, Lqn;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, LXn;->c:LDm;

    return-void
.end method


# virtual methods
.method public final a(LSm;)LSm;
    .locals 1

    iget-object v0, p0, LXn;->c:LDm;

    invoke-virtual {v0, p1}, LDm;->a(LSm;)LSm;

    return-object p1
.end method

.method public final c()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, LXn;->c:LDm;

    .line 1
    iget-object v0, v0, LDm;->e:Landroid/os/Looper;

    return-object v0
.end method
