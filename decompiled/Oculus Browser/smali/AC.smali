.class public LAC;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LlC;


# instance fields
.field public final synthetic a:LXD;

.field public final synthetic b:LBC;


# direct methods
.method public constructor <init>(LBC;LXD;)V
    .locals 0

    .line 1
    iput-object p1, p0, LAC;->b:LBC;

    iput-object p2, p0, LAC;->a:LXD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, LqC;

    .line 2
    iget-object v0, p0, LAC;->b:LBC;

    iget-object v0, v0, LBC;->k:LEC;

    .line 3
    iget-object v0, v0, LEC;->y:LZB;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    .line 4
    iget-object v3, p0, LAC;->a:LXD;

    aput-object v3, v1, v2

    check-cast v0, LgC;

    const-string v2, "Write state completed: %s for %s"

    invoke-virtual {v0, v2, v1}, LgC;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, LAC;->b:LBC;

    iget-object v0, v0, LBC;->k:LEC;

    .line 6
    iget-object v0, v0, LEC;->w:LfC;

    .line 7
    check-cast v0, LsC;

    .line 8
    iget-object v0, v0, LsC;->a:LdC;

    .line 9
    invoke-interface {v0}, LdC;->b()Z

    move-result v0

    invoke-static {v0}, LWE;->b(Z)V

    .line 10
    invoke-virtual {p1}, LqC;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 11
    iget-object p1, p0, LAC;->b:LBC;

    .line 12
    iget-object p1, p1, LBC;->j:LLE;

    .line 13
    iget-object v0, p0, LAC;->a:LXD;

    .line 14
    iput-object v0, p1, LLE;->a:Ljava/lang/Object;

    goto :goto_0

    .line 15
    :cond_0
    iget-object p1, p0, LAC;->b:LBC;

    iget-object p1, p1, LBC;->k:LEC;

    iget-object p1, p1, LEC;->H:LWC;

    sget-object v0, LRC;->B:LRC;

    .line 16
    iget-object p1, p1, LWC;->e:Ljava/util/Map;

    invoke-static {p1, v0}, LWC;->a(Ljava/util/Map;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
