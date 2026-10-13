.class public LLv0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LMv0;

.field public final synthetic x:Ljava/lang/String;


# direct methods
.method public constructor <init>(LNv0;LMv0;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, LLv0;->w:LMv0;

    iput-object p3, p0, LLv0;->x:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, LLv0;->w:LMv0;

    iget-object v1, p0, LLv0;->x:Ljava/lang/String;

    check-cast v0, Lyv0;

    .line 2
    iget-object v2, v0, Lyv0;->M:Lc91;

    if-nez v2, :cond_0

    goto :goto_3

    .line 3
    :cond_0
    iget-boolean v2, v0, Lyv0;->t0:Z

    if-eqz v2, :cond_7

    iget-object v2, v0, Lyv0;->n0:LZw0;

    if-nez v2, :cond_1

    goto :goto_3

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4
    :goto_0
    iget-object v5, v2, LZw0;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 5
    iget-object v5, v2, LZw0;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LCQ0;

    .line 6
    iget-object v5, v5, LCQ0;->C:Ljava/lang/String;

    .line 7
    invoke-static {v5, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 8
    iget v1, v2, LZw0;->c:I

    if-ne v1, v4, :cond_2

    const/4 v1, -0x1

    .line 9
    iput v1, v2, LZw0;->c:I

    goto :goto_1

    :cond_2
    if-lez v1, :cond_4

    if-le v1, v4, :cond_3

    const/4 v3, 0x1

    :cond_3
    sub-int/2addr v1, v3

    .line 10
    iput v1, v2, LZw0;->c:I

    .line 11
    :cond_4
    :goto_1
    iget-object v1, v2, LZw0;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 12
    iget-object v1, v2, LZw0;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, -0x2

    iput v1, v2, LZw0;->c:I

    goto :goto_2

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 13
    :cond_6
    :goto_2
    invoke-virtual {v0}, Lyv0;->m()V

    .line 14
    iget-object v1, v0, Lyv0;->o0:LXw0;

    if-eqz v1, :cond_7

    const/4 v2, 0x4

    .line 15
    iget-object v0, v0, Lyv0;->n0:LZw0;

    invoke-virtual {v1, v2, v0}, LXw0;->a(ILZw0;)V

    :cond_7
    :goto_3
    return-void
.end method
