.class public Lorg/chromium/content/browser/framehost/NavigationControllerImpl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/content_public/browser/NavigationController;


# instance fields
.field public a:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->a:J

    return-void
.end method

.method public static addToNavigationHistory(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p0, LS01;

    check-cast p1, Lorg/chromium/content_public/browser/NavigationEntry;

    .line 2
    iget-object p0, p0, LS01;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static create(J)Lorg/chromium/content/browser/framehost/NavigationControllerImpl;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;

    invoke-direct {v0, p0, p1}, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;-><init>(J)V

    return-object v0
.end method

.method public static createNavigationEntry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;IJ)Lorg/chromium/content_public/browser/NavigationEntry;
    .locals 12

    .line 1
    new-instance v11, Lorg/chromium/content_public/browser/NavigationEntry;

    move-object v0, v11

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-wide/from16 v9, p8

    invoke-direct/range {v0 .. v10}, Lorg/chromium/content_public/browser/NavigationEntry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;IJ)V

    return-object v11
.end method

.method private destroy()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->a:J

    return-void
.end method


# virtual methods
.method public a(ZI)LS01;
    .locals 7

    .line 33
    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 34
    :cond_0
    new-instance v6, LS01;

    invoke-direct {v6}, LS01;-><init>()V

    .line 35
    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->a:J

    move-object v2, p0

    move-object v3, v6

    move v4, p1

    move v5, p2

    .line 36
    invoke-static/range {v0 .. v5}, LJ/N;->Mx5VuK3_(JLjava/lang/Object;Ljava/lang/Object;ZI)V

    return-object v6
.end method

.method public a()V
    .locals 2

    .line 4
    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->a:J

    .line 5
    invoke-static {v0, v1, p0}, LJ/N;->MQgIP2q9(JLjava/lang/Object;)V

    return-void
.end method

