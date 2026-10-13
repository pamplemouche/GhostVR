.class public LGC0;
.super LIC0;
.source "PG"


# instance fields
.field public final a:I

.field public final synthetic b:LNC0;


# direct methods
.method public constructor <init>(LNC0;I)V
    .locals 1

    .line 1
    iput-object p1, p0, LGC0;->b:LNC0;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LIC0;-><init>(LNC0;LAC0;)V

    .line 2
    iput p2, p0, LGC0;->a:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 1
    iget-object v0, p0, LGC0;->b:LNC0;

    .line 2
    iget-object v0, v0, LNC0;->a:Lorg/chromium/chrome/browser/preferences/website/WebsitePreferenceBridge;

    .line 3
    iget v1, p0, LGC0;->a:I

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x1

    const/4 v4, 0x7

    if-nez v1, :cond_1

    .line 5
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    invoke-static {v1}, LJ/N;->M4IWMCbH(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v3

    .line 7
    invoke-static {v0, v1}, LJ/N;->M4MoR4V1(Ljava/lang/Object;Z)V

    goto :goto_0

    .line 8
    :cond_0
    throw v2

    :cond_1
    if-ne v1, v3, :cond_2

    .line 9
    invoke-static {v0}, LJ/N;->MGhRUX0O(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 v5, 0x2

    if-ne v1, v5, :cond_4

    .line 10
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 11
    invoke-static {v1}, LJ/N;->Mf7wdfcH(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v3

    .line 12
    invoke-static {v0, v1}, LJ/N;->MdVJjGLI(Ljava/lang/Object;Z)V

    goto :goto_0

    .line 13
    :cond_3
    throw v2

    :cond_4
    const/4 v5, 0x3

    if-ne v1, v5, :cond_6

    .line 14
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 15
    invoke-static {v1}, LJ/N;->M0llLR0N(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v3

    .line 16
    invoke-static {v0, v1}, LJ/N;->Mjd4ZB9r(Ljava/lang/Object;Z)V

    goto :goto_0

    .line 17
    :cond_5
    throw v2

    :cond_6
    const/4 v3, 0x4

    if-ne v1, v3, :cond_7

    .line 18
    invoke-static {v0}, LJ/N;->MbwAC3Ob(Ljava/lang/Object;)V

    goto :goto_0

    :cond_7
    const/4 v3, 0x5

    if-ne v1, v3, :cond_8

    .line 19
    invoke-static {v0}, LJ/N;->MeTDwmoC(Ljava/lang/Object;)V

    goto :goto_0

    :cond_8
    const/4 v3, 0x6

    if-ne v1, v3, :cond_9

    .line 20
    invoke-static {v0}, LJ/N;->M4tNzLvM(Ljava/lang/Object;)V

    goto :goto_0

    :cond_9
    if-ne v1, v4, :cond_a

    .line 21
    invoke-static {v0}, LJ/N;->M_0UjPMW(Ljava/lang/Object;)V

    .line 22
    :cond_a
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LcC0;

    .line 23
    iget-object v3, v1, LcC0;->y:Ljava/lang/String;

    if-nez v3, :cond_b

    goto :goto_1

    .line 24
    :cond_b
    iget v5, p0, LGC0;->a:I

    if-ne v5, v4, :cond_c

    move-object v5, v2

    goto :goto_2

    .line 25
    :cond_c
    iget-object v5, v1, LcC0;->x:Ljava/lang/String;

    .line 26
    :goto_2
    iget-object v6, p0, LGC0;->b:LNC0;

    .line 27
    invoke-virtual {v6, v3, v5}, LNC0;->a(Ljava/lang/String;Ljava/lang/String;)LyC0;

    move-result-object v3

    .line 28
    iget-object v3, v3, LyC0;->z:[LcC0;

    .line 29
    iget v5, v1, LcC0;->z:I

    .line 30
    aput-object v1, v3, v5

    goto :goto_1

    :cond_d
    return-void

    .line 31
    :cond_e
    throw v2
.end method
