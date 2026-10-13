.class public final LCy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldx;
.implements Ldy;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/util/List;

.field public final c:Lry;

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(Ljava/util/List;Lry;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, LCy;->d:I

    .line 3
    iput v0, p0, LCy;->e:I

    .line 4
    iput-object p2, p0, LCy;->c:Lry;

    .line 5
    iput-object p1, p0, LCy;->b:Ljava/util/List;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, LCy;->a:Ljava/util/List;

    .line 7
    new-instance p2, LFy;

    invoke-direct {p2}, LFy;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object p1, p0, LCy;->a:Ljava/util/List;

    new-instance p2, LDy;

    invoke-direct {p2}, LDy;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(LnQ;)LaJ;
    .locals 1

    .line 51
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 52
    sget-object p0, LaJ;->x:LaJ;

    return-object p0

    .line 53
    :cond_0
    sget-object p0, LaJ;->A:LaJ;

    return-object p0

    .line 54
    :cond_1
    sget-object p0, LaJ;->z:LaJ;

    return-object p0

    .line 55
    :cond_2
    sget-object p0, LaJ;->y:LaJ;

    return-object p0

    .line 56
    :cond_3
    sget-object p0, LaJ;->x:LaJ;

    return-object p0
.end method


# virtual methods
.method public final a(LjQ;)Ljava/lang/String;
    .locals 3

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    iget-object v1, p1, LjQ;->C:Ljava/lang/String;

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-object v2, p1, LjQ;->A:Ljava/lang/String;

    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget-wide v1, p1, LjQ;->B:J

    .line 50
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lsx;
    .locals 8

    const-string v0, "::"

    const/4 v1, -0x1

    .line 1
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 2
    array-length v0, p1

    const/4 v1, 0x3

    const-string v2, "FeedProtocolAdapter"

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, "Error parsing string content ID - splitting did not result in 3 parts"

    .line 3
    invoke-static {v2, v0, p1}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lsx;->b()Lsx;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    aget-object v0, p1, v3

    const/4 v1, 0x1

    .line 6
    aget-object v4, p1, v1

    const/4 v5, 0x2

    .line 7
    :try_start_0
    aget-object p1, p1, v5

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    sget-object p1, LjQ;->D:LjQ;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LiQ;

    .line 9
    invoke-virtual {p1}, LFF;->g()V

    .line 10
    iget-object v6, p1, LFF;->x:LTF;

    check-cast v6, LjQ;

    .line 11
    iget v7, v6, LjQ;->z:I

    or-int/2addr v5, v7

    iput v5, v6, LjQ;->z:I

    .line 12
    iput-wide v2, v6, LjQ;->B:J

    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 14
    invoke-virtual {p1}, LFF;->g()V

    .line 15
    iget-object v2, p1, LFF;->x:LTF;

    check-cast v2, LjQ;

    .line 16
    iget v3, v2, LjQ;->z:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, LjQ;->z:I

    .line 17
    iput-object v0, v2, LjQ;->C:Ljava/lang/String;

    .line 18
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 19
    invoke-virtual {p1}, LFF;->g()V

    .line 20
    iget-object v0, p1, LFF;->x:LTF;

    check-cast v0, LjQ;

    .line 21
    iget v2, v0, LjQ;->z:I

    or-int/2addr v1, v2

    iput v1, v0, LjQ;->z:I

    .line 22
    iput-object v4, v0, LjQ;->A:Ljava/lang/String;

    .line 23
    :cond_2
    invoke-virtual {p1}, LFF;->e()LTF;

    move-result-object p1

    check-cast p1, LjQ;

    invoke-static {p1}, Lsx;->a(Ljava/lang/Object;)Lsx;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "Error converting content ID to wire format"

    .line 24
    invoke-static {v2, p1, v1, v0}, Lhy;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    invoke-static {}, Lsx;->b()Lsx;

    move-result-object p1

    return-object p1
.end method

.method public final a(LaJ;Ljava/lang/String;Ljava/lang/String;)LyI;
    .locals 2

    .line 38
    invoke-static {}, LzI;->l()LyI;

    move-result-object v0

    .line 39
    invoke-static {}, LbJ;->o()LZI;

    move-result-object v1

    .line 40
    invoke-virtual {v1, p1}, LZI;->a(LaJ;)LZI;

    if-eqz p2, :cond_0

    .line 41
    invoke-virtual {v1, p2}, LZI;->a(Ljava/lang/String;)LZI;

    :cond_0
    if-eqz p3, :cond_1

    .line 42
    invoke-virtual {v1, p3}, LZI;->b(Ljava/lang/String;)LZI;

    .line 43
    :cond_1
    invoke-virtual {v0, v1}, LyI;->a(LZI;)LyI;

    return-object v0
.end method

.method public a(Lfy;)V
    .locals 4

    .line 26
    iget-object v0, p1, Lfy;->e:Ljava/util/List;

    new-instance v1, Ley;

    iget v2, p1, Lfy;->a:I

    add-int/lit8 v2, v2, -0x1

    const-string v3, "FeedProtocolAdapter"

    invoke-direct {v1, v2, v3}, Ley;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    iget v0, p1, Lfy;->a:I

    .line 28
    new-instance v1, Ley;

    const-string v2, "responseHandlingCount"

    invoke-direct {v1, v0, v2}, Ley;-><init>(ILjava/lang/String;)V

    .line 29
    iget-object v0, p1, Lfy;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    iget v0, p0, LCy;->d:I

    .line 31
    iget-object v1, v1, Ley;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    iget v0, p1, Lfy;->a:I

    .line 33
    new-instance v1, Ley;

    const-string v2, "convertContentIdCount"

    invoke-direct {v1, v0, v2}, Ley;-><init>(ILjava/lang/String;)V

    .line 34
    iget-object p1, p1, Lfy;->e:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    iget p1, p0, LCy;->e:I

    .line 36
    iget-object v0, v1, Ley;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    .line 37
    iput-boolean p1, v1, Ley;->d:Z

    return-void
.end method
