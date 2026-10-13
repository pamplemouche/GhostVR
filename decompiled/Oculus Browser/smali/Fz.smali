.class public final LFz;
.super Lvz;
.source "PG"


# direct methods
.method public constructor <init>(Lpx;ZLFx;Lry;LYw;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lvz;-><init>(Lpx;ZLFx;Lry;LYw;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "TimeoutSessionImpl"

    const-string p3, "Using TimeoutSessionImpl"

    .line 2
    invoke-static {p2, p3, p1}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;ZZLkJ;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "TimeoutSessionImpl"

    const-string v2, "TimeoutSession.populateModelProvider, shouldAppend %s"

    invoke-static {v1, v2, v0}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Lvz;->a(Ljava/util/List;ZZLkJ;)V

    return-void
.end method

.method public a(ZLjava/util/List;ILlw;)V
    .locals 5

    .line 3
    iget-object p3, p0, Lvz;->h:Ljava/lang/String;

    invoke-static {p3}, Ltx;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lvz;->g:Z

    .line 5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const-string v1, "updateSession; clearHead(%b), shouldAppend(%b), sessionId(%s)"

    const-string v4, "TimeoutSessionImpl"

    .line 6
    invoke-static {v4, v1, v0}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    .line 7
    iget-boolean p1, p0, Lvz;->g:Z

    if-nez p1, :cond_0

    new-array p1, v3, [Ljava/lang/Object;

    aput-object p3, p1, v2

    const-string p2, "Not configured to append: %s"

    .line 8
    invoke-static {v4, p2, p1}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 9
    :cond_0
    iput-boolean v2, p0, Lvz;->g:Z

    .line 10
    :cond_1
    iget p1, p0, Lvz;->i:I

    add-int/2addr p1, v3

    iput p1, p0, Lvz;->i:I

    .line 11
    invoke-virtual {p0, p2, p4}, Lvz;->a(Ljava/util/List;Llw;)V

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
