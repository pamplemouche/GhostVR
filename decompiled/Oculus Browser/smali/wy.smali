.class public final synthetic Lwy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LKx;


# static fields
.field public static final a:LKx;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lwy;

    invoke-direct {v0}, Lwy;-><init>()V

    sput-object v0, Lwy;->a:LKx;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    check-cast p1, LNI;

    .line 1
    invoke-virtual {p1}, LNI;->j()LDI;

    move-result-object v0

    .line 2
    iget v0, v0, LDI;->A:I

    const/4 v1, 0x6

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    if-nez v0, :cond_1

    goto/16 :goto_6

    .line 3
    :cond_1
    invoke-virtual {p1}, LNI;->j()LDI;

    move-result-object p1

    .line 4
    iget v0, p1, LDI;->A:I

    if-ne v0, v1, :cond_2

    .line 5
    iget-object p1, p1, LDI;->B:Ljava/lang/Object;

    check-cast p1, LuP;

    goto :goto_1

    .line 6
    :cond_2
    sget-object p1, LuP;->G:LuP;

    .line 7
    :goto_1
    invoke-virtual {p1}, LuP;->n()LxP;

    move-result-object v0

    invoke-virtual {p1}, LuP;->o()LDP;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, LDP;->k()Z

    move-result v1

    const-string v4, "ContentMetadata"

    if-nez v1, :cond_3

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "Can\'t build ContentMetadata with no URL"

    .line 9
    invoke-static {v4, v0, p1}, Lhy;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    .line 10
    :cond_3
    invoke-virtual {v0}, LxP;->n()Z

    move-result v1

    if-nez v1, :cond_4

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "Can\'t build ContentMetadata with no title"

    .line 11
    invoke-static {v4, v0, p1}, Lhy;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    .line 12
    :cond_4
    invoke-virtual {v0}, LxP;->k()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 13
    iget-object v1, v0, LxP;->B:Ljava/lang/String;

    move-object v9, v1

    goto :goto_2

    :cond_5
    move-object v9, v3

    .line 14
    :goto_2
    invoke-virtual {v0}, LxP;->l()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 15
    iget-object v1, v0, LxP;->C:Ljava/lang/String;

    move-object v10, v1

    goto :goto_3

    :cond_6
    move-object v10, v3

    .line 16
    :goto_3
    invoke-virtual {v0}, LxP;->j()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 17
    iget-object v1, v0, LxP;->D:Ljava/lang/String;

    move-object v11, v1

    goto :goto_4

    :cond_7
    move-object v11, v3

    .line 18
    :goto_4
    invoke-virtual {v0}, LxP;->m()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 19
    iget-object v3, v0, LxP;->E:Ljava/lang/String;

    :cond_8
    move-object v12, v3

    .line 20
    invoke-virtual {p1}, LDP;->j()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 21
    iget-wide v1, p1, LDP;->B:J

    goto :goto_5

    :cond_9
    const-wide/16 v1, -0x1

    :goto_5
    move-wide v7, v1

    .line 22
    new-instance v1, Ldw;

    .line 23
    iget-object v5, p1, LDP;->A:Ljava/lang/String;

    .line 24
    iget-object v6, v0, LxP;->A:Ljava/lang/String;

    move-object v4, v1

    .line 25
    invoke-direct/range {v4 .. v12}, Ldw;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v1

    :goto_6
    return-object v3
.end method
