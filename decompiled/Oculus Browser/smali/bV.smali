.class public LbV;
.super LdV;
.source "PG"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LdV;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public b(J)V
    .locals 1

    .line 1
    iget-object v0, p0, LWU;->a:Ljava/lang/String;

    invoke-static {v0, p1, p2}, LfV;->b(Ljava/lang/String;J)V

    return-void
.end method
