.class public abstract LDC;
.super LNC;
.source "PG"


# direct methods
.method public constructor <init>(LEC;Ljava/lang/String;IIZ)V
    .locals 8

    .line 1
    iget-object v2, p1, LEC;->x:LdC;

    .line 2
    iget-object v3, p1, LEC;->y:LZB;

    .line 3
    iget-object v4, p1, LEC;->I:LaF;

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    .line 4
    invoke-static {p1, p4, v0}, LEC;->a(LEC;ILVD;)LZC;

    move-result-object p1

    move-object v5, p1

    goto :goto_0

    :cond_0
    move-object v5, v0

    :goto_0
    move-object v0, p0

    move-object v1, p2

    move v6, p3

    move v7, p4

    .line 5
    invoke-direct/range {v0 .. v7}, LNC;-><init>(Ljava/lang/String;LdC;LZB;LaF;LZC;II)V

    return-void
.end method

.method public synthetic constructor <init>(LEC;Ljava/lang/String;ILIE;LuC;)V
    .locals 7

    .line 6
    iget-object v2, p1, LEC;->x:LdC;

    .line 7
    iget-object v3, p1, LEC;->y:LZB;

    .line 8
    iget-object v4, p1, LEC;->I:LaF;

    .line 9
    iget-object p5, p4, LIE;->g:LVD;

    .line 10
    invoke-static {p1, p3, p5}, LEC;->a(LEC;ILVD;)LZC;

    move-result-object v5

    move-object v0, p0

    move-object v1, p2

    move-object v6, p4

    .line 11
    invoke-direct/range {v0 .. v6}, LNC;-><init>(Ljava/lang/String;LdC;LZB;LaF;LZC;LIE;)V

    return-void
.end method

.method public synthetic constructor <init>(LEC;Ljava/lang/String;LIE;LuC;)V
    .locals 7

    .line 12
    iget-object v2, p1, LEC;->x:LdC;

    .line 13
    iget-object v3, p1, LEC;->y:LZB;

    .line 14
    iget-object v4, p1, LEC;->I:LaF;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v6, p3

    .line 15
    invoke-direct/range {v0 .. v6}, LNC;-><init>(Ljava/lang/String;LdC;LZB;LaF;LZC;LIE;)V

    return-void
.end method
