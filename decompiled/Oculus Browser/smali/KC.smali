.class public LKC;
.super LSE;
.source "PG"


# instance fields
.field public a:LPE;

.field public b:LwE;


# direct methods
.method public constructor <init>(LPE;LwE;)V
    .locals 0

    .line 1
    invoke-direct {p0}, LSE;-><init>()V

    .line 2
    iput-object p1, p0, LKC;->a:LPE;

    .line 3
    iput-object p2, p0, LKC;->b:LwE;

    return-void
.end method


# virtual methods
.method public a(LbF;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, LKC;->a:LPE;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, LKC;->b:LwE;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 2
    iget-object p1, p1, LbF;->b:LdF;

    .line 3
    iget-object p1, p1, LdF;->a:Ljava/util/Formatter;

    const-string v1, "Token: %s, Summary: %s"

    invoke-virtual {p1, v1, v0}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return-void
.end method
