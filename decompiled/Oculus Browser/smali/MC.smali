.class public LMC;
.super LVE;
.source "PG"


# instance fields
.field public final synthetic x:LNC;


# direct methods
.method public constructor <init>(LNC;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, LMC;->x:LNC;

    invoke-direct {p0, p2}, LVE;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, LMC;->x:LNC;

    .line 2
    iget-object v0, v0, LNC;->c:LdC;

    .line 3
    invoke-interface {v0}, LdC;->b()Z

    move-result v0

    const-string v1, "Not on scheduler thread"

    invoke-static {v0, v1}, LWE;->a(ZLjava/lang/Object;)V

    .line 4
    iget-object v0, p0, LMC;->x:LNC;

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, v0, LNC;->i:Z

    .line 6
    invoke-virtual {v0}, LNC;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, LMC;->x:LNC;

    .line 8
    iget-object v2, v0, LNC;->g:LZC;

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 9
    iget v0, v0, LNC;->d:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    const-string v0, "Spinning: No exp back off and initialdelay is zero"

    .line 10
    invoke-static {v1, v0}, LWE;->a(ZLjava/lang/Object;)V

    .line 11
    iget-object v0, p0, LMC;->x:LNC;

    const-string v1, "Retry"

    .line 12
    invoke-virtual {v0, v3, v1}, LNC;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_2
    iget-object v0, p0, LMC;->x:LNC;

    .line 14
    iget-object v0, v0, LNC;->g:LZC;

    if-eqz v0, :cond_3

    .line 15
    iget v2, v0, LQE;->a:I

    iput v2, v0, LQE;->c:I

    .line 16
    iput-boolean v1, v0, LQE;->d:Z

    :cond_3
    :goto_0
    return-void
.end method
