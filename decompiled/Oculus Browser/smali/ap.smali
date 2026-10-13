.class public abstract Lap;
.super Lcom/google/android/gms/common/internal/BaseGmsClient;
.source "PG"

# interfaces
.implements Lwm;
.implements Lbp;


# instance fields
.field public final B:Ljava/util/Set;

.field public final C:Landroid/accounts/Account;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILVo;LFm;LGm;)V
    .locals 9

    invoke-static {p1}, Lep;->a(Landroid/content/Context;)Lep;

    move-result-object v3

    .line 1
    sget-object v4, Ldm;->d:Ldm;

    .line 2
    invoke-static {p5}, Lxp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p5, LFm;

    invoke-static {p6}, Lxp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p6, LGm;

    const/4 v0, 0x0

    if-nez p5, :cond_0

    move-object v6, v0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, LFp;

    invoke-direct {v1, p5}, LFp;-><init>(LFm;)V

    move-object v6, v1

    :goto_0
    if-nez p6, :cond_1

    move-object v7, v0

    goto :goto_1

    .line 4
    :cond_1
    new-instance p5, LGp;

    invoke-direct {p5, p6}, LGp;-><init>(LGm;)V

    move-object v7, p5

    .line 5
    :goto_1
    iget-object v8, p4, LVo;->f:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    .line 6
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/internal/BaseGmsClient;-><init>(Landroid/content/Context;Landroid/os/Looper;Lep;Lem;ILHo;LIo;Ljava/lang/String;)V

    .line 7
    iget-object p1, p4, LVo;->a:Landroid/accounts/Account;

    .line 8
    iput-object p1, p0, Lap;->C:Landroid/accounts/Account;

    .line 9
    iget-object p1, p4, LVo;->c:Ljava/util/Set;

    .line 10
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/common/api/Scope;

    invoke-interface {p1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Expanding scopes is not permitted, use implied scopes instead"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_3
    iput-object p1, p0, Lap;->B:Ljava/util/Set;

    return-void
.end method
