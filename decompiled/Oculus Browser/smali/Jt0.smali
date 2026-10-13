.class public LJt0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:LMt0;


# direct methods
.method public constructor <init>(Landroid/content/Context;LBd1;Landroid/view/View;Lbd0;IZ)V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [LUd1;

    .line 2
    sget-object v1, LNt0;->a:Lke1;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, LNt0;->b:Lje1;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, LNt0;->c:Lhe1;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, LNt0;->d:Lke1;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, LNt0;->e:Lke1;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 3
    invoke-static {v0}, Lle1;->a([LUd1;)Ljava/util/Map;

    move-result-object v0

    .line 4
    new-instance v9, Lle1;

    const/4 v1, 0x0

    invoke-direct {v9, v0, v1}, Lle1;-><init>(Ljava/util/Map;LVd1;)V

    if-eqz p6, :cond_0

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0e014d

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0e014c

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 7
    :goto_0
    new-instance v10, LMt0;

    .line 8
    new-instance v3, LXd1;

    sget-object v1, LEd1;->q:[LUd1;

    invoke-direct {v3, v1}, LXd1;-><init>([LUd1;)V

    sget-object v1, LEd1;->f:Lke1;

    .line 9
    invoke-virtual {v3, v1, v0}, LXd1;->a(Lfe1;Ljava/lang/Object;)LXd1;

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object v1, v10

    move-object v2, v9

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    move/from16 v8, p5

    invoke-direct/range {v1 .. v8}, LMt0;-><init>(Lle1;LXd1;LBd1;Landroid/view/View;Landroid/content/res/Resources;Lbd0;I)V

    move-object v1, p0

    iput-object v10, v1, LJt0;->a:LMt0;

    .line 11
    sget-object v2, LIt0;->a:Lne1;

    invoke-static {v9, v0, v2}, Loe1;->a(Lqe1;Ljava/lang/Object;Lne1;)Loe1;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/chromium/base/Callback;ZI)V
    .locals 3

    .line 1
    iget-object v0, p0, LJt0;->a:LMt0;

    .line 2
    iget-object v1, v0, LMt0;->w:Lle1;

    sget-object v2, LNt0;->b:Lje1;

    invoke-virtual {v1, v2, p3}, Lle1;->a(Lje1;I)V

    .line 3
    iget-object p3, v0, LMt0;->w:Lle1;

    sget-object v1, LNt0;->d:Lke1;

    invoke-virtual {p3, v1, p1}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    .line 4
    iget-object p3, v0, LMt0;->y:LXd1;

    sget-object v1, LEd1;->b:Lfe1;

    invoke-virtual {p3, v1, p1}, LXd1;->a(Lfe1;Ljava/lang/Object;)LXd1;

    .line 5
    iget-object p1, v0, LMt0;->w:Lle1;

    sget-object p3, LNt0;->e:Lke1;

    .line 6
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 7
    new-instance p2, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {p2, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v1, 0x12

    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, p2, v2, v2, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 9
    invoke-virtual {p1, p3, v0}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    .line 10
    iget-object p1, p0, LJt0;->a:LMt0;

    .line 11
    iget-object p1, p1, LMt0;->y:LXd1;

    sget-object p2, LEd1;->a:Lfe1;

    new-instance p3, LLt0;

    invoke-direct {p3, p6}, LLt0;-><init>(Lorg/chromium/base/Callback;)V

    invoke-virtual {p1, p2, p3}, LXd1;->a(Lfe1;Ljava/lang/Object;)LXd1;

    sget-object p2, LEd1;->g:Lke1;

    .line 12
    invoke-virtual {p1, p2, p4}, LXd1;->a(Lfe1;Ljava/lang/Object;)LXd1;

    sget-object p2, LEd1;->j:Lke1;

    .line 13
    invoke-virtual {p1, p2, p5}, LXd1;->a(Lfe1;Ljava/lang/Object;)LXd1;

    sget-object p2, LEd1;->p:Lce1;

    .line 14
    invoke-virtual {p1, p2, p7}, LXd1;->a(Lce1;Z)LXd1;

    .line 15
    iget-object p1, p0, LJt0;->a:LMt0;

    .line 16
    iget-object p2, p1, LMt0;->w:Lle1;

    sget-object p3, LNt0;->c:Lhe1;

    iget-object p4, p1, LMt0;->A:Landroid/view/View;

    .line 17
    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result p4

    invoke-virtual {p1, p4}, LMt0;->a(I)Z

    move-result p4

    .line 18
    invoke-virtual {p2, p3, p4}, Lle1;->a(Lhe1;Z)V

    .line 19
    iget-object p2, p1, LMt0;->y:LXd1;

    invoke-virtual {p2}, LXd1;->a()Lle1;

    move-result-object p2

    iput-object p2, p1, LMt0;->z:Lle1;

    .line 20
    iget-object p1, p1, LMt0;->x:LBd1;

    .line 21
    invoke-virtual {p1, p2, p8, v2}, LBd1;->a(Lle1;IZ)V

    return-void
.end method
