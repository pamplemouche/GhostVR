.class public LKv0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LMv0;

.field public final synthetic x:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;


# direct methods
.method public constructor <init>(LNv0;LMv0;Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;)V
    .locals 0

    .line 1
    iput-object p2, p0, LKv0;->w:LMv0;

    iput-object p3, p0, LKv0;->x:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, LKv0;->w:LMv0;

    iget-object v1, p0, LKv0;->x:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;

    check-cast v0, Lyv0;

    .line 2
    iget-object v2, v0, Lyv0;->M:Lc91;

    if-nez v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-boolean v2, v0, Lyv0;->t0:Z

    if-eqz v2, :cond_5

    iget-object v2, v0, Lyv0;->n0:LZw0;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 4
    iget-object v3, v0, Lyv0;->j0:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LLu0;

    .line 5
    instance-of v5, v4, Lmu0;

    if-eqz v5, :cond_2

    .line 6
    check-cast v4, Lmu0;

    .line 7
    invoke-virtual {v4, v1}, Lmu0;->a(Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;)LQu0;

    move-result-object v2

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    goto :goto_1

    .line 8
    :cond_4
    iget-object v1, v0, Lyv0;->n0:LZw0;

    invoke-virtual {v1, v2}, LZw0;->b(LCQ0;)V

    .line 9
    invoke-virtual {v0}, Lyv0;->m()V

    .line 10
    iget-object v1, v0, Lyv0;->o0:LXw0;

    if-eqz v1, :cond_5

    const/4 v2, 0x4

    .line 11
    iget-object v0, v0, Lyv0;->n0:LZw0;

    invoke-virtual {v1, v2, v0}, LXw0;->a(ILZw0;)V

    :cond_5
    :goto_1
    return-void
.end method
