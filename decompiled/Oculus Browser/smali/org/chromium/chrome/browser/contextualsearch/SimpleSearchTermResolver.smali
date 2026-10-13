.class public Lorg/chromium/chrome/browser/contextualsearch/SimpleSearchTermResolver;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static c:Lorg/chromium/chrome/browser/contextualsearch/SimpleSearchTermResolver;


# instance fields
.field public a:J

.field public b:LL50;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, LJ/N;->Ml7EXiWB(Ljava/lang/Object;)J

    move-result-wide v0

    .line 3
    iput-wide v0, p0, Lorg/chromium/chrome/browser/contextualsearch/SimpleSearchTermResolver;->a:J

    return-void
.end method


# virtual methods
.method public onSearchTermResolutionResponse(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;I)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move/from16 v15, p14

    move-wide/from16 v16, p15

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move/from16 v20, p19

    .line 1
    new-instance v1, LF50;

    move-object/from16 p1, v1

    invoke-direct/range {v1 .. v20}, LF50;-><init>(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;I)V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSearchTermResolutionResponse received with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3
    iget-object v1, v2, LF50;->c:Ljava/lang/String;

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 5
    iget-object v1, v0, Lorg/chromium/chrome/browser/contextualsearch/SimpleSearchTermResolver;->b:LL50;

    const/4 v3, 0x0

    .line 6
    iput-object v3, v0, Lorg/chromium/chrome/browser/contextualsearch/SimpleSearchTermResolver;->b:LL50;

    .line 7
    new-instance v4, Ll50;

    .line 8
    iget-object v5, v2, LF50;->c:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 p1, v4

    move-object/from16 p2, v5

    move-object/from16 p3, v8

    move-object/from16 p4, v9

    move/from16 p5, v10

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    .line 9
    invoke-direct/range {p1 .. p7}, Ll50;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v4}, Ll50;->a()Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 12
    check-cast v1, LjJ0;

    .line 13
    iget-object v4, v1, LjJ0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    .line 14
    iput-object v3, v1, LjJ0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    .line 15
    iget v1, v2, LF50;->r:I

    const/4 v3, 0x4

    const/4 v5, 0x1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    .line 16
    iget-object v1, v2, LF50;->l:Ljava/lang/String;

    const-string v2, "\u2605"

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_3

    if-eqz v4, :cond_3

    .line 18
    invoke-virtual {v4}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 19
    :cond_2
    invoke-virtual {v4}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/ChromeActivity;->z0()V

    :cond_3
    :goto_1
    return-void
.end method
