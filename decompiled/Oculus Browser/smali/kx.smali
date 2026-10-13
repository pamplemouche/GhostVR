.class public final Lkx;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Liw;


# instance fields
.field public final a:Ltw;

.field public final b:Ldx;

.field public final c:Lhw;

.field public final d:Llx;

.field public final e:Lpx;

.field public final f:Lry;

.field public final g:LFx;

.field public final h:Lgw;

.field public final i:LZw;

.field public final j:Ljx;


# direct methods
.method public constructor <init>(Lrw;Ltw;Ldx;Lhw;Llx;Lpx;Lry;LYw;LFx;Lxx;Lgw;Lky;Lqw;LSw;Lpw;LZw;Ljy;Ljx;LRw;Lnw;)V
    .locals 2

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p2

    .line 2
    iput-object v1, v0, Lkx;->a:Ltw;

    move-object v1, p3

    .line 3
    iput-object v1, v0, Lkx;->b:Ldx;

    move-object v1, p4

    .line 4
    iput-object v1, v0, Lkx;->c:Lhw;

    move-object v1, p5

    .line 5
    iput-object v1, v0, Lkx;->d:Llx;

    move-object v1, p6

    .line 6
    iput-object v1, v0, Lkx;->e:Lpx;

    move-object v1, p7

    .line 7
    iput-object v1, v0, Lkx;->f:Lry;

    move-object v1, p9

    .line 8
    iput-object v1, v0, Lkx;->g:LFx;

    move-object v1, p11

    .line 9
    iput-object v1, v0, Lkx;->h:Lgw;

    move-object/from16 v1, p16

    .line 10
    iput-object v1, v0, Lkx;->i:LZw;

    move-object/from16 v1, p18

    .line 11
    iput-object v1, v0, Lkx;->j:Ljx;

    return-void
.end method


# virtual methods
.method public a(Lfy;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lfy;->e:Ljava/util/List;

    new-instance v1, Ley;

    iget v2, p1, Lfy;->a:I

    add-int/lit8 v2, v2, -0x1

    const-string v3, "FeedProcessScope"

    invoke-direct {v1, v2, v3}, Ley;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lkx;->b:Ldx;

    instance-of v1, v0, Ldy;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ldy;

    invoke-virtual {p1, v0}, Lfy;->a(Ldy;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lkx;->f:Lry;

    invoke-virtual {p1, v0}, Lfy;->a(Ldy;)V

    .line 5
    iget-object v0, p0, Lkx;->d:Llx;

    instance-of v1, v0, Ldy;

    if-eqz v1, :cond_1

    .line 6
    check-cast v0, Ldy;

    invoke-virtual {p1, v0}, Lfy;->a(Ldy;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lkx;->e:Lpx;

    instance-of v1, v0, Ldy;

    if-eqz v1, :cond_2

    .line 8
    check-cast v0, Ldy;

    invoke-virtual {p1, v0}, Lfy;->a(Ldy;)V

    .line 9
    :cond_2
    iget-object v0, p0, Lkx;->j:Ljx;

    invoke-virtual {p1, v0}, Lfy;->a(Ldy;)V

    return-void
.end method
