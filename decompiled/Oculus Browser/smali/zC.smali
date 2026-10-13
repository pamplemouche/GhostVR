.class public LzC;
.super LDC;
.source "PG"


# instance fields
.field public final synthetic j:LEC;


# direct methods
.method public constructor <init>(LEC;I)V
    .locals 6

    .line 1
    iput-object p1, p0, LzC;->j:LEC;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v2, "InitialPersistentHeartbeat"

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    .line 2
    invoke-direct/range {v0 .. v5}, LDC;-><init>(LEC;Ljava/lang/String;IIZ)V

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 3

    .line 1
    iget-object v0, p0, LzC;->j:LEC;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v1, v2}, LEC;->a(ZZ)V

    return v1
.end method