.method public a(Lorg/chromium/content_public/browser/LoadUrlParams;)V
    .locals 19

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    .line 9
    iget-wide v1, v9, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->a:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_5

    .line 10
    iget-object v3, v0, Lorg/chromium/content_public/browser/LoadUrlParams;->a:Ljava/lang/String;

    .line 11
    iget v4, v0, Lorg/chromium/content_public/browser/LoadUrlParams;->c:I

    .line 12
    iget v5, v0, Lorg/chromium/content_public/browser/LoadUrlParams;->d:I

    .line 13
    iget-object v6, v0, Lorg/chromium/content_public/browser/LoadUrlParams;->e:Lh11;

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    .line 14
    iget-object v6, v6, Lh11;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v6, v7

    .line 15
    :goto_0
    iget-object v8, v0, Lorg/chromium/content_public/browser/LoadUrlParams;->e:Lh11;

    if-eqz v8, :cond_1

    .line 16
    iget v8, v8, Lh11;->b:I

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    .line 17
    :goto_1
    iget v15, v0, Lorg/chromium/content_public/browser/LoadUrlParams;->h:I

    .line 18
    iget-object v10, v0, Lorg/chromium/content_public/browser/LoadUrlParams;->f:Ljava/util/Map;

    if-nez v10, :cond_2

    :goto_2
    move-object/from16 v17, v7

    goto :goto_4

    .line 19
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    iget-object v10, v0, Lorg/chromium/content_public/browser/LoadUrlParams;->f:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 21
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-lez v12, :cond_3

    const-string v12, "\n"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    :cond_3
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v12, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ":"

    .line 23
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 25
    :cond_4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 26
    :goto_4
    iget-object v10, v0, Lorg/chromium/content_public/browser/LoadUrlParams;->i:Lorg/chromium/content_public/common/ResourceRequestBody;

    .line 27
    iget-object v11, v0, Lorg/chromium/content_public/browser/LoadUrlParams;->j:Ljava/lang/String;

    .line 28
    iget-object v12, v0, Lorg/chromium/content_public/browser/LoadUrlParams;->k:Ljava/lang/String;

    .line 29
    iget-object v13, v0, Lorg/chromium/content_public/browser/LoadUrlParams;->l:Ljava/lang/String;

    const/4 v14, 0x0

    .line 30
    iget-boolean v7, v0, Lorg/chromium/content_public/browser/LoadUrlParams;->m:Z

    move/from16 v18, v15

    move v15, v7

    .line 31
    iget-boolean v0, v0, Lorg/chromium/content_public/browser/LoadUrlParams;->n:Z

    move/from16 v16, v0

    move-wide v0, v1

    move-object/from16 v2, p0

    move v7, v8

    move/from16 v8, v18

    move-object/from16 v9, v17

    .line 32
    invoke-static/range {v0 .. v16}, LJ/N;->MAqmDh4t(JLjava/lang/Object;Ljava/lang/String;IILjava/lang/String;IILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    :cond_5
    return-void
.end method

.method public a(Z)V
    .locals 5

    .line 6
    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 7
    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->a:J

    .line 8
    invoke-static {v0, v1, p0, p1}, LJ/N;->M81h$w2r(JLjava/lang/Object;Z)V

    :cond_0
    return-void
.end method

.method public a(ZZ)V
    .locals 5

    .line 37
    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 38
    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->a:J

    .line 39
    invoke-static {v0, v1, p0, p1, p2}, LJ/N;->MrilyCK6(JLjava/lang/Object;ZZ)V

    :cond_0
    return-void
.end method

.method public a(I)Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->a:J

    .line 3
    invoke-static {v0, v1, p0, p1}, LJ/N;->M4jjW0jG(JLjava/lang/Object;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->a:J

    .line 3
    invoke-static {v0, v1, p0}, LJ/N;->Mdhd0AR3(JLjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public b(I)Z
    .locals 5

    .line 4
    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 5
    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->a:J

    .line 6
    invoke-static {v0, v1, p0, p1}, LJ/N;->MVbDeBRx(JLjava/lang/Object;I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public c()I
    .locals 5

    .line 4
    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 5
    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->a:J

    .line 6
    invoke-static {v0, v1, p0}, LJ/N;->Mil0WqAo(JLjava/lang/Object;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public c(I)Lorg/chromium/content_public/browser/NavigationEntry;
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->a:J

    .line 3
    invoke-static {v0, v1, p0, p1}, LJ/N;->MLcS2$Fy(JLjava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/content_public/browser/NavigationEntry;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public d()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->a:J

    .line 3
    invoke-static {v0, v1, p0}, LJ/N;->MsUTH_HQ(JLjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d(I)Z
    .locals 5

    .line 4
    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, 0x0

    return p1

    .line 5
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->a:J

    .line 6
    invoke-static {v0, v1, p0, p1}, LJ/N;->MVjP87pN(JLjava/lang/Object;I)Z

    move-result p1

    return p1
.end method

.method public e(I)V
    .locals 5

    .line 4
    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 5
    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->a:J

    .line 6
    invoke-static {v0, v1, p0, p1}, LJ/N;->MuxwAbEo(JLjava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->a:J

    .line 3
    invoke-static {v0, v1, p0}, LJ/N;->MgAw5sIR(JLjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->a:J

    .line 3
    invoke-static {v0, v1, p0}, LJ/N;->MWJb9aa$(JLjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public g()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->a:J

    .line 3
    invoke-static {v0, v1, p0}, LJ/N;->MCIN9$qH(JLjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public h()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->a:J

    .line 3
    invoke-static {v0, v1, p0}, LJ/N;->MEEEhNfT(JLjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public i()Lorg/chromium/content_public/browser/NavigationEntry;
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->a:J

    .line 3
    invoke-static {v0, v1, p0}, LJ/N;->Mgxh2WfC(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/NavigationEntry;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public j()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 2
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->a:J

    .line 3
    invoke-static {v0, v1, p0}, LJ/N;->M2mQucXv(JLjava/lang/Object;)V

    return-void
.end method

.method public k()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->a:J

    .line 3
    invoke-static {v0, v1, p0}, LJ/N;->MNF4lMMb(JLjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public l()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->a:J

    .line 3
    invoke-static {v0, v1, p0}, LJ/N;->MCUxt83x(JLjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->a:J

    .line 3
    invoke-static {v0, v1, p0}, LJ/N;->Mp5SLq_N(JLjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public n()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->a:J

    .line 3
    invoke-static {v0, v1, p0}, LJ/N;->MEOFE6aD(JLjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o()LS01;
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, LS01;

    invoke-direct {v0}, LS01;-><init>()V

    .line 3
    iget-wide v1, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->a:J

    .line 4
    invoke-static {v1, v2, p0, v0}, LJ/N;->MUZRDUOx(JLjava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 5
    iput v1, v0, LS01;->b:I

    return-object v0
.end method
