.class public final LEz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldy;


# instance fields
.field public final a:Lpx;

.field public final b:Lrz;

.field public final c:Ljz;

.field public final d:LFx;

.field public final e:Lww;

.field public final f:LYw;

.field public final g:Lry;

.field public final h:Lky;

.field public final i:Lxx;

.field public final j:Lrw;

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I


# direct methods
.method public constructor <init>(Lpx;Lrz;Ljz;LFx;Lww;LYw;Lry;Lky;Lxx;Lrw;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, LEz;->k:I

    .line 3
    iput v0, p0, LEz;->l:I

    .line 4
    iput v0, p0, LEz;->m:I

    .line 5
    iput v0, p0, LEz;->n:I

    .line 6
    iput v0, p0, LEz;->o:I

    .line 7
    iput-object p1, p0, LEz;->a:Lpx;

    .line 8
    iput-object p2, p0, LEz;->b:Lrz;

    .line 9
    iput-object p3, p0, LEz;->c:Ljz;

    .line 10
    iput-object p4, p0, LEz;->d:LFx;

    .line 11
    iput-object p5, p0, LEz;->e:Lww;

    .line 12
    iput-object p6, p0, LEz;->f:LYw;

    .line 13
    iput-object p7, p0, LEz;->g:Lry;

    .line 14
    iput-object p8, p0, LEz;->h:Lky;

    .line 15
    iput-object p9, p0, LEz;->i:Lxx;

    .line 16
    iput-object p10, p0, LEz;->j:Lrw;

    return-void
.end method

.method public static synthetic a(LEz;)I
    .locals 2

    .line 1
    iget v0, p0, LEz;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, LEz;->m:I

    return v0
.end method

.method public static a(LzI;)Z
    .locals 4

    .line 32
    iget v0, p0, LzI;->z:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "SessionManagerMutation"

    if-eqz v0, :cond_4

    .line 33
    iget v0, p0, LzI;->z:I

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    goto :goto_2

    .line 34
    :cond_2
    invoke-virtual {p0}, LzI;->k()LbJ;

    move-result-object p0

    .line 35
    iget-object p0, p0, LbJ;->C:Ljava/lang/String;

    .line 36
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    new-array p0, v2, [Ljava/lang/Object;

    const-string v0, "Invalid StreamDataOperation - No ID Found"

    .line 37
    invoke-static {v1, v0, p0}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_3
    return v3

    :cond_4
    :goto_2
    new-array p0, v2, [Ljava/lang/Object;

    const-string v0, "Invalid StreamDataOperation - payload or streamStructure not defined"

    .line 38
    invoke-static {v1, v0, p0}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method


# virtual methods
.method public a(Lfy;)V
    .locals 4

    .line 2
    iget-object v0, p1, Lfy;->e:Ljava/util/List;

    new-instance v1, Ley;

    iget v2, p1, Lfy;->a:I

    add-int/lit8 v2, v2, -0x1

    const-string v3, "SessionManagerMutation"

    invoke-direct {v1, v2, v3}, Ley;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget v0, p1, Lfy;->a:I

    .line 4
    new-instance v1, Ley;

    const-string v2, "mutationsCreated"

    invoke-direct {v1, v0, v2}, Ley;-><init>(ILjava/lang/String;)V

    .line 5
    iget-object v0, p1, Lfy;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget v0, p0, LEz;->k:I

    .line 7
    iget-object v1, v1, Ley;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 8
    iget v0, p1, Lfy;->a:I

    .line 9
    new-instance v1, Ley;

    const-string v2, "commitCount"

    invoke-direct {v1, v0, v2}, Ley;-><init>(ILjava/lang/String;)V

    .line 10
    iget-object v0, p1, Lfy;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget v0, p0, LEz;->l:I

    .line 12
    iget-object v2, v1, Ley;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, v1, Ley;->d:Z

    .line 14
    iget v1, p1, Lfy;->a:I

    .line 15
    new-instance v2, Ley;

    const-string v3, "errorCount"

    invoke-direct {v2, v1, v3}, Ley;-><init>(ILjava/lang/String;)V

    .line 16
    iget-object v1, p1, Lfy;->e:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    iget v1, p0, LEz;->m:I

    .line 18
    iget-object v3, v2, Ley;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    iput-boolean v0, v2, Ley;->d:Z

    .line 20
    iget v1, p1, Lfy;->a:I

    .line 21
    new-instance v2, Ley;

    const-string v3, "contentCommitErrorCount"

    invoke-direct {v2, v1, v3}, Ley;-><init>(ILjava/lang/String;)V

    .line 22
    iget-object v1, p1, Lfy;->e:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget v1, p0, LEz;->n:I

    .line 24
    iget-object v3, v2, Ley;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    iput-boolean v0, v2, Ley;->d:Z

    .line 26
    iget v1, p1, Lfy;->a:I

    .line 27
    new-instance v2, Ley;

    const-string v3, "semanticPropertiesCommitErrorCount"

    invoke-direct {v2, v1, v3}, Ley;-><init>(ILjava/lang/String;)V

    .line 28
    iget-object p1, p1, Lfy;->e:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    iget p1, p0, LEz;->o:I

    .line 30
    iget-object v1, v2, Ley;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    iput-boolean v0, v2, Ley;->d:Z

    return-void
.end method
