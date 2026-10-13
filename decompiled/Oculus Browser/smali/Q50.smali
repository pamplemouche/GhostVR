.class public LQ50;
.super LR40;
.source "PG"


# instance fields
.field public c:Lorg/chromium/chrome/browser/contextualsearch/CtrSuppression;


# direct methods
.method public constructor <init>(Lo50;Ls50;IILorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;IZII)V
    .locals 12

    move-object v0, p0

    move-object v7, p1

    move/from16 v8, p4

    move-object/from16 v9, p5

    .line 1
    invoke-direct {p0}, LR40;-><init>()V

    .line 2
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/CtrSuppression;

    invoke-direct {v1}, Lorg/chromium/chrome/browser/contextualsearch/CtrSuppression;-><init>()V

    iput-object v1, v0, LQ50;->c:Lorg/chromium/chrome/browser/contextualsearch/CtrSuppression;

    .line 3
    iget-object v2, v0, LR40;->a:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v1, v0, LR40;->a:Ljava/util/Set;

    new-instance v2, LB50;

    invoke-direct {v2}, LB50;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v1, v0, LR40;->a:Ljava/util/Set;

    new-instance v2, LE50;

    invoke-direct {v2, p1}, LE50;-><init>(Lo50;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v10, v0, LR40;->a:Ljava/util/Set;

    new-instance v11, LP50;

    move-object v1, v11

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p7

    invoke-direct/range {v1 .. v6}, LP50;-><init>(Lo50;Ls50;IIZ)V

    invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v1, v0, LR40;->a:Ljava/util/Set;

    new-instance v2, LO50;

    move/from16 v3, p6

    invoke-direct {v2, v3}, LO50;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v1, v0, LR40;->a:Ljava/util/Set;

    new-instance v2, LS50;

    invoke-direct {v2, v9}, LS50;-><init>(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v1, v0, LR40;->a:Ljava/util/Set;

    new-instance v2, LR50;

    invoke-direct {v2, v9}, LR50;-><init>(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v1, v0, LR40;->a:Ljava/util/Set;

    new-instance v2, LO40;

    invoke-direct {v2, v9}, LO40;-><init>(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v1, v0, LR40;->a:Ljava/util/Set;

    new-instance v2, LC50;

    invoke-direct {v2, p1, v8}, LC50;-><init>(Lo50;I)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v1, v0, LR40;->a:Ljava/util/Set;

    new-instance v2, LM40;

    invoke-direct {v2, p1, v8}, LM40;-><init>(Lo50;I)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v1, v0, LR40;->a:Ljava/util/Set;

    new-instance v2, LK50;

    move/from16 v3, p9

    invoke-direct {v2, v9, v3}, LK50;-><init>(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;I)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v1, v0, LR40;->a:Ljava/util/Set;

    new-instance v2, LM50;

    move/from16 v3, p8

    invoke-direct {v2, v3}, LM50;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v1, v0, LR40;->a:Ljava/util/Set;

    new-instance v2, LG50;

    move-object v3, p2

    invoke-direct {v2, p1, p2, p3, v8}, LG50;-><init>(Lo50;Ls50;II)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 16
    new-instance v1, LD50;

    invoke-direct {v1}, LD50;-><init>()V

    .line 17
    iput-object v1, v0, LR40;->b:LD50;

    .line 18
    iget-object v2, v0, LR40;->a:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
