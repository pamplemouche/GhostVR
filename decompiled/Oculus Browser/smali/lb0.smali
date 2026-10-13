.class public final Llb0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LQw;


# instance fields
.field public final a:LPw;


# direct methods
.method public constructor <init>(LPw;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Llb0;->a:LPw;

    return-void
.end method


# virtual methods
.method public a()Lsx;
    .locals 3

    .line 5
    iget-object v0, p0, Llb0;->a:LPw;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance v1, Ljb0;

    invoke-direct {v1, v0}, Ljb0;-><init>(LPw;)V

    .line 7
    invoke-static {}, Lsx;->b()Lsx;

    move-result-object v0

    const-string v2, "FeedJournalStorageDirect.getAllJournals"

    .line 8
    invoke-static {v2, v1, v0}, Lyb0;->a(Ljava/lang/String;Lorg/chromium/base/Callback;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsx;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lsx;
    .locals 2

    .line 1
    new-instance v0, Lhb0;

    invoke-direct {v0, p0, p1}, Lhb0;-><init>(Llb0;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lsx;->b()Lsx;

    move-result-object p1

    const-string v1, "FeedJournalStorageDirect.read"

    .line 3
    invoke-static {v1, v0, p1}, Lyb0;->a(Ljava/lang/String;Lorg/chromium/base/Callback;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsx;

    return-object p1
.end method

.method public a(LJw;)Lxw;
    .locals 2

    .line 4
    new-instance v0, Lib0;

    invoke-direct {v0, p0, p1}, Lib0;-><init>(Llb0;LJw;)V

    sget-object p1, Lxw;->c:Lxw;

    const-string v1, "FeedJournalStorageDirect.commit"

    invoke-static {v1, v0, p1}, Lyb0;->a(Ljava/lang/String;Lorg/chromium/base/Callback;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lxw;

    return-object p1
.end method

.method public b()Lxw;
    .locals 3

    .line 1
    iget-object v0, p0, Llb0;->a:LPw;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    new-instance v1, Lkb0;

    invoke-direct {v1, v0}, Lkb0;-><init>(LPw;)V

    .line 3
    sget-object v0, Lxw;->c:Lxw;

    const-string v2, "FeedJournalStorageDirect.deleteAll"

    invoke-static {v2, v1, v0}, Lyb0;->a(Ljava/lang/String;Lorg/chromium/base/Callback;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxw;

    return-object v0
.end method
